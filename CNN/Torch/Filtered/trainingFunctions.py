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


# # Check if MPS (Apple Silicon GPU) is available
# if torch.backends.mps.is_available():
#     print("MPS device is available.")
#     mps_device = torch.device("mps") 
#     # Create a tensor on the MPS device
#     x = torch.ones(1, device=mps_device)
#     print(x) 
# else:
#     print("MPS device not found.")


# training model 

buffers = [128, 256, 512, 1024]
samples = 100000
snr_powers = [np.inf, 3, 5, 10, 15, 20]
epoch = 100




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



def bin2hdf5(buf = 128, stride = 12, nsamples_per_file = 10000, plot_spect = False, setniq2read = True):

    
    # Number of complex values to read from .bin file to generate desired amount of training/testing samples
    # If you want to read all the complex values set niq2read = -1
    if setniq2read:
        niq2read = (nsamples_per_file-1) * stride + buf
    else:
        niq2read = -1

    
    # Getting list of raw .bin files
    bin_folder_fp = "/users/kfb20135/project5/deepsense-spectrum-sensing-datasets-main/sdr_wifi/"               # filepath of folder contain .bin files
    #bin_folder_fp = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/deepsense-spectrum-sensing-datasets-main/sdr_wifi/"#"../sdr_wifi/"               # filepath of folder contain .bin files
                  # filepath of folder contain .bin files
    bin_folder = os.listdir(bin_folder_fp)      # list of files in folder
    
    # Filepath of folder that will contain the converted h5 files
    h5_folder_fp = "./sdr_wifi_h5_filtered/"
    if not os.path.isdir(h5_folder_fp):
        os.mkdir(h5_folder_fp)
    
    # Number of complex values to skip over before reading
    offset = 0
    
    # Iterate through each .bin file and add contents to .h5 file
    for file in bin_folder:
        if not os.path.isdir(bin_folder_fp + file):
            with open(bin_folder_fp + file) as binfile:
                # Extract desired number of samples
                samps = np.fromfile(binfile, dtype=np.complex64, count=niq2read, offset=offset)
    
                # Plot samples
                if plot_spect:
    
                    #Generate spectrogram at sampling rate of 20MHz
                    f, t, Sxx = spectrogram(samps, 20000000,return_onesided=False)
    
                    # Compensate for FFT Shift caused by GNU Radio
                    Sxx = np.fft.fftshift(Sxx, axes=0)
    
                    # Plot spectrogram
                    # play with vmax to better see certain transmissions
                    plt.pcolormesh(t, np.fft.fftshift(f), Sxx, shading='auto', vmax=np.max(Sxx)/100)
                    plt.ylabel('Frequency [Hz]')
                    plt.xlabel('Time [sec]')
                    plt.title(file)
                    plt.show()
    
                # Turn 1D complex array of raw samples and reshape into a 2D array containing I and Q as floats
                samps = np.transpose(np.stack((np.real(samps), np.imag(samps))))
    
                # Break long 2D array containing all I/Q values into multiple training/testing samples with overlap
                # depending on size of input to the CNN and overlap between samples
                samps = np.array([samps[k:k + buf] for k in range(0, len(samps) - 1 - buf, stride)])
    
    
                #Create .h5 file with same name as .bin file and fill with reshaped samples
                name = os.path.splitext(file)[0]
                f = h5py.File(h5_folder_fp + name + '.h5', 'w')
                dset = f.create_dataset(name, (samps.shape[0], samps.shape[1], samps.shape[2]), dtype='f')
                dset[()] = samps
                f.close()
                
