#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Feb 24 13:23:37 2025

@author: frankconway
"""

import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import welch


npz = "/Users/frankconway/Library/CloudStorage/OneDrive-Personal/Strathclyde/Strathclyde/Year5/Project/colab/PlutoImport/QPSK_multi_channel_tx1111_10.npz"


factor = 8

a = np.load(npz)

print(type(a['active_channels']))

arr = a["samples"]

# if a['active_channels'].all():
  
#     print(npz) 
    
#     start_idx = 0# (idx*int(7800/factor)) if idx <15 else (idx)*int(7800/factor)-1
#     end_idx = 1*int(7800/factor)-1#(1+idx)*int(7800/factor) if idx <15 else (1+idx)*int(7800/factor)-1
    
#     print(f"start index: {start_idx}, end index {end_idx}, activate channels: {a['active_channels']}")
    
#     arr = a["samples"].reshape(int(7800/factor), 128*factor)
    
    #f, reshaped_arr = welch(a["samples"].reshape(int(7800/factor), 128*factor), fs=16e6, nperseg=2560)
    # reshaped_arr = np.abs(np.fft.fftshift(np.fft.fft(a["samples"].reshape(int(7800/factor), 128*factor))))
    
    # float_array = np.stack((reshaped_arr.real, reshaped_arr.imag), axis=-1) 
    
    # arr = float_array
    
    
sample_rate = 16e6

plt.figure(figsize=(12, 6))
psd = np.abs(np.fft.fftshift(np.fft.fft(arr)))**2
psd_dB = 10*np.log10(psd)
f = np.linspace(sample_rate/-2, sample_rate/2, len(psd))

plt.plot(f/16e6, psd_dB)
plt.xlabel("Frequency [MHz]")
plt.ylabel("Power Spectral Density (dB)")
plt.grid(True)
plt.title("Received Signal Spectrum")
plt.savefig("Tx.png")

