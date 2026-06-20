module riscv_s_decoder(input [31:0] instruction , output reg [6:0] opcode , output reg [2:0]func3 , output reg [4:0] source_reg_1 , output reg [4:0] source_reg_2 , output reg [11:0] immediate);
  always @(*)
    begin 
      opcode = instruction [6:0];
      immediate = instruction[11:7];
      func3 = instruction[14:12];
      source_reg_1 = instruction[19:15];
      source_reg_2 = instruction[24:20];
      immediate = instruction[31:25];
        end
endmodule

                       
