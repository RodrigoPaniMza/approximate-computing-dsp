# Approximate Computing for Digital Signal Processing

**English** | [Español](README.es.md)

## Overview

This project explores approximate computing techniques
for digital signal processing applications, focusing on
the trade-offs between arithmetic accuracy, hardware
complexity, and power consumption.

The project is being developed as part of the CMOS
VLSI Systems Design course at Universidad Autónoma
de San Luis Potosí (UASLP), Mexico.

The methodology follows a bottom-up approach, starting
with transistor-level CMOS full adders and progressing
towards approximate arithmetic units and digital
filter architectures.

## Project Objectives

- Implement conventional and approximate CMOS adders.
- Evaluate arithmetic accuracy through exhaustive
  functional simulation.
- Analyze power consumption and hardware complexity.
- Integrate approximate adders into a multiplier.
- Implement a symmetric FIR filter using approximate
  arithmetic units.
- Evaluate the impact of arithmetic approximation
  on digital signal processing applications.

## Current Implementation

### 1. Transistor-Level Mirror Adders

Six 1-bit CMOS mirror adder architectures have been
implemented using Verilog transistor-level modeling:

- Conventional Mirror Adder (MA).
- Approximate Mirror Adder 1 (MA1).
- Approximate Mirror Adder 2 (MA2).
- Approximate Mirror Adder 3 (MA3).
- Approximate Mirror Adder 4 (MA4).
- Approximate Mirror Adder 5 (MA5).

A common testbench evaluates the functional behavior
of all six architectures.

### 2. Eight-Bit Approximate Adders

Seventeen 8-bit adder configurations have been
implemented using two selected approximation
architectures.

The designs explore different configurations of
conventional and approximate full-adder cells.

An exhaustive testbench evaluates all possible
input combinations and generates CSV files for
subsequent numerical analysis.

### 3. Arithmetic Error Analysis

A Python-based Jupyter Notebook processes the
simulation results and evaluates arithmetic
accuracy using the following metrics:

- Number of erroneous outputs.
- Error Rate (ER).
- Mean Error Distance (MED).
- Worst-Case Error (WCE).
- Mean Error (ME).

The notebook generates three comparative plots
to visualize the error characteristics of the
evaluated architectures.

## Repository Structure

| Directory | Description |
|---|---|
| `rtl/` | Verilog implementations |
| `testbench/` | Functional verification |
| `data/` | Simulation input and output datasets |
| `analysis/` | Python-based error analysis |
| `results/` | Figures and simulation results |

## Development Tools

- Verilog HDL
- ModelSim
- Python
- Pandas
- Jupyter Notebook

## Project Roadmap

- [x] Conventional CMOS mirror adder.
- [x] Five approximate mirror adder architectures.
- [x] One-bit functional verification.
- [x] Seventeen 8-bit adder configurations.
- [x] Exhaustive 8-bit functional verification.
- [x] CSV dataset generation.
- [x] Arithmetic error analysis and visualization.
- [ ] Transistor-level power consumption analysis.
- [ ] Approximate adder architecture selection.
- [ ] Approximate multiplier integration.
- [ ] Conventional symmetric FIR filter.
- [ ] Approximate symmetric FIR filter.
- [ ] Signal quality and power-accuracy evaluation.

## Current Status

Work in progress.

The current stage focuses on functional verification
and arithmetic error characterization. Power
consumption analysis and system-level integration
are planned for subsequent development stages.

This repository will be updated as the project
progresses.

## Academic Context

Course: CMOS VLSI Systems Design

Institution: Universidad Autónoma de San Luis Potosí

Program: Electronics Engineering

Year: 2026

## Contributors

- Rodrigo Paniagua Meza

## References

The conventional mirror adder implementation and the
five approximate architectures are based on the
designs presented by Gupta et al. [1], particularly
Section II-A, "Approximation Strategies for the MA."

[1] V. Gupta, D. Mohapatra, A. Raghunathan, and K. Roy,
"Low-Power Digital Signal Processing Using Approximate
Adders," *IEEE Transactions on Computer-Aided Design
of Integrated Circuits and Systems*, vol. 32, no. 1,
pp. 124–137, Jan. 2013.

[DOI: 10.1109/TCAD.2012.2217962](https://doi.org/10.1109/TCAD.2012.2217962)
