clc,clear,close all
x=-20:1:20;
y=-20:1:20;
[x,y]=meshgrid(x,y);
z=x.^2+y.^2
mesh(x,y,z)