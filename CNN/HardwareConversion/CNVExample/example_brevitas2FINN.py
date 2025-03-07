from finn.util.visualization import showSrc, showInNetron
from finn.util.basic import make_build_dir
import os
    
build_dir = os.environ["FINN_BUILD_DIR"]

import torch
import onnx
from finn.util.test import get_test_model_trained
from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup

cnv = get_test_model_trained("CNV", 1, 1)
export_onnx_path = build_dir+"/cnv_w1_a1.onnx"
export_qonnx(cnv, torch.randn(1, 3, 32, 32), build_dir+"/cnv_w1_a1.onnx"); # semicolon added to suppress log
qonnx_cleanup(export_onnx_path, out_file=export_onnx_path)

from qonnx.core.modelwrapper import ModelWrapper
from finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN
model = ModelWrapper(build_dir+"/cnv_w1_a1.onnx")
model = model.transform(ConvertQONNXtoFINN())


model.save(build_dir+"/cnv_w1_a1_finn.onnx")

from qonnx.transformation.general import GiveReadableTensorNames, GiveUniqueNodeNames, RemoveStaticGraphInputs
from qonnx.transformation.infer_shapes import InferShapes
from qonnx.transformation.infer_datatypes import InferDataTypes
from qonnx.transformation.fold_constants import FoldConstants

model = model.transform(InferShapes())
model = model.transform(FoldConstants())
model = model.transform(GiveUniqueNodeNames())
model = model.transform(GiveReadableTensorNames())
model = model.transform(InferDataTypes())
model = model.transform(RemoveStaticGraphInputs())

model.save(build_dir+"/cnv_w1_a1_tidy.onnx")

from finn.util.pytorch import ToTensor
from qonnx.transformation.merge_onnx_models import MergeONNXModels
from qonnx.core.datatype import DataType

model = ModelWrapper(build_dir+"/cnv_w1_a1_tidy.onnx")
global_inp_name = model.graph.input[0].name
ishape = model.get_tensor_shape(global_inp_name)
# preprocessing: torchvision's ToTensor divides uint8 inputs by 255
totensor_pyt = ToTensor()
chkpt_preproc_name = build_dir+"/cnv_w1_a1_preproc.onnx"
export_qonnx(totensor_pyt, torch.randn(ishape), chkpt_preproc_name)
qonnx_cleanup(chkpt_preproc_name, out_file=chkpt_preproc_name)
pre_model = ModelWrapper(chkpt_preproc_name)
pre_model = pre_model.transform(ConvertQONNXtoFINN())

# join preprocessing and core model
model = model.transform(MergeONNXModels(pre_model))
# add input quantization annotation: UINT8 for all BNN-PYNQ models
global_inp_name = model.graph.input[0].name
model.set_tensor_datatype(global_inp_name, DataType["UINT8"])

model.save(build_dir+"/cnv_w1_a1_with_preproc.onnx")

from qonnx.transformation.insert_topk import InsertTopK

# postprocessing: insert Top-1 node at the end
model = model.transform(InsertTopK(k=1))
chkpt_name = build_dir+"/cnv_w1_a1_pre_post.onnx"
# tidy-up again
model = model.transform(InferShapes())
model = model.transform(FoldConstants())
model = model.transform(GiveUniqueNodeNames())
model = model.transform(GiveReadableTensorNames())
model = model.transform(InferDataTypes())
model = model.transform(RemoveStaticGraphInputs())
model.save(chkpt_name)

from finn.transformation.streamline import Streamline
showSrc(Streamline)

from finn.transformation.streamline.reorder import MoveScalarLinearPastInvariants
import finn.transformation.streamline.absorb as absorb

model = ModelWrapper(build_dir+"/cnv_w1_a1_pre_post.onnx")
# move initial Mul (from preproc) past the Reshape
model = model.transform(MoveScalarLinearPastInvariants())
# streamline
model = model.transform(Streamline())
model.save(build_dir+"/cnv_w1_a1_streamlined.onnx")

from qonnx.transformation.bipolar_to_xnor import ConvertBipolarMatMulToXnorPopcount
from finn.transformation.streamline.round_thresholds import RoundAndClipThresholds
from qonnx.transformation.infer_data_layouts import InferDataLayouts
from qonnx.transformation.general import RemoveUnusedTensors

model = model.transform(ConvertBipolarMatMulToXnorPopcount())
model = model.transform(absorb.AbsorbAddIntoMultiThreshold())
model = model.transform(absorb.AbsorbMulIntoMultiThreshold())
# absorb final add-mul nodes into TopK
model = model.transform(absorb.AbsorbScalarMulAddIntoTopK())
model = model.transform(RoundAndClipThresholds())

# bit of tidy-up
model = model.transform(InferDataLayouts())
model = model.transform(RemoveUnusedTensors())

model.save(build_dir+"/cnv_w1a1_ready_for_hw_conversion.onnx")