def preprocessing(buf = 128, test_size = 0.1,):

    
    # Seed used for shuffling dataset
    seed = 42
    
    # Filepath containing directory with converted .h5 files
    h5_folder_fp = "sdr_wifi_h5_filtered/"
    folder = os.listdir(h5_folder_fp)

    folder.sort()

    # Generate dummy arrays to be contain entire dataset and dataset labels (can also use list and convert to np.array later)
    dataset_labels = np.zeros((1))
    dataset = np.zeros((1, buf, 2))

    dataset = []

    channelfilter_coef = {}

    #path = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/"
    #path = '/users/kfb20135/project5/deepsense-spectrum-sensing-datasets-main/'
    
    path = '/users/kfb20135/project5/deepsense-spectrum-sensing-datasets-main/torch/filtered/'
    
    channelfilter_coef["ch_1"] = scipy.io.loadmat(path+'weights1.mat')["exp_W1"]
    channelfilter_coef["ch_2"] = scipy.io.loadmat(path+'weights2.mat')["exp_W2"]
    channelfilter_coef["ch_3"] = scipy.io.loadmat(path+'weights3.mat')["exp_W3"]
    channelfilter_coef["ch_4"] = scipy.io.loadmat(path+'weights4.mat')["exp_W4"]
    print("\n\nGot Filters\n\n")

    filters = ["ch_1","ch_2","ch_3","ch_4"]
    
    b, a = butter_lowpass()
    resample_filt = resample_filter()


    for file in folder: 
        start_time = time.time()
        if not os.path.isdir(h5_folder_fp + file):

            # Open .h5 folder and extract data
            try:
                print(h5_folder_fp + file)
                f = h5py.File(h5_folder_fp + file, 'r')
                name = os.path.splitext(file)[0]
                data = f[name][()]
    
                #print(data.shape[0])
                for i in range(data.shape[0]):
                    for filt in filters:
                        
                        
                        complex_array = data[i, :, 0] + 1j * data[i, :, 1]
                        
                        
                        
                        channels =  fftconvolve(complex_array, channelfilter_coef[filt][0,:], mode='same')  
                        label = list(name.split('_')[0]) 
                        
                       # fig, ax = plot_iq_fft(complex_array, 20e6, title="IQ Spectrum of channel "+str(label))
                        #plt.show()
                        
                        #fig, ax = plot_iq_fft(channels, 20e6, title="Filtered IQ Spectrum of channel "+str(label))
                        #plt.show()
                        
                        
                        #centred, fig, ax = centre_iq(channels, filt, buf, lp_filter=(a,b))
                        centred = centre_iq(channels, filt, buf, lp_filter=(a,b))
                        
                        # plt.show()
                        
                        
                        
                        #resampled, fig, ax = resample_iq(centred, fs_in=20e6, fs_out=8e6, lp_filter=resample_filt)
                        resampled = resample_iq(centred, fs_in=20e6, fs_out=8e6, lp_filter=resample_filt)
                        #plt.show()
                        
                        float_channel = np.stack((resampled.real, resampled.imag), axis=-1) 
                        #channels = np.expand_dims(float_channel, axis=0)
                        
                        #dataset = np.concatenate((dataset, channels))
                        dataset.append(float_channel)
    
                # Generates the multi-hot encoded labels from the file name
                label = list(name.split('_')[0])    # Take part of filename that contains labels
                label = list(map(int, label))       # Convert string to multi-hot list
                label = [label] * data.shape[0] # Generate label for each training sample in file
                #print(label)
                
                # if just traing on full channels and empty channels use:
                    #label = [np.any(label)] * data.shape[0]*4
                    # and remove flatten()
                
                label = np.array(label).flatten()
                label = np.array(label, dtype='i')  # Convert list of labels to np.array
                #print(label)
                #for i in range(4):
                dataset_labels = np.concatenate((dataset_labels, label))    # Append to labels for entire dataset
            except Exception as e:
                print("error with:", h5_folder_fp + file, "\n", e)
            end_time = time.time()
    
            print(f"Time taken for convolution: {end_time - start_time:.6f} seconds")
            print("File Finished: ",file)
            
            
    f.close()
    dataset = np.array(dataset)
    print(dataset.shape)
    # Delete first entry of arrays as they contain zeros
    #dataset = np.delete(dataset, 0, 0)
    dataset_labels = np.delete(dataset_labels, 0, 0)

    # Shuffle dataset and split into training and testing samples
    X_train, X_test, y_train, y_test = train_test_split(
        dataset, dataset_labels, test_size=test_size, random_state=seed)


    # Save test set
    f_test = h5py.File('./sdr_wifi_test.hdf5', 'w')
    xtest = f_test.create_dataset('X', (X_test.shape[0], X_test.shape[1], X_test.shape[2]), dtype='f')
    ytest = f_test.create_dataset('y', (y_test.shape[0], ), dtype='i')
    xtest[()] = X_test
    ytest[()] = y_test


    # Save train set
    f_train = h5py.File('./sdr_wifi_train.hdf5', 'w')
    xtrain = f_train.create_dataset('X', (X_train.shape[0], X_train.shape[1], X_train.shape[2]), dtype='f')
    ytrain = f_train.create_dataset('y', (y_train.shape[0], ), dtype='i')
    xtrain[()] = X_train
    ytrain[()] = y_train

    # Close Files
    f_test.close()
    f_train.close()
    
