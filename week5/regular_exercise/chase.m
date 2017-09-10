function [x]=chase(a,b,c,d)
%��Thomas����������ԽǾ���
%aΪ�����Ǿ��� b�ǶԽǾ��� c�������Ǿ��� d�ǳ�����
%�����a��b��c��d��Ϊ������
n=length(b);
u=zeros(n,1);
v=zeros(n,1);
x=zeros(n,1);
v(1)=c(1)/b(1);      %׷�Ĺ���
u(1)=d(1)/b(1);
for i=2:n-1
    v(i)=c(i)/(b(i)-v(i-1)*a(i-1));
    u(i)=(d(i)-u(i-1)*a(i-1))/(b(i)-v(i-1)*a(i-1));
end
u(n)=(d(n)-u(n-1)*a(n-1))/(b(n)-v(n-1)*a(n-1));
x(n)=u(n);           %�ϵĹ���
for i=n-1:-1:1
    x(i)=u(i)-v(i)*x(i+1);
end