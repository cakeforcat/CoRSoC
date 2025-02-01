import torch
from collections import OrderedDict
from brevitas.core import quant
from brevitas.core.function_wrapper.misc import Identity
from brevitas.export import export_qonnx
import brevitas.nn as qnn
from torch import nn

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
    export_qonnx(out, torch.randn(1,2,128), odir)


qmodel = quantize_model("CNN\\Filtered_Channels\\best_model__snr_0_buf_128.pt",8,1,True)
to_onnx(qmodel, "CNN\\Filtered_Channels\\best_model__snr_0_buf_128.onnx")




#py -3.12 -m mmdnn.conversion._script.convert -sf keras -iw best_model_snr_0_buf_128.keras -df pytorch -om best_model_snr_0_buf_128.pt

#print(os.path.isfile("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras"))
#model = tf.keras.models.load_model("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras")
#model.save("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.h5")
#model = saving.load_model("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras")