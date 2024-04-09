clc;
syms x0 y0 z0 n m p q t dz th al x y z;
al = deg2rad(36);
th = deg2rad(90-78);
dz = -300;
p = 279;
l = [0 0; 0 0; -1000 1000];
A = [cos(al) sin(al) 0;-sin(al) cos(al) 0; 0 0 1];
B = [cos(th) 0 -sin(th);0 1 0;sin(th) 0 cos(th)];
X = [x; y; z];
XX = B*A*X
L = A'*B'*l;
C = XX(1,1)^2+XX(2,1)^2-2*p*(XX(3,1)-dz)
D = X(1,1)^2+X(2,1)^2-2*p*(X(3,1)-dz)
fs = fimplicit3(C,[-5000 5000 -5000 5000 -5000 5000]);
fs.EdgeColor = 'none';
fs.FaceAlpha = 0.5;
ffs = fimplicit3(D,[-5000 5000 -5000 5000 -5000 5000]);
ffs.EdgeColor = 'none';
ffs.FaceAlpha = 0.5;
% axis equal
hold on
t = [-1000 1000];
xt = 0.16418*(t);
yt = 0.12280*(t);
zt = 0.97876*(t);
plot3(xt,yt,zt,"color", "red");
xxt = L(1,:);
yyt = L(2,:);
zzt = L(3,:);
plot3(xxt, yyt, zzt,"color", "blue");
plot3([0 0], [0 0], [-1000 1000], "color", "black");
plot3([-1000 1000], [0 0], [0 0], "color", "black");
plot3([0 0], [-1000 1000], [0 0], "color", "black");
% H = solve(C, [al th dz p])
