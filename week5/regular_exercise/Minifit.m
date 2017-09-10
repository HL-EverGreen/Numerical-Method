function p=Minifit(x,y,m)
%最小二乘法多项式曲线拟合
%x是节点向量，y是节点上的函数值向量
%m为进行多项式拟合的多项式的次数
%p返回多项式的系数 且按降幂排列
A=zeros(m+1,m+1);
for i=0:m
    for j=0:m
        A(i+1,j+1)=sum(x.^(i+j));
    end
    b(i+1)=sum(x.^i.*y);
end
a=A\b';
p=fliplr(a');