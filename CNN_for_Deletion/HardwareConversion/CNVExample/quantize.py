import torch
from collections import OrderedDict
from brevitas.core import quant
from brevitas.core.function_wrapper.misc import Identity
from brevitas.export import export_qonnx
import brevitas.nn as qnn
from torch import nn

from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.core.modelwrapper import ModelWrapper
from finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN
from qonnx.transformation.infer_shapes import InferShapes
from qonnx.transformation.fold_constants import FoldConstants
from qonnx.transformation.general import GiveReadableTensorNames, GiveUniqueNodeNames, RemoveStaticGraphInputs

from finn.transformation.streamline import Streamline
from qonnx.transformation.lower_convs_to_matmul import LowerConvsToMatMul
from qonnx.transformation.bipolar_to_xnor import ConvertBipolarMatMulToXnorPopcount
import finn.transformation.streamline.absorb as absorb
from finn.transformation.streamline.reorder import MakeMaxPoolNHWC, MoveScalarLinearPastInvariants
from qonnx.transformation.infer_data_layouts import InferDataLayouts
from qonnx.transformation.general import RemoveUnusedTensors

import finn.transformation.fpgadataflow.convert_to_hw_layers as to_hw
from finn.transformation.fpgadataflow.create_dataflow_partition import (
    CreateDataflowPartition,
)
from finn.transformation.move_reshape import RemoveCNVtoFCFlatten
#from finn.transformation.fpgadataflow.specialize_layers import SpecializeLayers
from qonnx.custom_op.registry import getCustomOp
from qonnx.transformation.infer_data_layouts import InferDataLayouts

"""
from finn.util.basic import pynq_part_map
# change this if you have a different PYNQ board, see list above
pynq_board = "zcu111"
fpga_part = pynq_part_map[pynq_board]
target_clk_ns = 10
requires Linux
"""

import os
    
build_dir = os.environ["FINN_BUILD_DIR"]

class QCNNModel(nn.Module):
    def __init__(self, n_channels=2, n_classes=1):
        with torch.no_grad():
            super(QCNNModel, self).__init__()
            self.conv1 = qnn.QuantConv1d(in_channels=n_channels, out_channels=16, kernel_size=2, weight_bit_width=8)
            self.conv2 = qnn.QuantConv1d(16, 16, kernel_size=3, weight_bit_width=8)
            self.pool1 = nn.MaxPool1d(kernel_size=2, stride=2)
            self.conv3 = qnn.QuantConv1d(16, 32, kernel_size=5, weight_bit_width=8)
            self.conv4 = qnn.QuantConv1d(32, 32, kernel_size=5, weight_bit_width=8,)
            self.pool2 = nn.MaxPool1d(kernel_size=2, stride=2)
            self.leaky_relu = nn.LeakyReLU(0.1)
            self.flatten = nn.Flatten()
        
            # Determine the correct flattened size dynamically
            dummy_input = torch.randn(1, n_channels, 128)
            dummy_output = self._get_conv_output(dummy_input)
            flattened_size = dummy_output.shape[1]
        
            self.dense1 = qnn.QuantLinear(flattened_size, 64, weight_bit_width=8)
            self.out = qnn.QuantLinear(64, n_classes, weight_bit_width=8)
            self.leaky_relu = nn.LeakyReLU(0.1)
        
    def _get_conv_output(self, x):
        x = self.leaky_relu(self.conv1(x))
        x = self.leaky_relu(self.conv2(x))
        x = self.pool1(x)
        x = self.leaky_relu(self.conv3(x))
        x = self.leaky_relu(self.conv4(x))
        x = self.pool2(x)
        x = self.flatten(x)
        return x
        
    def forward(self, x):
        x = self._get_conv_output(x)
        x = self.leaky_relu(self.dense1(x))
        x = self.out(x)
        return x

