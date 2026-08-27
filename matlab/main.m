clc; clear; close all;

network = generate_network();

[digitalTwin, trueFaults] = update_digital_twin(network);

[adjMatrix, features] = extract_graph_data(digitalTwin);

faultyNodes = gnn_fault_predictor(adjMatrix, features);

optimizedNetwork = optimize_network(digitalTwin, faultyNodes);

visualize_network(network, digitalTwin, optimizedNetwork, faultyNodes);

generate_network_report(network, digitalTwin, optimizedNetwork, faultyNodes, trueFaults);

plot_performance(digitalTwin, optimizedNetwork);

disp(' Simulation Completed.');
