module regwrite_control_generator_tb;
  reg [2:0] opcode;
  wire regwrite;
  regwrite_control_generator uut( .opcode(opcode) ,.regwrite(regwrite));
   initial begin
     $dumpfile("regwrite_control_generator.vcd");
     $dumpvars(0 , regwrite_control_generator_tb);
     opcode = 3'b000;#10;
     opcode = 3'b001;#10;
     opcode = 3'b010;#10;
     opcode = 3'b011;#10;
     opcode = 3'b100;#10;
     opcode = 3'b101;#10;
     opcode = 3'b110;#10;
     $finish;
   end
endmodule