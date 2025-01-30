Fclk = 64e6;
SSRin = 8;
Fp  = (1/8)*1;        % passband-edge normalized frequency
Fst = (1/8)*1.2;      % stopband-edge normalized frequency
Ap = 0.5;      
Ast = 80;
Rp = (10^(Ap/20) - 1)/(10^(Ap/20) + 1); 
Rst = 10^(-Ast/20);

W = firgr('minorder',[0 Fp Fst 1], [1 1 0 0],[Rp,Rst]);

% fvtool(W)