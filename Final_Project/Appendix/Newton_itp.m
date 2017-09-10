function [ fX,coefs] = Newton_itp( x,f )
%NEWTON_ITP interpolate 1һD data by Newton Method
%   x-1 x n; f - 1 x n
%   fX - handle of polynomial function
%   coef - the coefficients of polynomial
n = size(x,2);
A = zeros(n,n);
A(:,1) = f'; x=x';
for k=2:n   %calc.Divided difference table
    A(1:n+1-k,k)=(A(1:n+1-k,k-1)-A(2:n+2-k,k-1))...
            ./(x(1:n+1-k)   -x(k:n));
end
syms t;
h=A(1,n);       %produce polynomial
for k=n-1:-1:1
    h=A(1,k)+(t-x(k))*h;
end
coefs=sym2poly(h);
fX=@(t)polyval(coefs,t);    %return the handle

end

