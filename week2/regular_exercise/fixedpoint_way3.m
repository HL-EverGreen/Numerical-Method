function y=fixedpoint_way3(~)
%用迭代法计算方程的根
%用h=sqrt(90/(9*pi-pi*h)的形式进行迭代
%当结果至少具有8位准确有效数字时停止计算
%i表示迭代次数 hi表示当前迭代结果 e_a表示当前迭代误差
e_s=5e-9;  %定义结果至少有8位准确有效数字时的容差
h=2;       %初始点为h=2
last_hi=h; %初始化上次迭代结果
for i=1:100
    hi=g3(h);  %调用g3(h)计算当前迭代结果
    h=hi;      %更新h
    e_a=abs(hi-last_hi)/hi;  %计算当前迭代误差
    last_hi=hi;    %更新last_hi
    i,hi,e_a
    if e_a<e_s  %判断迭代是否终止
        break;
    end
    
end
