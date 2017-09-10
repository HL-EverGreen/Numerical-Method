function y=week1_exercise1_access1_single(a,b,c)
a=single(a);       %单精度转换
b=single(b);       %单精度转换
c=single(c);       %单精度转换
delta=single(b*b-4*a*c);  %计算特征式
if delta>=0        %判断方程的解是否为实根
    x1=single((-b+sqrt(delta))/(2*a));  %计算x1
    x2=single((-b-sqrt(delta))/(2*a));  %计算x2
else fprintf('error in parameter');
end
x1,x2
