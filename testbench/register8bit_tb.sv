module register8bit_tb;
  reg clk ;
  reg [7:0]d;
  wire [7:0]q;
  register8bit uut (.clk(clk),.d(d) , .q(q));
  initial begin 
    $dumpfile("register8bit.vcd");
    $dumpvars(0, register8bit_tb);
    clk=0;
  d=8'b00110011;#5;
  d=8'b11111111;#5;
  d=8'b10000111;#5;
  d=8'b10101011;#5;
    $finish;
  end 
  always #5 clk <= ~clk;
endmodule
  