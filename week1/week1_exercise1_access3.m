function y=week1_exercise1_access3(a,b,c)

delta=b*b-4*a*c;  %计算特征式
if delta>=0        %判断方程的解是否为实根
    if b>0         %判断b的符号
    x1=(-b-sqrt(delta))/(2*a);  %b>0时用该式计算x1
    else 
    x1=(-b+sqrt(delta))/(2*a);  %b<0时用该式计算x1
    end
    x2=c/(a*x1);                %利用韦达定理计算x2
else fprintf('error in parameter');
end
x1,x2
