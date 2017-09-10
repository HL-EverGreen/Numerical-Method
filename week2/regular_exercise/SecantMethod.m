function y=SecantMethod(~)
%运用割线法求方程的根
%调用f(h)计算h=hi时函数的值
%i表示迭代次数 hi表示当前迭代结果 e_a表示当前迭代误差
%当迭代结果至少具有8位准确的有效数字时，迭代终止
h1=1;    %选取初始值h1=1；
h2=1.5;  %选取初始值h2=1.5；
last_hi=h2;   %初始化h(i-1)，即last_hi
last_last_hi=h1;  %初始化h(i-2)，即last_last_hi
e_s=5e-9;        %定义容差
e_a=1;           %初始化当前迭代误差使其能进入第一次循环
i=0;             
while e_a>e_s    %当当前迭代误差大于容差时迭代继续
    hi=last_hi-f(last_hi)*(last_hi-last_last_hi)/(f(last_hi)-f(last_last_hi));
    %计算新一轮迭代的结果
    e_a=abs(hi-last_hi)/hi;  %计算当前迭代误差
    last_last_hi=last_hi;    %更新last_last_hi
    last_hi=hi;              %更新last_hi
    i=i+1;
    i,hi,e_a
end
    
    
