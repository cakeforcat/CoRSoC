import torch
from collections import OrderedDict
from brevitas.core import quant
from brevitas.core.function_wrapper.misc import Identity

def quantize_model(inp: torch.Tensor, bits: float, max: float, sign: bool) -> torch.Tensor:
    if sign:
        bits -= 1
    int_quant = quant.IntQuant(narrow_range=True, signed=sign, input_view_impl=Identity())
    scale, zero_point, bit_width = torch.tensor(max/pow(2,bits)), torch.tensor(0.), torch.tensor(bits)
    out = int_quant(scale, zero_point, bit_width, inp)
    return out

def get_model(fdir: str):
    model = torch.load(fdir)
    return model

model = get_model("CNN\\Filtered_Channels\\best_model__snr_0_buf_128.pt")
qmodel = OrderedDict()
for i in model:
    print(model[i])
    print(quantize_model(model[i],8,8,True))




#py -3.12 -m mmdnn.conversion._script.convert -sf keras -iw best_model_snr_0_buf_128.keras -df pytorch -om best_model_snr_0_buf_128.pt

#print(os.path.isfile("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras"))
#model = tf.keras.models.load_model("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras")
#model.save("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.h5")
#model = saving.load_model("CNN\\Filtered_Channels\\best_model_snr_0_buf_128.keras")