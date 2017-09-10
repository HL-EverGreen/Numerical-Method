function y=lagrange(X,Y,x0)
%该脚本用于计算指定点处的lagrange插值结果
%X为所选数据节点，可以数组形式输入多个节点
%Y为所选数据节点处的值，可以数组形式输入多个值（与输入的节点一一对应）
%x0为需要用插值法求值的点，可以数组形式输入多个值
n=length(X);
n1=length(Y);
if n~=n1       %判断输入X与Y维数是否一致
    disp('输入X和Y维度不一致！');
else
m=length(x0);  %输入需要用插值法计算的点的个数
for i=1:m      
    z=x0(i);   %当前需要用插值法计算的点
    s=0;       %初始化Lagrange插值法计算结果
    for k=1:n   
        p=1;
        for j=1:n
            if j~=k
                p=p*(z-X(j))/(X(k)-X(j));    %基函数
            end
        end
        s=p*Y(k)+s;   %Lagrange插值多项式
    end
    y(i)=s;    %输出结果也为数组，与需要用插值法计算值的点一一对应
end
end