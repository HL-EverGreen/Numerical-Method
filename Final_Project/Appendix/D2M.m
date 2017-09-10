function [n] = D2M(y,m,d)
%DAY calculate the day between the date and today
Y = year(date);
M = month(date);
D = day(date);
n = (Y*12 + M) - (y*12 + m);
k=D-d;
if k>15
    n = n + 1;
end
end

