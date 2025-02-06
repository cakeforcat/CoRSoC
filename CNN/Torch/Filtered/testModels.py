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

def generate_empty_channel(num_channels=1, num_samples=1024, bandwidth=8e6, sample_rate=8e6, noise_power_db=-90):
    """
    Generate complex IQ samples simulating empty channels with thermal noise.
    Values are normalized between -1 and 1.
    
    Parameters:
    num_channels (int): Number of channels/sets of samples to generate
    num_samples (int): Number of samples per channel
    bandwidth (float): Channel bandwidth in Hz (default: 8 MHz)
    sample_rate (float): Sampling rate in Hz (default: 16 MHz)
    noise_power_db (float): Noise power in dBm (default: -90 dBm)
    
    Returns:
    numpy.ndarray: Complex array of IQ samples with shape (num_channels, num_samples)
    """
    # Initialize array to store multiple channels
    iq_samples_all = np.zeros((num_channels, num_samples, 2), dtype=complex)
    
    for channel in range(num_channels):
        # Convert noise power from dBm to linear scale
        noise_power_linear = 10 ** (noise_power_db/10) / 1000
        
        # Generate complex Gaussian noise
        noise_std = np.sqrt(noise_power_linear/2)
        i_samples = np.random.normal(0, noise_std, num_samples)
        q_samples = np.random.normal(0, noise_std, num_samples)
        
        # Combine into complex samples
        iq_samples = i_samples + 1j * q_samples
        
        # Apply bandwidth limitation using FFT
        freqs = np.fft.fftfreq(num_samples, 1/sample_rate)
        freq_response = np.abs(freqs) <= bandwidth/2
        
        # Transform to frequency domain, apply filter, and back to time domain
        iq_freq = np.fft.fft(iq_samples)
        iq_freq_filtered = iq_freq * freq_response
        iq_filtered = np.fft.ifft(iq_freq_filtered)
        
        # Normalize to [-1, 1] range
        max_magnitude = np.max(np.abs(iq_filtered))
        iq_normalized = iq_filtered / max_magnitude
        
        # Store in the array
        iq_samples_all[channel] = np.stack((iq_normalized.real, iq_normalized.imag), axis=-1) #iq_normalized
        
     # float_channel = 
     # #channels = np.expand_dims(float_channel, axis=0)
     
     # #dataset = np.concatenate((dataset, channels))
     # dataset.append(float_channel)
    return iq_samples_all

def generate_bpsk_signal(num_channels=1, num_samples=1024, bandwidth=8e6, sample_rate=8e6, snr_db=20):
    """
    Generate complex IQ samples simulating a BPSK signal with 8MHz bandwidth.
    Signal is centered at 0Hz, spanning -4MHz to 4MHz.
    Values are normalized between -1 and 1.
    
    Parameters:
    num_channels (int): Number of channels/sets of samples to generate
    num_samples (int): Number of samples per channel
    bandwidth (float): Signal bandwidth in Hz (default: 8 MHz)
    sample_rate (float): Sampling rate in Hz (default: 8 MHz)
    snr_db (float): Signal-to-Noise Ratio in dB (default: 20 dB)
    
    Returns:
    numpy.ndarray: Complex array of IQ samples with shape (num_channels, num_samples)
    """
    # Initialize array to store multiple channels
    iq_samples_all = np.zeros((num_channels, num_samples,2), dtype=complex)
    
    # Calculate symbol rate to achieve desired bandwidth (bandwidth = symbol_rate)
    # For BPSK, the main lobe bandwidth is approximately equal to the symbol rate
    symbol_rate = bandwidth
    
    # Calculate samples per symbol
    samples_per_symbol = int(sample_rate / symbol_rate)
    
    # Ensure at least 1 sample per symbol
    samples_per_symbol = max(1, samples_per_symbol)
    
    for channel in range(num_channels):
        # Generate random bits
        num_symbols = int(np.ceil(num_samples / samples_per_symbol))
        bits = np.random.randint(0, 2, num_symbols)
        
        # Convert bits to BPSK symbols (-1 and 1)
        symbols = 2 * bits - 1
        
        # Upsample symbols to sample rate
        symbol_samples = np.repeat(symbols, samples_per_symbol)
        symbol_samples = symbol_samples[:num_samples]
        
        # Apply bandwidth limiting using FFT
        signal_fft = np.fft.fft(symbol_samples)
        freqs = np.fft.fftfreq(num_samples, 1/sample_rate)
        
        # Create frequency mask for -4MHz to 4MHz
        freq_mask = np.abs(freqs) <= bandwidth/2
        signal_fft *= freq_mask
        
        # Convert back to time domain
        bpsk_signal = np.fft.ifft(signal_fft)
        
        # Add noise based on SNR
        signal_power = np.mean(np.abs(bpsk_signal)**2)
        noise_power = signal_power / (10**(snr_db/10))
        noise = np.sqrt(noise_power/2) * (np.random.normal(0, 1, num_samples) + 
                                        1j * np.random.normal(0, 1, num_samples))
        
        # Apply same bandwidth limiting to noise
        noise_fft = np.fft.fft(noise)
        noise_fft *= freq_mask
        filtered_noise = np.fft.ifft(noise_fft)
        
        # Combine signal and noise
        iq_samples = bpsk_signal + filtered_noise
        
        # Normalize to [-1, 1] range
        max_magnitude = np.max(np.abs(iq_samples))
        iq_normalized = iq_samples / max_magnitude
        
     
        
        # Store in the array
        iq_samples_all[channel] = np.stack((iq_normalized.real, iq_normalized.imag), axis=-1) #iq_normalized
        
    
    return iq_samples_all

