#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr 17 10:53:53 2025

@author: frankconway
"""

import numpy as np 
import os
import utils
import TorchModels
from sklearn.model_selection import train_test_split
import QauntModels


seed = 42

buf = 256
epochs = 1

data = utils.get_data2d(1,buf)

# then split train+val into train and test
X_train, X_test, y_train, y_test = train_test_split(data[0], data[1], test_size=0.2, random_state=seed)

del data
###############################################

model = TorchModels.CNN2d(X_train.shape[-1])

best_model = utils.trainModel(model, "CNN2d", X_train, y_train, buf, num_epoch=epochs)

model = TorchModels.CNN2d(X_train.shape[-1])

utils.testModel(model, best_model, X_test, y_test)

###############################################
# model = TorchModels.CNN2d(X_train.shape[-1])
model = QauntModels.Quant2dCNNfull()

# model = TFModels.deep_sense(buf, l2_reg = 0, dropout_rate = 0.25)

best_model = utils.trainModel(model, "QuantCNN2dfull", X_train, y_train, buf, num_epoch=epochs)

# model = TorchModels.CNN2d(X_train.shape[-1])
model = QauntModels.Quant2dCNNfull()

utils.testModel(model, best_model, X_test, y_test)

###############################################
# model = TorchModels.CNN2d(X_train.shape[-1])
model = QauntModels.Quant2dCNN1layer()

# model = TFModels.deep_sense(buf, l2_reg = 0, dropout_rate = 0.25)

best_model = utils.trainModel(model, "QuantCNN2d1layer", X_train, y_train, buf, num_epoch=epochs)

# model = TorchModels.CNN2d(X_train.shape[-1])
model = QauntModels.Quant2dCNN1layer()

utils.testModel(model, best_model, X_test, y_test)

###############################################
data = utils.get_data1d(1,buf)

# then split train+val into train and test
X_train, X_test, y_train, y_test = train_test_split(data[0], data[1], test_size=0.2, random_state=seed)

del data


# model = TorchModels.CNN2d(X_train.shape[-1])
model = QauntModels.Quant_mlp(input_size=buf*2)

# model = TFModels.deep_sense(buf, l2_reg = 0, dropout_rate = 0.25)

best_model = utils.trainModel(model, "QuantMLP", X_train, y_train, buf, num_epoch=epochs)

# model = TorchModels.CNN2d(X_train.shape[-1])
model = QauntModels.Quant_mlp(input_size=buf*2)

utils.testModel(model, best_model, X_test, y_test)
