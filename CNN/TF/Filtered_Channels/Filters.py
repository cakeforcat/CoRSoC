#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Nov 30 17:23:10 2024

@author: frankconway
"""


import numpy as np
import h5py
from sklearn.model_selection import train_test_split
import os as os
import random
from scipy.signal import firwin, convolve,fftconvolve
import time
import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import firwin, freqz


num_coef = 101
channelfilter_coef = {}


channelfilter_coef["ch_1"] = firwin(num_coef, 5e6, fs=200e6)
channelfilter_coef["ch_2"] = firwin(num_coef, [5e6,10e6], pass_zero=False,  fs=200e6)
channelfilter_coef["ch_3"] = firwin(num_coef, [10e6, 15e6], pass_zero=False,  fs=200e6)
channelfilter_coef["ch_4"] = firwin(num_coef, 20e6, pass_zero=False,  fs=200e6)



# Parameters
fs = 1000         # Sampling frequency in Hz
cutoff = 200      # Cutoff frequency in Hz
numtaps = 101     # Number of filter taps (filter order + 1)

# Design the FIR filter
coefficients = firwin(numtaps, cutoff, fs=fs, pass_zero='lowpass')

# Compute the frequency response
frequencies, response = freqz(channelfilter_coef["ch_1"], worN=8000, fs=200e6)

# Plot the magnitude response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, 20 * np.log10(abs(response)), 'b')
plt.title('FIR Filter Frequency Response for Channel 1')
plt.xlabel('Frequency [Hz]')
plt.ylabel('Magnitude [dB]')
plt.grid()
plt.show()

# Optional: Plot the phase response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, np.unwrap(np.angle(response)), 'r')
plt.title('FIR Filter Phase Response for Channel 1' )
plt.xlabel('Frequency [Hz]')
plt.ylabel('Phase [radians]')
plt.grid()
plt.show()

 #Compute the frequency response channel
frequencies, response = freqz(channelfilter_coef["ch_2"], worN=8000, fs=200e6)

# Plot the magnitude response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, 20 * np.log10(abs(response)), 'b')
plt.title('FIR Filter Frequency Response for Channel 2')
plt.xlabel('Frequency [Hz]')
plt.ylabel('Magnitude [dB]')
plt.grid()
plt.show()

# Optional: Plot the phase response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, np.unwrap(np.angle(response)), 'r')
plt.title('FIR Filter Phase Response for Channel 2')
plt.xlabel('Frequency [Hz]')
plt.ylabel('Phase [radians]')
plt.grid()
plt.show()

 #Compute the frequency response channel 3 (band pass)
frequencies, response = freqz(channelfilter_coef["ch_3"], worN=8000, fs=200e6)

# Plot the magnitude response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, 20 * np.log10(abs(response)), 'b')
plt.title('FIR Filter Frequency Responsef or Channel 3' )
plt.xlabel('Frequency [Hz]')
plt.ylabel('Magnitude [dB]')
plt.grid()
plt.show()

# Optional: Plot the phase response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, np.unwrap(np.angle(response)), 'r')
plt.title('FIR Filter Phase Response for Channel 3')
plt.xlabel('Frequency [Hz]')
plt.ylabel('Phase [radians]')
plt.grid()
plt.show()

 #Compute the frequency response channel 4 (highpass)
frequencies, response = freqz(channelfilter_coef["ch_4"], worN=8000, fs=200e6)

# Plot the magnitude response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, 20 * np.log10(abs(response)), 'b')
plt.title('FIR Filter Frequency Response for Channel 4')
plt.xlabel('Frequency [Hz]')
plt.ylabel('Magnitude [dB]')
plt.grid()
plt.show()

# Optional: Plot the phase response
plt.figure(figsize=(8, 6))
plt.plot(frequencies, np.unwrap(np.angle(response)), 'r')
plt.title('FIR Filter Phase Response for Channel 4')
plt.xlabel('Frequency [Hz]')
plt.ylabel('Phase [radians]')
plt.grid()
plt.show()
