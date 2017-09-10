function y=minifit(y,h,m,n)
%本程序为用最小二乘拟合法求函数关系式
%输入y为数据节点向量，h为对应的值向量，m为向量的维数，n为拟合的阶数
for i=1:m                         %将自变量的值代入矩阵
    for j=1:n+1
        c(i,j)=y(i)^(j-1);
    end
end
a=c'*c;                           %根据课件中公式获得矩阵a,b
b=c'*h';
%-----下面进行列主元消元-----%
n=5;                               %拟合阶数加一
ab=[a b];
for i=1:n-1
    [M,index]=max(abs(ab(i:n,i)));   %得到列主元和其位置
    index=index+i-1;
    if ab(index,i)==0                %判断是否奇异矩阵
        error('singular matrix!!!')  
    end
    if index~=i                      %进行行互换
        temp=ab(index,:);
        ab(index,:)=ab(i,:);
        ab(i,:)=temp;
    end
    for j=i+1:n                      %将矩阵变为阶梯阵
        if ab(j,i)~=0
            ab(j,i:n+1)=ab(j,i:n+1)-ab(j,i)/ab(i,i)*ab(i,i:n+1);
        end
        
    end
end
x(n,1)=ab(n,n+1)/ab(n,n);            
i=n-1;
while i>=1                           %将得到的x元素代入前一行方程式得到解矩阵
    x(i)=(ab(i,n+1)-ab(i,i+1:n)*x(i+1:n))/ab(i,i);
    i=i-1;
end
for i=n+1:8
    x(i,1)=0;
end
%-----消元结束，结果在x向量中---%
plot(y,h,'*');                       %画拟合曲线图
hold on
y=0;
t=0:0.001:20
y=y+x(1)+x(2)*t+x(3)*t.^2+x(4)*t.^3+x(5)*t.^4+x(6)*t.^5+x(7)*t.^6+x(8)*t.^7;
plot(t,y);
xlabel('距离中心距离r   单位：cm');
ylabel('液体流速v   单位：cm/s');
title('七阶最小二乘拟合');
hold on
x                                    %输出多项式系数