A = [299:0.01:301];
B = ones(size(A))*150;
plot(sta3(:,1), sta3(:,4), A, B, "--", "linewidth", 0.7);
title('$\Delta{z}-R^\prime$ Relationship','interpreter','latex', 'FontSize', 16);
xlabel('$\Delta{z}$','interpreter','latex', 'FontSize', 12);
ylabel('$R^\prime$','interpreter','latex', 'FontSize', 12);
legend("\Delta{z}-R^\prime Curve", "Threshold R^\prime = 150", 'Location', "Best");
[Rbest, pp] = max(sta3(:,4))%Rbest 表示连续以中心点xoy平面取到的最大的半径 (pp是行数)
dzBest = sta3(pp,1)% dzBest 表示最大半径对应的Δz值
