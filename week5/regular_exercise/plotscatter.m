function y=plotscatter(x,y)
%用于画散点图和拟合曲线图
a=linspace(20,150,100);
b=0.000000021764976*a.^5-0.000008340192476*a.^4+0.001228189358885*a.^3-0.080419756835137*a.^2+2.864777891091224*a-35.500001284645485;   %函数式通过最小二乘法获得
scatter(x,y,'*');
hold on;
plot(a,b,'r');
xlabel('initial velocity');
ylabel('thinking diatance');
legend('data of thinking distance','interpolation');
title('5-degree interpolation');
grid on;
