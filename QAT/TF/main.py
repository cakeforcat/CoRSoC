#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Apr 16 20:45:43 2025

@author: frankconway
"""

import numpy as np
from sklearn.model_selection import train_test_split
import TFModels
import utils

seed = 42

buf = 128

data = utils.get_data(1,buf)

# then split train+val into train and test
X_train, X_test, y_train, y_test = train_test_split(data[0], data[1], test_size=0.2, random_state=seed)

del data

model = TFModels.deep_sense(buf)

best_model = utils.trainModel(model, "deepsene", X_train, y_train, buf, epoch=1)

utils.testModel(best_model, X_test, y_test)


model = TFModels.res_net(buf)

best_model = utils.trainModel(model, "resnet", X_train, y_train, buf, epoch=1)

utils.testModel(best_model, X_test, y_test)

n_X_train = X_train.shape[0]

# Interleave along the last two dimensions
X_train = X_train.reshape(n_X_train, buf * 2)
# interleaved = arr.transpose(0, 2, 1).reshape(n, 256)

n_X_test = X_test.shape[0]

# Interleave along the last two dimensions
X_test = X_test.reshape(n_X_test, buf * 2)  # Or 

model = TFModels.mlp_sque(buf*2)

best_model = utils.trainModel(model, "mlp", X_train, y_train, buf, epoch=1)

utils.testModel(best_model, X_test, y_test)