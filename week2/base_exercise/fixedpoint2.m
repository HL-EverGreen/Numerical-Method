function y=fixedpoint2(x)
%这个程序用来分析用x=1+1/x^2进行迭代时的迭代结果
%即分析上机作业中第一种迭代方式
%输出的i指的是迭代次数，xi是当前迭代结果，e_a是当前迭代结果误差
%当当前迭代结果误差小于机器精度时即跳出循环
eps=1;                %初始化机器精度
while 1+eps>1         %根据机器精度的定义计算机器精度
    eps=eps/2;
end
eps=2*eps;
last_xi=x;            %上次迭代结果赋初值为输入的x
for i=1:1:100         %迭代次数上限为100次
xi=1+1/x^2;     %计算当前迭代结果
x=xi;           %更新x
e_a=abs(xi-last_xi)/xi;  %计算当前迭代结果误差
last_xi=xi;           %预先给上一迭代结果赋值
i,xi,e_a
if e_a<eps            %迭代结束条件
    break;
end
end
if i==100             %判断迭代是否收敛
    disp('迭代发散！');
else disp('迭代收敛！');
end
