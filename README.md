# MAGCS
## [Multi-Agent Guided Configuration Search for Optimization Fault Detection in Logic Synthesis](https://github.com/MAGCS-method/MAGCS)
**The logic synthesis tools we tested include:**
1. **Commercial Logic Synthesis Tool Vivado (latest version 2024.1)**
2. **Open Source Logic Synthesis Tool Yosys (latest version 0.41 + 126)**
***

**Env dependencies:**
1. **Vivado 2024.1**
2. **Yosys 0.41 + 126**
4. **Verismith 1.0.0.2**
5. **python 3.8**

***

### Our Works
 Logic synthesis tools play a critical role in digital circuit design by converting high-level hardware description languages into gate-level netlists and optimizing them according to the design requirements.
 However, the complexity of optimization operations and the variety of parameter configurations can introduce potential faults during the synthesis process, leading incorrect logic synthesis. To this end, we propose MAGCS, a method for detecting optimization faults in logic synthesis. MAGCS leverages multi-agent reinforcement learning during real-time testing to dynamically optimize configuration sequences, enabling efficient detection of synthesis optimization faults. MAGCS consists of three main components. First, the test program selection module extracts multi-dimensional features and calculates cosine similarity to select the most representative test cases from a large dataset. Second, the optimization sequence selection module uses the A2C multi-agent reinforcement learning algorithm to dynamically adjust operation sequences and parameter configurations, gradually discovering the optimal sequence of optimization steps. Finally, the optimization fault validation module performs rigorous equivalence checking to ensure that the synthesized design is functionally identical to the original, effectively identifying any faults introduced during optimization. We conducted comprehensive evaluations of this framework using Vivado and Yosys, two major logic synthesis tools, identifying 32 faults across four categories. All issues have been confirmed and resolved by the respective vendors and communities. Furthermore, officials from the Vivado community highly praised the fault reports submitted by MAGCS, recognizing their significance in improving the tool.

***
# Directory Structure of MAGCS-method

## 1. MAGCS Folder

This folder contains the implementation of the MAGCS method, designed for detecting optimization faults in logic synthesis tools. Key components include:

- **MAGCS_YOSYS.py** and **MAGCS_Vivado.py**: Implement the MAGCS algorithm, specifically tailored for detecting optimization faults in the Yosys and Vivado synthesis tools, respectively.
  
- **Evaluate_Yosys.py** and **Evaluate_Vivado.py**: Define the reward function used to guide both the selection of optimization operation sequences and the configuration parameters for each optimization step.

## 2. feature Folder

- Contains the Verilog code features we developed to enhance the diversity of test programs.

## 3. get_feature Folder

This folder provides code to extract and calculate features from Verilog code files:

- **ALL_get_feature.py**: Parses Verilog files into Abstract Syntax Tree (AST) format and calculates their features using the feature package.
  
- **Diversity_calculation.py**: Calculates the differences between Verilog code files, forming the basis of the test case selection component and helping to construct the final test set.

## 4. baseline Folder

This folder contains baseline algorithms used in our study for comparative analysis:

- **Default**: Uses the default optimization sequence provided by the synthesis tool (e.g., Yosys with `opt -fast`, `opt -full`).
  
- **InitSwarm**: Randomly modifies certain configuration parameters within a fixed optimization sequence.
  
- **DynSwarm**: First generates a random sequence of optimization operations, then randomly modifies some configuration parameters.
  
- **DeLoSo**: Utilizes a heuristic algorithm to explore different optimization sequences and parameter configurations.

## 5. Faults Folder

This folder contains the confirmed faults identified in the Vivado and Yosys synthesis tools. Currently, a total of **32 faults** have been identified and resolved. Each fault is documented in a **failure_description.pdf** file, which provides details on the fault conditions and a comprehensive explanation.

***

### Here are the details of these bugs
These errors in the error file can be reproduced using Vivado 2024.1 and Yosys 0.41 + 126.

You can find all bug files in path `method/optimization faults`.

Fault1：Vivado 8TyRQBSA3 Vivado Crash in HARTHOptPost::prepDsps()

Fault2：Vivado 8gjjsGSAQ Vivado Crash in HARTLOptAbc::runNlOpt()

Fault3：Vivado 8cMtrMSAS HARTNlOptimize::modOptimize() Error in Vivado

Fault4：Vivado 7BrmgwSAB Crash in HARTHOptPost::optimize() During Synthesis

Fault5：Vivado 8boSFLSA2 NDup::copyModule() Causes Vivado Setback

Fault6：Vivado 8a5wHySAI HARTSWorker::runInternal() Crashing Vivado

Fault7：Vivado 8YNb4PSAT Vivado Obstructed by hdi::tcltasks() Crash

Fault8：Vivado 8jW2ngSAC HARTSWorker::runJob() Causing Vivado Failure

Fault9：Vivado 8bGuVzSAK Vivado Crash in ConstProp::cleanup()

Fault10：Vivado 8gjjtHSAQ Stack Overflow Check Causes Vivado Issues

Fault11：Vivado 8gjjv8SAA Vivado Crash in GDpGen::implementBinary()

Fault12：Vivado 8jVeCmSAK Crash Due to HARTTUpdateTNInstC::updateCell()

Fault13：Vivado 8jW2nfSAC Optimize1::optimize() Malfunction in Vivado

Fault14：Vivado 8aRj9KSAS HSynMod::connectInputPin() Crash in Vivado

Fault15：Vivado 8jW2xgSAC Crash in NDbC::uniquePrefixes() in Vivado

Fault16：Vivado 7AD9ZWSA1 unsigned() Function Error Due to Synthesis Parameters

Fault17：Vivado 8X0u8WSAR Vivado Freezes During Ubuntu Synthesis

Fault18：Vivado 8ZY2lqSAD Vivado Optimization Termination During Synthesis

Fault19：Vivado 8Vzsu9SAB Large Design Causes Vivado to Freeze

Fault20：Vivado 8aRjBGSA0 Ubuntu Design Optimization Freezes Vivado

Fault21：Vivado 8boBgSSAU Vivado Stalls During Synthesis on Ubuntu

Fault22：Vivado 8bGuWxSAK Vivado Hangs on Specific Verilog File During Synthesis

Fault23：Vivado 8gjjwGSAQ Synthesis Hang Issue in Vivado

Fault24：Vivado 8XGDKYSA5 Vivado Stalls on Specific File in Optimization

Fault25：Vivado 8YmcY9SAJ Vivado Optimization Causes Process Hang

Fault26：Vivado 8XVl5vSAD Ubuntu Synthesis Process Hangs in Vivado

Fault27：Yosys 4610 Yosys Synthesis std::out_of_range Error

Fault28：Yosys 4486 Yosys Optimization Causes Incorrect Output

Fault29：Yosys 4491 Custom Yosys Passes Cause Faulty Synthesis

Fault30：Yosys 4478 Yosys Optimization Error in PEEPOPT Pass

Fault31：Yosys 4427 Yosys Verilog Parsing Error After File Read

Fault32：Yosys 4458 Yosys Synthesis Hash Table Overflow
***
**We've had so much help from Vivado and Yosys staff in finding and confirming bugs. I would like to express my gratitude here.**
