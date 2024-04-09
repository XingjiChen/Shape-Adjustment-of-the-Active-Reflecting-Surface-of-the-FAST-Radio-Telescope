for i = 1:4452
    if (abs(in3(i,1)) < 10000 && abs(in3(i,2)) < 10000 && abs(in3(i,3)) < 10000)
        plot3(in3(i,1),in3(i,2),in3(i,3), ".", "color", "red");
        hold on
    end
    
end
for i = 1:2226
    plot3(base(i,1),base(i,2),base(i,3), ".", "color", "blue", "MarkerSize", 12);
    hold on
end
axis([-400 400 -400 400 -1000 1000])
