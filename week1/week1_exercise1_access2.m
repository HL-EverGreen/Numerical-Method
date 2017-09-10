function y=week1_exercise1_access2(a,b,c)

delta=b*b-4*a*c;  %计算特征式
if delta>=0        %判断方程的解是否为实根
    x1=-(2*c)/(b+sqrt(delta));  %用变换后的求根公式计算x1
    x2=-(2*c)/(b-sqrt(delta));  %用变换后的求根公式计算x2
else fprintf('error in parameter');
end
x1,x2
