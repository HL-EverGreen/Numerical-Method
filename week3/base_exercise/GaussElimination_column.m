function x=GaussElimination_column(~)
%该程序利用Gauss列主元消去法求线性方程组的解
%请自行输入系数矩阵A及B，并根据输入矩阵的阶数改变解空间X的阶数
%比如系数矩阵是3x3时，改变X为[0,0,0]
%该程序输出四个结果：系数矩阵A的行列式的值，Gauss列主元消去后所得的矩阵A及B，以及解X
A=[1 1   1    1     1     1     ;      %输入系数矩阵A
   1 1.1 1.21 1.1^3 1.1^4 1.1^5 ;
   1 1.2 1.44 1.2^3 1.2^4 1.2^5 ;
   1 1.3 1.69 1.3^3 1.3^4 1.3^5 ;
   1 1.4 1.96 1.4^3 1.4^4 1.4^5 ;
   1 1.5 2.25 1.5^3 1.5^4 1.5^5];
cond(A)
det(A/1.44)          %计算A除以矩阵中最大元素后的行列式的值 用以判断病态矩阵
B=[6;3.31+1.1^3+1.1^4+1.1^5;
    3.64+1.2^3+1.2^4+1.2^5;
    1+1.3+1.69+1.3^3+1.3^4+1.3^5;
    1+1.4+1.96+1.4^3+1.4^4+1.4^5;
    1+1.5+2.25+1.5^3+1.5^4+1.5^5];      %输入矩阵B
X=[0,0,0];       %初始化解空间X
n=length(A);       %计算A的阶数，赋值给n
if rank(A)==n      %如果A的秩等于n，表明该线性方程组有n个实数解，继续求解过程
max=0;             %初始化max max用于存放一列中最大的元素的绝对值的值
temp=0;            %初始化temp，用于交换元素
max_i=0;           %初始化最大元素所在行
factor=0;          %初始化商，用与Gauss消去
for k=1:n-1        %k表示列，从第1列开始到n-1列进行Gauss消去
    max_i=k;           %每次改变k的值先预设最大行为第k行
    max=abs(A(k,k));   %每次改变k的值预设最大元素为A（k,k)
    for i=k+1:n        %选取最大元素，确定其所在行
        if max<abs(A(i,k))
            max=abs(A(i,k));
            max_i=i;
        end
    end
    if max_i~=k        %将该列k行以下绝对值最大的元素所在行与第k行交换
    for i=k:n
       temp=A(k,i);
       A(k,i)=A(max_i,i);
       A(max_i,i)=temp;
    end
    temp=B(k);         %同样交换B矩阵
       B(k)=B(max_i);
       B(max_i)=temp;
    end
    for i=k+1:n        %进行Gauss消去
        factor=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-factor*A(k,j);
        end
        B(i)=B(i)-factor*B(k);  %B矩阵同样进行消去
    end
end
X(n)=B(n)/A(n,n);    %利用回代法依次计算出各个解
for i=n-1:-1:1
    sum=B(i);
    for j=i+1:n
    sum=sum-A(i,j)*X(j);
    end
    X(i)=sum/A(i,i);
end
A,B,X
else disp('The equations have infinite solutions or may have no solution');
    %如果A的秩不等于n，则输出方程有无限解或者可能无解
end
