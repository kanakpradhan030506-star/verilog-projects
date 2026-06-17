module riscv_decoder_tb;
  reg [31:0] instruction ;
  wire [6:0] opcode;
  wire [4:0] destination_reg;
  wire [2:0] func3;
  wire [4:0] source_reg_1;
  wire [4:0] source_reg_2;
  wire [6:0] func7;
  riscv_decoder uut(.instruction(instruction) , .destination_reg(destination_reg) , .func3(func3) , .source_reg_1(source_reg_1) , .source_reg_2(source_reg_2) , .func7(func7));
  initial begin
    $dumpfile("riscv_decoder.vcd");
    $dumpvars(0 , riscv_decoder_tb);
    instruction = 32'b00000000001100010000000010110011;
    #10;
    instruction = 32'b00111000001100010000000010110011;
    #10;
    $finish;
  end
endmodule