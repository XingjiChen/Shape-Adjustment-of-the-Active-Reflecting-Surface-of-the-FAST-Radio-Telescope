% t = 3/2*pi-asin(5/6):0.01:3/2*pi+asin(5/6); %t从0变化到 $\pi$ , 步长为0.1
% x = cos(t).*300;
% y = sin(t).*300;
% plot(x,y)
% axis equal
% axis([-300 300 -300 0])
xt = @(t) cos(t)*300;
yt = @(t) sin(t)*300;
fplot(xt,yt,[3/2*pi-asin(5/6) 3/2*pi+asin(5/6)])
axis equal
axis([-300 300 -300 0])
hold on
p = 279.6;
dz = 300;
fplot(@(x) x^2/(2*p)-dz,[-150 150])
legend('基准球面','工作抛物面')
