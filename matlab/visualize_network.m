```matlab
function visualize_network(original, twin, optimized, faultyNodes)
% Displays 3 states of the network with faulty node highlights

figure;

subplot(1,3,1);
G1 = graph(original.adjMatrix);
plot(G1, 'NodeLabel', 1:length(original.nodes));
title('Original Network');

subplot(1,3,2);
G2 = graph(twin.adjMatrix);
p = plot(G2, 'NodeLabel', 1:length(twin.nodes));
highlight(p, faultyNodes, 'NodeColor','r');
title('Digital Twin (with Faults)');

subplot(1,3,3);
G3 = graph(optimized.adjMatrix);
q = plot(G3, 'NodeLabel', 1:length(optimized.nodes));
highlight(q, faultyNodes, 'NodeColor','g');
title('Optimized Network');

end
