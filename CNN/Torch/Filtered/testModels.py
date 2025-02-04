#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Feb  4 17:51:41 2025

@author: frankconway
"""

#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov 27 20:19:21 2024

@author: frankconway
"""

import numpy as np
import os as os
import h5py
from scipy.signal import spectrogram
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import pandas as pd
from scipy.signal import fftconvolve
import time
#from torchsummary import summary
import scipy
import scipy.io
from sklearn import metrics
from scipy.signal import fftconvolve
import time
import scipy
from scipy import signal
from scipy.signal import butter, lfilter


# Check if MPS (Apple Silicon GPU) is available
if torch.backends.mps.is_available():
    print("MPS device is available.")
    mps_device = torch.device("mps") 
    # Create a tensor on the MPS device
    x = torch.ones(1, device=mps_device)
    print(x) 
else:
    print("MPS device not found.")


class CNNModel(nn.Module):
    def __init__(self, dim=128, n_channels=2, n_classes=1):
        super(CNNModel, self).__init__()
        
        self.conv1 = nn.Conv1d(in_channels=n_channels, out_channels=16, kernel_size=2)
        self.conv2 = nn.Conv1d(16, 16, kernel_size=3)
        self.pool1 = nn.MaxPool1d(kernel_size=2, stride=2)
        self.conv3 = nn.Conv1d(16, 32, kernel_size=5)
        self.conv4 = nn.Conv1d(32, 32, kernel_size=5)
        self.pool2 = nn.MaxPool1d(kernel_size=2, stride=2)
        self.flatten = nn.Flatten()
        self.leaky_relu = nn.LeakyReLU(0.1)
        
        # Determine the correct flattened size dynamically
        with torch.no_grad():
            dummy_input = torch.randn(1, n_channels, dim)
            dummy_output = self._get_conv_output(dummy_input)
            flattened_size = dummy_output.shape[1]
        
        self.dense1 = nn.Linear(flattened_size, 64)
        self.out = nn.Linear(64, n_classes)
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


# def trainModel(buf, snr, epoch = 1):
    
#     results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
#     if not os.path.isdir(results):
#         os.mkdir(results)
#         os.chmod(results, 0o777)  # Sets full permissions
    
#     seed = 42
    
#     #Open dataset .h5 file either for training or testing
#     dset_fp = './sdr_wifi_' + "train" + '.hdf5'
#     dset = h5py.File(dset_fp, 'r')
#     X = dset['X'][()]
#     y = dset['y'][()]

#     #Model parameters
#     n_classes = 1       #number of classes for SDR case
#     dim = X.shape[1]    #Number of I/Q samples being taken as input
#     n_channels = 2      #One channel for I and the other for Q
#     X_noisey = add_noise_at_snr(X, y, snr)[0]
    
#     print(f'X.Shape: {X_noisey.shape}, y.shape: {len(y)}')
    
#     # Shuffle dataset and split into training and testing samples
#     X_train, X_test, y_train, y_test = train_test_split(
#         X_noisey, y, test_size=0.1, random_state=seed)
    
#     modelType = '_snr_'+ str(snr)+'_buf_'+ str(buf) 
    
#    # Instantiate the model
#     model = CNNModel(dim=dim, n_channels=n_channels, n_classes=n_classes)

#    # Define optimizer and loss function
#     optimizer = optim.Adam(model.parameters(), lr=0.001)
#     criterion = nn.BCEWithLogitsLoss()

#    # Create DataLoader for training
#     train_dataset = TensorDataset(torch.tensor(X_train, dtype=torch.float32), torch.tensor(y_train, dtype=torch.float32))
#     train_loader = DataLoader(train_dataset, batch_size=256, shuffle=True)
#     test_dataset = TensorDataset(torch.tensor(X_test, dtype=torch.float32), torch.tensor(y_test, dtype=torch.float32))
#     test_loader = DataLoader(test_dataset, batch_size=256, shuffle=True)

#     # Training loop
#     num_epochs = epoch
#     best_accuracy = 0
#     patience = 50
#     counter = 0
    
