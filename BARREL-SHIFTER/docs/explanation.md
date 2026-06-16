# Barrel Shifter

A barrel shifter shifts data left by multiple positions in a single clock cycle.

## Inputs
- data_in [3:0]
- shift [1:0]

## Output
- data_out [3:0]

## Operation
00 → No shift  
01 → Shift left by 1  
10 → Shift left by 2  
11 → Shift left by 3