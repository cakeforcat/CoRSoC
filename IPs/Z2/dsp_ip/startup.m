clear all

% Parameters
fs = 100e6; % Sampling frequency - clock domain
f0 = 16e6; % Signal frequency
N = fs/f0; % Number of samples
n = 0:N-1; % Discrete-time index

% Generate samples
sig_re = sin(2*pi*f0*n/fs); % Real part
sig_im = sin(2*pi*f0*n/fs); % Imaginary part