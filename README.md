# MATLAB Digital Twin Framework for 5G/6G Fault Prediction & Network Optimization

A MATLAB-based simulation framework for modeling 5G/6G communication networks, simulating network faults, analyzing telemetry, identifying fault-prone nodes, and evaluating network optimization strategies.

---

## 📌 Project Overview

Next-generation 5G/6G communication networks have complex and dynamic topologies where changes in latency, bandwidth, congestion, and node failures can affect network reliability.

This project develops a MATLAB-based **Digital Twin simulation framework** that creates a virtual representation of a communication network and evaluates a fault-analysis and network-optimization workflow.

The framework models network nodes and links, generates simulated telemetry, injects fault conditions, extracts graph-structured data, performs simplified fault prediction, applies network optimization, and evaluates the results.

---

## 🎯 Objectives

- Simulate a 5G/6G network topology using MATLAB
- Generate network telemetry such as latency and bandwidth
- Create a Digital Twin representation of the simulated network
- Inject simulated node faults
- Extract graph-structured network data
- Identify fault-prone nodes
- Apply simulated network optimization
- Compare network performance before and after optimization
- Calculate evaluation metrics
- Visualize network states and analytical results

---

## 🏗️ Project Workflow

```text
Network Modeling
        ↓
Digital Twin Simulation
        ↓
Telemetry Generation
        ↓
Graph Data Extraction
        ↓
Fault Prediction
        ↓
Network Optimization
        ↓
Performance Evaluation
        ↓
Visualization & Reporting
```

---

## 🧠 Methodology

### 1. Network Modeling

A synthetic communication network is generated using MATLAB graph structures.

The current implementation creates **15 simulated nodes** with randomly generated network connectivity, latency, bandwidth, and initial status.

### 2. Digital Twin Simulation

The Digital Twin acts as a simulated virtual representation of the network.

Fault conditions are introduced into the simulation, and node telemetry is updated to represent degraded network behavior.

### 3. Graph Data Extraction

The simulated network is converted into graph-structured data using:

- Adjacency matrix
- Node feature matrix
- Node latency
- Node bandwidth

The extracted representation is then passed to the fault-prediction stage.

### 4. Fault Prediction

The current repository contains a **simplified threshold-based fault-prediction implementation**.

Nodes whose latency exceeds the configured threshold are classified as predicted faulty nodes.

> **Technical note:** The current codebase does not contain a trained deep GNN/Python implementation. The research paper describes a broader GNN-based framework, while this repository contains the current MATLAB simulation and simplified fault-prediction implementation.

### 5. Network Optimization

Predicted faulty nodes are passed to the optimization stage.

The current simulation:

- Reduces node latency
- Increases node bandwidth
- Changes the node status to `HEALED`

The optimized network is then compared with the Digital Twin state.

### 6. Evaluation

The framework calculates:

- Accuracy
- Precision
- Recall
- Confusion Matrix
- Average Latency Before/After Optimization
- Total Bandwidth Before/After Optimization

---

## 🏗️ Project Architecture

```text
                  5G/6G Network Model
                           │
                           ▼
                  Digital Twin Setup
                           │
                           ▼
                    Telemetry Data
                           │
                           ▼
                 Graph Data Extraction
                           │
                           ▼
                    Fault Prediction
                           │
                           ▼
                 Network Optimization
                           │
                           ▼
                 Performance Evaluation
                           │
                  ┌────────┴────────┐
                  ▼                 ▼
             Visualization      Reporting
```

---

## 🧰 Technologies

- MATLAB
- MATLAB Graph Functions
- Graph-Based Data Representation
- Digital Twin Simulation
- Network Simulation
- Fault Prediction
- Data Analysis
- Data Visualization
- Machine Learning Concepts

---

## 📂 Repository Structure

```text
.
├── matlab/
│   ├── main.m
│   ├── generate_network.m
│   ├── update_digital_twin.m
│   ├── extract_graph_data.m
│   ├── gnn_fault_predictor.m
│   ├── optimize_network.m
│   ├── visualize_network.m
│   ├── plot_performance.m
│   └── generate_network_report.m
│
├── results/
│   ├── README.md
│   ├── network-topology.png
│   ├── fault-prediction-output.png
│   ├── performance-comparison.png
│   └── confusion-matrix.png
│
├── docs/
│   ├── Digital-Twin-GNN-5G-6G-Paper.pdf
│   └── README.md
│
└── README.md
```

---

## 📁 MATLAB Components

| File | Purpose |
|---|---|
| `main.m` | Controls the complete simulation workflow |
| `generate_network.m` | Generates the simulated network topology |
| `update_digital_twin.m` | Creates the Digital Twin and injects simulated faults |
| `extract_graph_data.m` | Extracts adjacency and node-feature data |
| `gnn_fault_predictor.m` | Performs the current simplified threshold-based fault prediction |
| `optimize_network.m` | Applies simulated optimization to predicted faulty nodes |
| `visualize_network.m` | Displays network states before and after optimization |
| `plot_performance.m` | Compares latency and bandwidth |
| `generate_network_report.m` | Generates telemetry, fault, and evaluation metrics |

---

## 📊 Results