# Design a low-pass filter at cut off 
def butter_lowpass(cutoff=4e6, fs=16e6, order=5):
    nyq = 0.5 * fs
    normal_cutoff = cutoff / nyq
    b, a = butter(order, normal_cutoff, btype='low', analog=False)
    return b, a

# Plotting the spectrum
def plot_spectrum(sig, fs):
    freqs = np.fft.fftfreq(len(sig), 1/fs)
    spectrum = np.fft.fft(sig)
    #fig, ax = plt.figure(figsize=(10, 4))
    fig, ax = plt.subplots(figsize=(10, 4))
    ax.plot(np.fft.fftshift(freqs)/1e6, 20 * np.log10(np.abs(np.fft.fftshift(spectrum))))
    ax.set_title('Filtered Channel Centered at 0 Hz')
    ax.set_xlabel('Frequency (MHz)')
    ax.set_ylabel('Magnitude (dB)')
    ax.grid(True)

    plt.tight_layout()
    
    return fig, ax

def centre_iq(signal, channel_no, buf, fs=20e6, cutoff_freq=5e6, lp_filter= None):
    # Parameters
    # fs = 20e6  # Sampling rate: 20 MS/s
    #fs = 16e6
    t = np.linspace(0, (buf/fs), buf) # Time vector for 1 second of data
    channel_dic = {"ch_1": -7.5e6, "ch_2": -2.5e6, "ch_3": 2.5e6, "ch_4": 7.5e6}
    #channel_dic = {"ch_1": -6e6, "ch_2": -2e6, "ch_3": 2e6, "ch_4": 6e6}
    
    # Choose the channel to center at 0 Hz (example: Channel 3 at 2.5 MHz)
    f_shift = channel_dic[channel_no]  # Frequency to shift
    
    # Frequency shift to baseband
    shifted_signal = signal * np.exp(-2j * np.pi * f_shift * t)
    
    # cutoff_freq = 2.5e6  # 2.5 MHz cutoff
    #cutoff_freq = 4e6
    #b, a = butter_lowpass(cutoff_freq, fs)
    filtered_signal = lfilter(lp_filter[1], lp_filter[0], shifted_signal)
    
    #plot_spectrum(signal, fs, 'Original Signal Spectrum')
    #plot_spectrum(shifted_signal, fs, 'Shifted Signal Spectrum (before filtering)')
    #fig, ax = plot_iq_fft(filtered_signal, fs, title='Centred Signal')
    
    return filtered_signal#, fig, ax

def resample_filter(fs_in=20e6, fs_out=8e6):
    
    # Calculate the greatest common divisor for up/down sampling factors
    gcd = np.gcd(int(fs_in), int(fs_out))
    up_factor = int(fs_out / gcd)
    down_factor = int(fs_in / gcd)
    
    cutoff_freq = fs_out/2  # 2 MHz for 4 MHz bandwidth
    nyq = max(fs_in * up_factor, fs_out * down_factor) / 2
    
    # Use a narrower transition width for better frequency response
    width = 0.05 * cutoff_freq  # Transition width (100 kHz)
    ripple_db = 80  # Increased stop band attenuation
    
    # # Calculate filter taps - use more taps for sharper cutoff
    # n_taps = int(8 * ripple_db * fs_in / width)
    # if n_taps % 2 == 0:
    #     n_taps += 1  # Ensure odd number of taps
    
    n_taps = 150
    # Create symmetric filter around 0 Hz
    taps = signal.firwin(n_taps, cutoff_freq / nyq, window='hamming')
    
    return taps
    

