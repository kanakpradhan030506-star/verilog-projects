module control_signal_generator_tb;
  reg [6:0] opcode ;
  wire reg_write , mem_read , mem_write , alu_src , branch , alu_op ;
  control_signal_generator uut (.opcode(opcode) , .reg_write(reg_write) , .mem_read(mem_read) , .mem_write(mem_write) , .alu_src(alu_src) , .branch(branch) , .alu_op(alu_op));
  initial begin
    $dumpfile("control_signal_generator.vcd");
    $dumpvars(0 , control_signal_generator_tb);
    opcode = 7'b0110011;#10;   // R-Type
    opcode = 7'b0000011;#10;   // Load work
    opcode = 7'b0100011;#10;   // Store
    opcode = 7'b1100011;#10;   // Branch
    $finish;
  end
endmodule