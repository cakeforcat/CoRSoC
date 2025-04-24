fs = 16e6;             

Qh_noise = [zeros(1, 256), imag(samples1111_20_2(1024:1536)), zeros(1, 512)];
Ih_noise = [zeros(1, 256), real(samples1111_20_2(1024:1536)), zeros(1, 512)];

x = filter(exp_W1, 1, samples1000_0_1(1:1024));
X = fftshift(fft(x(1:1024)));         % Shift zero frequency to center
f = (-1024/2:1024/2-1)*(fs/1024);      % Frequency vector from -8 MHz to 8 MHz

plot(f/1e6, abs(X))           % Convert frequency to MHz for plot
xlabel('Frequency (MHz)')
ylabel('|X(f)|')
title('FFT of Signal')
grid on
