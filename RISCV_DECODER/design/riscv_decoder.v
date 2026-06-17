module riscv_decoder (input [31:0] instruction , output reg [6:0] opcode , output reg [4:0] destination_reg , output reg [2:0] func3 , output reg [4:0] source_reg_1, output reg [4:0] source_reg_2 , output reg [6:0] func7);
  always @(*)
    begin
      opcode = instruction[6:0];
      destination_reg = instruction [11:7];
      func3 = instruction [14:12];
      //000 → add/sub group
      //111 → and
      //110 → or
      source_reg_1 = instruction [19:15];
      source_reg_2 = instruction [24:20];
      func7 = instruction [31:25];
      //ADD → func7 = 0000000
      //SUB → func7 = 0100000
    end
endmodule
