#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr 17 08:30:23 2025

@author: frankconway
"""

import math
import os
import re
import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import pandas as pd
from sklearn.model_selection import train_test_split
from torchmetrics.classification import MultilabelAccuracy, MultilabelPrecision, MultilabelRecall, MultilabelF1Score
from copy import deepcopy


def filter_filenames(filenames, a=1, b=2):
    """
    Removes filenames ending in numbers between 5 and 9 (inclusive) before .npz.

    Args:
        filenames (list): List of filenames (strings).

    Returns:
        list: Filtered list of filenames.
    """
    filtered = []
    for name in filenames:
        match = re.search(r'_(\d+)\.npz$', name)
        if match:
            number = int(match.group(1))
            if number < a or number > b:
                filtered.append(name)
        else:
            # No number found, keep it
            filtered.append(name)
    return filtered

def normalize_array(arr):

  # Find the minimum and maximum values in the array.
  min_val = np.min(arr)
  max_val = np.max(arr)

  # Normalize the array to 8 bit 2's complement
  normalized_arr = 256 * (arr - min_val) / (max_val - min_val) - 128

  return normalized_arr


def get_data1d(path = 1, samples_per_block = 128):
   
    ############################
    if path == 1:
        folder = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/"
    elif path == 2:
        folder = "/mnt/c/Users/frank/OneDrive/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/"
    else:
        folder = path

    try:
        files = os.listdir(folder)
    except:
        print("File name not valid")
    

    filtered_files = filter_filenames(files, a=6, b=10)#filter_strings(files)

    n_blocks = math.floor(998400/samples_per_block)
    buffer_len = (n_blocks*samples_per_block)
    
    print(f"""
    No of files: {len(filtered_files)},
    Samples per block: {samples_per_block}, 
    No. blocks: {n_blocks},
    Floor: {math.floor(n_blocks)}, 
    New samples: {(math.floor(n_blocks)*samples_per_block)}, 
    Buffer len: {buffer_len}""")

    features = []
    labels = []
   
    for idx, npz in enumerate(filtered_files):
        
        a = np.load(os.path.join(folder, npz))

        arr = a['samples'][:buffer_len]
        reshaped_arr = arr.reshape(n_blocks, samples_per_block)

        real = reshaped_arr.real
        imag = reshaped_arr.imag
        
        float_arr = np.stack((real, imag), axis=-1) 
        
        features.extend(float_arr)

        labels.extend(np.tile(a["active_channels"], (n_blocks, 1)))
        # break

    features = np.asarray(features)
    
    n_features = features.shape[0]

    # Interleave along the last two dimensions
    features = features.reshape(n_features, samples_per_block*2)  # Or 

    
    labels = np.asarray(labels)
    
    print(labels)

    print(f"Features: {features.shape} Lable: {labels.shape}")

    
    normalized_array = normalize_array(features)
    
    print(f"Before Norm: Max({np.max(features)}), Min{np.min(features)})")
    print(f"After Norm: Max({np.max(normalized_array)}), Min{np.min(normalized_array)})")
    
    return normalized_array, labels

def get_data2d(path = 1, samples_per_block = 128):
   
    ############################
    if path == 1:
        folder = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/"
    elif path == 2:
        folder = "/mnt/c/Users/frank/OneDrive/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/"
    else:
        folder = path

    try:
        files = os.listdir(folder)
    except:
        print("File name not valid")
    

    filtered_files = filter_filenames(files, a=6, b=10)#filter_strings(files)

    n_blocks = math.floor(998400/samples_per_block)
    buffer_len = (n_blocks*samples_per_block)
    sqrt_shape = int(math.sqrt(samples_per_block))
    
    print(f"""
    No of files: {len(filtered_files)},
    Samples per block: {samples_per_block}, 
    No. blocks: {n_blocks},
    Floor: {math.floor(n_blocks)}, 
    New samples: {(math.floor(n_blocks)*samples_per_block)}, 
    Buffer len: {buffer_len}""")

    features = []
    labels = []
   
    for idx, npz in enumerate(filtered_files):
        
        a = np.load(os.path.join(folder, npz))

        arr = a['samples'][:buffer_len]
        reshaped_arr = arr.reshape(n_blocks, sqrt_shape, sqrt_shape)

        real = reshaped_arr.real
        imag = reshaped_arr.imag
        
        float_arr = np.stack((real, imag), axis=1) 
        
        features.extend(float_arr)

        labels.extend(np.tile(a["active_channels"], (n_blocks, 1)))
        # break

    features = np.asarray(features)
    labels = np.asarray(labels)
    
    print(labels)

    print(f"Features: {features.shape} Lable: {labels.shape}")

    
    normalized_array = normalize_array(features)
    
    print(f"Before Norm: Max({np.max(features)}), Min{np.min(features)})")
    print(f"After Norm: Max({np.max(normalized_array)}), Min{np.min(normalized_array)})")
    
    return normalized_array, labels

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

def trainModel(base_model, name, X_train, y_train, buf, num_epoch = 1, LR = [0.001, 0.0005, 0.0001], WD=[0.1, 0.01, 0.004]):
    
    results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
    if not os.path.isdir(results):
        os.mkdir(results)
        os.chmod(results, 0o777)  # Sets full permissions
    
    seed = 42
    
    device = get_device()
    
    X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=seed)
    
    for lr in LR: 
        for wd in WD:
            
            model = deepcopy(base_model)

            modelType = name+"_lr_"+ str(lr)+"_wd_"+str(wd)+'_buf_'+ str(buf)
            
            print(modelType)
            
            
            model.to(device)
           
           # Define optimizer and loss function
            optimizer = optim.AdamW(model.parameters(), lr=lr, weight_decay=wd)
            criterion = nn.BCEWithLogitsLoss()
        
           # Create DataLoader for training
            train_dataset = TensorDataset(torch.tensor(X_train, dtype=torch.float32), torch.tensor(y_train, dtype=torch.float32))
            train_loader = DataLoader(train_dataset, batch_size=256, shuffle=True)
            val_dataset = TensorDataset(torch.tensor(X_val, dtype=torch.float32), torch.tensor(y_val, dtype=torch.float32))
            val_loader = DataLoader(val_dataset, batch_size=256, shuffle=True)
        
            # Initialize metrics
            accuracy_func = MultilabelAccuracy(num_labels=4).to(device)
            precision_func = MultilabelPrecision(num_labels=4).to(device)
            recall_func = MultilabelRecall(num_labels=4).to(device)
            f1_score_func = MultilabelF1Score(num_labels=4).to(device)
            
            # Training loop
            num_epochs = num_epoch
            best_accuracy = 0
            patience = 20
            counter = 0
            
            # print(model)
            #summary(model,(2,dim))
            
            history_df = pd.DataFrame(columns=['epoch', 'accuracy','loss','precision', 'recall', 'F1-Score', 'val_accuracy','val_loss',
                                               'val_precision', 'val_recall', 'val_F1-Score'])
            print("here: ", range(num_epochs))
            for epoch in range(num_epochs):
               print("here",epoch)
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
        
                   inputs, labels = inputs.to(device), labels.to(device)
                   outputs = model(inputs)
                   
                    # Compute loss
                   loss = criterion(outputs, labels)
                   loss.backward()
                   optimizer.step()
                   
                   # keep rrack of loss 
                   running_loss += loss.item()
                   
                   predictions = torch.sigmoid(outputs) > 0.5
                   predictions = predictions.int()
        
                   # Calculate metrics 
                   correct += accuracy_func(predictions, labels)
                   precision += precision_func(predictions, labels)
                   recall += recall_func(predictions, labels)
                   f1 += f1_score_func(predictions, labels)
                   
                   no_loops += 1 # to normalise preccision recall
                   total += labels.size(0) # total no of samples 
            
               for inputs, labels in val_loader:\
                   
                  inputs, labels = inputs.to(device), labels.to(device)
                  
                   
                  optimizer.zero_grad()
                  outputs = model(inputs)
                  
                   # Compute loss
                  loss = criterion(outputs, labels)
                  val_running_loss += loss.item()
                  
                  predictions = torch.sigmoid(outputs) > 0.5
                  predictions = predictions.int()
        
                  # Calculate metrics 
                  val_correct += accuracy_func(predictions, labels)
                  val_precision += precision_func(predictions, labels)
                  val_recall += recall_func(predictions, labels)
                  val_f1 += f1_score_func(predictions, labels)
                  
                  val_no_loops += 1 # to normalise preccision recall
                  val_total += labels.size(0) # total no of samples 
        
               epoch_loss = running_loss / len(train_loader)
               epoch_accuracy = correct / no_loops
               epoch_recall = recall/no_loops
               epoch_precision = precision/no_loops
               epoch_f1 = f1/no_loops
               
               
               val_epoch_loss = val_running_loss / len(val_loader)
               val_epoch_accuracy = val_correct / val_no_loops
               val_epoch_recall = val_recall/val_no_loops
               val_epoch_precision = val_precision/val_no_loops
               val_epoch_f1 = val_f1/val_no_loops
               
        
               print(f'''Epoch {epoch+1}/{num_epochs}, Loss: {epoch_loss:.8f}, Accuracy: {epoch_accuracy:.8f}, F1-Score: {epoch_f1}, Precision: {epoch_precision}, Recall: {epoch_recall}
                     val_Loss: {val_epoch_loss:.8}, val_Accuracy: {val_epoch_accuracy:.8}, val_F1-Score: {val_epoch_f1}, Precision: {val_epoch_precision}, Recall: {val_epoch_recall}\n\n''')
        
        
               # history_df.loc[epoch] = [epoch, epoch_accuracy, epoch_loss, epoch_precision, epoch_recall, epoch_f1,
               #                          val_epoch_accuracy, val_epoch_loss, val_epoch_precision, val_epoch_recall, val_epoch_f1]
               
               history_df.loc[epoch] = [
                                        epoch,
                                        epoch_accuracy.cpu().item(),
                                        epoch_loss,
                                        epoch_precision.cpu().item(),
                                        epoch_recall.cpu().item(),
                                        epoch_f1.cpu().item(),
                                        val_epoch_accuracy.cpu().item(),
                                        val_epoch_loss,
                                        val_epoch_precision.cpu().item(),
                                        val_epoch_recall.cpu().item(),
                                        val_epoch_f1.cpu().item()
                                    ]

               
               # Save the model if it's the best so far
               if epoch_accuracy > best_accuracy:
                   best_accuracy = epoch_accuracy
                   torch.save(model.state_dict(), f'./results/best_model_{modelType}.pt')
                   best_model = f"./results/best_model_{modelType}.pt"
                   counter = 0  # Reset patience counter
               else:
                   counter += 1
                   if counter >= patience:
                       print("Early stopping triggered.")
                       break
            
        
           # Save training history to CSV
            history_df.to_csv(f'./results/training_history_{modelType}.csv', index=False)
            
            #testModel(modelType, f'./results/best_model_{modelType}.pt')
            
    return best_model

def testModel(model, modelPath, X_test, y_test):

    device = get_device()

    # Load the saved model state dictionary
    model.load_state_dict(torch.load(modelPath))
    
    # Set the model to evaluation mode
    model.eval()
    
    model.to(device)
    
    # Create DataLoader for training
    test_dataset = TensorDataset(torch.tensor(X_test, dtype=torch.float32), torch.tensor(y_test, dtype=torch.float32))
    test_loader = DataLoader(test_dataset, batch_size=256, shuffle=True)

     # Initialize metrics
    accuracy_func = MultilabelAccuracy(num_labels=4).to(device)
    precision_func = MultilabelPrecision(num_labels=4).to(device)
    recall_func = MultilabelRecall(num_labels=4).to(device)
    f1_score_func = MultilabelF1Score(num_labels=4).to(device)
    
    history_df = pd.DataFrame(columns=['test_accuracy','test_loss','test_precision', 'test_recall', 'test_F1-Score'])

     # Training loop

    running_loss = 0.0
    correct = 0
    total = 0
    no_loops =0
    precision =  0.0
    recall = 0.0
    f1 = 0.0

    with torch.no_grad():
        for inputs, labels in test_loader:
            
            inputs, labels = inputs.to(device), labels.to(device)

            # forward pass
            outputs = model(inputs)
             # Compute loss
            criterion = nn.BCEWithLogitsLoss()
    
            loss = criterion(outputs, labels)
            running_loss += loss.item()
    
            predictions = torch.sigmoid(outputs) > 0.5
            predictions = predictions.int()

            # Compute metrics
            correct += accuracy_func(predictions, labels)
            precision += precision_func(predictions, labels)
            recall += recall_func(predictions, labels)
            f1 += f1_score_func(predictions, labels)
            
            no_loops += 1
            total += labels.size(0)
         
        test_loss = running_loss / len(test_loader)
        test_accuracy = correct / no_loops
        test_recall = recall/no_loops
        test_precision = precision/no_loops
        test_f1 = f1/no_loops
      
        print(f'Testing; Loss: {test_loss}, Accuracy: {test_accuracy}, Recall: {test_recall}, Precision: {test_precision}, F1-Score: {test_f1}')

    history_df.loc[0] = [test_accuracy.cpu().item(), test_loss, test_precision.cpu().item(), test_recall.cpu().item(), test_f1.cpu().item()]
    
    substring = "best_model"
    
    start = modelPath.find(substring)
    start += len(substring)
    end = modelPath.find(".keras")
    
    modelType = modelPath[start:end] # Output: Start: 6, End: 11                      
    
    history_df.to_csv(f'./results/testing_history_{modelType}.csv', index=False)

# def trainModel(model, name, X_train, y_train, buf, epoch = 1, LR = [0.001, 0.0005, 0.0001], WD=[0.1, 0.01, 0.004]):
    
#     results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
#     if not os.path.isdir(results):
#         os.mkdir(results)
#         os.chmod(results, 0o777)  # Sets full permissions
    
#     seed = 42
    
#     X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=seed)

  
   
#    # Define optimizer and loss function
#     optimizer = optim.Adam(model.parameters(), lr=0.001)
#     criterion = nn.BCEWithLogitsLoss()

#    # Create DataLoader for training
#     train_dataset = TensorDataset(torch.tensor(X_train, dtype=torch.float32), torch.tensor(y_train, dtype=torch.float32))
#     train_loader = DataLoader(train_dataset, batch_size=256, shuffle=True)
#     val_dataset = TensorDataset(torch.tensor(X_val, dtype=torch.float32), torch.tensor(y_val, dtype=torch.float32))
#     val_loader = DataLoader(val_dataset, batch_size=256, shuffle=True)

#     # Training loop
#     num_epochs = epoch
#     best_accuracy = 0
#     patience = 20
#     counter = 0
    
#     # print(model)
#     #summary(model,(2,dim))
    
#     history_df = pd.DataFrame(columns=['epoch', 'accuracy','loss','precision', 'recall', 'F1-Score', 'val_accuracy','val_loss',
#                                        'val_precision', 'val_recall', 'val_F1-Score'])

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


#        history_df.loc[epoch] = [epoch, epoch_accuracy, epoch_loss, epoch_precision, epoch_recall, epoch_f1,
#                                 val_epoch_accuracy, val_epoch_loss, val_epoch_precision, val_epoch_recall, val_epoch_f1]
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



def get_device():
    
    if torch.backends.mps.is_available():
        device = torch.device("mps")
        print("Target device: mps (Apple Silicon GPU)")
    
    # Check for CUDA (NVIDIA GPU) support next (won't usually be true on Mac unless using an eGPU)
    elif torch.cuda.is_available():
        device = torch.device("cuda")
        # You can optionally print the specific CUDA device name
        print(f"Target device: cuda ({torch.cuda.get_device_name(0)})") # Gets name of first CUDA device
    
    # Default to CPU if neither MPS nor CUDA is available or compatible
    else:
        device = torch.device("cpu")
        print("Target device: cpu")
    
    return device