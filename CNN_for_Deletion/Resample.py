#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb  2 10:09:23 2025

@author: frankconway
"""

import numpy as np
from scipy import signal
import matplotlib.pyplot as plt

def resample_baseband_iq(iq_samples, fs_in=5e6, fs_out=4e6):
    """
    Resample zero-centered baseband IQ samples while preserving frequency content
    symmetrically around 0 Hz.
    
    Parameters:
    -----------
    iq_samples : numpy.ndarray
        Complex IQ samples to resample
    fs_in : float
        Input sampling frequency in Hz (default: 5e6)
    fs_out : float
        Output sampling frequency in Hz (default: 4e6)
    
    Returns:
    --------
    numpy.ndarray
        Resampled IQ samples
    """
    # Calculate the greatest common divisor for up/down sampling factors
    gcd = np.gcd(int(fs_in), int(fs_out))
    up_factor = int(fs_out / gcd)
    down_factor = int(fs_in / gcd)
    
    # Design a lowpass FIR filter
    # For baseband signal, cutoff needs to be at ±2 MHz (half of output bandwidth)
    cutoff_freq = fs_out/2  # 2 MHz for 4 MHz bandwidth
    nyq = max(fs_in * up_factor, fs_out * down_factor) / 2
    
    # Use a narrower transition width for better frequency response
    width = 0.05 * cutoff_freq  # Transition width (100 kHz)
    ripple_db = 80  # Increased stop band attenuation
    
    # Calculate filter taps - use more taps for sharper cutoff
    n_taps = int(8 * ripple_db * fs_in / width)
    if n_taps % 2 == 0:
        n_taps += 1  # Ensure odd number of taps
    
    # Create symmetric filter around 0 Hz
    taps = signal.firwin(n_taps, cutoff_freq / nyq, window='hamming')
    
    # Perform the resampling using polyphase filtering
    resampled = signal.resample_poly(iq_samples, up_factor, down_factor, window=taps)
    
    return resampled

def plot_iq_fft(iq_signal, sample_rate, title="IQ Signal FFT"):
    """
    Plot the FFT of an IQ signal to visualize frequency components.
    
    Parameters:
    iq_signal (numpy.array): Complex IQ signal array
    sample_rate (float): Sampling rate in Hz
    title (str): Title for the plot
    
    Returns:
    tuple: Figure and axis objects for further customization if needed
    """
    # Calculate FFT
    fft_result = np.fft.fftshift(np.fft.fft(iq_signal))
    
    # Calculate frequency axis
    n_samples = len(iq_signal)
    freq_axis = np.fft.fftshift(np.fft.fftfreq(n_samples, 1/sample_rate))
    
    # Calculate magnitude in dB
    magnitude_db = 20 * np.log10(np.abs(fft_result) / np.max(np.abs(fft_result)))
    
    # Create plot
    fig, ax = plt.subplots(figsize=(12, 6))
    
    # Plot magnitude spectrum
    ax.plot(freq_axis / 1e3, magnitude_db)
    
    # Customize plot
    ax.set_xlabel('Frequency (kHz)')
    ax.set_ylabel('Magnitude (dB)')
    ax.set_title(title)
    ax.grid(True)
    #ax.set_ylim([-80, 5])  # Set reasonable dB range
    
    # Add vertical line at DC (0 Hz)
    ax.axvline(x=0, color='r', linestyle='--', alpha=0.5)
    
    plt.tight_layout()
    return fig, ax

# Example usage
if __name__ == "__main__":
    # Generate example IQ data (complex sinusoid at 1 MHz)
    duration = 0.001  # 1ms
    t = np.arange(0, duration, 1/5e6)
    freq = 1e6
    iq_data = np.exp(2j * np.pi * freq * t)
    
    # Resample from 5 MHz to 4 MHz
    resampled_data = resample_baseband_iq(iq_data)
    
    plot_iq_fft(iq_data, 5e6, "Original Signal")
    plot_iq_fft(resampled_data, 4e6, "Resampled Signal")
    
    
    print(f"Original length: {len(iq_data)}")
    print(f"Resampled length: {len(resampled_data)}")