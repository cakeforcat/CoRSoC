%% Script to design interpolating filter chain and equivalent decimator in transmitter

clear all;
close all;

%% System parameters

Rb = 1000;      % Bit rate is 1kbps (low rate for visualisation purposes)
Rs = Rb/2;      % QPSK, so 2 bits per symbol

R_RRC = 4;      % Rate change undertaken by RRC filter
R_HB = 2;       % Rate change undertaken by Halfband filter(s)
R_CICcomp = 2;  % Rate change undertaken by CIC compensator
R_CIC = 3200;      % Rate change undertaken by CIC filter
R_OV = R_RRC * R_HB * R_CICcomp * R_CIC;

R_IPI = 5;
R_IPI2 = 4;
R_RFDAC = 8;    % Rate change to be undertaken by RF-DAC (after output)

R_spec = 2^3;

% sampling rates at OUTPUTs of the filter sections

fRRC = Rs * R_RRC;
fHB  = fRRC * R_HB;
fCICcomp = fHB * R_CICcomp;
fCIC = fCICcomp * R_CIC;
fIPI = fCIC * R_IPI;
fSPEC = fIPI/R_spec;
fIPI2 = fIPI * R_IPI2;
fRFDAC = fIPI2 * R_RFDAC;

fprintf(['Output sampling frequency (post-CIC) = ', num2str(fCIC/1e6), 'MHz. \r\n']);
fprintf(['Output sampling frequency (post-RF-DAC) = ', num2str(fRFDAC/1e6), 'MHz. \r\n']);
fprintf(['Output sampling frequency (post-spec-HB-chain) = ', num2str(fSPEC/1e6), 'MHz. \r\n']);

%% Design a Halfband filter
% Halfband interpolates by factor of 2 (always). 

HB_Tw = 0.2;    % Normalised transition bandwidth
HB_Ast = 80;    % Attenuation in the stopband

% design a halfband filter response with parameters specified above
dHB = fdesign.halfband('Tw,Ast', HB_Tw, HB_Ast);
hHB = design(dHB,'equiripple');

HB = dsp.FIRInterpolator(R_HB, hHB.numerator);

%fv(4) = 
fvtool(HB);


%%
writematrix(HB.Numerator, "hb.txt")