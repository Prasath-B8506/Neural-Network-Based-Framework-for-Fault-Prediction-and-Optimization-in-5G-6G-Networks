function network = generate_network()
% Generates a simulated 5G/6G physical network topology

numNodes = 15;

adjMatrix = rand(numNodes) > 0.7;
adjMatrix = triu(adjMatrix, 1);
adjMatrix = adjMatrix + adjMatrix';

latency = randi([5, 50], numNodes, 1);
bandwidth = randi([100, 1000], numNodes, 1);

for i = 1:numNodes
    network.nodes(i).id = i;
    network.nodes(i).latency = latency(i);
    network.nodes(i).bandwidth = bandwidth(i);
    network.nodes(i).status = 'OK';
end

network.adjMatrix = adjMatrix;
end
