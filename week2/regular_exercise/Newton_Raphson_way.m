function y=Newton_Raphson_way(~)
%运用Newton-Raphson方法进行根的求解
%迭代初始值为h=2
%i为迭代次数 hi为当前迭代结果 e_a为当前迭代误差
%当计算结果至少具有8位有效数字时停止迭代
%调用了newtoncircle(h)函数进行Newton-Raphson公式的迭代
h=2;    %初始化初始迭代点
e_s=5e-9;   %定义使计算结果至少具有8位有效数字的容差
last_hi=h;  %初始化上一次迭代结果
e_a=1;      %初始化当前迭代结果，使其能进入第一次循环
i=0;        %初始化迭代次数
hi=0;       %初始化当前迭代结果
while e_a>e_s     %当前迭代误差小于容差时迭代终止
    i=i+1; 
    hi=newtoncircle(h);  %调用newtoncirclr函数计算当前迭代结果
    e_a=abs(hi-last_hi)/hi;   %计算当前迭代误差
    h=hi;           %更新h
    last_hi=hi;     %更新last_hi
    i,hi,e_a
end