def resample_iq(iq_samples, fs_in=20e6, fs_out=8e6, lp_filter = None):
    """
    Resample zero-centered baseband IQ samples while preserving frequency content
    symmetrically around 0 Hz.
    
    Parameters:
    -----------
    iq_samples : numpy.ndarray
        Complex IQ samples to resample
    fs_in : float
        Input sampling frequency in Hz (default: 5e6)
    fs_out : float
        Output sampling frequency in Hz (default: 4e6)
    
    Returns:
    --------
    numpy.ndarray
        Resampled IQ samples
    """
    # Calculate the greatest common divisor for up/down sampling factors
    gcd = np.gcd(int(fs_in), int(fs_out))
    up_factor = int(fs_out / gcd)
    down_factor = int(fs_in / gcd)
    
    # # Design a lowpass FIR filter
    # # For baseband signal, cutoff needs to be at ±2 MHz (half of output bandwidth)
    # cutoff_freq = fs_out/2  # 2 MHz for 4 MHz bandwidth
    # nyq = max(fs_in * up_factor, fs_out * down_factor) / 2
    
    # # Use a narrower transition width for better frequency response
    # width = 0.05 * cutoff_freq  # Transition width (100 kHz)
    # ripple_db = 80  # Increased stop band attenuation
    
    # # Calculate filter taps - use more taps for sharper cutoff
    # n_taps = int(8 * ripple_db * fs_in / width)
    # if n_taps % 2 == 0:
    #     n_taps += 1  # Ensure odd number of taps
    
    # # Create symmetric filter around 0 Hz
    # taps = signal.firwin(n_taps, cutoff_freq / nyq, window='hamming')
    
    taps = lp_filter
    
    # Perform the resampling using polyphase filtering
    resampled = signal.resample_poly(iq_samples, up_factor, down_factor, window=taps)
    
   # print(f'F_s out: {fs_out}')
    
   # fig, ax = plot_iq_fft(resampled, fs_out, title="Resampled signal")
    
    return resampled#, fig, ax
                


# def calculate_mean_power(signals):
#     """
#     Calculate the mean power of all signals in the dataset.

#     Parameters:
#         signals (numpy array): Array of 2D signals.

#     Returns:
#         float: Mean power of all signals.
#     """
#     # Compute power of each signal (sum of squares of I/Q components)
#     power_per_signal = np.mean(np.sum(signals**2, axis=2), axis=1)  # Shape: (3000,)
    
#     # Calculate the mean power across all signals
#     mean_power = np.mean(power_per_signal)
#     return mean_power

# def add_noise_to_signals(signals, snr_db, add_noise= True):
#     """
#     Add noise to a dataset of signals to achieve a specified SNR.

#     Parameters:
#         signals (numpy array): Array of shape.
#         snr_db (float): Desired signal-to-noise ratio in dB.

#     Returns:
#         numpy array: Signals with added noise.
#     """
    
#     if not add_noise:
#         return signals
    
#     # Calculate mean power of all signals
#     mean_power = calculate_mean_power(signals)

#     # Convert SNR from dB to linear scale
#     snr_linear = 10**(snr_db / 10)

#     # Calculate noise power
#     noise_power = mean_power / snr_linear

#     # Generate noise for each signal
#     noise = np.sqrt(noise_power) * np.random.normal(size=signals.shape)

#     # Add noise to the signals
#     noisy_signals = signals + noise
#     return noisy_signals

