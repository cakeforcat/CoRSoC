clear all
    
% Clock domain
fs = 50e6;

% Test tone
f = 16e6;

% Parameters
N = 2048;
n = 0:N-1;
    
% Windows
Hamming = 0.54 - 0.46 * cos(2*pi*n/N);
Norm_Ham = sum(Hamming);
Hanning = 0.5 * (1 + cos(2*pi*n/N));
Norm_Han = sum(Hanning);