The MATLAB simulation evaluates the network before and after the optimization stage.

### Network Topology

**Original Network → Digital Twin with Faults → Optimized Network**

![Network Topology](results/network-topology.png)

---

### Fault Prediction & Telemetry

The current MATLAB implementation uses a simplified latency-threshold method to identify predicted faulty nodes.

![Fault Prediction Output](results/fault-prediction-output.png)

---

### Performance Comparison

The following values represent **one example simulation run** from the supplied MATLAB implementation.

Because the simulation uses randomly generated network conditions and fault scenarios, subsequent executions may produce different numerical results.

> **Reproducibility note:** The current implementation uses random network topology, latency, bandwidth, and fault generation. Therefore, results may vary between runs unless a fixed random seed is introduced.

![Performance Comparison](results/performance-comparison.png)

---

### Fault Prediction Evaluation

The following metrics are from **one example code-output run** and are included to demonstrate the evaluation workflow.

They should not be interpreted as fixed results for every execution.

![Confusion Matrix](results/confusion-matrix.png)

---

## 📈 Example Performance Output

The following values are from one example MATLAB simulation run.

| Metric | Before Optimization | After Optimization |
|---|---:|---:|
| Average Latency | 36.80 ms | 27.60 ms |
| Total Bandwidth | 8579 Mbps | 8979 Mbps |
| Latency Improvement | — | 25.00% |
| Bandwidth Gain | — | 4.66% |

### Prediction Metrics

| Prediction Metric | Result |
|---|---:|
| Accuracy | 60.00% |
| Precision | 25.00% |
| Recall | 25.00% |

> **Note:** These are example output values from the supplied MATLAB implementation. Since the simulation uses randomized network and fault conditions, future executions can produce different values.

---

## ▶️ How to Run

### Requirements

- MATLAB
- MATLAB graph functionality used by the project

### Steps

1. Clone or download this repository.
2. Open MATLAB.
3. Open the project's `matlab` folder.
4. Set the `matlab` folder as the working directory.
5. Run the main script:

```matlab
main
```

### Execution Flow

```text
Network Generation
        ↓
Digital Twin Simulation
        ↓
Graph Data Extraction
        ↓
Fault Prediction
        ↓
Network Optimization
        ↓
Network Visualization
        ↓
Network Report Generation
        ↓
Performance Comparison
```

### Generated Outputs

The program produces:

- Network topology visualizations
- Predicted faulty-node output
- Telemetry report
- Performance comparison
- Confusion matrix
- Accuracy
- Precision
- Recall

---

## 🔍 Fault Prediction Logic

The current implementation uses a simplified latency-threshold approach.

The configured threshold is:

```matlab
latencyThreshold = 40;
```

Nodes with latency greater than the threshold are classified as predicted faulty nodes.

```matlab
faultyNodes = find(features(:,1) > latencyThreshold);
```

This implementation is intended as a simplified fault-analysis stage for the current MATLAB simulation.

---

## 📚 Research Paper

### Paper Title

**A Digital Twin and Graph Neural Network-Based Framework for Fault Prediction and Optimization in 5G/6G Networks**

The project research work discusses a Digital Twin and GNN-based approach for proactive fault prediction and network optimization in next-generation communication networks.

The paper is available in the repository:

**[`docs/Digital-Twin-GNN-5G-6G-Paper.pdf`](docs/Digital-Twin-GNN-5G-6G-Paper.pdf)**

The research methodology describes network modeling, Digital Twin simulation, graph-based telemetry processing, fault prediction, optimization, visualization, and evaluation. 

---

## 🧪 Example Use Case

The framework can be used as a simulation environment for studying:

- Network fault detection
- Network performance analysis
- Latency optimization
- Bandwidth adjustment
- Graph-based network representation
- Digital Twin concepts
- Fault-prediction workflows

---

## 🎓 Academic Context

This project was developed as part of Electronics and Communication Engineering research work.

The research work was presented at the **ICCCNT 2025 International Conference**.

---

## 👨‍💻 Author

### Prasath B

**Electronics and Communication Engineering**

Vel Tech High Tech Dr. Rangarajan Dr. Sakunthala Engineering College

### Contact

- **LinkedIn:** https://www.linkedin.com/in/prasath-b-a10546334/
- **GitHub:** https://github.com/Prasath-B8506
- **Email:** prasathb8506@gmail.com

---

## ⭐ Key Learning Outcomes

This project provided practical experience in:

- MATLAB programming
- Network data simulation
- Graph-based data representation
- Digital Twin simulation
- Fault-analysis workflows
- Performance evaluation
- Data visualization
- Technical reporting
- Analytical problem solving

---

## 🚀 Future Improvements

Potential future improvements include:

- Implementing a trained Python-based GNN model
- Replacing the threshold-based predictor with a learned graph model
- Adding larger and more realistic network datasets
- Introducing fixed random seeds for reproducible experiments
- Adding additional network telemetry features
- Comparing multiple fault-prediction models
- Building a more comprehensive automated analytics dashboard

---

## 📌 Project Status

**Current status:** MATLAB simulation framework with simplified threshold-based fault prediction and network optimization.

The repository documents the current implementation separately from the broader GNN-based research framework described in the paper.
