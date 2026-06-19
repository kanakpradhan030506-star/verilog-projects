module mux_signal_generator_tb;
  reg [1:0] opcode;
  wire [1:0] mux_sel;
  mux_signal_generator uut(.opcode(opcode) , .mux_sel(mux_sel));
  initial begin
    $dumpfile("mux_signal_generator.vcd");
    $dumpvars(0 , mux_signal_generator_tb);
    opcode = 2'b00;#10;
    opcode = 2'b01;#10;
    opcode = 2'b10;#10;
    opcode = 2'b11;#10;
  $finish;
  end
endmodule