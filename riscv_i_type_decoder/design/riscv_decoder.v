module riscv_decoder_i(input [31:0] instruction , output reg [6:0] opcode , output reg [4:0] destination_reg , output reg [2:0] func3 , output reg [4:0] source_reg , output reg [11:0] immediate);
  always @(*)
    begin 
      opcode = instruction [6:0];
      destination_reg = instruction[11:7];
      func3 = instruction [ 14:12];
      source_reg = instruction[19:15];
      immediate = instruction [31:20];
    end
endmodule

                       
