module riscv_s_decoder_tb;
  reg [31:0] instruction;
  wire [6:0] opcode;
  wire [2:0] func3;
  wire [4:0] source_reg_1;
  wire [4:0] source_reg_2;
  wire [11:0] immediate;
  riscv_s_decoder uut( .instruction(instruction) , .opcode(opcode) , .func3(func3) , .source_reg_1(source_reg_1) , .source_reg_2(source_reg_2) , .immediate(immediate));
  initial begin 
    $dumpfile("riscv_s_decoder.vcd");
    $dumpvars(0 , riscv_s_decoder_tb);
    instruction = 32'b0000000000100010001000100100100;
    #10;
    instruction = 32'b0000000000110010111100101101101;
    #10;
    $finish;
  end
endmodule