module addr_decoder_tb;
  reg [1:0] addr;
  wire [3:0] out;
  addr_decoder uut (.addr(addr) , .out(out));
  initial begin 
    $dumpfile("addr_decoder.vcd");
    $dumpvars(0 , addr_decoder_tb);
    addr = 2'b00;#10;
    addr = 2'b01;#10;
    addr = 2'b10;#10;
    addr = 2'b11;#10;
    addr = 2'b00;#10;
    $finish;
  end
endmodule