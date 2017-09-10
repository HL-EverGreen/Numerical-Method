function [ fX,coefs ] = Polynomial_fit( x, f, degree )
%Polynomial_fit fitting 1-D data with polynomial
%   x - 1 x n ; f - 1 x n ; degree - the degree of polynomial
%   fX - handle of polynomial function
%   coefs - the coefficients of polynomial
n=size(x,2);

Y=f'; c=x';                        % calc. Matrix
C=ones(n,degree+1);
for k=1:degree
    C(:,k+1)=C(:,k).*c;
end
A=C'*C; b=C'*Y;
disp(['Degree: ' num2str(degree) '; Condition number: ' num2str(cond(A))]);
coefs=Gauss_solve(A,b,[1.1,1e-7]); % solve coefs of polynomial
coefs=fliplr(coefs');              % return coefficients
fX=@(t)polyval(coefs,t);           % return the handle
end