#     print(model)
#     #summary(model,(2,dim))
    
#     history_df = pd.DataFrame(columns=['epoch', 'accuracy','loss','precision', 'recall', 'F1-Score'])

#     for epoch in range(num_epochs):
#        model.train()
#        running_loss = 0.0
#        correct = 0
#        total = 0
#        no_loops =0
#        precision =  0.0
#        recall = 0.0
#        f1 = 0.0
       
#        val_running_loss = 0.0
#        val_correct = 0
#        val_total = 0
#        val_no_loops = 0
#        val_precision =  0.0
#        val_recall = 0.0
#        val_f1 = 0.0

#        for inputs, labels in train_loader:

#            optimizer.zero_grad()
#            outputs = model(inputs.transpose(2,1))  # Adjust shape for Conv1d
#            # Simulated target tensor (batch_size=1, single label)       
            
#             # Ensure correct shape
#            outputs = outputs.squeeze(1)  # Converts shape from [batch_size, 1] to [batch_size]
            
#             # Compute loss
#            loss = criterion(outputs, labels)
#            loss.backward()
#            optimizer.step()
#            running_loss += loss.item()

#            # Calculate metrics 
#            predictions = torch.sigmoid(outputs) > 0.5
#            correct += (predictions == labels).sum().item()
#            precision += calculate_metrics(labels, predictions)["precision"]
#            recall += calculate_metrics(labels, predictions)["recall"]
#            f1 += calculate_metrics(labels, predictions)["f1_score"]
           
           
#            no_loops += 1 # to normalise preccision recall
#            total += labels.size(0) # total no of samples 
    
#        for inputs, labels in test_loader:
#           optimizer.zero_grad()
#           outputs = model(inputs.transpose(2,1))  # Adjust shape for Conv1d
#           # Simulated target tensor (batch_size=1, single label)
          
#            # Ensure correct shape
#           outputs = outputs.squeeze(1)  # Converts shape from [batch_size, 1] to [batch_size]
           
#            # Compute loss
#           loss = criterion(outputs, labels)
#           val_running_loss += loss.item()

#           # Calculate metrics 
#           predictions = torch.sigmoid(outputs) > 0.5
#           val_correct += (predictions == labels).sum().item()
#           val_precision += calculate_metrics(labels, predictions)["precision"]
#           val_recall += calculate_metrics(labels, predictions)["recall"]
#           val_f1 += calculate_metrics(labels, predictions)["f1_score"]
          
#           val_no_loops += 1 # to normalise preccision recall
#           val_total += labels.size(0) # total no of samples 

#        epoch_loss = running_loss / len(train_loader)
#        epoch_accuracy = correct / total
#        epoch_recall = recall/no_loops
#        epoch_precision = precision/no_loops
#        epoch_f1 = f1/no_loops
       
       
#        val_epoch_loss = val_running_loss / len(test_loader)
#        val_epoch_accuracy = val_correct / val_total
#        val_epoch_recall = val_recall/val_no_loops
#        val_epoch_precision = val_precision/val_no_loops
#        val_epoch_f1 = val_f1/val_no_loops
       

#        print(f'''Epoch {epoch+1}/{num_epochs}, Loss: {epoch_loss:.8f}, Accuracy: {epoch_accuracy:.8f}, F1-Score: {epoch_f1}, Precision: {epoch_precision}, Recall: {epoch_recall}
#              val_Loss: {val_epoch_loss:.8}, val_Accuracy: {val_epoch_accuracy:.8}, val_F1-Score: {val_epoch_f1}, Precision: {val_epoch_precision}, Recall: {val_epoch_recall}\n\n''')


#        history_df.loc[epoch] = [epoch, val_epoch_accuracy, val_epoch_loss, val_epoch_precision, val_epoch_recall, val_epoch_f1]
#        # Save the model if it's the best so far
#        if epoch_accuracy > best_accuracy:
#            best_accuracy = epoch_accuracy
#            torch.save(model.state_dict(), f'./results/best_model_{modelType}.pt')
#            counter = 0  # Reset patience counter
#        else:
#            counter += 1
#            if counter >= patience:
#                print("Early stopping triggered.")
#                break
    