def testModel(modelType, modelPath):

    # #Open dataset .h5 file either for training or testing
    # dset_fp = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/sdr_wifi_test.hdf5"#'./sdr_wifi_' + "test" + '.hdf5'
    # dset = h5py.File(dset_fp, 'r')
    # X = dset['X'][()]
    # y = dset['y'][()]
    # dim = X.shape[1]
    
    dim = 52
    
    X = generate_bpsk_signal(100,dim,snr_db=-900)
    y = np.ones(100)
    
    
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
    
    print(f"Begining Testing with: {X.shape[0]} samples")

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
        print(predictions)
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

def plot_iq_fft(iq_signal, sample_rate, title="IQ Signal FFT"):
    """
    Plot the FFT of an IQ signal to visualize frequency components.
    
    Parameters:
    iq_signal (numpy.array): Complex IQ signal array
    sample_rate (float): Sampling rate in Hz
    title (str): Title for the plot
    
    Returns:
    tuple: Figure and axis objects for further customization if needed
    """
    # Calculate FFT
    fft_result = np.fft.fftshift(np.fft.fft(iq_signal))
    
    # Calculate frequency axis
    n_samples = len(iq_signal)
    freq_axis = np.fft.fftshift(np.fft.fftfreq(n_samples, 1/sample_rate))
    
    # Calculate magnitude in dB
    magnitude_db = 20 * np.log10(np.abs(fft_result) / np.max(np.abs(fft_result)))
    
    # Create plot
    fig, ax = plt.subplots(figsize=(12, 6))
    
    # Plot magnitude spectrum
    ax.plot(freq_axis / 1e3, magnitude_db)
    
    # Customize plot
    ax.set_xlabel('Frequency (kHz)')
    ax.set_ylabel('Magnitude (dB)')
    ax.set_title(title)
    ax.grid(True)
    ax.set_ylim([-80, 5])  # Set reasonable dB range
    
    # Add vertical line at DC (0 Hz)
    ax.axvline(x=0, color='r', linestyle='--', alpha=0.5)
    
    plt.tight_layout()
    return fig, ax


#testModel(modelType, modelPath)

chan = generate_bpsk_signal(1, 1024)

complex_array = chan[0, :, 0] + 1j * chan[0, :, 1]

plot_iq_fft(complex_array,8e6)




# for buf in buffers:
#     bin2hdf5(buf=buf, nsamples_per_file = samples, setniq2read = True)
#     preprocessing(buf=buf)
#     for snr in snr_powers:
#         trainModel(buf=buf, snr= snr, epoch = epoch)