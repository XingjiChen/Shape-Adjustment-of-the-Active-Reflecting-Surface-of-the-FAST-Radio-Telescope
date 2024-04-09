for i = 1:2226
    if (abs(in4(i,1)) < 10000 && abs(in4(i,2)) < 10000 && abs(in4(i,3)) < 10000)
        h1=plot3(in4(i,1),in4(i,2),in4(i,3), ".", "color", "red","MarkerSize", 9);        
        hold on
    end
    
end
for i = 1:2226
     h2=plot3(in4(i,4),in4(i,5),in4(i,6), ".", "color", "blue", "MarkerSize", 8);
     hold on
 end
axis([-400 400 -400 400 -1000 1000])
t = [-10000 10000];
xt = 0.16418*(t);
yt = 0.12280*(t);
zt = 0.97876*(t);
h3=plot3(xt,yt,zt);
legend([h1(1),h2(1),h3(1)],'理想抛物面','基准球面','中轴线')