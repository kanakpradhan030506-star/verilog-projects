# RISC-V B-Type Instruction Decoder

This project decodes Branching-Type instructions. 

# It extracts:

- Opcode
- Source Register 1
- Source Register 2
- Function Code
- Immediate value

B-Type instructions are used for branch operations.

# Examples:

BEQ - Branch if Equal for 000

BNE - Branch if Not  for 001

BLT - Branch if Less Than for 010

BGE - Branch if greater than/equal for 0100

above are assumed to be put exactly same in processors other than decoders too.