#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr 17 11:35:37 2025

@author: frankconway
"""
import torch
import numpy as np
from torch import nn
import brevitas.nn as qnn
from brevitas.nn import QuantLinear, QuantReLU
from brevitas.quant import IntBias
from brevitas.inject.enum import ScalingImplType
from brevitas.inject.defaults import Int8ActPerTensorFloatMinMaxInit

# Adjustable hyperparameters

input_bits = 8

# Setting seeds for reproducibility
torch.manual_seed(0)
np.random.seed(0)

class InputQuantizer(Int8ActPerTensorFloatMinMaxInit):
    bit_width = input_bits
    min_val = -2.0
    max_val = 2.0
    scaling_impl_type = ScalingImplType.CONST # Fix the quantization range to [min_val, max_val]

# # class InputQuantizer(Int8ActPerTensorFloatMinMaxInit):
# #     min_val = -2.0
# #     max_val = 2.0
# #     scaling_impl_type = ScalingImplType.CONST  # Fixed quant range

# #     def __init__(self, input_bits):
# #         super().__init__()
# #         self.bit_width = input_bits

# def make_input_quantizer(bit_width):
#     class CustomInputQuantizer(Int8ActPerTensorFloatMinMaxInit):
#         pass

#     CustomInputQuantizer.bit_width = bit_width
#     CustomInputQuantizer.min_val = -2.0
#     CustomInputQuantizer.max_val = 2.0
#     CustomInputQuantizer.scaling_impl_type = ScalingImplType.CONST

#     return CustomInputQuantizer()

def Quant2dCNN1layer(input_size= 16, a_bits = 4, w_bits = 4):
    
    filters_conv = 32
    filters_dense = 128
    
    output_size = input_size//2 * input_size//2 *filters_conv

    
    model = nn.Sequential(
        # Input quantization layer
        qnn.QuantHardTanh(act_quant=InputQuantizer),
    
        qnn.QuantConv2d(2, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False),
        nn.BatchNorm2d(filters_conv),
        qnn.QuantReLU(bit_width=a_bits),
        nn.MaxPool2d(2),
        
        nn.Flatten(),
    
        qnn.QuantLinear(output_size, 4, weight_bit_width=w_bits, bias=False),
    )
    
    return model

def Quant_mlp(input_size = 256, a_bits = 4, w_bits = 4):


    hidden1 = 64
    hidden2 = 64
    hidden3 = 64
    num_classes = 4
    
    model = nn.Sequential(
          QuantLinear(input_size, hidden1, bias=True, weight_bit_width=w_bits),
          nn.BatchNorm1d(hidden1),
          nn.Dropout(0.5),
          QuantReLU(bit_width=a_bits),
          QuantLinear(hidden1, hidden2, bias=True, weight_bit_width=w_bits),
          nn.BatchNorm1d(hidden2),
          nn.Dropout(0.5),
          QuantReLU(bit_width=a_bits),
          QuantLinear(hidden2, hidden3, bias=True, weight_bit_width=w_bits),
          nn.BatchNorm1d(hidden3),
          nn.Dropout(0.5),
          QuantReLU(bit_width=a_bits),
          QuantLinear(hidden3, num_classes, bias=True, weight_bit_width=w_bits)
    )

    return model


def Quant2dCNNfull(input_size= 16, a_bits = 4, w_bits = 4):
    
    
    filters_conv = 32
    filters_dense = 128
    
    output_size = input_size//4 * input_size//4 *filters_conv

    
    model = nn.Sequential(
    # Input quantization layer
    qnn.QuantHardTanh(act_quant=InputQuantizer),

    qnn.QuantConv2d(2, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False),
    nn.BatchNorm2d(filters_conv),
    qnn.QuantReLU(bit_width=a_bits),
    # nn.MaxPool2d(2),

    qnn.QuantConv2d(filters_conv, filters_conv*2, 3, padding=1, weight_bit_width=w_bits, bias=False),
    nn.BatchNorm2d(filters_conv*2),
    qnn.QuantReLU(bit_width=a_bits),
    nn.MaxPool2d(2),

     qnn.QuantConv2d(filters_conv*2, filters_conv*2, 3, padding=1, weight_bit_width=w_bits, bias=False),
    nn.BatchNorm2d(filters_conv*2),
    qnn.QuantReLU(bit_width=a_bits),
    # nn.MaxPool2d(2),

    qnn.QuantConv2d(filters_conv*2, filters_conv, 3, padding=1, weight_bit_width=w_bits, bias=False),
    nn.BatchNorm2d(filters_conv),
    qnn.QuantReLU(bit_width=a_bits),
    nn.MaxPool2d(2),

    nn.Flatten(),

    qnn.QuantLinear(output_size, 4, weight_bit_width=w_bits, bias=False),
)

    return model
