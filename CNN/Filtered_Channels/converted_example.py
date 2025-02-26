from finn.util.visualization import showSrc, showInNetron
from finn.util.basic import make_build_dir
import os
    
build_dir = os.environ["FINN_BUILD_DIR"]

import torch
import onnx
from finn.util.test import get_test_model_trained
from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup

import brevitas.nn as qnn
from torch import nn
from collections import OrderedDict
from brevitas.core import quant
from brevitas.core.function_wrapper.misc import Identity


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
            self.flatten = self.flatten = nn.Flatten()
                    
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

qmodel = quantize_model(build_dir + "/best_model__snr_0_buf_128.pt",8,1,True)
spec_sense2 = QCNNModel()
spec_sense2.load_state_dict(qmodel)

export_onnx_path = build_dir+"/spec_sense2.onnx"
export_qonnx(spec_sense2, torch.randn(1, 2, 128), build_dir+"/spec_sense2.onnx"); # semicolon added to suppress log
qonnx_cleanup(export_onnx_path, out_file=export_onnx_path)

from finn.util.basic import make_build_dir
import os
    
build_dir = os.environ["FINN_BUILD_DIR"]

import torch
import onnx
from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.core.modelwrapper import ModelWrapper
from finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN
from qonnx.transformation.infer_shapes import InferShapes
from qonnx.transformation.fold_constants import FoldConstants
from qonnx.transformation.general import GiveReadableTensorNames, GiveUniqueNodeNames, RemoveStaticGraphInputs

model = ModelWrapper(export_onnx_path)
model = model.transform(ConvertQONNXtoFINN())
model = model.transform(InferShapes())
model = model.transform(FoldConstants())
model = model.transform(GiveUniqueNodeNames())
model = model.transform(GiveReadableTensorNames())
model = model.transform(RemoveStaticGraphInputs())
model.save(build_dir + "/spec_sense2_tidy.onnx")

from finn.util.pytorch import ToTensor
from qonnx.transformation.merge_onnx_models import MergeONNXModels
from qonnx.core.datatype import DataType

model = ModelWrapper(build_dir+"/spec_sense2_tidy.onnx")
global_inp_name = model.graph.input[0].name
ishape = model.get_tensor_shape(global_inp_name)
# preprocessing: torchvision's ToTensor divides uint8 inputs by 255
totensor_pyt = ToTensor()
chkpt_preproc_name = build_dir+"/spec_sense2_preproc.onnx"
export_qonnx(totensor_pyt, torch.randn(ishape), chkpt_preproc_name)
qonnx_cleanup(chkpt_preproc_name, out_file=chkpt_preproc_name)
pre_model = ModelWrapper(chkpt_preproc_name)
pre_model = pre_model.transform(ConvertQONNXtoFINN())

# join preprocessing and core model
model = model.transform(MergeONNXModels(pre_model))
# add input quantization annotation: UINT8 for all BNN-PYNQ models
global_inp_name = model.graph.input[0].name
model.set_tensor_datatype(global_inp_name, DataType["UINT8"])

from qonnx.transformation.insert_topk import InsertTopK
from qonnx.transformation.infer_datatypes import InferDataTypes

# postprocessing: insert Top-1 node at the end
model = model.transform(InsertTopK(k=1))
chkpt_name = build_dir+"/spec_sense2_pre_post.onnx"
# tidy-up again
model = model.transform(InferShapes())
model = model.transform(FoldConstants())
model = model.transform(GiveUniqueNodeNames())
model = model.transform(GiveReadableTensorNames())
model = model.transform(InferDataTypes())
model = model.transform(RemoveStaticGraphInputs())
model.save(chkpt_name)

from finn.transformation.streamline import Streamline
from qonnx.transformation.lower_convs_to_matmul import LowerConvsToMatMul
from qonnx.transformation.bipolar_to_xnor import ConvertBipolarMatMulToXnorPopcount
import finn.transformation.streamline.absorb as absorb
from finn.transformation.streamline.reorder import MakeMaxPoolNHWC, MoveScalarLinearPastInvariants
from qonnx.transformation.infer_data_layouts import InferDataLayouts
from qonnx.transformation.general import RemoveUnusedTensors

model = ModelWrapper(build_dir + "/spec_sense2_pre_post.onnx")
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
model.save(build_dir + "/spec_sense2_streamlined.onnx")

from finn.util.basic import pynq_part_map
# change this if you have a different PYNQ board, see list above
pynq_board = "Pynq-Z1"
fpga_part = pynq_part_map[pynq_board]
target_clk_ns = 10

import finn.transformation.fpgadataflow.convert_to_hw_layers as to_hw
from finn.transformation.fpgadataflow.create_dataflow_partition import (
    CreateDataflowPartition,
)
from finn.transformation.move_reshape import RemoveCNVtoFCFlatten
from finn.transformation.fpgadataflow.specialize_layers import SpecializeLayers
from qonnx.custom_op.registry import getCustomOp
from qonnx.transformation.infer_data_layouts import InferDataLayouts

model = ModelWrapper(build_dir + "/spec_sense2_streamlined.onnx")
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
parent_model.save(build_dir + "/spec_sense2_dataflow_parent.onnx")
sdp_node = parent_model.get_nodes_by_op_type("StreamingDataflowPartition")[0]
sdp_node = getCustomOp(sdp_node)
dataflow_model_filename = sdp_node.get_nodeattr("model")
# save the dataflow partition with a different name for easier access
# and specialize the layers to HLS variants
dataflow_model = ModelWrapper(dataflow_model_filename)
dataflow_model = dataflow_model.transform(SpecializeLayers(fpga_part))
dataflow_model.save(build_dir + "/spec_sense2_dataflow_model.onnx")

from finn.transformation.fpgadataflow.make_zynq_proj import ZynqBuild
model = ModelWrapper(build_dir+"/spec_sense2_dataflow_model.onnx")
model = model.transform(ZynqBuild(platform = pynq_board, period_ns = target_clk_ns))

from finn.transformation.fpgadataflow.make_pynq_driver import MakePYNQDriver
model = model.transform(MakePYNQDriver("zynq-iodma"))

model.save(build_dir + "/spec_sense2_synth.onnx")

from shutil import copy
from distutils.dir_util import copy_tree

# create directory for deployment files
deployment_dir = make_build_dir(prefix="pynq_deployment_")
model.set_metadata_prop("pynq_deployment_dir", deployment_dir)

# get and copy necessary files
# .bit and .hwh file
bitfile = model.get_metadata_prop("bitfile")
hwh_file = model.get_metadata_prop("hw_handoff")
deploy_files = [bitfile, hwh_file]

for dfile in deploy_files:
    if dfile is not None:
        copy(dfile, deployment_dir)

# driver.py and python libraries
pynq_driver_dir = model.get_metadata_prop("pynq_driver_dir")
copy_tree(pynq_driver_dir, deployment_dir)

import importlib_resources
import matplotlib.pyplot as plt
import numpy as np

ref = importlib_resources.files("finn.qnn-data") / "cifar10/cifar10-test-data-class3.npz"
with importlib_resources.as_file(ref) as fn:
    x = np.load(fn)["arr_0"]
x = x.reshape(3, 32,32).transpose(1, 2, 0)
plt.imshow(x)

model = ModelWrapper(build_dir + "/spec_sense2_synth.onnx")
iname = model.graph.input[0].name
ishape = model.get_tensor_shape(iname)
np.save(deployment_dir + "/input.npy", x.reshape(ishape))


from shutil import make_archive
make_archive('deploy-on-pynq-cnn', 'zip', deployment_dir)