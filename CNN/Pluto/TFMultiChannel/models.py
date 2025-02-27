#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb 23 16:01:21 2025

@author: frankconway
"""

import tensorflow.keras as keras
from scipy.stats import entropy
import tensorflow as tf
import numpy as np
import time
from sklearn.metrics import roc_curve
import matplotlib.pyplot as plt 
import pandas as pd 
from scipy.fft import fft
from scipy.stats import gennorm
import numpy as np
from scipy.special import gamma
import math
from keras.models import Sequential
from keras.layers import Conv2D
from keras.layers import MaxPooling2D
from keras.layers import Flatten
from keras.layers import Dense,LSTM
# from keras.utils.vis_utils import plot_model
from keras.callbacks import ModelCheckpoint
import matplotlib.pyplot as plt
# from google.colab import drive
# from google.colab import files
from sklearn.model_selection import train_test_split
from sklearn import metrics
from sklearn.metrics import classification_report
from sklearn import preprocessing
from scipy.signal import savgol_filter
import keras
from keras.models import Sequential
from keras.layers import Dense, Dropout, Flatten, Reshape, GlobalAveragePooling1D
from keras.layers import Conv2D, MaxPooling2D, Conv1D, MaxPooling1D

from tensorflow.keras.layers import Dense, Conv1D, MaxPooling1D, LeakyReLU, Flatten, Input, Dropout, BatchNormalization, Add, GlobalAveragePooling1D
from tensorflow.keras.layers import Multiply, Softmax, Reshape, GlobalMaxPooling1D, Concatenate, Lambda, Bidirectional, LSTM
from tensorflow.keras import backend as K
from tensorflow.keras.models import Model
from tensorflow.keras.regularizers import l2
# from keras.utils import np_utils


def res_net(num_sensors, n_feature_maps = 50, n_chan = 2):

    
    
    input_layer = keras.layers.Input((num_sensors,n_chan))
    
    # BLOCK 1
    #reshape = keras.layers.Reshape((1,num_sensors), input_shape=(num_sensors,))(input_layer)
    reshape = input_layer
    conv_x = keras.layers.Conv1D(filters=n_feature_maps, kernel_size=1, padding='same')(reshape)
    conv_x = keras.layers.BatchNormalization()(conv_x)
    conv_x = keras.layers.Activation('relu')(conv_x)
    
    conv_y = keras.layers.Conv1D(filters=n_feature_maps, kernel_size=5, padding='same')(conv_x)
    conv_y = keras.layers.BatchNormalization()(conv_y)
    conv_y = keras.layers.Activation('relu')(conv_y)
    
    conv_z = keras.layers.Conv1D(filters=n_feature_maps, kernel_size=3, padding='same')(conv_y)
    conv_z = keras.layers.BatchNormalization()(conv_z)
    
    # expand channels for the sum
    shortcut_y = keras.layers.Conv1D(filters=n_feature_maps, kernel_size=1, padding='same')(reshape)
    shortcut_y = keras.layers.BatchNormalization()(shortcut_y)
    
    output_block_1 = keras.layers.add([shortcut_y, conv_z])
    output_block_1 = keras.layers.Activation('relu')(output_block_1)
    
    # BLOCK 2
    
    conv_x = keras.layers.Conv1D(filters=n_feature_maps * 2, kernel_size=8, padding='same')(output_block_1)
    conv_x = keras.layers.BatchNormalization()(conv_x)
    conv_x = keras.layers.Activation('relu')(conv_x)
    
    conv_y = keras.layers.Conv1D(filters=n_feature_maps * 2, kernel_size=5, padding='same')(conv_x)
    conv_y = keras.layers.BatchNormalization()(conv_y)
    conv_y = keras.layers.Activation('relu')(conv_y)
    
    conv_z = keras.layers.Conv1D(filters=n_feature_maps * 2, kernel_size=3, padding='same')(conv_y)
    conv_z = keras.layers.BatchNormalization()(conv_z)
    
    # expand channels for the sum
    shortcut_y = keras.layers.Conv1D(filters=n_feature_maps * 2, kernel_size=1, padding='same')(output_block_1)
    shortcut_y = keras.layers.BatchNormalization()(shortcut_y)
    
    output_block_2 = keras.layers.add([shortcut_y, conv_z])
    output_block_2 = keras.layers.Activation('relu')(output_block_2)
    
    # BLOCK 3
    
    conv_x = keras.layers.Conv1D(filters=n_feature_maps * 2, kernel_size=8, padding='same')(output_block_2)
    conv_x = keras.layers.BatchNormalization()(conv_x)
    conv_x = keras.layers.Activation('relu')(conv_x)
    
    conv_y = keras.layers.Conv1D(filters=n_feature_maps * 2, kernel_size=5, padding='same')(conv_x)
    conv_y = keras.layers.BatchNormalization()(conv_y)
    conv_y = keras.layers.Activation('relu')(conv_y)
    
    conv_z = keras.layers.Conv1D(filters=n_feature_maps * 2, kernel_size=3, padding='same')(conv_y)
    conv_z = keras.layers.BatchNormalization()(conv_z)
    
    # no need to expand channels because they are equal
    shortcut_y = keras.layers.BatchNormalization()(output_block_2)
    
    output_block_3 = keras.layers.add([shortcut_y, conv_z])
    output_block_3 = keras.layers.Activation('relu')(output_block_3)
    
    # FINAL
    
    gap_layer = keras.layers.GlobalAveragePooling1D()(output_block_3)
    
    output_layer = keras.layers.Dense(4, activation='sigmoid')(gap_layer)
    
    model_rnet = keras.models.Model(inputs=input_layer, outputs=output_layer)
    
    return model_rnet
    
    # model_m.summary()
    # from tensorflow.keras.utils import plot_model
    # plot_model(model_m, to_file='model_plot.png', show_shapes=True, show_layer_names=True)
    

def deep_sense(dim, n_channels = 2, n_classes= 4, l2_reg = 1e-3, dropout_rate = 0.25):


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
    
    return model
