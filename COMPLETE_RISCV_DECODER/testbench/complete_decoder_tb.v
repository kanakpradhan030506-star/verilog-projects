module complete_riscv_decoder_tb;
  reg [31:0] instruction;
  wire [6:0] opcode;
  wire [4:0] destination_reg , source_reg_1 , source_reg_2 ;
  wire [2:0] func3;
  wire [6:0] func7;
  wire [31:0] immediate;
 complete_riscv_decoder uut(.instruction(instruction) , .opcode(opcode) , .destination_reg(destination_reg) , .func3(func3) , .source_reg_1(source_reg_1) , .source_reg_2(source_reg_2) , .func7(func7) , .immediate(immediate));
  initial begin
    $dumpfile("complete_riscv_decoder.vcd");
    $dumpvars(0 , complete_riscv_decoder_tb);
// R TYPE
instruction = 32'b00000000001100010000000010110011;
#10;
// I TYPE
instruction = 32'b00000000101000010000000010100100;
#10;
// S TYPE
instruction = 32'b00000000001100010010001001101101;
#10;
// B TYPE
instruction = 32'b00000000001100010000010001100011;
#10;
// U TYPE
instruction = 32'b00000000000000000001000010110111;
#10;
// J TYPE
instruction = 32'b00000000000100000000000011101111;
#10;
$finish;
end
endmodule