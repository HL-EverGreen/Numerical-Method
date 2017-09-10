load('month.mat')
load('cm_b.mat')
load('kg_b.mat')
scatter(month,cm_b,'h')
hold on
scatter(month,kg_b,'p')
xlabel('month');
ylabel('cm¡¢kg');