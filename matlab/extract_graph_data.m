function [adjMatrix, features] = extract_graph_data(network)
% Converts network into graph-structured format

adjMatrix = network.adjMatrix;
numNodes = length(network.nodes);

features = zeros(numNodes, 2); % [latency, bandwidth]

for i = 1:numNodes
    features(i,1) = network.nodes(i).latency;
    features(i,2) = network.nodes(i).bandwidth;
end

end
