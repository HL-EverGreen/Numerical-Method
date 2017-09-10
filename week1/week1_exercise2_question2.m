function y=week1_exercise2_question2(~)

sum=single(0);               %初始化当前迭代结果
real_deviation=single(0);    %初始化当前迭代结果与真值差的绝对值
e_a=single(1);               %初始化当前迭代结果误差，并使其能够进入while循环
i=single(0);                 %迭代次数
item=single(1);              %用于计算（2*i+1)!，初始值为i=0时（2*i+1)!的值
last_sum=single(0);          %初始化上次迭代结果的值
real_value=single(sin(0.5)); %计算真值
eps=single(1);               %给机器精度赋初值

while single(1+eps)>1   %循环结束的条件是1+eps=1，即eps小于机器精度表示为0
    eps=single(eps/2);  %减半eps后继续进行判断
end
eps=single(2*eps);

while abs(e_a)>eps   %当当前迭代误差小于机器精度时停止计算
    last_sum=single(sum);    %把上次迭代结果赋值给last_sum
    sum=single(sum+((-1)^i)*0.5^(2*i+1)/(item));    %新一轮迭代
    i=i+1;           %计算次数i加1
    item=single(item*2*i*(2*i+1));    %预先计算下次迭代所用的分母
    e_a=single((sum-last_sum)/sum);   %计算当前迭代结果误差
    real_deviation=single(abs(sum-real_value)); %计算当前迭代结果与真值的绝对误差的绝对值
    sum,real_deviation,i   %每轮迭代完后输出这轮的迭代结果、真值偏差和迭代次数
end
real_value   %输出真值