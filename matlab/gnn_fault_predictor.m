function faultyNodes = gnn_fault_predictor(adjMatrix, features)
% Simulates a basic GNN-like behavior to predict faults
% Threshold-based simplified logic instead of a trained deep model

latencyThreshold = 40;

faultyNodes = find(features(:,1) > latencyThreshold);

disp('Predicted faulty nodes:');
disp(faultyNodes');

end
