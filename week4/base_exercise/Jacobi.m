function x=Jacobi(~)
%用Jacobi迭代的方法对题设线性方程组进行求解
%预定迭代次数上限100，如果超过上限则停止迭代，并说明迭代方式发散
%初始向量为[0;0;0]
A=[5 2 1;      %输入系数矩阵A
    -1 4 2;
    2 -3 10];
B=[-12;20;3];   %输入矩阵B
D=diag(diag(A));    %构造迭代方法x=G*x+f
N=D-A;
G=D^-1*N;
f=D^-1*B;
x=zeros(3,1);       %初始化上一轮迭代解
e_s=1e-04;          %初始化迭代结束容差
for i=1:100         %预定迭代次数上限
   x_next=G*x+f;    %Jacobi迭代方法
   if norm(x_next-x,inf)<e_s;   %判断迭代结果是否达到精度要求
       x_next,i
       break;
   else x=x_next;   %更新上一轮迭代解
       
   end
end
if i==100           %判断是否发散
    disp('发散！');
end

    