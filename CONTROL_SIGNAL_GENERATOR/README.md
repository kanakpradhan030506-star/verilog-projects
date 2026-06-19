# Control Signal Generator for Single-Cycle Processor

## Overview

This project implements a **Control Signal Generator** for a **Single-Cycle RISC-V Processor** using Verilog HDL.

The control unit takes the **7-bit opcode** from an instruction and generates the required control signals for different processor components such as:

- ALU (Arithmetic Logic Unit)
- Register File
- Data Memory
- Branch Logic

The purpose of the control signal generator is to determine how the processor should execute each instruction based on its opcode.

## Objective

To design a Verilog module that decodes instruction opcode and generates control signals required for instruction execution in a single-cycle processor architecture.

## Project Structure
-design
-testbench
-waveform
-explanation
