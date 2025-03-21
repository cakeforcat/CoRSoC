#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Mar  5 08:46:41 2025

@author: frankconway

"""
import numpy as np
import os as os
import h5py
from sklearn.model_selection import train_test_split
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import pandas as pd
#from torchsummary import summary
import brevitas.nn as qnn
from torchmetrics.classification import MultilabelAccuracy, MultilabelPrecision, MultilabelRecall, MultilabelF1Score


class CNNModel(nn.Module):
    def __init__(self, dim=128, n_channels=2, n_classes=1):
        super(CNNModel, self).__init__()
        
        self.conv1 = nn.Conv1d(in_channels=n_channels, out_channels=16, kernel_size=2)
        self.conv2 = nn.Conv1d(16, 16, kernel_size=3)
        self.pool1 = nn.AvgPool1d(kernel_size=2, stride=2)
        self.conv3 = nn.Conv1d(16, 32, kernel_size=5)
        self.conv4 = nn.Conv1d(32, 32, kernel_size=5)
        self.pool2 = nn.AvgPool1d(kernel_size=2, stride=2)
        self.flatten = nn.Flatten()
        self.relu = nn.ReLU()
        self.dense1 = nn.Linear(8032, 64)
        self.out = nn.Linear(64, n_classes)
        self.relu = nn.ReLU()

    def forward(self, x):
        # x = self._get_conv_output(x)
        x = self.relu(self.conv1(x))
        x = self.relu(self.conv2(x))
        x = self.pool1(x)
        x = self.relu(self.conv3(x))
        x = self.relu(self.conv4(x))
        x = self.pool2(x)
        x = self.flatten(x)
        x = self.relu(self.dense1(x))
        x = self.out(x)
        return x

class QuantCNNModel(nn.Module):
    def __init__(self, dim=128, n_channels=2, n_classes=1, width = 2):
        super(QuantCNNModel, self).__init__()
        
        self.conv1 = qnn.QuantConv1d(in_channels=n_channels, out_channels=16, kernel_size=2, bias=True, weight_bit_width=width)
        self.conv2 = qnn.QuantConv1d(16, 16, kernel_size=3, bias=True, weight_bit_width=width)
        self.pool1 = nn.AvgPool1d(kernel_size=2, stride=2)
        self.conv3 = qnn.QuantConv1d(16, 32, kernel_size=5, bias=True, weight_bit_width=width)
        self.conv4 = qnn.QuantConv1d(32, 32, kernel_size=5, bias=True, weight_bit_width=width)
        self.pool2 = nn.AvgPool1d(kernel_size=2, stride=2)
        self.flatten = nn.Flatten()
        self.relu = nn.ReLU(weight_bit_width=width)
        self.dense1 = qnn.QuantLinear(8032, 64, bias=True, weight_bit_width=width)
        self.out = qnn.QuantLinear(64, n_classes, bias=True, weight_bit_width=width)
        self.dropout = nn.Dropout(0.5)

    def forward(self, x):
        # x = self._get_conv_output(x)
        x = self.relu(self.conv1(x))
        x = self.relu(self.conv2(x))
        x = self.pool1(x)
        x = self.relu(self.conv3(x))
        x = self.relu(self.conv4(x))
        x = self.pool2(x)
        x = self.flatten(x)
        x = self.relu(self.dense1(x))
        x = self.out(x)
        return x



def trainModel(epoch = 1):
    
    results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
    if not os.path.isdir(results):
        os.mkdir(results)
        os.chmod(results, 0o777)  # Sets full permissions
    
    seed = 42
   
    ############################
    folder = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/"

    files = os.listdir(folder)

    filtered_files = filter_strings(files)
 
    factor = 8
    noFiles = len(filtered_files)

    arr = np.ndarray((int(7800*noFiles/factor),128*factor,2), float)
    labels = np.ndarray((int(7800*noFiles/factor),4))

    i = 0
    for idx, npz in enumerate(filtered_files):
        
        a = np.load(os.path.join(folder, npz))
        
        start_idx = (idx*int(7800/factor)) if idx <20 else (idx)*int(7800/factor)-1
        end_idx = (1+idx)*int(7800/factor) if idx <20 else (1+idx)*int(7800/factor)-1
        
        # print(f"start index: {start_idx}, end index {end_idx}, activate channels: {a['active_channels']}")
           
        reshaped_arr = a["samples"].reshape(int(7800/factor), 128*factor)
        
        float_array = np.stack((reshaped_arr.real, reshaped_arr.imag), axis=-1) 

        arr[start_idx:end_idx] = float_array
        labels[start_idx:end_idx] = np.tile(a["active_channels"],  (int(7800/factor), 1))

        i+=1
        if i >= noFiles:
            break
        
    normalized_array = normalize_array(arr)
    labels = labels[:-1]
    

    print(f"Original array min: {np.min(arr)}, max: {np.max(arr)}")
    print(f"Normalized array min: {np.min(normalized_array)}, max: {np.max(normalized_array)}")

    arr = normalized_array[:-1]

    # first split into train+val and test
    X_train_val, X_test, y_train_val, y_test = train_test_split(arr, labels, test_size=0.2, random_state=seed)

    # then split train+val into train and val
    X_train, X_val, y_train, y_val = train_test_split(X_train_val, y_train_val, test_size=0.5, random_state=seed)


#####################################

    modelType = "pluto"
    if torch.backends.mps.is_available():
        device = torch.device("mps")
    else:
        device = torch.device("cpu")

    print(f"Using device: {device}")

   # Instantiate the model
    model = QuantCNNModel(dim=1024, n_channels=2, n_classes=4)
    
    model.to(device)

   # Define optimizer and loss function
    optimizer = optim.Adam(model.parameters(), lr=0.001)
    criterion = nn.BCEWithLogitsLoss()

   # Create DataLoader for training
    train_dataset = TensorDataset(torch.tensor(X_train, dtype=torch.float32), torch.tensor(y_train, dtype=torch.float32))
    train_loader = DataLoader(train_dataset, batch_size=256, shuffle=True)
    test_dataset = TensorDataset(torch.tensor(X_test, dtype=torch.float32), torch.tensor(y_test, dtype=torch.float32))
    test_loader = DataLoader(test_dataset, batch_size=256, shuffle=True)

    # Training loop
    num_epochs = epoch
    best_accuracy = 0
    patience = 20
    counter = 0
    
    # Initialize metrics
    accuracy_func = MultilabelAccuracy(num_labels=4).to(device)
    precision_func = MultilabelPrecision(num_labels=4).to(device)
    recall_func = MultilabelRecall(num_labels=4).to(device)
    f1_score_func = MultilabelF1Score(num_labels=4).to(device)
    
    print(model)
    #summary(model,(2,dim))
    
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
           
           inputs, labels = inputs.to(device), labels.to(device)

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
           
           predictions = predictions.int()
           
           correct += accuracy_func(predictions, labels)
           precision += precision_func(predictions, labels)
           recall += recall_func(predictions, labels)
           f1 += f1_score_func(predictions, labels)
           
           no_loops += 1 # to normalise preccision recall
           total += labels.size(0) # total no of samples 
    
       for inputs, labels in test_loader:
          inputs, labels = inputs.to(device), labels.to(device)
           
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
          
          predictions = predictions.int()

        
        # Compute metrics
          val_correct += accuracy_func(predictions, labels)
          val_precision += precision_func(predictions, labels)
          val_recall += recall_func(predictions, labels)
          val_f1 += f1_score_func(predictions, labels)

          
          val_no_loops += 1 # to normalise preccision recall
          val_total += labels.size(0) # total no of samples 

       epoch_loss = running_loss / len(train_loader)
       epoch_accuracy = correct /no_loops
       epoch_recall = recall/no_loops
       epoch_precision = precision/no_loops
       epoch_f1 = f1/no_loops
       
       
       val_epoch_loss = val_running_loss / len(test_loader)
       val_epoch_accuracy = val_correct / val_no_loops
       val_epoch_recall = val_recall/val_no_loops
       val_epoch_precision = val_precision/val_no_loops
       val_epoch_f1 = val_f1/val_no_loops
       

       print(f'''Epoch {epoch+1}/{num_epochs}, Loss: {epoch_loss:.8f}, Accuracy: {epoch_accuracy:.8f}, F1-Score: {epoch_f1}, Precision: {epoch_precision}, Recall: {epoch_recall}
             val_Loss: {val_epoch_loss:.8}, val_Accuracy: {val_epoch_accuracy:.8}, val_F1-Score: {val_epoch_f1}, Precision: {val_epoch_precision}, Recall: {val_epoch_recall}\n\n''')


      # history_df.loc[epoch] = [epoch, val_epoch_accuracy, val_epoch_loss, val_epoch_precision, val_epoch_recall, val_epoch_f1]
       #Save the model if it's the best so far
       if epoch_accuracy > best_accuracy:
           best_accuracy = epoch_accuracy
           torch.save(model.state_dict(), f'./results/best_model_{modelType}.pt')
           counter = 0  # Reset patience counter
       else:
           counter += 1
           if counter >= patience:
               print("Early stopping triggered.")
               break
    

   # Save training history to CSV
    #history_df.to_csv(f'./results/training_history_{modelType}.csv', index=False)
    
    #testModel(modelType, f'./results/best_model_{modelType}.pt')

def testModel(modelType, modelPath):

    #Open dataset .h5 file either for training or testing
    dset_fp = './sdr_wifi_' + "test" + '.hdf5'
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




def normalize_array(arr):

  # find the minimum and maximum values in the array.
  min_val = np.min(arr)
  max_val = np.max(arr)

  normalized_arr = 2 * (arr - min_val) / (max_val - min_val) - 1

  return normalized_arr


def filter_strings(lst):
    filtered_list = [s for s in lst if not any(digit in s for digit in "9")]
    return filtered_list

trainModel(10)
#QauntCNNModel(1024,2,4)
