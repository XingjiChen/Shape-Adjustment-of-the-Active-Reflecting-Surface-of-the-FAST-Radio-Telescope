A = [299:0.01:301];
B = ones(size(A))*0.07;
plot(err(:,1), err(:,2), A, B, "--", "linewidth", 0.7);
title({'$\delta-\Delta{z}$ Relationship';'$\alpha=36.795^\circ,\beta=78.169^\circ$'},'interpreter','latex', 'FontSize', 14);
xlabel('$\Delta{z} $(m)','interpreter','latex', 'FontSize', 12);
ylabel('$\delta (\%)$','interpreter','latex', 'FontSize', 12);
legend("\delta-\Delta{z} Curve", "Threshold \delta = 0.07%", 'Location', "Best");
