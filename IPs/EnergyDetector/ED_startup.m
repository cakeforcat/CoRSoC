f_signal = 0.25*16e6;        
fs = 16e6;             
t_duration = 500/fs;     

t = 0:1/fs:t_duration-1/fs;
t_series = 0:1/fs:(3*t_duration)-1/fs;

I_h = 0.4*cos(2*pi*f_signal*t);  % In-phase component
Q_h = 0.4*sin(2*pi*f_signal*t);  % Quadrature component

Ih_padded = [zeros(1, 500), I_h, zeros(1, 500)];  
Qh_padded = [zeros(1, 500), Q_h, zeros( 1, 500)];

Ih_noise = awgn(Ih_padded, 15);
Qh_noise = awgn(Qh_padded, 15);
