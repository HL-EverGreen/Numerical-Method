function x=LU(~)
%改程序为利用LU分解法对线性方程组进行求解
%由于题目中矩阵A的特殊性，未添加列主元交换的程序段
%sum的功能：暂时存放求和的结果
A=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    -1 3 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    -1 -1 4 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    -1 -1 -1 4 0 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 -1 0 4 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 -1 -1 4 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 -1 -1 4 -1 -1 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 -1 -1 -1 4 0 -1 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 -1 0 4 -1 -1 -1 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 -1 -1 4 -1 -1 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 -1 -1 4 -1 -1 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 -1 -1 -1 4 0 -1 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 -1 0 4 -1 -1 -1 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 -1 -1 4 -1 -1 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 -1 -1 4 -1 -1 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 -1 -1 -1 4 0 -1 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0 4 -1 -1 -1;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 -1 4 -1 -1;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 -1 4 -2;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 -1 -2 4];    %输入系数矩阵A
B=[0;1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];        %输入矩阵B
n=length(A);               %计算矩阵阶数
Y=zeros(n,1);    
X=zeros(n,1);              %初始化解
L=tril(A,-1)+eye(n);       %初始化单位下三角矩阵L
U=triu(A);                 %初始化上三角矩阵U
sum=0;                     %初始化求和暂存空间
for i=1:n                  %计算U第一行
    U(1,n)=A(1,n);
end
for j=2:n                  %计算L第一列
    L(j,1)=A(j,1)/U(1,1);
end

for k=2:n                  %依次计算U各行和L各列
    for i=k:n
    sum=0;
    for j=1:k-1
        sum=sum+L(k,j)*U(j,i);
    end
    U(k,i)=A(k,i)-sum;
    end
    if k~=n 
    for i=k+1:n
        sum=0;
        for j=1:k-1
            sum=sum+L(i,j)*U(j,k);
        end
        L(i,k)=(A(i,k)-sum)/U(k,k);
    end
    end
end
Y(1,1)=B(1,1);             %计算Y
for k=2:n
    sum=0;
    for j=1:k-1
        sum=sum+L(k,j)*Y(j,1);
    end
    Y(k,1)=B(k,1)-sum;
end

X(n,1)=Y(n,1)/U(n,n);      %计算X
for k=n-1:-1:1
    sum=0;
    for j=k+1:n
        sum=sum+U(k,j)*X(j,1);
    end
    X(k,1)=(Y(k,1)-sum)/U(k,k);
end
X,L,U


        
        
        
