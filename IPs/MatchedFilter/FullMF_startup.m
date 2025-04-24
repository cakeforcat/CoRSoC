fs = 16e6;             

Qh_noise = [zeros(1, 128), imag(samples0100_0_2(1024:1536)), zeros(1, 512)];
Ih_noise = [zeros(1, 128), real(samples0100_0_2(1024:1536)), zeros(1, 512)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
part11 = filter(real(exp_W1),1,real(samples1000_0_1(1:100)));
part21 = filter(imag(exp_W1),1,imag(samples1000_0_1(1:100)));

part31 = filter(imag(exp_W1),1,real(samples1000_0_1(1:100)));
part41 = filter(real(exp_W1),1,imag(samples1000_0_1(1:100)));

template11 = part11-part21;
template21 = part31+part41;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
part12 = filter(real(exp_W2),1,real(samples0100_0_1(1:100)));
part22 = filter(imag(exp_W2),1,imag(samples0100_0_1(1:100)));

part32 = filter(imag(exp_W2),1,real(samples0100_0_1(1:100)));
part42 = filter(real(exp_W2),1,imag(samples0100_0_1(1:100)));

template12 = part12-part22;
template22 = part32+part42;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
part13 = filter(real(exp_W3),1,real(samples0010_0_1(1:100)));
part23 = filter(imag(exp_W3),1,imag(samples0010_0_1(1:100)));

part33 = filter(imag(exp_W3),1,real(samples0010_0_1(1:100)));
part43 = filter(real(exp_W3),1,imag(samples0010_0_1(1:100)));

template13 = part13-part23;
template23 = part33+part43;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
part14 = filter(real(exp_W4),1,real(samples0001_0_1(1:100)));
part24 = filter(imag(exp_W4),1,imag(samples0001_0_1(1:100)));

part34 = filter(imag(exp_W4),1,real(samples0001_0_1(1:100)));
part44 = filter(real(exp_W4),1,imag(samples0001_0_1(1:100)));

template14 = part14-part24;
template24 = part34+part44;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
