# RISC-V Instruction Decoder extracts fields from a 32-bit instruction.

# Working:

1. CPU sends instruction.
2. Decoder reads binary bits.
3. Separates opcode.
4. Finds source registers.
5. Finds destination register.
6. Finds operation type by func3 and func7.

# Applications:

CPU design
Processor architecture
Instruction decoding
RISC-V processors
FPGA processor design
 # INPUTS
 Instruction 

 # OUTPUTS 
 opcode , destination registers , func3 , source register 1 , source register 2 , func7 , destination register