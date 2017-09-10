function yi=Newton(x,y,x0)
%Newton插值法
%x是节点向量，y是节点上的值，与节点向量元素一一对应
%x0是需要用插值法求值的点，可以数组形式输入多个
%yi是插值后的返回结果
n=length(x);
m=length(y);
if m~=n
    disp('输入x和y的维数不一样！');
    return
end
A=zeros(n);   %定义差商表
A(:,1)=y;     %差商表第一列为y
for j=2:n     %j为列标
    for i=1:(n-j+1)   %i为行标
        A(i,j)=(A(i+1,j-1)-A(i,j-1))/(x(i+j-1)-x(i));   %计算差商表
    end
end        
%根据差商表，求对应的Newton插值多项式在x=xi处的值yi
N(1)=A(1,1);
for j=2:n
    T=1;
    for i=1:j-1
        T=T*(x0-x(i));
    end
    N(j)=A(1,j)*T;
end
yi=sum(N);   %将x=xi带入插值多项式，得到yi的值
end
