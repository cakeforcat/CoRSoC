#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb 23 16:01:21 2025

@author: frankconway
"""

import tensorflow.keras as keras
import tensorflow as tf
from tensorflow.keras.layers import Dense, Conv1D, MaxPooling1D, ReLU, Flatten, Input, Dropout, BatchNormalization
from tensorflow.keras.models import Model
from tensorflow.keras.regularizers import l2
from tensorflow.keras import layers, models



def res_net(num_sensors=128, n_feature_maps = 50, n_chan = 2):

    
    
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
    x = ReLU()(x)
    x = BatchNormalization()(x)
    x = Dropout(dropout_rate)(x)

    x = Conv1D(64, 5, kernel_regularizer=l2(l2_reg), name='conv2')(x)
    x = ReLU()(x)
    x = BatchNormalization()(x)
    x = MaxPooling1D(pool_size=2, strides=2, name='pool1')(x)

    x = Conv1D(32, 5, kernel_regularizer=l2(l2_reg), name='conv3')(x)
    x = ReLU()(x)
    x = BatchNormalization()(x)
    x = Dropout(dropout_rate)(x)

    x = Conv1D(32, 5, kernel_regularizer=l2(l2_reg), name='conv4')(x)
    x = ReLU()(x)
    x = BatchNormalization()(x)
    x = MaxPooling1D(pool_size=2, strides=2, name='pool2')(x)

    x = Flatten()(x)

    x = Dense(64, kernel_regularizer=l2(l2_reg), name='dense1')(x)
    x = ReLU()(x)
    x = Dropout(dropout_rate*2)(x)

    outputs = Dense(n_classes, activation='sigmoid', kernel_regularizer=l2(l2_reg), name='out')(x)

    model = Model(inputs=inputs, outputs=outputs)
    
    return model

# def mlp(dim, n_classes = 4, dropout_rate = 0.25):
    
#     input_size = dim
    
#     inputs = Input(shape=(input_size,))
    
#     x = Dense(64, name = "hidden1")(inputs)
#     x = ReLU()(x)
#     x = BatchNormalization()(x)
#     x = Dropout(dropout_rate)(x)
    
#     x = Dense(64, name = "hidden2")(x)
#     x = ReLU()(x)
#     x = BatchNormalization()(x)
#     x = Dropout(dropout_rate)(x)
    
#     x = Dense(64, name = "hidden3")(x)
#     x = ReLU()(x)
#     x = BatchNormalization()(x)
#     x = Dropout(dropout_rate)(x)
    
#     outputs = Dense(n_classes, activation='sigmoid', name='out')(x)
    
#     model = Model(inputs = inputs, outputs=outputs)
    
#     return model


# def create_mlp_model(input_dim=128, hidden_units=64, hidden_layers=3, num_classes=4):
#     model = models.Sequential()
    
#     # Input layer
#     model.add(layers.Input(shape=(input_dim,)))

#     # Hidden layers
#     for _ in range(hidden_layers):
#         model.add(layers.Dense(hidden_units, activation='relu'))

#     # Output layer for multi-class classification
#     model.add(layers.Dense(num_classes, activation='sigmoid'))

#     return model

def mlp_sque(input_size = 256, num_classes = 4):
    
    hidden1 = 64      
    hidden2 = 64
    hidden3 = 64

    # Set random seed for reproducibility
    tf.random.set_seed(0)

    # Define model architecture
    model = models.Sequential([
        layers.Input(shape=(input_size,)),
        layers.Dense(hidden1),
        layers.BatchNormalization(),
        layers.Dropout(0.5),
        layers.ReLU(),
        
        layers.Dense(hidden2),
        layers.BatchNormalization(),
        layers.Dropout(0.5),
        layers.ReLU(),

        layers.Dense(hidden3),
        layers.BatchNormalization(),
        layers.Dropout(0.5),
        layers.ReLU(),

        layers.Dense(num_classes, activation='sigmoid')  # Activation (e.g., softmax) depends on your task
    ])

    return model
