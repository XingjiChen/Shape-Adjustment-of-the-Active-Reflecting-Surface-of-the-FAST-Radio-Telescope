xt = @(t) cos(t)*300;
yt = @(t) sin(t)*300; 
fplot(xt,yt,[3/2*pi-asin(5/6) 3/2*pi+asin(5/6)])
hold on
axis([-300 300 -400 0])
axis equal
p = 279.6;
dz = 300
the = deg2rad(90-78.169)
A = [-150 150 0;-259.76 -259.76 -300];
B = [cos(the) -sin(the);sin(the) cos(the)];
A = B*A;
f = @(x,y) (x*cos(the)-y*sin(the))^2/(2*p)-dz-x*sin(the)-y*cos(the);
fimplicit(f,[A(1,1) A(1,2) -320 0]);
axis equal
hold on
plot(A(1,3), A(2,3), '.', 'MarkerSize', 10);
plot([0 0], [-300 0], 'linestyle','--', "color", "black")
plot([A(1,3) 0], [A(2,3) 0], 'linestyle','--', "color", "black")
xxt = @(t) cos(t)*50;
yyt = @(t) sin(t)*50; 
fplot(xxt,yyt,[3/2*pi 3/2*pi+the], "color", "black")
txt = '$\theta$';
text(15,-70,txt,'HorizontalAlignment','right','interpreter','latex', "FontSize", 12);
legend("基准", "工作", "轴点",'Location', "NorthEast");
