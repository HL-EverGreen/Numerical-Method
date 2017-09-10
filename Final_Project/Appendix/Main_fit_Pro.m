%Main_fit_Pro.m fitting, calc. confidence interval
% Given data
load('month.mat');
load('cm_b.mat');
% Fitting in diff. degree
deg=3;
[f,coefs]=Polynomial_fit(month,cm_b,deg); % use 1-6-degree fitting

% Plotting
x=0:0.25:70;y=f(x);
figure;hold on;
plot(x,y,'r','linewid',1.5);
plot(month,cm_b,'b*');
xlabel 'month'; ylabel 'cm_b';
title([num2str(deg) '-Degree Fitting']);
grid on;

alpha=0.05;n=size(month,2);
X=ones(n,deg+1);
for k=1:deg
    X(:,k+1)=X(:,k).*month';
end
MSE=sum((f(month)-cm_b).^2)/length(month);     % Root-mean-square error
delta_coefs=tinv(1-alpha/2,n-deg-1)*sqrt( ...
              MSE/(n-deg-1)*diag(inv(X'*X)))';
syms t;h_1=[];h_2=[];
for k=0:deg
    h_1=[h_1;t.^k];
    h_2=[h_2,t.^k];
end
delta_Y(t)=tinv(1-alpha/2,n-deg-1)*sqrt( ...
              MSE/(n-deg-1).*(1+h_2*(inv(X'*X)*h_1)));
delta_y=eval(delta_Y(x));
plot(x,y+delta_y,'b-.',x,y-delta_y,'b-.');
legend(gca, 'Fitting', 'cm_b vs. month','Prediction bound', ...
    'Location', 'NorthWest' );
disp('  Coefficients:');
disp([coefs-delta_coefs;coefs+delta_coefs]);
print(gcf, '-dbmp', ['deg' num2str(deg) '_fit_p']);

% Copyright (c) 2015, Yin, W.J., ZJU.
% All rights reserved. 