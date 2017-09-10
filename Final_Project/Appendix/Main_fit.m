%Main_fit.m fitting, calc. MSE, and plotting
% Given data
load('month.mat');
load('cm_b.mat');
% Fitting in diff. degree
for deg=1:6
    [f,coefs]=Polynomial_fit(month,cm_b,deg); % use 1-35-degree fitting

% Plotting
    x=0:0.1:80;y=f(x);
    figure;subplot(2,1,1);hold on;
    plot(x,y,'r','linewid',1.5);
    plot(month,cm_b,'b*');
    legend(gca, 'Fitting', 'cm_b vs. month', 'Location', 'NorthWest' );
    xlabel 'month'; ylabel 'cm_b';
    title([num2str(deg) '-Degree Fitting']);
    grid on; hold off;

% Residuals Diagram
    subplot(2,1,2);
    stem(month,f(month)-cm_b);
    xlabel 'month'; ylabel 'Residual';
    MSE=sum((f(month)-cm_b).^2)/length(month);     % Root-mean-square error
    title (['  Residuals Diagram (MSE=' num2str(MSE) ')']);
    axis([0 90 -3 3]);
    grid on;
    disp(['  Coefficients: ' num2str(coefs)]);
    disp(['  MSE: ' num2str(MSE)]);
    print(gcf, '-dbmp', ['deg' num2str(deg) '_fit']);
end
% Copyright (c) 2015, Yin, W.J., ZJU.
% All rights reserved. 