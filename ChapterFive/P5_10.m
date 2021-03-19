%% 5.10

X = [ 115823 117171 118517 119850 121121 122389 123626 124761 125786 126743 127627 128453 129227 129988 130756 131448 132129 132802 133450 1340491 ];
n = length(X);
k = 2;

X_g = X_G(X,2,3);   % X_g = X_G(X,i,j);
D = Distance_G(X,2,3);
L = Lp(X,k);

for i = 1:k
    for j =2:n
        D(i,j-1) = Distance_G(X,i,j);
    end
end

[DL,L] = Lp(X,k);

%% 求均值
function X_g = X_G(X,i,j)
    data = X(i:j);
    X_g = 1/(i+j+1) * mean(data);
end

%% 求直径
function D = Distance_G(X,i,j)
        X_g = X_G(X,i,j);
        data = X(i:j);
        D = sum( ( data - X_g ) .* ( data - X_g ) );
end

%% 费希尔最优法递推（递归）公式
function [DL,L] = Lp(X,k)
    n = length(X);
    if k == 2
        for j =2:n
            D1plusDj(1,j-1) = Distance_G(X,1,j-1) + Distance_G(X,j,n) ;
            DL = D1plusDj;
            L = min( D1plusDj );
        end
    else
        for j =k:n
            D1plusDj(1,j-k+1) = Lp(X,k-1) + Distance_G(X,j,n) ;      %递归
            L = min( D1plusDj );
        end
    end
end