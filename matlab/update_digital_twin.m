function [digitalTwin, trueFaults] = update_digital_twin(network)
% Creates a virtual replica with true simulated faults

digitalTwin = network;
trueFaults = [];

for i = 1:length(network.nodes)
    if rand < 0.2 % 20% chance of being truly faulty
        digitalTwin.nodes(i).latency = network.nodes(i).latency * 2;
        digitalTwin.nodes(i).status = 'FAULTY';
        trueFaults(end+1) = i;
    end
end
end
