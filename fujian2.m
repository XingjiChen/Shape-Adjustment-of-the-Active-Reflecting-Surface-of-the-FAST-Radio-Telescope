X=xlsread('附件2.csv');

figure

plot3(X(:,1),X(:,2),X(:,3),'b*')

hold on

plot3(X(:,4),X(:,5),X(:,6),'r*')

legend('下端点','上端点')