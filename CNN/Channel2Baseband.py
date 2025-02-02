#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Feb  1 20:44:24 2025

@author: frankconway
"""

import numpy as np
import matplotlib.pyplot as plt
import os as os
import h5py
from scipy.signal import spectrogram
from sklearn.model_selection import train_test_split
import pandas as pd
from scipy.signal import fftconvolve
import time
import scipy

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

def bin2hdf5(buf = 128, stride = 12, nsamples_per_file = 10000, plot_spect = False, setniq2read = True):

    
    # Number of complex values to read from .bin file to generate desired amount of training/testing samples
    # If you want to read all the complex values set niq2read = -1
    if setniq2read:
        niq2read = (nsamples_per_file-1) * stride + buf
    else:
        niq2read = -1

    
    # Getting list of raw .bin files
    #bin_folder_fp = "../sdr_wifi/"               # filepath of folder contain .bin files
    bin_folder_fp = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/deepsense-spectrum-sensing-datasets-main/sdr_wifi/"#"../sdr_wifi/"               # filepath of folder contain .bin files
    #               # filepath of folder contain .bin files
    # bin_folder = os.listdir(bin_folder_fp)      # list of files in folder
    
    bin_folder =['1010_day1.bin','0101_day1.bin']# "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/deepsense-spectrum-sensing-datasets-main/sdr_wifi/1010_day1.bin"#"../sdr_wifi/"               # filepath of folder contain .bin files
    
    
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

    path = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/"
    #path = ''

    channelfilter_coef["ch_1"] = scipy.io.loadmat(path+'weights1.mat')["exp_W1"]
    channelfilter_coef["ch_2"] = scipy.io.loadmat(path+'weights2.mat')["exp_W2"]
    channelfilter_coef["ch_3"] = scipy.io.loadmat(path+'weights3.mat')["exp_W3"]
    channelfilter_coef["ch_4"] = scipy.io.loadmat(path+'weights4.mat')["exp_W4"]
    print("\n\nGot Filters\n\n")

    filters = ["ch_1","ch_2","ch_3","ch_4"]


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
                        label = list(name.split('_')[0]) 
                        
                        fig, ax = plot_iq_fft(complex_array, 20e6, title="IQ Spectrum of channel "+str(label))
                        plt.show()
 
            except Exception as e:
                print("error with:", h5_folder_fp + file, "\n", e)
            end_time = time.time()
    
            print(f"Time taken for convolution: {end_time - start_time:.6f} seconds")
            print("File Finished: ",file)
            
            
    f.close()

bin2hdf5(buf=2**10, nsamples_per_file = 2, setniq2read = True)
preprocessing(buf=2**10)
