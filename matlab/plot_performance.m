function plot_performance(twin, optimized)
% Plots network performance before and after optimization

lat = [
    mean(arrayfun(@(x) x.latency, twin.nodes));
    mean(arrayfun(@(x) x.latency, optimized.nodes))
];

bw = [
    sum(arrayfun(@(x) x.bandwidth, twin.nodes));
    sum(arrayfun(@(x) x.bandwidth, optimized.nodes))
];

figure;

subplot(1,2,1);
bar(lat);
set(gca, 'XTickLabel', {'Before', 'After'});
title('Avg Latency Comparison');
ylabel('Latency (ms)');

subplot(1,2,2);
bar(bw);
set(gca, 'XTickLabel', {'Before', 'After'});
title('Total Bandwidth Comparison');
ylabel('Bandwidth (Mbps)');

end
