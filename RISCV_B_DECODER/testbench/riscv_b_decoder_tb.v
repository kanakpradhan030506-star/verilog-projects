module riscv_b_decoder_tb;
  reg [31:0] instruction ;
  wire [6:0] opcode;
  wire [4:0] source_reg_1;
  wire [4:0] source_reg_2;
  wire [2:0] func3;
  wire [12:0] immediate;
  riscv_b_decoder uut( .instruction(instruction) , .opcode(opcode) , .source_reg_1(source_reg_1) , .source_reg_2(source_reg_2) , .func3(func3) ,.immediate(immediate));
  initial begin 
    $dumpfile("riscv_b_decoder.vcd");
    $dumpvars(0 , riscv_b_decoder_tb);
    instruction = 32'b1_001001_00111_00010_0101_0_100100;
    #10;
    instruction = 32'b0_110001_11001_00011_1001_1_100011;
    #10;
    $finish;
  end
endmodule