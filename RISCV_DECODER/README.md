# RISC-V I-Type Instruction Decoder

## Overview

This project decodes RISC-V I-Type instructions.

It extracts:

- Opcode
- Destination Register
- Function Type
- Source Register
- Immediate Value

## Files

design → Verilog code  
testbench → Simulation code  
waveform → Output waveform  
explanation → Working explanation  

## Instruction Format

31-20 → Immediate  
19-15 → rs1  
14-12 → funct3  
11-7 → rd  
6-0 → opcode  

## Example Instructions

ADDI x1,x2,10  
LW x3,4(x4)  

## Tools Used

- VS Code  
- Verilog  
- GTKWave  
- GitHub