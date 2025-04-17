#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Feb  8 08:47:49 2025

@author: frankconway
"""

import torch
import torch.nn as nn
import torch.optim as optim

class CNNModel(nn.Module):
    def __init__(self, dim=128, n_channels=2, n_classes=1, dropout_rate=0.3):
        super(CNNModel, self).__init__()
        
        # Adding weight regularization
        self.weight_decay = 0.01  # L2 regularization strength
        
        self.conv1 = nn.Conv1d(in_channels=n_channels, out_channels=16, kernel_size=2)
        self.conv2 = nn.Conv1d(16, 16, kernel_size=3)
        self.pool1 = nn.MaxPool1d(kernel_size=2, stride=2)
        self.conv3 = nn.Conv1d(16, 32, kernel_size=5)
        self.conv4 = nn.Conv1d(32, 32, kernel_size=5)
        self.pool2 = nn.MaxPool1d(kernel_size=2, stride=2)
        self.flatten = nn.Flatten()
        self.leaky_relu = nn.LeakyReLU(0.1)
        
        # Add dropout layers
        self.dropout1 = nn.Dropout(dropout_rate)
        self.dropout2 = nn.Dropout(dropout_rate)
        self.dropout3 = nn.Dropout(dropout_rate)
        
        # Determine the correct flattened size dynamically
        with torch.no_grad():
            dummy_input = torch.randn(1, n_channels, dim)
            dummy_output = self._get_conv_output(dummy_input)
            flattened_size = dummy_output.shape[1]
        
        self.dense1 = nn.Linear(flattened_size, 64)
        self.out = nn.Linear(64, n_classes)
        
    def _get_conv_output(self, x):
        x = self.leaky_relu(self.conv1(x))
        x = self.dropout1(x)
        x = self.leaky_relu(self.conv2(x))
        x = self.pool1(x)
        
        x = self.leaky_relu(self.conv3(x))
        x = self.dropout2(x)
        x = self.leaky_relu(self.conv4(x))
        x = self.pool2(x)
        
        x = self.flatten(x)
        return x
        
    def forward(self, x):
        x = self._get_conv_output(x)
        x = self.leaky_relu(self.dense1(x))
        x = self.dropout3(x)
        x = self.out(x)
        return x

    def get_l2_regularization_loss(self):
        """Calculate L2 regularization loss for all parameters"""
        l2_loss = 0.0
        for param in self.parameters():
            l2_loss += torch.norm(param, p=2)
        return self.weight_decay * l2_loss