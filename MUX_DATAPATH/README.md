# Multiplexer-Based Datapath Using Verilog

## Overview

This project implements a simple 8-bit multiplexer-based datapath in Verilog HDL. The datapath performs multiple arithmetic and logical operations on two 8-bit inputs and uses a multiplexer to select the desired output based on a control signal.

## Operations Supported

| Select (sel) | Operation           |
| ------------ | ------------------- |
| 00           | Addition (A + B)    |
| 01           | Subtraction (A - B) |
| 10           | Bitwise AND (A & B) |
| 11           | Bitwise OR (A | B)  |

## Working Principle

The datapath contains four functional units: an Adder, a Subtractor, an AND gate block, and an OR gate block. All operation results are generated simultaneously. A 4:1 Multiplexer then selects one of these results according to the 2-bit select signal `sel`.

## Inputs and Outputs

### Inputs

* `A` : 8-bit input operand
* `B` : 8-bit input operand
* `sel` : 2-bit control signal

### Output

* `result` : 8-bit selected operation result

## Block Diagram

A,B → Adder ──────┐

A,B → Subtractor ─┤

A,B → AND ────────┤→ 4:1 MUX → Result

A,B → OR ─────────┘

```
                 ↑

                sel
```

## Applications

* Arithmetic Logic Unit (ALU) design
* Digital datapath implementation
* Processor architecture fundamentals
* FPGA and VLSI design learning

## Tools Used

* Verilog HDL
* Icarus Verilog / Vivado
* GTKWave (for waveform visualization)

## Author

Kanak Pradhan
