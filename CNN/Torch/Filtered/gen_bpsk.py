#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Feb  5 11:38:28 2025

@author: frankconway
"""

import numpy as np

def generate_bpsk_signal(num_channels=1, num_samples=1024, bandwidth=8e6, sample_rate=8e6, snr_db=20):
    """
    Generate complex IQ samples simulating a BPSK signal with 8MHz bandwidth.
    Signal is centered at 0Hz, spanning -4MHz to 4MHz.
    Values are normalized between -1 and 1.
    
    Parameters:
    num_channels (int): Number of channels/sets of samples to generate
    num_samples (int): Number of samples per channel
    bandwidth (float): Signal bandwidth in Hz (default: 8 MHz)
    sample_rate (float): Sampling rate in Hz (default: 8 MHz)
    snr_db (float): Signal-to-Noise Ratio in dB (default: 20 dB)
    
    Returns:
    numpy.ndarray: Complex array of IQ samples with shape (num_channels, num_samples)
    """
    # Initialize array to store multiple channels
    iq_samples_all = np.zeros((num_channels, num_samples), dtype=complex)
    
    # Calculate symbol rate to achieve desired bandwidth (bandwidth = symbol_rate)
    # For BPSK, the main lobe bandwidth is approximately equal to the symbol rate
    symbol_rate = bandwidth
    
    # Calculate samples per symbol
    samples_per_symbol = int(sample_rate / symbol_rate)
    
    # Ensure at least 1 sample per symbol
    samples_per_symbol = max(1, samples_per_symbol)
    
    for channel in range(num_channels):
        # Generate random bits
        num_symbols = int(np.ceil(num_samples / samples_per_symbol))
        bits = np.random.randint(0, 2, num_symbols)
        
        # Convert bits to BPSK symbols (-1 and 1)
        symbols = 2 * bits - 1
        
        # Upsample symbols to sample rate
        symbol_samples = np.repeat(symbols, samples_per_symbol)
        symbol_samples = symbol_samples[:num_samples]
        
        # Apply bandwidth limiting using FFT
        signal_fft = np.fft.fft(symbol_samples)
        freqs = np.fft.fftfreq(num_samples, 1/sample_rate)
        
        # Create frequency mask for -4MHz to 4MHz
        freq_mask = np.abs(freqs) <= bandwidth/2
        signal_fft *= freq_mask
        
        # Convert back to time domain
        bpsk_signal = np.fft.ifft(signal_fft)
        
        # Add noise based on SNR
        signal_power = np.mean(np.abs(bpsk_signal)**2)
        noise_power = signal_power / (10**(snr_db/10))
        noise = np.sqrt(noise_power/2) * (np.random.normal(0, 1, num_samples) + 
                                        1j * np.random.normal(0, 1, num_samples))
        
        # Apply same bandwidth limiting to noise
        noise_fft = np.fft.fft(noise)
        noise_fft *= freq_mask
        filtered_noise = np.fft.ifft(noise_fft)
        
        # Combine signal and noise
        iq_samples = bpsk_signal + filtered_noise
        
        # Normalize to [-1, 1] range
        max_magnitude = np.max(np.abs(iq_samples))
        iq_normalized = iq_samples / max_magnitude
        
        # Store in the array
        iq_samples_all[channel] = iq_normalized
    
    return iq_samples_all

# Example usage and visualization
if __name__ == "__main__":
    # Generate samples
    samples = generate_bpsk_signal(num_samples=2048)
    
    # Print basic statistics
    print(f"Array shape: {samples.shape}")
    print(f"Maximum magnitude: {np.max(np.abs(samples)):.4f}")
    
    try:
        import matplotlib.pyplot as plt
        
        # Plot spectrum
        freq = np.fft.fftfreq(samples.shape[1], 1/8e6)
        spectrum = np.fft.fftshift(20 * np.log10(np.abs(np.fft.fft(samples[0]))))
        
        plt.figure(figsize=(10, 6))
        plt.plot(freq/1e6, spectrum)
        plt.grid(True)
        plt.xlabel('Frequency (MHz)')
        plt.ylabel('Power (dB)')
        plt.title('Power Spectral Density of BPSK Signal')
        plt.axvline(x=-4, color='r', linestyle='--', alpha=0.5)
        plt.axvline(x=4, color='r', linestyle='--', alpha=0.5)
        plt.show()
        
        # Plot constellation
        plt.figure(figsize=(8, 8))
        plt.scatter(samples[0, :1000].real, samples[0, :1000].imag, alpha=0.5)
        plt.grid(True)
        plt.xlabel('I')
        plt.ylabel('Q')
        plt.title('BPSK Constellation Diagram')
        plt.axis('equal')
        plt.show()
        
    except ImportError:
        print("Matplotlib not available for plotting")