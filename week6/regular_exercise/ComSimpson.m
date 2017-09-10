function y=ComSimpson(a,b,n)
%用Simpson方法来计算函数积分
%a为积分区间左端点，b为积分区间右端点，n为子区间数
h=(b-a)/n/2;           %步长定义为子区间长度的一半
I=h/3*(fr(a)+fr(b));
for k=1:n-1                  %迭加相邻两子区间共用端点处的值
    I=I+h/3*2*fr(a+2*k*h);  
end
for k=1:n                    %迭加子区间中间端点处的值
    I=I+h/3*4*fr(a+(2*k-1)*h);
end
I                       %输出近似积分
