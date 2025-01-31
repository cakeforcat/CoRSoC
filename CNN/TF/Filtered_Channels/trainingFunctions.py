#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov 27 20:19:21 2024

@author: frankconway
"""

import numpy as np
import os as os
import h5py
from scipy.signal import spectrogram, firwin, fftconvolve
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
import random
import tensorflow as tf
from tensorflow.keras import layers, models
from tensorflow.keras import Sequential
from tensorflow.keras.layers import Dense, Conv1D, MaxPooling1D, LeakyReLU, Flatten, Input, BatchNormalization, Activation, ReLU
from tensorflow.keras.models import Model
import pandas as pd
import keras
import time
import scipy.io
from tensorflow.keras.layers import Conv2D, MaxPooling2D

import tensorflow as tf
from tensorflow.python.client import device_lib

# Check if TensorFlow can detect a GPU
gpus = tf.config.list_physical_devices('GPU')
if gpus:
    print(f"GPU is available: {gpus}")
else:
    print("No GPU detected.")

# List all devices TensorFlow can use
devices = device_lib.list_local_devices()
print(devices)


# training model 

buffers = [128, 256, 512, 1024]
samples = 10000
snr_powers = [0, 3, 5, 10, 15, 20]
epoch = 150



def bin2hdf5(buf = 128, stride = 12, nsamples_per_file = 10000, plot_spect = False, setniq2read = True):

    # Number of complex values to read from .bin file to generate desired amount of training/testing samples
    # If you want to read all the complex values set niq2read = -1
    if setniq2read:
        niq2read = (nsamples_per_file-1) * stride + buf
    else:
        niq2read = -1
    
    # Getting list of raw .bin files
    #bin_folder_fp = "../sdr_wifi/"               # filepath of folder contain .bin files
    bin_folder_fp = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/Code/deepsense-spectrum-sensing-datasets-main/sdr_wifi/"#"../sdr_wifi/"
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
    
     #folder = ['0000_day1.h5', '0000_day2.h5', '1111_day1.h5', '1111_day2.h5']
    
    folder.sort()
    
     # Generate dummy arrays to be contain entire dataset and dataset labels (can also use list and convert to np.array later)
    dataset_labels = np.zeros((1))
    dataset = np.zeros((1, buf, 2))
     
    dataset = []
    
    num_coef = 101
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
                        channels =  fftconvolve(complex_array, channelfilter_coef[filt][0,:], mode='same')                    
                        float_channel = np.stack((channels.real, channels.imag), axis=-1) 
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


def calculate_mean_power(signals):
    """
    Calculate the mean power of all signals in the dataset.

    Parameters:
        signals (numpy array): 2D signals.

    Returns:
        float: Mean power of all signals.
    """
    # Compute power of each signal (sum of squares of I/Q components)
    power_per_signal = np.mean(np.sum(signals**2, axis=2), axis=1)  # Shape: (3000,)
    
    # Calculate the mean power across all signals
    mean_power = np.mean(power_per_signal)
    return mean_power

def add_noise_to_signals(signals, snr_db, add_noise= True):
    """
    Add noise to a dataset of signals to achieve a specified SNR.

    Parameters:
        signals (numpy array).
        snr_db (float): Desired signal-to-noise ratio in dB.

    Returns:
        numpy array: Signals with added noise.
    """
    
    if not add_noise:
        return signals
    
    # Calculate mean power of all signals
    mean_power = calculate_mean_power(signals)

    # Convert SNR from dB to linear scale
    snr_linear = 10**(snr_db / 10)

    # Calculate noise power
    noise_power = mean_power / snr_linear

    # Generate noise for each signal
    noise = np.sqrt(noise_power) * np.random.normal(size=signals.shape)

    # Add noise to the signals
    noisy_signals = signals + noise
    return noisy_signals



def trainModel(buf, snr, epoch = 1):
    
    results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
    if not os.path.isdir(results):
        os.mkdir(results)
        os.chmod(results, 0o777)  # Sets full permissions

    
    
    #Open dataset .h5 file either for training or testing
    dset_fp = './sdr_wifi_' + "train" + '.hdf5'
    dset = h5py.File(dset_fp, 'r')
    X = dset['X'][()]
    y = dset['y'][()]

    #Model parameters
    n_classes = 1       #number of classes for SDR case
    dim = X.shape[1]    #Number of I/Q samples being taken as input
    n_channels = 2      #One channel for I and the other for Q
    X_noisey = add_noise_to_signals(X, snr, snr)
    
    modelType = '_snr_'+ str(snr)+'_buf_'+ str(buf) 
    
    
    
   #Build model
    inputs = Input(shape=(dim, n_channels))
    x = Conv1D(16, 3, input_shape=(dim, n_channels), name='conv1')(inputs)
    x = LeakyReLU(alpha=0.1)(x)
    x = Conv1D(16, 3, name='conv2')(x)
    x = LeakyReLU(alpha=0.1)(x)
    x = MaxPooling1D(pool_size=2, strides=2, name='pool1')(x)
    x = Conv1D(32, 5, name='conv3')(x)
    x = LeakyReLU(alpha=0.1)(x)
    x = Conv1D(32, 5, name='conv4')(x)
    x = LeakyReLU(alpha=0.1)(x)
    x = MaxPooling1D(pool_size=2, strides=2, name='pool2')(x)
    x = Flatten()(x)
    x = Dense(64, name='dense1')(x)
    x = LeakyReLU(alpha=0.1)(x)
    outputs = Dense(n_classes, activation='sigmoid', name='out')(x)
    model = Model(inputs=inputs, outputs=outputs)
    model.summary()
    
    

 #    #Compile Model
    adam = tf.keras.optimizers.Adam(learning_rate=0.001)
    model.compile(loss='binary_crossentropy',
                  optimizer=adam,
                  metrics=['accuracy'])



    checkpoint_callback = tf.keras.callbacks.ModelCheckpoint(
        filepath='./results/best_model'+modelType+'.keras',   # Path where the model will be saved
        monitor='val_accuracy',     # Metric to monitor
        save_best_only=True,        # Only save the model if it has the best accuracy so far
        mode='max',                 # "max" because we want the maximum accuracy
        save_weights_only=False     # Save the entire model, not just weights
    )
    
    # Define the EarlyStopping callback
    early_stopping_callback = tf.keras.callbacks.EarlyStopping(
        monitor='val_accuracy',  # Metric to monitor
        patience=50,  # Number of epochs with no improvement after which training will be stopped
        mode='max',  # "max" because we want to maximize the accuracy
        restore_best_weights=True  # Restore the best weights after stopping
    )

    # Train the model with both callbacks
    history = model.fit(
        x=X_noisey, y=y, 
        validation_split=0.1, 
        batch_size=256, 
        epochs=epoch, 
        verbose=1, shuffle=True,
        callbacks=[checkpoint_callback, early_stopping_callback]  # Pass both callbacks here
    )


    # Convert the history to a DataFrame and save as CSV
    history_df = pd.DataFrame(history.history)
    history_df.to_csv('./results/training_history_'+modelType+'.csv', index=False)
    
    testModel(modelType, './results/best_model'+modelType+'.keras')

def testModel(modelType, modelPath):

    #Open dataset .h5 file either for training or testing
    dset_fp = './sdr_wifi_' + "test" + '.hdf5'
    dset = h5py.File(dset_fp, 'r')
    X = dset['X'][()]
    y = dset['y'][()]
    
    #Load a pretrained model
    model = tf.keras.models.load_model(modelPath)

    #Test model
    score = model.evaluate(x=X, y=y, verbose=1)
    print('Loss: ' + str(score[0]))
    print('Acc: ' + str(score[1]))

    with open('./results/test_results'+modelType+'.txt', 'w') as f:
        f.write(f"Test Loss: {score[0]}\n")
        f.write(f"Test Accuracy: {score[1]}\n")
        

for buf in buffers:
    bin2hdf5(buf=buf, nsamples_per_file = samples)
    preprocessing(buf=buf)
    for snr in snr_powers:
        trainModel(buf=buf, snr= snr, epoch = epoch)