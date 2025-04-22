# -*- coding: utf-8 -*-
"""
Created on Wed Mar 26 01:18:53 2025

@author: jojok
"""
from scipy.io import savemat
import numpy as np
import glob
import os
npzFiles = glob.glob("*.npz")
for f in npzFiles:
    fm = os.path.splitext(f)[0]+'.mat'
    d = np.load(f)
    savemat(fm, d)
    print('generated ', fm, 'from', f)