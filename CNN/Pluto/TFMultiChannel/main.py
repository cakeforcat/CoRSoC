#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Feb 22 14:45:22 2025

@author: frankconway
"""

import numpy as np
import os
import tensorflow as tf
from tensorflow.keras import Sequential
from tensorflow.keras.layers import Dense, Conv1D, MaxPooling1D, LeakyReLU, Flatten, Input, Dropout, BatchNormalization, Add, GlobalAveragePooling1D
from tensorflow.keras.layers import Multiply, Softmax, Reshape, GlobalMaxPooling1D, Concatenate, Lambda, Bidirectional, LSTM
from tensorflow.keras import backend as K
from tensorflow.keras.models import Model
from tensorflow.keras.regularizers import l2
from sklearn.model_selection import train_test_split
from scipy.signal import welch

def normalize_array(arr):

  # Find the minimum and maximum values in the array.
  min_val = np.min(arr)
  max_val = np.max(arr)

  # Check if the range is zero (all elements are the same).
  if max_val == min_val:
    # If the range is zero, return an array of zeros (or any constant, really).
    # You might want to handle this case differently based on your specific needs.
    return np.zeros_like(arr)

  # Normalize the array using the formula:
  # normalized_arr = 2 * (arr - min_val) / (max_val - min_val) - 1
  normalized_arr = 2 * (arr - min_val) / (max_val - min_val) - 1

  return normalized_arr




folder = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/"

files = os.listdir(folder)

factor = 20

arr = np.ndarray((int(7800*160/factor),128*factor,3), float)
labels = np.ndarray((int(7800*160/factor),4))

for idx, npz in enumerate(files):
    
    a = np.load(os.path.join(folder, npz))
     
    start_idx = (idx*int(7800/factor)) if idx <15 else (idx)*int(7800/factor)-1
    end_idx = (1+idx)*int(7800/factor) if idx <15 else (1+idx)*int(7800/factor)-1
    
    print(f"start index: {start_idx}, end index {end_idx}")
    
    #f, reshaped_arr = welch(a["samples"].reshape(int(7800/factor), 128*factor), fs=16e6, nperseg=1024)
    reshaped_arr = np.abs(np.fft.fftshift(np.fft.fft(a["samples"].reshape(int(7800/factor), 128*factor))))
    
    fft = np.abs(np.fft.fftshift(np.fft.fft(a["samples"].reshape(int(7800/factor), 128*factor))))
    
    float_array = np.stack((reshaped_arr.real, reshaped_arr.imag, 10*np.log10(fft)), axis=-1) 
    
    arr[start_idx:end_idx] = float_array
    labels[start_idx:end_idx] = np.tile(a["active_channels"],  (int(7800/factor), 1))

    
    # X.extend(float_array)


normalized_array = normalize_array(arr)
arr = normalized_array

print(f"Original array min: {np.min(arr)}, max: {np.max(arr)}")
print(f"Normalized array min: {np.min(normalized_array)}, max: {np.max(normalized_array)}")


# First split into train+val and test
X_train_val, X_test, y_train_val, y_test = train_test_split(arr, labels, test_size=0.1, random_state=42)

# Then split train+val into train and val
X_train, X_val, y_train, y_val = train_test_split(X_train_val, y_train_val, test_size=0.5, random_state=42)



#Model parameters
n_classes = 4       #number of classes for SDR case
dim = arr.shape[1]    #Number of I/Q samples being taken as input
n_channels = 3      #One channel for I and the other for Q

# # Regularization and Dropout parameters
# l2_reg = 1e-4  # L2 regularization factor
# dropout_rate = 0.2  # Dropout rate

# # Build model
# inputs = Input(shape=(dim, n_channels))

# # Convolutional Layers
# x = Conv1D(64, 5, padding='same', kernel_regularizer=l2(l2_reg), name='conv1')(inputs)
# x = LeakyReLU(alpha=0.1)(x)
# x = BatchNormalization()(x)
# x = Dropout(dropout_rate)(x)

# x = Conv1D(64, 5, padding='same', kernel_regularizer=l2(l2_reg), name='conv2')(x)
# x = LeakyReLU(alpha=0.1)(x)
# x = BatchNormalization()(x)
# x = MaxPooling1D(pool_size=2, strides=2, name='pool1')(x)

# x = Conv1D(32, 5, padding='same', kernel_regularizer=l2(l2_reg), name='conv3')(x)
# x = LeakyReLU(alpha=0.1)(x)
# x = BatchNormalization()(x)
# x = Dropout(dropout_rate)(x)

# x = Conv1D(32, 5, padding='same', kernel_regularizer=l2(l2_reg), name='conv4')(x)
# x = LeakyReLU(alpha=0.1)(x)
# x = BatchNormalization()(x)
# x = MaxPooling1D(pool_size=2, strides=2, name='pool2')(x)

# # Recurrent Layers
# x = Bidirectional(LSTM(64, return_sequences=False, kernel_regularizer=l2(l2_reg)), name='bilstm')(x)
# x = Dropout(dropout_rate)(x)

# # Fully Connected Layers
# x = Dense(64, kernel_regularizer=l2(l2_reg), name='dense1')(x)
# x = LeakyReLU(alpha=0.1)(x)
# x = Dropout(dropout_rate)(x)

# # Output Layer
# outputs = Dense(n_classes, activation='sigmoid', kernel_regularizer=l2(l2_reg), name='out')(x)

# # Compile Model
# model = Model(inputs=inputs, outputs=outputs)
# model.summary()

# adam = tf.keras.optimizers.Adam(0.001)
# model.compile(loss='binary_crossentropy',
#               optimizer=adam,
#               metrics=['accuracy'])

# # Train using validation data
# model.fit(x=X_train, y=y_train, validation_data=(X_val, y_val), batch_size=256, epochs=10, verbose=1, shuffle=True)

# # Evaluate on the test set
# test_loss, test_accuracy = model.evaluate(X_test, y_test, verbose=1)
# print(f"Test Loss: {test_loss}, Test Accuracy: {test_accuracy}")

#Build model
# inputs = Input(shape=(dim, n_channels))
# x = Conv1D(16, 3, input_shape=(dim, n_channels), name='conv1')(inputs)
# x = LeakyReLU(alpha=0.1)(x)
# x = Conv1D(16, 3, name='conv2')(x)
# x = LeakyReLU(alpha=0.1)(x)
# x = MaxPooling1D(pool_size=2, strides=2, name='pool1')(x)
# x = Conv1D(32, 5, name='conv3')(x)
# x = LeakyReLU(alpha=0.1)(x)
# x = Conv1D(32, 5, name='conv4')(x)
# x = LeakyReLU(alpha=0.1)(x)
# x = MaxPooling1D(pool_size=2, strides=2, name='pool2')(x)
# x = Flatten()(x)
# x = Dense(64, name='dense1')(x)
# x = LeakyReLU(alpha=0.1)(x)
# outputs = Dense(n_classes, activation='sigmoid', name='out')(x)
# model = Model(inputs=inputs, outputs=outputs)
# model.summary()



# Regularization and Dropout parameters
l2_reg = 1e-3  # L2 regularization factor
dropout_rate = 0.25  # Dropout rate

# Build model
inputs = Input(shape=(dim, n_channels))

x = Conv1D(64, 5, kernel_regularizer=l2(l2_reg), name='conv1')(inputs)
x = LeakyReLU(alpha=0.1)(x)
x = BatchNormalization()(x)
x = Dropout(dropout_rate)(x)

x = Conv1D(64, 5, kernel_regularizer=l2(l2_reg), name='conv2')(x)
x = LeakyReLU(alpha=0.1)(x)
x = BatchNormalization()(x)
x = MaxPooling1D(pool_size=2, strides=2, name='pool1')(x)

x = Conv1D(32, 5, kernel_regularizer=l2(l2_reg), name='conv3')(x)
x = LeakyReLU(alpha=0.1)(x)
x = BatchNormalization()(x)
x = Dropout(dropout_rate)(x)

x = Conv1D(32, 5, kernel_regularizer=l2(l2_reg), name='conv4')(x)
x = LeakyReLU(alpha=0.1)(x)
x = BatchNormalization()(x)
x = MaxPooling1D(pool_size=2, strides=2, name='pool2')(x)

x = Flatten()(x)

x = Dense(64, kernel_regularizer=l2(l2_reg), name='dense1')(x)
x = LeakyReLU(alpha=0.1)(x)
x = Dropout(dropout_rate*2)(x)

outputs = Dense(n_classes, activation='sigmoid', kernel_regularizer=l2(l2_reg), name='out')(x)

model = Model(inputs=inputs, outputs=outputs)
model.summary()

#Compile Model
# adam = tf.keras.optimizers.Adam(lr=0.001)
adam = tf.keras.optimizers.Adam(0.001)
model.compile(loss='binary_crossentropy',
              optimizer=adam,
              metrics=['accuracy'])


# Train using validation data
model.fit(x=X_train, y=y_train, validation_data=(X_val, y_val), batch_size=256, epochs=10, verbose=1, shuffle=True)

# Evaluate on the test set
test_loss, test_accuracy = model.evaluate(X_test, y_test, verbose=1)
print(f"Test Loss: {test_loss}, Test Accuracy: {test_accuracy}")

# # #Train
# # model.fit(x=X, y=y, validation_split=0.1, batch_size=256, epochs=150, verbose=1, shuffle=True)



