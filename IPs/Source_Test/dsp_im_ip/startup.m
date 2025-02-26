clear all
% Parameters
fs = 3*100e6; % Sampling frequency - clock domain
f0 = 16e6; % Signal frequency
N = fs/f0; % Number of samples
n = 0:N-1; % Discrete-time index

% Generate samples
sig_im = sin(2*pi*f0*n/fs); % Imag part