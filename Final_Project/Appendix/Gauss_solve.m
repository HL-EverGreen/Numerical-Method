function [x] = Gauss_solve( A, b, ~)
%Gauss_solve Solve linear eqs by Gauss elimination Method
%   A: n x n; b: n x 1; x: n x 1;
n=size(b,1);
% forward elimination
for k=1:n-1
    factor=A(k+1:n,k)/A(k,k);
    A(k+1:n,:)=A(k+1:n,:)-factor*A(k,:);
    b(k+1:n  )=b(k+1:n  )-factor*b(k  );
    %vpa([A b],6) % display Ab
end
% back substitution
x=zeros(n,1);
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    x(i)=(b(i)-A(i,:)*x(:))/A(i,i);
end
end