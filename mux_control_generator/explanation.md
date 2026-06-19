# Control Signal Generator for Multiplexer Controls

## Objective

Generate MUX select signals from an opcode.

## Inputs

opcode[1:0]

## Outputs

mux_sel[1:0]

## Working

The module reads the opcode and generates the corresponding
select signal for a multiplexer.

Opcode 00 -> Select Input 0
Opcode 01 -> Select Input 1
Opcode 10 -> Select Input 2
Opcode 11 -> Select Input 3

## Applications

1. ALU datapaths
2. Processor control units
3. Instruction decoding
4. Data routing circuits