def add_noise_at_snr(samples, labels, target_snr_db, noise_floor_db=None):
    """
    Add noise to signal samples to achieve a specific SNR in dB.
    
    Parameters:
    -----------
    samples : numpy.ndarray
        Array of shape (n, 2, 128) containing IQ samples
    labels : numpy.ndarray
        Array of shape (n) containing binary labels (0: no signal, 1: signal present)
    target_snr_db : float
        Desired Signal-to-Noise Ratio in dB
    noise_floor_db : float, optional
        Known noise floor in dB. If None, it will be calculated from noise-only samples
        
    Returns:
    --------
    numpy.ndarray
        New array of same shape as samples with noise added to signal samples
    dict
        Statistics about the noise addition process
    """
    # Make a copy of the input samples to avoid modifying the original
    noisy_samples = samples.copy()
    
    if np.isinf(target_snr_db):
        stats = {
            'num_signal_samples': np.sum(labels == 1),
            'noise_floor_db': noise_floor_db if noise_floor_db is not None else 'Not calculated',
            'target_snr_db': np.inf,
            'added_noise_power_db': -np.inf,
            'message': 'No noise added (infinite SNR requested)'
        }
        return noisy_samples, stats
    
    # Get signal samples
    signal_indices = np.where(labels == 1)[0]
    
    if len(signal_indices) == 0:
        raise ValueError("No signal samples found in the dataset")
    
    # Calculate noise floor if not provided
    if noise_floor_db is None:
        noise_indices = np.where(labels == 0)[0]
        if len(noise_indices) == 0:
            raise ValueError("No noise-only samples found to calculate noise floor")
        noise_samples = samples[noise_indices]
        i_noise = noise_samples[:, :, 0]
        q_noise = noise_samples[:, :, 1]
        noise_power = np.mean(i_noise**2 + q_noise**2)
        noise_floor_db = 10 * np.log10(noise_power)
    
    # Convert noise floor from dB to linear scale
    noise_power = 10**(noise_floor_db/10)
    
    # Process each signal sample
    for idx in signal_indices:
        # Calculate signal power
        i_signal = samples[idx, :, 0]
        q_signal = samples[idx, :, 1]
        signal_power = np.mean(i_signal**2 + q_signal**2)
        current_snr_db = 10 * np.log10(signal_power / noise_power)
        
        # Calculate required noise power to achieve target SNR
        required_noise_power = signal_power / (10**(target_snr_db/10))
        
        # Generate complex Gaussian noise
        noise_scaling = np.sqrt(required_noise_power/2)  # Divide by 2 for I and Q components
        noise_i = np.random.normal(0, noise_scaling, size=128)
        noise_q = np.random.normal(0, noise_scaling, size=128)
        
        # Add noise to signal
        noisy_samples[idx, :, 0] = i_signal + noise_i
        noisy_samples[idx, :, 1] = q_signal + noise_q
    
    # Calculate statistics
    stats = {
        'num_signal_samples': len(signal_indices),
        'noise_floor_db': noise_floor_db,
        'target_snr_db': target_snr_db,
        'original_signal_power_db': 10 * np.log10(signal_power),
        'added_noise_power_db': 10 * np.log10(required_noise_power)
    }
    
    return noisy_samples, stats


