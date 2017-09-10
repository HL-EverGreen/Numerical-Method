%Main_itp.m interpolating, plotting and calc.f(10)
% Given data
load('month.mat');
load('cm_b.mat');
% Interpolating by diff. methods
%   remove one of comment mark (%) below to use that method

% Interpolating by diff. methods
%    remove one of comment mark (%) below to use that method
% {
%     t=month;month=cm_b;cm_b=t;            % use Inverse interpolation
%     f=Newton_itp(month,cm_b);      % use newton method (polynomial)
%     f=Piecewise_itp(month,cm_b,1); % \
%     f=Piecewise_itp(month,cm_b,5); % |use piecewise low-order newton
%     f=Piecewise_itp(month,cm_b,7); % |
%     f=Piecewise_itp(month,cm_b,35); % /  (same as Newton_itp)
    f=CubicN_itp(month,cm_b);      % use Cubic Spline interpolation
%     f=Polynomial_fit(month,cm_b,2);% use 2-degree fitting
% }

% Plotting
x = 0:0.1:80; y=f(x);
figure;hold on;
plot(x,y,'r','linewid',1.5);
plot(month,cm_b,'b*');
legend(gca,'Interpolation','cm_b vs. month','Location','NorthWest')
xlabel 'month';ylabel 'cm_b';
title 'Interpolating';
grid on; hold off;

% Calc.f(13)
disp(f(27))

% Copyright (c) 2015, Yin, W.J, ZJU.
% All rights reserved. 