import finn.transformation.fpgadataflow.convert_to_hw_layers as to_hw
model = ModelWrapper(build_dir+"/cnv_w1a1_ready_for_hw_conversion.onnx")
model = model.transform(to_hw.InferBinaryMatrixVectorActivation())
# TopK to LabelSelect
model = model.transform(to_hw.InferLabelSelectLayer())
# input quantization (if any) to standalone thresholding
model = model.transform(to_hw.InferThresholdingLayer())
model.save(build_dir+"/cnv_w1_a1_hw_layers.onnx")

from finn.transformation.fpgadataflow.create_dataflow_partition import CreateDataflowPartition

model = ModelWrapper(build_dir+"/cnv_w1_a1_hw_layers.onnx")
parent_model = model.transform(CreateDataflowPartition())
parent_model.save(build_dir+"/cnv_w1_a1_dataflow_parent.onnx")

from qonnx.custom_op.registry import getCustomOp
sdp_node = parent_model.get_nodes_by_op_type("StreamingDataflowPartition")[0]
sdp_node = getCustomOp(sdp_node)
dataflow_model_filename = sdp_node.get_nodeattr("model")

model = ModelWrapper(dataflow_model_filename)

thresh_node = model.get_nodes_by_op_type("Thresholding")[0]
thresh_node_inst = getCustomOp(thresh_node)
thresh_node_inst.set_nodeattr("preferred_impl_style", "hls")

# print the names of the supported PYNQ boards
from finn.util.basic import pynq_part_map
print(pynq_part_map.keys())

# change this if you have a different PYNQ board, see list above
pynq_board = "Pynq-Z1"
fpga_part = pynq_part_map[pynq_board]
target_clk_ns = 10

from finn.transformation.fpgadataflow.specialize_layers import SpecializeLayers
model = model.transform(SpecializeLayers(fpga_part))

model.save(build_dir+"/cnv_w1_a1_specialize_layers.onnx")

fc0 = model.graph.node[1]
fc0w = getCustomOp(fc0)

print("CustomOp wrapper is of class " + fc0w.__class__.__name__)

fc0w.get_nodeattr_types()

fc_layers = model.get_nodes_by_op_type("MVAU_hls")
# (PE, SIMD, in_fifo_depth, out_fifo_depth, ramstyle) for each layer
config = [
    (16, 49, [16], [64], "block"),
    (8, 8, [64], [64], "auto"),
    (8, 8, [64], [64], "auto"),
    (10, 8, [64], [10], "distributed"),
]
for fcl, (pe, simd, ififo, ofifo, ramstyle) in zip(fc_layers, config):
    fcl_inst = getCustomOp(fcl)
    fcl_inst.set_nodeattr("PE", pe)
    fcl_inst.set_nodeattr("SIMD", simd)
    fcl_inst.set_nodeattr("inFIFODepths", ififo)
    fcl_inst.set_nodeattr("outFIFODepths", ofifo)
    fcl_inst.set_nodeattr("ram_style", ramstyle)
    
# set parallelism for input quantizer to be same as first layer's SIMD
inp_qnt_node = model.get_nodes_by_op_type("Thresholding_hls")[0]
inp_qnt = getCustomOp(inp_qnt_node)
inp_qnt.set_nodeattr("PE", 49)

model.save(build_dir+"/cnv_w1_a1_set_folding_factors.onnx")

from finn.transformation.fpgadataflow.make_zynq_proj import ZynqBuild
model = ModelWrapper(build_dir+"/cnv_w1_a1_set_folding_factors.onnx")
model = model.transform(ZynqBuild(platform = pynq_board, period_ns = target_clk_ns))


from finn.transformation.fpgadataflow.make_pynq_driver import MakePYNQDriver
model = model.transform(MakePYNQDriver("zynq-iodma"))

model.save(build_dir + "/cnv_w1_a1_post_synthesis.onnx")

model = ModelWrapper(build_dir + "/cnv_w1_a1_post_synthesis.onnx")
sdp_node_middle = getCustomOp(model.graph.node[1])
postsynth_layers = sdp_node_middle.get_nodeattr("model")

model = ModelWrapper(postsynth_layers)
model.model.metadata_props

model = ModelWrapper(build_dir + "/cnv_w1_a1_post_synthesis.onnx")
model.model.metadata_props

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

from pkgutil import get_data
import onnx.numpy_helper as nph
import matplotlib.pyplot as plt

raw_i = get_data("qonnx.data", "onnx/mnist-conv/test_data_set_0/input_0.pb")
x = nph.to_array(onnx.load_tensor_from_string(raw_i))
plt.imshow(x.reshape(28,28), cmap='gray')

import numpy as np

model = ModelWrapper(build_dir + "/cnv_w1_a1_post_synthesis.onnx")
iname = model.graph.input[0].name
oname = parent_model.graph.output[0].name
ishape = model.get_tensor_shape(iname)
print("Expected network input shape is " + str(ishape))
np.save(deployment_dir + "/input.npy", x.reshape(ishape))

from shutil import make_archive
make_archive('deploy-on-pynq-cnv', 'zip', deployment_dir)