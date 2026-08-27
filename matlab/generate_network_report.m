```matlab
function generate_network_report(original, twin, optimized, faultyNodes, trueFaults)
% Generates a telemetry and fault-prediction report

fprintf('\n========= Node Telemetry Report =========\n');
fprintf('ID\tLatency\tBandwidth\tStatus\n');

for i = 1:length(twin.nodes)
    fprintf('%2d\t%6d\t%8d\t%s\n', ...
        twin.nodes(i).id, ...
        twin.nodes(i).latency, ...
        twin.nodes(i).bandwidth, ...
        twin.nodes(i).status);
end

fprintf('\n========= Fault Summary =========\n');
fprintf('Total Nodes : %d\n', length(twin.nodes));
fprintf('Predicted Faults : %d\n', length(faultyNodes));
fprintf('Faulty Node IDs : %s\n', mat2str(faultyNodes'));

% Performance metrics
latencies_before = arrayfun(@(x) x.latency, twin.nodes);
latencies_after = arrayfun(@(x) x.latency, optimized.nodes);

bandwidth_before = arrayfun(@(x) x.bandwidth, twin.nodes);
bandwidth_after = arrayfun(@(x) x.bandwidth, optimized.nodes);

avgLatencyBefore = mean(latencies_before);
avgLatencyAfter = mean(latencies_after);

totalBandwidthBefore = sum(bandwidth_before);
totalBandwidthAfter = sum(bandwidth_after);

fprintf('\n========= Performance Metrics =========\n');
fprintf('Average Latency Before Optimization : %.2f ms\n', avgLatencyBefore);
fprintf('Average Latency After Optimization : %.2f ms\n', avgLatencyAfter);

fprintf('Latency Improvement : %.2f%%\n', ...
    100 * (avgLatencyBefore - avgLatencyAfter) / avgLatencyBefore);

fprintf('Total Bandwidth Before Optimization : %d Mbps\n', totalBandwidthBefore);
fprintf('Total Bandwidth After Optimization : %d Mbps\n', totalBandwidthAfter);

fprintf('Bandwidth Gain : %.2f%%\n', ...
    100 * (totalBandwidthAfter - totalBandwidthBefore) / totalBandwidthBefore);

% Confusion Matrix
truePositives = length(intersect(faultyNodes, trueFaults));
falsePositives = length(setdiff(faultyNodes, trueFaults));
falseNegatives = length(setdiff(trueFaults, faultyNodes));
trueNegatives = length(twin.nodes) - truePositives - falsePositives - falseNegatives;

confMat = [
    truePositives, falseNegatives;
    falsePositives, trueNegatives
];

fprintf('\n========= Confusion Matrix (Fault Prediction) =========\n');

disp(array2table( ...
    confMat, ...
    'VariableNames', {'Actual_Faulty','Actual_OK'}, ...
    'RowNames', {'Predicted_Faulty','Predicted_OK'}));

accuracy = (truePositives + trueNegatives) / length(twin.nodes);
precision = truePositives / (truePositives + falsePositives + eps);
recall = truePositives / (truePositives + falseNegatives + eps);

fprintf('Accuracy : %.2f%%\n', accuracy * 100);
fprintf('Precision : %.2f%%\n', precision * 100);
fprintf('Recall : %.2f%%\n', recall * 100);

end
```
