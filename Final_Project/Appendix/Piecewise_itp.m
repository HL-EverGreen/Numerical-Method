function [ fX, coefs ] = Piecewise_itp( x, f, ord )

%Piecewise_itp interpolate 1-D data by Piecewise low order polynomial
%   x - 1 x n ; f - 1 x n ; ord - order of polynomial
%   fX - handle of polynomial function
%   coefs - the coefficients of polynomials
n=size(x,2);
syms t;
sxf=sortrows([x' f'],1);            % sort by x
x=sxf(:,1)';f=sxf(:,2)';

breaks=[];coefs=[];
for i=1:ord:n-1
    x_t=x(i:min(n,i+ord))-x(i);
    f_t=f(i:min(n,i+ord));
    [~,coef_t]=Newton_itp(x_t,f_t); % low order polynomial
    coefs(end+1,:)=coef_t;
    breaks(end+1)=x(i);
end
breaks(end+1)=x(end);
pp=mkpp(breaks,coefs);              % make piecewise polynomial function
fX=@(t)ppval(pp,t);                 % return the handle
end