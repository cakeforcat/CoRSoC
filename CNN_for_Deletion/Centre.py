#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb  2 08:50:09 2025

@author: frankconway
"""

import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import butter, lfilter
    


# Design a low-pass filter to isolate the 5 MHz channel (edges at -2.5 MHz to 2.5 MHz)
def butter_lowpass(cutoff, fs, order=5):
    nyq = 0.5 * fs
    normal_cutoff = cutoff / nyq
    b, a = butter(order, normal_cutoff, btype='low', analog=False)
    return b, a



# Plotting the spectrum
def plot_spectrum(sig, fs, title):
    freqs = np.fft.fftfreq(len(sig), 1/fs)
    spectrum = np.fft.fft(sig)
    plt.figure(figsize=(10, 4))
    plt.plot(np.fft.fftshift(freqs)/1e6, 20 * np.log10(np.abs(np.fft.fftshift(spectrum))))
    plt.title(title)
    plt.xlabel('Frequency (MHz)')
    plt.ylabel('Magnitude (dB)')
    plt.grid()
    plt.show()

def centre():
    # Parameters
    fs = 20e6  # Sampling rate: 20 MS/s
    t = np.arange(0, 1, 1/fs)  # Time vector for 1 second of data
    
    # Simulated signal: 4 channels at -7.5, -2.5, 2.5, and 7.5 MHz
    signal = (np.exp(2j * np.pi * (-7.5e6) * t) + 
              np.exp(2j * np.pi * (-2.5e6) * t) + 
              np.exp(2j * np.pi * (2.5e6) * t) + 
              np.exp(2j * np.pi * (7.5e6) * t))
    
    # Choose the channel to center at 0 Hz (example: Channel 3 at 2.5 MHz)
    f_shift = 2.5e6  # Frequency to shift
    
    # Frequency shift to baseband
    shifted_signal = signal * np.exp(-2j * np.pi * f_shift * t)
    
    cutoff_freq = 2.5e6  # 2.5 MHz cutoff
    b, a = butter_lowpass(cutoff_freq, fs)
    filtered_signal = lfilter(b, a, shifted_signal)
    
    plot_spectrum(signal, fs, 'Original Signal Spectrum')
    plot_spectrum(shifted_signal, fs, 'Shifted Signal Spectrum (before filtering)')
    plot_spectrum(filtered_signal, fs, 'Filtered Channel Centered at 0 Hz')
