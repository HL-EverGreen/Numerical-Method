function [ fX ] = CubicN_itp( x, f )
%CubicN_itp interpolate 1-D data by Cubic spline, with nature bound.
%   x - 1 x n ; f - 1 x n ;
%   fX - handle of polynomial function
n=size(x,2);
sxf=sortrows([x' f'],1);         % sort by x
x=sxf(:,1)';f=sxf(:,2)';
% Calc Df, Dx, mu, lambda, g
Dx=diff(x);
Df=diff(f);
Df=Df./Dx;
mu(1:n-2)=1./(1+Dx(2:n-1)./Dx(1:n-2));
lambda=1-mu;
g(1:n-2)=(Df(2:n-1)-Df(1:n-2))./(Dx(2:n-1)+Dx(1:n-2))*6;
% Make matrix
A=diag(ones(1,n-2)*2,0)+diag(lambda(1:n-3),1)+diag(mu(2:n-2),-1);
% Solve M
M=LU_Tm_solve(A,g')';
M=[0,M,0];

syms t s;coefs=[];
for i=1:n-1
    t=s+x(i);                  % notice to move left bound to 0 (mkpp())
    h=(M(i)*(x(i+1)-t)^3+M(i+1)*(t-x(i))^3)/(6*Dx(i)) ...
        +(f(i)  -M(i)  *Dx(i)^2/6)*(x(i+1)-t)/Dx(i) ...
        +(f(i+1)-M(i+1)*Dx(i)^2/6)*(t-x(i))/Dx(i); % one of spline poly.s
    coefs(end+1,:)=sym2poly(h);
end
pp=mkpp(x,coefs);              % make piecewise polynomial function
fX=@(t)ppval(pp,t);            % return the handle
end