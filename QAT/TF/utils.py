#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Apr 16 18:58:34 2025

@author: frankconway
"""

import os
import numpy as np
import re
import  math
import tensorflow as tf
from tensorflow.keras.metrics import AUC, Precision, Recall
import pandas as pd
from tensorflow.keras.utils import register_keras_serializable

@register_keras_serializable()
def f1_score(y_true, y_pred):
    y_pred = tf.round(y_pred)
    
    y_true = tf.cast(y_true, tf.float32)
    y_pred = tf.cast(y_pred, tf.float32)
    
    tp = tf.reduce_sum(tf.cast(y_true * y_pred, tf.float32))
    fp = tf.reduce_sum(tf.cast((1 - y_true) * y_pred, tf.float32))
    fn = tf.reduce_sum(tf.cast(y_true * (1 - y_pred), tf.float32))
    precision = tp / (tp + fp + 1e-7)
    recall = tp / (tp + fn + 1e-7)
    return 2 * (precision * recall) / (precision + recall + 1e-7)

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


def get_data(path = 1, samples_per_block = 128):
   
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
    labels = np.asarray(labels)
    
    print(labels)

    print(f"Features: {features.shape} Lable: {labels.shape}")

    
    normalized_array = normalize_array(features)
    
    print(f"Before Norm: Max({np.max(features)}), Min{np.min(features)})")
    print(f"After Norm: Max({np.max(normalized_array)}), Min{np.min(normalized_array)})")
    
    return normalized_array, labels


def trainModel(model, name, X_train, y_train, buf, epoch = 1, LR = [0.001, 0.0005, 0.0001], WD=[0.1, 0.01, 0.004]):
    
    results = os.path.expanduser("./results/")  # Creates directory in the user's home directory
    if not os.path.isdir(results):
        os.mkdir(results)
        os.chmod(results, 0o777)  # Sets full permissions
        
    best_acc = 0
  
    for lr in LR   : 
        for wd in WD:
            
            
           
            modelType = name+"_lr_"+ str(lr)+"_wd_"+str(wd)+'_buf_'+ str(buf) 
            
           
        
         #    #Compile Model
            adam = tf.keras.optimizers.AdamW(learning_rate=lr, weight_decay=wd)
            model.compile(loss='binary_crossentropy',
                          optimizer=adam,
                          metrics=['binary accuracy'])
            


            model.compile(
                loss='binary_crossentropy',
                optimizer=adam,
                metrics=[
                    'binary_accuracy',
                    Precision(name='precision'),
                    Recall(name='recall'),
                    AUC(name='auc'),
                    f1_score

                ]
            )

            checkpoint_callback = tf.keras.callbacks.ModelCheckpoint(
                filepath='./results/best_model_'+modelType+'.keras',   # Path where the model will be saved
                monitor='val_accuracy',     # Metric to monitor
                save_best_only=False,        # Only save the model if it has the best accuracy so far
                mode='max',                 # "max" because we want the maximum accuracy
                save_weights_only=False     # Save the entire model, not just weights
            )
            
            # Define the EarlyStopping callback
            early_stopping_callback = tf.keras.callbacks.EarlyStopping(
                monitor='val_accuracy',  # Metric to monitor
                patience=4,  # Number of epochs with no improvement after which training will be stopped
                mode='max',  # "max" because we want to maximize the accuracy
                restore_best_weights=True  # Restore the best weights after stopping
            )
        
            # Train the model with both callbacks
            history = model.fit(
                x=X_train, y=y_train, 
                validation_split=0.2, 
                batch_size=256, 
                epochs=epoch, 
                verbose=1, shuffle=True,
                callbacks=[checkpoint_callback, early_stopping_callback]  # Pass both callbacks here
            )
        
        
            # Convert the history to a DataFrame and save as CSV
            history_df = pd.DataFrame(history.history)
            history_df.to_csv('./results/training_history_'+modelType+'.csv', index=False)
            
            # testModel(modelType, './results/best_model'+modelType+'.keras')
            
            max_acc = np.max(history.history["val_binary_accuracy"])
            
            if max_acc > best_acc:
                best_model = './results/best_model_'+modelType+'.keras'
                best_acc = max_acc
            
    return best_model 

def testModel(modelPath, X_test, y_test):

    
    #Load a pretrained model
    model = tf.keras.models.load_model(modelPath, custom_objects={'f1_score': f1_score})
    
    results = model.evaluate(X_test, y_test, return_dict=True)
    # Convert to DataFrame
    results_df = pd.DataFrame([results])

    substring = "best_model"
    
    start = modelPath.find(substring)
    start += len(substring)
    end = modelPath.find(".keras")
    
    modelType = modelPath[start:end] # Output: Start: 6, End: 11

    results_df.to_csv('./results/testing_history_'+modelType+'.csv', index=False)
