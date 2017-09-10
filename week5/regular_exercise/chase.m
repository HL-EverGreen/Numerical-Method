function [x]=chase(a,b,c,d)
%用Thomas方法求解三对角矩阵
%a为下三角矩阵 b是对角矩阵 c是上三角矩阵 d是常数项
%输入的a、b、c、d均为列向量
n=length(b);
u=zeros(n,1);
v=zeros(n,1);
x=zeros(n,1);
v(1)=c(1)/b(1);      %追的过程
u(1)=d(1)/b(1);
for i=2:n-1
    v(i)=c(i)/(b(i)-v(i-1)*a(i-1));
    u(i)=(d(i)-u(i-1)*a(i-1))/(b(i)-v(i-1)*a(i-1));
end
u(n)=(d(n)-u(n-1)*a(n-1))/(b(n)-v(n-1)*a(n-1));
x(n)=u(n);           %赶的过程
for i=n-1:-1:1
    x(i)=u(i)-v(i)*x(i+1);
end