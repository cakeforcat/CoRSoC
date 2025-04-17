#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb 16 20:21:39 2025

@author: frankconway
"""

from CNN import *
from utils import *
import numpy as np 
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import pandas as pd
from torchsummary import summary
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
import os

X = []
y = []
filename = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/files/Noise_tx_itter"

for i in range(100,101):
    
    fileData = read_complex_binary(filename+str(i)+".bin")
    
    reshaped_arr = fileData.reshape(7800, 128)
    
    float_array = np.stack((reshaped_arr.real, reshaped_arr.imag), axis=-1) 
    
    X.extend(float_array)



filename = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/files/QPSK_tx_20_itter"


for i in range(100,101):
    
    fileData = read_complex_binary(filename+str(i)+".bin")
    
    reshaped_arr = fileData.reshape(7800, 128)
    
    float_array = np.stack((reshaped_arr.real, reshaped_arr.imag), axis=-1) 
    
    X.extend(float_array)



X = np.array(X)
y.extend(np.zeros(7800))
y.extend(np.ones(7800))
    
# y = np.array(y)

print(X.shape)

results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
if not os.path.isdir(results):
    os.mkdir(results)
    os.chmod(results, 0o777)  # Sets full permissions

 #Model parameters
n_classes = 1       #number of classes for SDR case
dim = X.shape[1]    #Number of I/Q samples being taken as input
n_channels = 2      #One channel for I and the other for Q
seed = 42
 
 
print(f'X.Shape: {X.shape}, y.shape: {len(y)}')
 
# Shuffle dataset and split into training and testing samples
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.1, random_state=seed)
 
modelType = 'test'
 
# Instantiate the model
model = CNNModel(dim=dim, n_channels=n_channels, n_classes=n_classes)

# Define optimizer and loss function
optimizer = optim.Adam(model.parameters(), lr=0.001)
criterion = nn.BCEWithLogitsLoss()

# Create DataLoader for training
train_dataset = TensorDataset(torch.tensor(X_train, dtype=torch.float32), torch.tensor(y_train, dtype=torch.float32))
train_loader = DataLoader(train_dataset, batch_size=256, shuffle=True)
test_dataset = TensorDataset(torch.tensor(X_test, dtype=torch.float32), torch.tensor(y_test, dtype=torch.float32))
test_loader = DataLoader(test_dataset, batch_size=256, shuffle=True)

 # Training loop
num_epochs = 5
best_accuracy = 0
patience = 20
counter = 0
 
print(model)
summary(model,(2,dim))
 
history_df = pd.DataFrame(columns=['epoch', 'accuracy','loss','precision', 'recall', 'F1-Score'])

for epoch in range(num_epochs):
    model.train()
    running_loss = 0.0
    correct = 0
    total = 0
    no_loops =0
    precision =  0.0
    recall = 0.0
    f1 = 0.0
    
    val_running_loss = 0.0
    val_correct = 0
    val_total = 0
    val_no_loops = 0
    val_precision =  0.0
    val_recall = 0.0
    val_f1 = 0.0

    for inputs, labels in train_loader:

        optimizer.zero_grad()
        outputs = model(inputs.transpose(2,1))  # Adjust shape for Conv1d
        # Simulated target tensor (batch_size=1, single label)       
         
         # Ensure correct shape
        outputs = outputs.squeeze(1)  # Converts shape from [batch_size, 1] to [batch_size]
         
         # Compute loss
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()
        running_loss += loss.item()

        # Calculate metrics 
        predictions = torch.sigmoid(outputs) > 0.5
        correct += (predictions == labels).sum().item()
        precision += calculate_metrics(labels, predictions)["precision"]
        recall += calculate_metrics(labels, predictions)["recall"]
        f1 += calculate_metrics(labels, predictions)["f1_score"]
        
        
        no_loops += 1 # to normalise preccision recall
        total += labels.size(0) # total no of samples 
 
    for inputs, labels in test_loader:
       optimizer.zero_grad()
       outputs = model(inputs.transpose(2,1))  # Adjust shape for Conv1d
       # Simulated target tensor (batch_size=1, single label)
       
        # Ensure correct shape
       outputs = outputs.squeeze(1)  # Converts shape from [batch_size, 1] to [batch_size]
        
        # Compute loss
       loss = criterion(outputs, labels)
       val_running_loss += loss.item()

       # Calculate metrics 
       predictions = torch.sigmoid(outputs) > 0.5
       val_correct += (predictions == labels).sum().item()
       val_precision += calculate_metrics(labels, predictions)["precision"]
       val_recall += calculate_metrics(labels, predictions)["recall"]
       val_f1 += calculate_metrics(labels, predictions)["f1_score"]
       
       val_no_loops += 1 # to normalise preccision recall
       val_total += labels.size(0) # total no of samples 

    epoch_loss = running_loss / len(train_loader)
    epoch_accuracy = correct / total
    epoch_recall = recall/no_loops
    epoch_precision = precision/no_loops
    epoch_f1 = f1/no_loops
    
    
    val_epoch_loss = val_running_loss / len(test_loader)
    val_epoch_accuracy = val_correct / val_total
    val_epoch_recall = val_recall/val_no_loops
    val_epoch_precision = val_precision/val_no_loops
    val_epoch_f1 = val_f1/val_no_loops
    

    print(f'''Epoch {epoch+1}/{num_epochs}, Loss: {epoch_loss:.8f}, Accuracy: {epoch_accuracy:.8f}, F1-Score: {epoch_f1}, Precision: {epoch_precision}, Recall: {epoch_recall}
          val_Loss: {val_epoch_loss:.8}, val_Accuracy: {val_epoch_accuracy:.8}, val_F1-Score: {val_epoch_f1}, Precision: {val_epoch_precision}, Recall: {val_epoch_recall}\n\n''')


    history_df.loc[epoch] = [epoch, val_epoch_accuracy, val_epoch_loss, val_epoch_precision, val_epoch_recall, val_epoch_f1]
    # Save the model if it's the best so far
    if epoch_accuracy > best_accuracy:
        best_accuracy = epoch_accuracy
        torch.save(model.state_dict(), f'./results/best_model_{modelType}.pt')
        counter = 0  # Reset patience counter
    else:
        counter += 1
        if counter >= patience:
            print("Early stopping triggered.")
            break
        
        
        
        
        