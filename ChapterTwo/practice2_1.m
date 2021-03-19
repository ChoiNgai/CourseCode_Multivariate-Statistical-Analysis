syms x1 x2     % 定义变量
f(x1,x2) = sin(x1) + x1^2 + cos(x2) + x2^2 ;       %定义函数

% 函数f(x1,x2)的边缘密度函数f1(x1)
int(f(x1,x2),x2,inf,-inf)   %积分

