clear;
clc;
syms x y;
x0=0.16418;
y0=0.12280;

fun=x^2+y^2-(x0*x+y0*y)^2-150*150==0
ezplot(fun,[-200 200],[-200 200])
title('入射电磁波的区域')

