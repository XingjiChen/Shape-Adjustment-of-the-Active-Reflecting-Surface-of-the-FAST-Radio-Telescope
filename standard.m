clc;
syms x0 y0 z0 n m p q t dz th al x y z r;
al = deg2rad(36);
th = deg2rad(90-78);
dz = -300;
p = 279;
r = 150;
A = [cos(al) sin(al) 0;-sin(al) cos(al) 0; 0 0 1];
B = [cos(th) 0 -sin(th);0 1 0;sin(th) 0 cos(th)];
X = [r*cos(t); r*sin(t); dz];
for i = 0:0.01*pi:2*pi
    E = double(subs(X, t, i));
    a = E(1);
    b = E(2);
    c = E(3);
    plot3(a,b,c,".", "color", "green", "MarkerSize",6);
    grid on
    hold on
end
% XX = A*B*X;
XX = A'*B'*X;
for i = 0:0.01*pi:2*pi
    E = double(subs(XX, t, i));
    a = E(1);
    b = E(2);
    c = E(3);
    plot3(a,b,c,".", "color", "red", "MarkerSize",6);
    grid on
    hold on
end
%plot3([-1000 1000],[0 0],[0 0],"linewidth",1,"color", "black");
%plot3([0 0],[-1000 1000],[0 0],"linewidth",1,"color", "black");
plot3([0 0],[0 0],[-1000 1000],"linewidth",1,"color", "black");
t = [-1000 1000];
xt = 0.16418*(t);
yt = 0.12280*(t);
zt = 0.97876*(t);
plot3(xt,yt,zt,"MarkerSize",20);
% plot3(-26.301825,-19.672699,-156.796808,".", "color", "red", "MarkerSize",24);
% plot3(-66.376831,-18.086889,-144.675570,".", "color", "green", "MarkerSize",24);
% for i= 1:size(sta4,1)
%     plot3(sta4(i,2),sta4(i,3),sta4(i,4),".", "color", "green", "MarkerSize",24);
% end
axis([-500 500 -500 500 -500 0])
xlabel('x')
ylabel('y')
zlabel('z')
% C = XX(1,1)^2+XX(2,1)^2-2*p*(XX(3,1)-dz)
% C1 = subs(C, x, x0+n*t);
% C2 = subs(C1, y, y0+m*t);
% C3 = subs(C2, z, z0+q*t);
% D = expand(C3)
