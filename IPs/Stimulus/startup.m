clear all

fs = 16e6;
ts_data_samples = open('PLUTO_TEST_DATA_TS.mat').ts_data_samples;
num_samples = numel(ts_data_samples.Data);