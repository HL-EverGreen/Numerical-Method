function [newv,w,newu,newd]=tri_diagonal_matrix(x,y,x1,y1,ya,yb)
%构造三对角矩阵
%x和y为第二个数据点到最后一个数据点构成的向量
%x1和y1为第一个数据点
%使用自然边界条件，ya表示第一个节点处的二阶导数，yb表示最后一个节点处的二阶导数
n=length(x);
m=length(y);
if m~=n
    disp('输入的x和y维数不一致！');
    return
end
v=ones(n-1,1);
u=ones(n-1,1);
d=zeros(n-1,1);
w=2*ones(n+1);
h0=x(1)-x1;
h=zeros(n-1,1);
for k=1:n-1
    h(k)=x(k+1)-x(k);
end
v(1)=h0/(h0+h(1));
u(1)=1-v(1);
d(1)=6*((y(2)-y(1))/h(1)-(y(1)-y1)/h0)/(h0+h(1));
for k=2:n-1
    v(k)=h(k-1)/(h(k-1)+h(k));
    u(k)=1-v(k);
    d(k)=6*((y(k+1)-y(k))/h(k)-(y(k)-y(k-1))/h(k-1))/(h(k-1)+h(k));
end
newv=[v;1];
newu=[1;u];
d0=6*((y(1)-y1)/h0-ya)/h0;
d(n)=6*(yb-(y(n)-y(n-1))/h(n-1))/h(n-1);
newd=[d0;d];

