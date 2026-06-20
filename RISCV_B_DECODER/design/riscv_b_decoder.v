module riscv_b_decoder(input [31:0] instruction , output reg [6:0] opcode , output reg [4:0] source_reg_1 , output reg [4:0] source_reg_2 , output reg [2:0] func3 , output reg [12:0] immediate);
  always @(*)
    begin
      opcode = instruction[6:0];
      source_reg_1 = instruction[19:15];
      source_reg_2 = instruction[24:20];
      func3 = instruction[14:12];
      immediate = {instruction[31] , instruction [30:25], instruction[7] , instruction[11:8]};
    end
endmodule
