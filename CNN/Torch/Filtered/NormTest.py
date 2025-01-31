#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jan 30 12:45:08 2025

@author: frankconway
"""

import numpy as np
import os as os
import h5py
from scipy.signal import spectrogram
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
import random
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import pandas as pd
from scipy.signal import spectrogram, firwin, fftconvolve
import time
from torchsummary import summary
import scipy

# Check if MPS (Apple Silicon GPU) is available
if torch.backends.mps.is_available():
    print("MPS device is available.")
    mps_device = torch.device("mps") 
    # Create a tensor on the MPS device
    x = torch.ones(1, device=mps_device)
    print(x) 
else:
    print("MPS device not found.")


# training model 

buffers = [128] #[128, 256, 512, 1024]
samples = 1000
snr_powers = [0]#[3, 5, 10, 15, 20]
epoch = 100




class CNNModel(nn.Module):
    def __init__(self, n_channels=2, n_classes=1):
        super(CNNModel, self).__init__()
        
        self.conv1 = nn.Conv1d(in_channels=n_channels, out_channels=16, kernel_size=2)
        self.conv2 = nn.Conv1d(16, 16, kernel_size=3)
        self.pool1 = nn.MaxPool1d(kernel_size=2, stride=2)
        # self.conv3 = nn.Conv1d(16, 32, kernel_size=5)
        # self.conv4 = nn.Conv1d(32, 32, kernel_size=5)
        # self.pool2 = nn.MaxPool1d(kernel_size=2, stride=2)
        self.flatten = nn.Flatten()
        self.leaky_relu = nn.LeakyReLU(0.1)
        
        # Determine the correct flattened size dynamically
        with torch.no_grad():
            dummy_input = torch.randn(1, n_channels, 128)
            dummy_output = self._get_conv_output(dummy_input)
            flattened_size = dummy_output.shape[1]
        
        self.dense1 = nn.Linear(flattened_size, 64)
        self.out = nn.Linear(64, n_classes)
        self.leaky_relu = nn.LeakyReLU(0.1)
        
    def _get_conv_output(self, x):
        x = self.leaky_relu(self.conv1(x))
        x = self.leaky_relu(self.conv2(x))
        x = self.pool1(x)
        # x = self.leaky_relu(self.conv3(x))
        # x = self.leaky_relu(self.conv4(x))
        # x = self.pool2(x)
        x = self.flatten(x)
        return x
        
    def forward(self, x):
        x = self._get_conv_output(x)
        x = self.leaky_relu(self.dense1(x))
        x = self.out(x)
        return x


def testModel(modelPath):

    #Open dataset .h5 file either for training or testing
    dset_fp = './sdr_wifi_' + "train" + '.hdf5'
    dset = h5py.File(dset_fp, 'r')
    X = dset['X'][()]
    y = dset['y'][()]
    
    #Load a pretrained model
    model = CNNModel(n_channels=2, n_classes=1)

    # Load the saved model state dictionary
    model.load_state_dict(torch.load(modelPath))
    
    # Create DataLoader for training
    test_dataset = TensorDataset(torch.tensor(X, dtype=torch.float32), torch.tensor(y, dtype=torch.float32))
    test_loader = DataLoader(test_dataset, batch_size=256, shuffle=True)

     # Training loop
    num_epochs = epoch
    best_accuracy = 0
    patience = 50
    counter = 0
     
    # print(model)
    # summary(model,(2,128))

    running_loss = 0.0
    correct = 0
    total = 0

    for inputs, labels in test_loader:
        outputs = model(inputs.transpose(2,1))  # Adjust shape for Conv1d
        # Simulated target tensor (batch_size=1, single label)
        
         
         # Ensure correct shape
        outputs = outputs.squeeze(1)  # Converts shape from [batch_size, 1] to [batch_size]
         
         # Compute loss
        criterion = nn.BCEWithLogitsLoss()

       
        loss = criterion(outputs, labels)
        running_loss += loss.item()

        # Calculate accuracy
        predictions = torch.sigmoid(outputs) > 0.5
        # print(type(predictions))
        correct += (predictions == labels).sum().item()
        total += labels.size(0)
 
        
        epoch_loss = running_loss / len(test_loader)
        epoch_accuracy = correct / total


        print(f'Epoch {epoch+1}/{num_epochs}, Loss: {epoch_loss:.8f}, Accuracy: {epoch_accuracy:.8f}')


    # Set the model to evaluation mode
    model.eval()

    #Test model
    # score = model.evaluate(x=X, y=y, verbose=1)
    # print('Loss: ' + str(score[0]))
    # print('Acc: ' + str(score[1]))

    # with open('./results/test_results'+modelType+'.txt', 'w') as f:
    #     f.write(f"Test Loss: {score[0]}\n")
    #     f.write(f"Test Accuracy: {score[1]}\n")

# Example: Load a pre-trained model or define your own
model = CNNModel(n_channels=2, n_classes=1)
model_norm = CNNModel(n_channels=2, n_classes=1)

modelPath ="/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/deepsense-spectrum-sensing-datasets-main/torch/Filtered/results/best_model__snr_0_buf_128.pt"

model.load_state_dict(torch.load(modelPath))  # Example model
#model_norm = model.load_state_dict(torch.load(modelPath))  # Example model



def normalize_weights(model):
    with torch.no_grad():  # Disable gradient tracking
        for name, param in model.named_parameters():
            min_val = param.min()
            max_val = param.max()
            param -= min_val  # Shift to [0, max-min]
            param /= (max_val - min_val + 1e-8)  # Normalize to [0,1]
            param *= 2  # Scale to [0,2]
            param -= 1  # Shift to [-1,1]

# Normalize model weights
# normalize_weights(model)

# Check the range of weights
# for name, param in model.named_parameters():
#     print(f"{name}: min={param.min().item()}, max={param.max().item()}")


torch.save(model.state_dict(), f'./results/best_model_norm.pt')

#testModel(f'./results/best_model_norm.pt')
testModel(modelPath)

