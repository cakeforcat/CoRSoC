import os

import onnx 
import torch 
    
build_dir = os.environ["FINN_BUILD_DIR"]

from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.core.modelwrapper import ModelWrapper
from finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN
import numpy as np

ready_model_filename = build_dir + "/plutoModel.onnx"
finn_model_filename = build_dir + "/finnModel.onnx"

# clean-up
qonnx_cleanup(ready_model_filename, out_file=finn_model_filename)

# ModelWrapper
model = ModelWrapper(finn_model_filename)
# Setting the input datatype explicitly because it doesn't get derived from the export function
model = model.transform(ConvertQONNXtoFINN())
model.save(finn_model_filename)

print("Model saved to %s" % finn_model_filename)