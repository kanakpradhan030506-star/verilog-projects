# RISC-V I-Type Instruction Decoder

## Overview

This project implements a Verilog-based decoder for RISC-V I-Type instructions.

The decoder reads a 32-bit instruction and separates important fields needed by the processor.

## I-Type Instruction Format

------------------------------------------
| Immediate | rs1 | func3 | rd | opcode |
------------------------------------------
31        20 19-15  14-12    11-7  6-0

## Extracted Fields

- **Opcode** → Identifies instruction type  
- **rd** → Destination register (stores result)  
- **rs1** → Source register (input register)  
- **func3** → Defines operation type  
- **Immediate** → Constant value inside instruction  

---

## Example Instruction

ADDI x1, x2, 10

Meaning:

- Read value from x2  
- Add immediate value 10  
- Store result in x1  

## Working

The decoder receives a 32-bit instruction and extracts fields using bit slicing.

Example Verilog:
opcode = instruction[6:0];
rd = instruction[11:7];
funct3 = instruction[14:12];
rs1 = instruction[19:15];
immediate = instruction[31:20];

## Conclusion

This project demonstrates how a processor decodes RISC-V I-Type instructions before execution.