#    # Save training history to CSV
#     history_df.to_csv(f'./results/training_history_{modelType}.csv', index=False)
    
#     #testModel(modelType, f'./results/best_model_{modelType}.pt')

def testModel(modelType, modelPath):

    #Open dataset .h5 file either for training or testing
    dset_fp = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/sdr_wifi_test.hdf5"#'./sdr_wifi_' + "test" + '.hdf5'
    dset = h5py.File(dset_fp, 'r')
    X = dset['X'][()]
    y = dset['y'][()]
    dim = X.shape[1]
    
    #Load a pretrained model
    model = CNNModel(dim=dim, n_channels=2, n_classes=1)

    # Load the saved model state dictionary
    model.load_state_dict(torch.load(modelPath))
    
    # Set the model to evaluation mode
    model.eval()
    
    # Create DataLoader for training
    test_dataset = TensorDataset(torch.tensor(X, dtype=torch.float32), torch.tensor(y, dtype=torch.float32))
    test_loader = DataLoader(test_dataset, batch_size=256, shuffle=True)

     # Training loop

    running_loss = 0.0
    correct = 0
    total = 0
    no_loops =0
    precision =  0.0
    recall = 0.0
    f1 = 0.0

    for inputs, labels in test_loader:
        outputs = model(inputs.transpose(2,1))  # Adjust shape for Conv1d
        # Simulated target tensor (batch_size=1, single label)
         
         # Ensure correct shape
        outputs = outputs.squeeze(1)  # Converts shape from [batch_size, 1] to [batch_size]
         
         # Compute loss
        criterion = nn.BCEWithLogitsLoss()

        loss = criterion(outputs, labels)
        running_loss += loss.item()

        # Calculate metrics 
        predictions = torch.sigmoid(outputs) > 0.5
        correct += (predictions == labels).sum().item()
        precision += calculate_metrics(labels, predictions)["precision"]
        recall += calculate_metrics(labels, predictions)["recall"]
        f1 += calculate_metrics(labels, predictions)["f1_score"]
        
        no_loops += 1
        total += labels.size(0)
     
    test_loss = running_loss / len(test_loader)
    test_accuracy = correct / total
    test_recall = recall/no_loops
    test_precision = precision/no_loops
    test_f1 = f1/no_loops
  
    print(f'Testing; Loss: {test_loss}, Accuracy: {test_accuracy}, Recall: {test_recall}, Precision: {test_precision}, F1-Score: {test_f1}')


def calculate_metrics(y_true, y_pred):
    """
    Calculate precision, recall, and F1-score for binary classification.
    
    Parameters:
    y_true (list/array): Ground truth labels
    y_pred (list/array): Predicted labels
    
    Returns:
    dict: Dictionary containing precision, recall, and F1-score
    """
    # Initialize counters
    true_positive = 0
    false_positive = 0
    false_negative = 0
    
    # Count TP, FP, FN
    for true, pred in zip(y_true, y_pred):
        if true == pred == 1:
            true_positive += 1
        elif true == 0 and pred == 1:
            false_positive += 1
        elif true == 1 and pred == 0:
            false_negative += 1
    
    # Calculate metrics
    precision = true_positive / (true_positive + false_positive) if (true_positive + false_positive) > 0 else 0
    recall = true_positive / (true_positive + false_negative) if (true_positive + false_negative) > 0 else 0
    f1 = 2 * (precision * recall) / (precision + recall) if (precision + recall) > 0 else 0
    
    return {
        'precision': precision,
        'recall': recall,
        'f1_score': f1
    }

modelPath = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/best_model__snr_inf_buf_128.pt"
modelType = ""

testModel(modelType, modelPath)


# for buf in buffers:
#     bin2hdf5(buf=buf, nsamples_per_file = samples, setniq2read = True)
#     preprocessing(buf=buf)
#     for snr in snr_powers:
#         trainModel(buf=buf, snr= snr, epoch = epoch)