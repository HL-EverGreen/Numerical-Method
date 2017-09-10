function y=ComTrapezoid(a,b,n)
%用复合梯形公式来计算函数积分
%a为积分区间左端点，b为积分区间右端点，n为子区间数
h=(b-a)/n;            %h为每个区间的长度
I=h/2*(fr(a)+fr(b));  %调用函数fr
for i=1:n-1
    I=I+h*fr(a+i*h);  %计算近似积分
end
I                     %输出近似积分
