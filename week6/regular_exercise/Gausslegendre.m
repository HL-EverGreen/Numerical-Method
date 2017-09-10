function I=Gausslegendre(~)
%用Gauss-Legendre两点积分公式进行积分求解
x1=sqrt(15)/5;                
x2=-sqrt(15)/5;
I=5/9*fr(10+10*x1)+5/9*fr(10+10*x2)+8/9*fr(10);    %计算近似积分
I=10*I;                         %乘上因变换v=10+10*vd造成的因子
I