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
    plot3(a,b,c,".", "color", "green", "MarkerSize",4);
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
    plot3(a,b,c,".", "color", "red", "MarkerSize",4);
    grid on
    hold on
end
plot3([-1000 1000],[0 0],[0 0],"linewidth",1,"color", "black");
plot3([0 0],[-1000 1000],[0 0],"linewidth",1,"color", "black");
plot3([0 0],[0 0],[-1000 1000],"linewidth",1,"color", "black");
t = [-1000 1000];
xt = 0.16418*(t);
yt = 0.12280*(t);
zt = 0.97876*(t);
ll1 = plot3(xt,yt,zt,"MarkerSize",20);
pp1 = plot3(-26.301825,-19.672699,-156.796808,".", "color", "red", "MarkerSize",24);
% plot3(-66.376831,-18.086889,-144.675570,".", "color", "green", "MarkerSize",24);
% for i= 1:size(surface1,1)
%     plot3(surface1(i,2),surface1(i,3),surface1(i,4),".", "color", "#3d3d3d", "MarkerSize",4);
% end
for i= 1:10000
    h1 = plot3(sta1(i,1),sta1(i,2),sta1(i,3),".", "color", "cyan", "MarkerSize",3);
    h2 = plot3(sta1(i,4),sta1(i,5),sta1(i,6),".", "color", "yellow", "MarkerSize",3);
    h3 = plot3(sta1(i,7),sta1(i,8),sta1(i,9),".", "color", "#3d3d3d", "MarkerSize",3);
    plot3(sta1(i,10),sta1(i,11),sta1(i,12),".", "color", "#3d3d3d", "MarkerSize",3);
    plot3(sta1(i,13),sta1(i,14),sta1(i,15),".", "color", "#3d3d3d", "MarkerSize",3);
    if (sta1(i,20) ~= 0) 
       h4 = plot3(sta1(i,16),sta1(i,17),sta1(i,18),".", "color", "green", "MarkerSize",3);
    end
end
legend([h1,h2,h3,h4,pp1,ll1],'Incident coordinate', 'Reflex coordinate', 'FAST node', 'Sphere receive', 'Valid range','Parabolic lines');
axis([-500 500 -500 500 -500 0])
xlabel('x')
ylabel('y')
zlabel('z')