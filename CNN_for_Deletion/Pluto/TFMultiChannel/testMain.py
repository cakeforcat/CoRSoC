
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Feb 22 14:45:22 2025

@author: frankconway
"""
from models import res_net, deep_sense
import numpy as np
import os
import tensorflow as tf
import matplotlib.pyplot as plt
from tensorflow.keras import Sequential
from tensorflow.keras.layers import Dense, Conv1D, MaxPooling1D, LeakyReLU, Flatten, Input, Dropout, BatchNormalization, Add, GlobalAveragePooling1D
from tensorflow.keras.layers import Multiply, Softmax, Reshape, GlobalMaxPooling1D, Concatenate, Lambda, Bidirectional, LSTM
from tensorflow.keras import backend as K
from tensorflow.keras.models import Model
from tensorflow.keras.metrics import Precision, Recall, AUC, BinaryAccuracy,F1Score, AUC, CategoricalAccuracy
from tensorflow.keras.regularizers import l2
from sklearn.model_selection import train_test_split
from scipy.signal import welch

def normalize_array(arr):

  # find the minimum and maximum values in the array.
  min_val = np.min(arr)
  max_val = np.max(arr)

  normalized_arr = 2 * (arr - min_val) / (max_val - min_val) - 1

  return normalized_arr


def filter_strings(lst):
    filtered_list = [s for s in lst if not any(digit in s for digit in "46789")]
    return filtered_list



folder = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/"

files = os.listdir(folder)

filtered_files = filter_strings(files)


factor = 8

arr = np.ndarray((int(7800*400/factor),128*factor,2), float)
labels = np.ndarray((int(7800*400/factor),4))


for idx, npz in enumerate(filtered_files):
    
    a = np.load(os.path.join(folder, npz))
    
    start_idx = (idx*int(7800/factor)) if idx <20 else (idx)*int(7800/factor)-1
    end_idx = (1+idx)*int(7800/factor) if idx <20 else (1+idx)*int(7800/factor)-1
    
    print(f"start index: {start_idx}, end index {end_idx}, activate channels: {a['active_channels']}")
 
    
    reshaped_arr = a["samples"].reshape(int(7800/factor), 128*factor)
    #f, welch = welch(reshaped_arr, fs=16e6, nperseg=2560)
    #fft = np.abs(np.fft.fftshift(np.fft.fft(reshaped_arr, 128*factor)))
    
    float_array = np.stack((reshaped_arr.real, reshaped_arr.imag), axis=-1) 

    arr[start_idx:end_idx] = float_array
    labels[start_idx:end_idx] = np.tile(a["active_channels"],  (int(7800/factor), 1))
            
    
normalized_array = normalize_array(arr)

print(f"Original array min: {np.min(arr)}, max: {np.max(arr)}")
print(f"Normalized array min: {np.min(normalized_array)}, max: {np.max(normalized_array)}")

arr = normalized_array

# first split into train+val and test
X_train_val, X_test, y_train_val, y_test = train_test_split(arr, labels, test_size=0.2, random_state=42)

# then split train+val into train and val
X_train, X_val, y_train, y_val = train_test_split(X_train_val, y_train_val, test_size=0.5, random_state=42)


#model parameters
n_classes = 4       #number of classes for SDR case
dim = arr.shape[1]    #number of I/Q samples being taken as input
n_channels = arr.shape[2]     #one channel for I and the other for Q
thresh = 0.5

model = deep_sense(dim, n_channels=n_channels, l2_reg=1e-1)

#compile Model

adam = tf.keras.optimizers.Adam(0.001)
model.compile(loss='binary_crossentropy',
              optimizer=adam, 
             metrics = [
    BinaryAccuracy(threshold=thresh),
    #macro-averaged metrics
    Precision(thresholds=thresh),
    Recall(thresholds=thresh),
    F1Score(threshold=thresh),
    AUC(name='auc_macro', multi_label=True, num_labels=n_classes), 
    CategoricalAccuracy(),  # For overall label set accuracy
    tf.keras.metrics.MeanAbsoluteError()
])

# train using train and validation data
model.fit(x=X_train, y=y_train, validation_data=(X_val, y_val), batch_size=256, epochs=10, verbose=1, shuffle=True)

# evaluate on the test set
test_metrics = model.evaluate(X_test, y_test, verbose=1)
print(f"Test Accuracy: {test_metrics}")


