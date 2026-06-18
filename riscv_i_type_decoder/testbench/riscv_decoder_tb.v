module riscv_decoder_i_tb;
  reg [31:0] instruction;
  wire [6:0] opcode ;
  wire [4:0] destination_reg;
  wire [2:0] func3;
  wire [4:0] source_reg;
  wire [11:0] immediate;
  riscv_decoder_i uut(.instruction(instruction) , .opcode(opcode) , .destination_reg(destination_reg) ,.func3(func3) , .source_reg(source_reg) ,.immediate(immediate));
  initial begin 
    $dumpfile("riscv_decoder_i.vcd");
    $dumpvars(0 , riscv_decoder_i_tb);
    instruction = 32'b0000000000100010001000100100100;
    #10;
    instruction = 32'b0000000000110010111100101101101;
    #10;
    $finish;
  end
endmodule