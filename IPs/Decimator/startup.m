% Clock domain
fclk = 64e6; % fs

% Define filter specifications
Dec_rate = 8; % Decimation rate
Fp  = (1/Dec_rate)*1; % Passband-edge normalized frequency (F passed)
Fst = (1/Dec_rate)*1.2; % Stopband-edge normalized frequency (F atten)
Ap = 0.5; % Passband ripple (dB) (Allowable variation)
Ast = 80; % Stopband attenuation (dB) (Min attenuation)

% Convert dB spec to linear scale
Rp = (10^(Ap/20) - 1)/(10^(Ap/20) + 1); % Passband ripple
Rst = 10^(-Ast/20); % Stopband ripple

% FIR filter design
coeffs = firgr('minorder',[0 Fp Fst 1], [1 1 0 0],[Rp,Rst]);
%fvtool(coeffs)