def quantize_tensor(inp: torch.Tensor, bits: float, max: float, sign: bool) -> torch.Tensor:
    if sign:
        bits -= 1
    int_quant = quant.IntQuant(narrow_range=True, signed=sign, input_view_impl=Identity())
    scale, zero_point, bit_width = torch.tensor(max/pow(2,bits)), torch.tensor(0.), torch.tensor(bits)
    out = int_quant(scale, zero_point, bit_width, inp)
    return out

def quantize_model(fdir: str, bits: float, max: float, sign: bool):
    model = torch.load(fdir)
    qmodel = OrderedDict()
    for i in model:
        qmodel[i] = quantize_tensor(model[i], bits, max, sign)
    return qmodel

def to_onnx(qmodel: OrderedDict, odir: str):
    out = QCNNModel()
    out.load_state_dict(qmodel)
    export_qonnx(out, torch.randn(1, 2, 128), odir + ".onnx")

    qonnx_cleanup(odir + ".onnx", out_file=odir + ".onnx")
    model = ModelWrapper(odir + ".onnx")
    model = model.transform(ConvertQONNXtoFINN())
    model = model.transform(InferShapes())
    model = model.transform(FoldConstants())
    model = model.transform(GiveUniqueNodeNames())
    model = model.transform(GiveReadableTensorNames())
    model = model.transform(RemoveStaticGraphInputs())
    model.save(odir + "_tidy.onnx")

    model = ModelWrapper(odir + "_tidy.onnx")
    model = model.transform(MoveScalarLinearPastInvariants())
    model = model.transform(Streamline())
    model = model.transform(MakeMaxPoolNHWC())
    model = model.transform(absorb.AbsorbTransposeIntoMultiThreshold())
    model = model.transform(ConvertBipolarMatMulToXnorPopcount())
    model = model.transform(Streamline())
    # absorb final add-mul nodes into TopK
    model = model.transform(absorb.AbsorbScalarMulAddIntoTopK())
    model = model.transform(InferDataLayouts())
    model = model.transform(RemoveUnusedTensors())
    model.save(odir + "_streamlined.onnx")

    model = ModelWrapper(odir + "_streamlined.onnx")
    model = model.transform(to_hw.InferBinaryMatrixVectorActivation())
    model = model.transform(to_hw.InferQuantizedMatrixVectorActivation())
    # TopK to LabelSelect
    model = model.transform(to_hw.InferLabelSelectLayer())
    # input quantization (if any) to standalone thresholding
    model = model.transform(to_hw.InferThresholdingLayer())
    model = model.transform(to_hw.InferConvInpGen())
    model = model.transform(to_hw.InferStreamingMaxPool())
    # get rid of Reshape(-1, 1) operation between hw nodes
    model = model.transform(RemoveCNVtoFCFlatten())
    # get rid of Tranpose -> Tranpose identity seq
    model = model.transform(absorb.AbsorbConsecutiveTransposes())
    # infer tensor data layouts
    model = model.transform(InferDataLayouts())
    parent_model = model.transform(CreateDataflowPartition())
    parent_model.save(odir + "_dataflow_parent.onnx")
    sdp_node = parent_model.get_nodes_by_op_type("StreamingDataflowPartition")[0]
    sdp_node = getCustomOp(sdp_node)
    dataflow_model_filename = sdp_node.get_nodeattr("model")
    # save the dataflow partition with a different name for easier access
    # and specialize the layers to HLS variants
    dataflow_model = ModelWrapper(dataflow_model_filename)
    #dataflow_model = dataflow_model.transform(SpecializeLayers(fpga_part)) - requires linux
    dataflow_model.save(odir + "_dataflow_model.onnx")

qmodel = quantize_model(build_dir + "best_model__snr_0_buf_128.pt",8,1,True)
to_onnx(qmodel,build_dir + "best_model__snr_0_buf_128")




#py -3.12 -m mmdnn.conversion._script.convert -sf keras -iw best_model_snr_0_buf_128.keras -df pytorch -om best_model_snr_0_buf_128.pt

#print(os.path.isfile("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras"))
#model = tf.keras.models.load_model("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras")
#model.save("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.h5")
#model = saving.load_model("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras")