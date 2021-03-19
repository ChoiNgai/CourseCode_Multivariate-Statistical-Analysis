% 二元正态分布函数

syms x1 x2
miu1 = 0.1;
miu2 = 0.9;
sigma1 = 2;
sigma2 =2;
rho = 0.1;
f(x1,x2) = 1/( 2 * pi * sigma1 * sigma2 * (1-rho).^2 ) * exp(- 1/(2*1-rho.^2) * (   (x1 - miu1).^2 - 2*rho*(x1-miu1)*(x2-miu2)/(sigma1*sigma2) + (x2-miu2).^2/sigma2.^2  )   ) ;
