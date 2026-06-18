# RISC-V S-Type Decoder

This project decodes RISC-V S-Type instructions.

S-Type instructions store register data into memory.

# Example:

SW x5,8(x2)

# The decoder extracts:

- opcode
- rs1
- rs2
- funct3
- immediate

Immediate is split into two parts and combined.

This project shows how processors decode store instructions.