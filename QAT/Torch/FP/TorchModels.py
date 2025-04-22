#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr 17 08:18:30 2025

@author: frankconway
"""
import torch
from torch import nn
import numpy as np

# Setting seeds for reproducibility
torch.manual_seed(0)
np.random.seed(0)

def CNN2d(input_size = 16):


    filters_conv = 32
    filters_dense = 128
    
    output_size = input_size//4 * input_size//4 *filters_conv
    
    model = nn.Sequential(
            
        nn.Conv2d(2, filters_conv, 3, padding=1, bias=False),
        nn.BatchNorm2d(filters_conv),
        nn.ReLU(),
        # nn.MaxPool2d(2),
    
        nn.Conv2d(filters_conv, filters_conv*2, 3, padding=1, bias=False),
        nn.BatchNorm2d(filters_conv*2),
        nn.ReLU(),
        nn.MaxPool2d(2),
    
        nn.Conv2d(filters_conv*2, filters_conv*2, 3, padding=1, bias=False),
        nn.BatchNorm2d(filters_conv*2),
        nn.ReLU(),
        # nn.MaxPool2d(2),
    
        nn.Conv2d(filters_conv*2, filters_conv, 3, padding=1, bias=False),
        nn.BatchNorm2d(filters_conv),
        nn.ReLU(),
        nn.MaxPool2d(2),
    
        nn.Flatten(),
    
        nn.Linear(output_size, 4, bias=False),
    )
    
    return model 

