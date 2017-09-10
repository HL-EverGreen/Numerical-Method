function  h=falseposition_method(~)
%利用试位法计算方程的根
%初始根所在区间为(0,6)
%调用了f(x)=-pi*x^3+9*pi*x^2-90;
%当计算的结果至少具有8位有效数字时迭代终止
xl=0;    %初始化根估计区间下限
xu=6;    %初始化根估计区间上限
e_s=5e-9; %迭代终止条件
xr=(xl*f(xu)-xu*f(xl))/(f(xu)-f(xl));     %初始根的估计值
xr_last=0; %初始化上一次的估计值
i=0;      %初始化迭代次数
if f(xl)*f(xu)>0    %判断区间内是否有根
    error('invalid input');
else
    while abs(xr-xr_last)/xr>e_s    %当近似相对误差大于e_s时迭代继续
        i=i+1;
    if f(xr)==0;   %判断根估计值的函数值是否为0
    break;
    end
     if f(xr)*f(xu)<0   %根落在(xr,xu）上，重新调整区间边界值
            xl=xr;
            xr_last=xr;
            xr=(xl*f(xu)-xu*f(xl))/(f(xu)-f(xl)); %计算新的根估计值
        else xr_last=xr; %根落在(xl,xr）上
             xu=xr;
             xr=(xl*f(xu)-xu*f(xl))/(f(xu)-f(xl)); %计算新的根估计值
            end
      i,xl,xu,xr,abs(xr-xr_last)/xr
    end
end
   
            

