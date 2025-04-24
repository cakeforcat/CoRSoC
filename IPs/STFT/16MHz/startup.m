clear all
    
% Clock domain
fs = 16e6;

% Test tone
f = 14.5e6;

% Parameters
N = 2048;
n = 0:N-1;
    
% Windows
Hanning = 0.5 * (1 + cos(2*pi*n/N));
Norm_Han = sum(Hanning);