def add_noise_at_snr(samples, labels, target_snr_db, noise_floor_db=None):
    """
    Add noise to signal samples to achieve a specific SNR in dB.
    Handles infinite SNR by returning original signals unchanged.
    
    Parameters:
    -----------
    samples : numpy.ndarray
        Array of shape (n, 2, 128) containing IQ samples
    labels : numpy.ndarray
        Array of shape (n) containing binary labels (0: no signal, 1: signal present)
    target_snr_db : float
        Desired Signal-to-Noise Ratio in dB. Use np.inf for no noise addition
    noise_floor_db : float, optional
        Known noise floor in dB. If None, it will be calculated from noise-only samples
        
    Returns:
    --------
    numpy.ndarray
        New array of same shape as samples with noise added to signal samples
    dict
        Statistics about the noise addition process
    """
    # Make a copy of the input samples to avoid modifying the original
    noisy_samples = samples.copy()
    sample_length = samples.shape[2]  # Get the actual length of samples
    
    # If SNR is infinite, return original samples with stats
    if np.isinf(target_snr_db):
        stats = {
            'num_signal_samples': np.sum(labels == 1),
            'noise_floor_db': noise_floor_db if noise_floor_db is not None else 'Not calculated',
            'target_snr_db': np.inf,
            'added_noise_power_db': -np.inf,
            'message': 'No noise added (infinite SNR requested)'
        }
        return noisy_samples, stats
    
    # Get signal samples
    signal_indices = np.where(labels == 1)[0]
    
    if len(signal_indices) == 0:
        raise ValueError("No signal samples found in the dataset")
    
    # Calculate noise floor if not provided
    if noise_floor_db is None:
        noise_indices = np.where(labels == 0)[0]
        if len(noise_indices) == 0:
            raise ValueError("No noise-only samples found to calculate noise floor")
        noise_samples = samples[noise_indices]
        i_noise = noise_samples[:, 0, :]
        q_noise = noise_samples[:, 1, :]
        noise_power = np.mean(i_noise**2 + q_noise**2)
        noise_floor_db = 10 * np.log10(noise_power)
    
    # Convert noise floor from dB to linear scale
    noise_power = 10**(noise_floor_db/10)
    
    # Process each signal sample
    for idx in signal_indices:
        # Get the signal vectors
        i_signal = samples[idx, 0, :]  # Shape should be (sample_length,)
        q_signal = samples[idx, 1, :]  # Shape should be (sample_length,)
        
        # Calculate signal power
        signal_power = np.mean(i_signal**2 + q_signal**2)
        current_snr_db = 10 * np.log10(signal_power / noise_power)
        
        # Calculate required noise power to achieve target SNR
        required_noise_power = signal_power / (10**(target_snr_db/10))
        
        # Generate complex Gaussian noise
        noise_scaling = np.sqrt(required_noise_power/2)  # Divide by 2 for I and Q components
        noise_i = np.random.normal(0, noise_scaling, size=sample_length)
        noise_q = np.random.normal(0, noise_scaling, size=sample_length)
        
        # Add noise to signal, maintaining correct shapes
        noisy_samples[idx, 0, :] = i_signal + noise_i
        noisy_samples[idx, 1, :] = q_signal + noise_q
    
    # Calculate statistics
    stats = {
        'num_signal_samples': len(signal_indices),
        'noise_floor_db': noise_floor_db,
        'target_snr_db': target_snr_db,
        'original_signal_power_db': 10 * np.log10(signal_power),
        'added_noise_power_db': 10 * np.log10(required_noise_power)
    }
    
    return noisy_samples, stats


def trainModel(buf, snr, epoch = 1):
    
    results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
    if not os.path.isdir(results):
        os.mkdir(results)
        os.chmod(results, 0o777)  # Sets full permissions
    
    seed = 42
    
    #Open dataset .h5 file either for training or testing
    dset_fp = './sdr_wifi_' + "train" + '.hdf5'
    dset = h5py.File(dset_fp, 'r')
    X = dset['X'][()]
    y = dset['y'][()]

    #Model parameters
    n_classes = 1       #number of classes for SDR case
    dim = X.shape[1]    #Number of I/Q samples being taken as input
    n_channels = 2      #One channel for I and the other for Q
    X_noisey = add_noise_at_snr(X, y, snr)[0]
    
    print(f'X.Shape: {X_noisey.shape}, y.shape: {len(y)}')
    
    # Shuffle dataset and split into training and testing samples
    X_train, X_test, y_train, y_test = train_test_split(
        X_noisey, y, test_size=0.1, random_state=seed)
    
    modelType = '_snr_'+ str(snr)+'_buf_'+ str(buf) 
    
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
    num_epochs = epoch
    best_accuracy = 0
    patience = 50
    counter = 0
    
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
    

   # Save training history to CSV
    history_df.to_csv(f'./results/training_history_{modelType}.csv', index=False)
    
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

for buf in buffers:
    bin2hdf5(buf=buf, nsamples_per_file = samples, setniq2read = True)
    preprocessing(buf=buf)
    for snr in snr_powers:
        trainModel(buf=buf, snr= snr, epoch = epoch)