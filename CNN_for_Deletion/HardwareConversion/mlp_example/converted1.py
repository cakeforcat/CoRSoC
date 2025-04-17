from finn.util.visualization import showSrc, showInNetron
from finn.util.basic import make_build_dir
import os
    
build_dir = os.environ["FINN_BUILD_DIR"]

import onnx
import torch
from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup

import brevitas.nn as qnn
from torch import nn
from collections import OrderedDict
from brevitas.core import quant
from brevitas.core.function_wrapper.misc import Identity
from brevitas.quant import Uint8ActPerTensorFloat
from brevitas.core.scaling import ParameterScaling

class QCNNModel(nn.Module):
    def __init__(self, n_channels=2, n_classes=1):
        with torch.no_grad():
            super(QCNNModel, self).__init__()
            self.conv1 = qnn.QuantConv1d(in_channels=n_channels, out_channels=16, kernel_size=2, weight_bit_width=4)
            self.conv2 = qnn.QuantConv1d(16, 16, kernel_size=3, weight_bit_width=4)
            self.pool1 = nn.AvgPool1d(kernel_size=2, stride=2)
            self.conv3 = qnn.QuantConv1d(16, 32, kernel_size=5, weight_bit_width=4)
            self.conv4 = qnn.QuantConv1d(32, 32, kernel_size=5, weight_bit_width=4)
            self.pool2 = nn.AvgPool1d(kernel_size=2, stride=2)
            self.flatten = nn.Flatten()
            self.relu = qnn.QuantReLU(bit_width=4)
            self.qnt_output = qnn.QuantIdentity(
                quant_type='binary', 
                scaling_impl_type='const',
                bit_width=1, min_val=-1.0, max_val=1.0)

            # Determine the correct flattened size dynamically
            dummy_input = torch.randn(1, n_channels, 410)
            dummy_output = self._get_conv_output(dummy_input)
            flattened_size = dummy_output.shape[1]
        
            self.dense1 = qnn.QuantLinear(flattened_size, 64, weight_bit_width=4)
            self.out = qnn.QuantLinear(64, n_classes, weight_bit_width=4)
        
    def _get_conv_output(self, x):
        x = self.relu(self.conv1(x))
        x = self.relu(self.conv2(x))
        x = self.pool1(x)
        x = self.relu(self.conv3(x))
        x = self.relu(self.conv4(x))
        x = self.pool2(x)
        x = self.flatten(x)
        return x
        
    def forward(self, x):
        x = self._get_conv_output(x)
        x = self.relu(self.dense1(x))
        x = self.out(x)
        x = self.qnt_output(x)
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

newmodel = QCNNModel()
qmodel = quantize_model(build_dir + "/best_model__snr_[inf, 3, 5, 10, 15]_buf_1024.pt",4,1,True)
qmodel["relu.act_quant.fused_activation_quant_proxy.tensor_quant.scaling_impl.value"] = torch.tensor(1., requires_grad=True)
spec_sense = QCNNModel()
spec_sense.load_state_dict(qmodel)
model_for_export = spec_sense

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print("Target device: " + str(device))

from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.datatype import DataType
from finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN
import numpy as np

ready_model_filename = build_dir + "/spec_sense_ready.onnx"
input_shape = (1, 2, 410)

model_for_export.to(device)

# create a QuantTensor instance to mark input as bipolar during export
input_a = np.random.randint(0, 1, size=input_shape).astype(np.float32)
scale = 1.0
input_t = torch.from_numpy(input_a * scale)

#Move to CPU before export
model_for_export.cpu()

# Export to ONNX
export_qonnx(
    model_for_export, export_path=ready_model_filename, input_t=input_t
)

# clean-up
qonnx_cleanup(ready_model_filename, out_file=ready_model_filename)

# ModelWrapper
model = ModelWrapper(ready_model_filename)
# Setting the input datatype explicitly because it doesn't get derived from the export function
model = model.transform(ConvertQONNXtoFINN())
model.save(ready_model_filename)

print("Model saved to %s" % ready_model_filename)