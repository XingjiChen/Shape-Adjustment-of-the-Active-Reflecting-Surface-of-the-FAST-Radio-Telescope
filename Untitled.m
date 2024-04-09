A = [299:0.01:301];
B = ones(size(A))*150;
plot(line(:,1), line(:,2), A, B, "--", "linewidth", 0.7);
title('$\Delta{z}-R^\prime$ Relationship','interpreter','latex', 'FontSize', 16);
xlabel('$\Delta{z}$','interpreter','latex', 'FontSize', 12);
ylabel('$R^\prime$','interpreter','latex', 'FontSize', 12);
legend("\Delta{z}-R^\prime Curve", "Threshold R^\prime = 150", 'Location', "Best");
