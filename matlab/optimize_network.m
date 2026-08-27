function optimizedNetwork = optimize_network(network, faultyNodes)
% Applies rerouting or resource reallocation to "heal" faulty nodes

optimizedNetwork = network;

for i = faultyNodes'
    optimizedNetwork.nodes(i).latency = max(optimizedNetwork.nodes(i).latency / 2, 5);
    optimizedNetwork.nodes(i).bandwidth = optimizedNetwork.nodes(i).bandwidth + 100;
    optimizedNetwork.nodes(i).status = 'HEALED';
end

end
