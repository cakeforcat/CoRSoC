#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec  3 10:44:53 2024

@author: frankconway
"""

#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Dec  1 12:13:11 2024

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
import tensorflow as tf
import matplotlib.pyplot as plt
from sklearn.metrics import roc_curve, auc
from tensorflow.python.client import device_lib
from scipy.signal import spectrogram, firwin, fftconvolve
import time
import scipy.io

# Check if TensorFlow can detect a GPU
gpus = tf.config.list_physical_devices('GPU')
if gpus:
    print(f"GPU is available: {gpus}")
else:
    print("No GPU detected.")

# List all devices TensorFlow can use
devices = device_lib.list_local_devices()
print(devices)


def bin2hdf5(buf = 128, stride = 12, nsamples_per_file = 10000, plot_spect = False, setniq2read = True):

    # plot_spect = True If you desire to plot the spectrogram of the samples set below to True
    # Parameters for training 1D CNN
    # buf = 1024#128                           # Size of input to CNN in number of I/Q samples
    # stride = 12                         # To create overlap between samples (if no overlap desired set stride = buf)"
    # nsamples_per_file = 10000         # Number of buf sized training/testing samples to be gathered from each .bin file
    
    # Number of complex values to read from .bin file to generate desired amount of training/testing samples
    # If you want to read all the complex values set niq2read = -1
    if setniq2read:
        niq2read = (nsamples_per_file-1) * stride + buf
    else:
        niq2read = -1

    
    # Getting list of raw .bin files
    bin_folder_fp = "../sdr_wifi/"               # filepath of folder contain .bin files
    bin_folder = os.listdir(bin_folder_fp)      # list of files in folder
    #bin_folder = ['0000_day1.bin', '0000_day2.bin', '1111_day1.bin', '1111_day2.bin'] # since only using section of data 
    
    # Filepath of folder that will contain the converted h5 files
    h5_folder_fp = "./sdr_wifi_h5_buf_"+str(buf)+"/"
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

    # Size of input to 1D CNN or number of complex samples being fed to 1D CNN (should be same as bin2hdf5.py)
    #buf = 1024#128
    
    # Percentage of dataset that will be used for testing
    #test_size = 0.1
    
    # Seed used for shuffling dataset
    seed = 42
    
    # Filepath containing directory with converted .h5 files
    h5_folder_fp = "./sdr_wifi_h5_buf_"+str(buf)+"/"
    folder = os.listdir(h5_folder_fp)

    #folder = ['0000_day1.h5', '0000_day2.h5', '1111_day1.h5', '1111_day2.h5']

    folder.sort()

    # Generate dummy arrays to be contain entire dataset and dataset labels (can also use list and convert to np.array later)
    dataset_labels = np.zeros((1))
    dataset = np.zeros((1, buf, 2))
    
    num_coef = 101
    channelfilter_coef = {}


    #path = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/"
    path = ''


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

                        #print(complex_array.shape)
                        # print(signal.shape)

                        channels =  fftconvolve(complex_array, channelfilter_coef[filt][0,:], mode='same')
                        # print(filtered_signal)

                        # float_array = np.stack((filtered_signal.real, filtered_signal.imag), axis=-1)

                        # Check the shape and content
                        # print(float_array.shape)  # Should be (1, 128, 2)
                        # print(float_array)
                       
                        float_channel = np.stack((channels.real, channels.imag), axis=-1) 
                       
                        #print("channels: ", float_channel.shape)
                        
                        #print("channel size: ", channels.shape)
                        
                        channels = np.expand_dims(float_channel, axis=0)
                        
                        dataset = np.concatenate((dataset, channels))
                
                
                # Append samples from current file to dataset
                    
    
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

    # Delete first entry of arrays as they contain zeros
    dataset = np.delete(dataset, 0, 0)
    dataset_labels = np.delete(dataset_labels, 0, 0)

    # Shuffle dataset and split into training and testing samples
    X_train, X_test, y_train, y_test = train_test_split(
        dataset, dataset_labels, test_size=test_size, random_state=seed)


    # Save test set
    f_test = h5py.File('./sdr_wifi_test_buf_'+str(buf)+'.hdf5', 'w')
    xtest = f_test.create_dataset('X', (X_test.shape[0], X_test.shape[1], X_test.shape[2]), dtype='f')
    ytest = f_test.create_dataset('y', (y_test.shape[0], ), dtype='i')
    xtest[()] = X_test
    ytest[()] = y_test


    # Save train set
    f_train = h5py.File('./sdr_wifi_train_buf_'+str(buf)+'.hdf5', 'w')
    xtrain = f_train.create_dataset('X', (X_train.shape[0], X_train.shape[1], X_train.shape[2]), dtype='f')
    ytrain = f_train.create_dataset('y', (y_train.shape[0], ), dtype='i')
    xtrain[()] = X_train
    ytrain[()] = y_train

    # Close Files
    f_test.close()
    f_train.close()




buffers = [128, 256, 512, 1024, 1024*2, 1024*2**2, 1024*2**3]
samples = 10
snr_powers = [0,3, 10, 20, 60]


for buf in buffers:
    bin2hdf5(buf=buf, nsamples_per_file = samples)
    preprocessing(buf=buf)



