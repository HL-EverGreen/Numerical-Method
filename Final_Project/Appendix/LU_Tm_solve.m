function [x] = LU_Tm_solve( A, b, ~)
%LU_Tm_solve Solve linear eqs by LU decomposition - Thomas
%   A: n x n; b: n x m; x: n x m;
n=size(b,1);
aa=diag(A,-1);bb=diag(A);cc=diag(A,1);
% Thomas decp.
L=diag(aa,-1);U=diag(ones(1,n));
L(1,1)=bb(1);
for k=2:n
    U(k-1,k)=cc(k-1)/L(k-1,k-1);
    L(k,k)=bb(k)-aa(k-1)*U(k-1,k);
    % vpa([L U],4) % display LU
end
% Solve Y
y=zeros(size(b));
y(1,:)=b(1,:)/bb(1);
for k=2:n
    y(k,:)=(b(k,:)-aa(k-1)*y(k-1,:))/(bb(k)-aa(k-1)*U(k-1,k));
end
% Solve X
x=zeros(size(b));
x(n,:)=y(n,:);
for k=n-1:-1:1
    x(k,:)=y(k,:)-U(k,k+1)*x(k+1,:);
end
end
