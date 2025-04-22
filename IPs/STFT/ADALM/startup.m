clear all
    
% Clock domain and stimulus
fs = 16e6;
ts_data_samples = open('C:\Users\andre\CoRSoC\IPs\Stimulus\PLUTO_TEST_DATA_TS.mat').ts_data_samples;
num_samples = numel(ts_data_samples.Data);

% Parameters
N = 2048;
n = 0:N-1;
    
% Windows
Hanning = 0.5 * (1 + cos(2*pi*n/N));
Norm_Han = sum(Hanning);