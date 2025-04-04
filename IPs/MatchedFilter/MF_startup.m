fs = 16e6;

% Test tone
f = 0.2*16e6;

% Parameters
N = 2048;
n = 0:N-1;

template_short = [0+1.5i, 0+0i, 1.5+0i, 0+0i, 0-1.5i, 0+0i, -1.5+0i];
num_periods = 10; % number of periods to repeat the sequence
template = repmat(template_short, 1, 12); % repeat the sequenc
template = fliplr(conj(template)); %flip and find conj to make MF coefs

test = [zeros(1, 500), samples0010(1:500), zeros(1, 500)]; %test stim