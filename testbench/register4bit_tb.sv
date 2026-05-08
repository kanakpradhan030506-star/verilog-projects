module register4bit_tb;
  reg clk ;
  reg [3:0] d;
  wire [3:0] q;
  register4bit uut( .clk(clk) , .d(d) , .q(q));
  initial begin 
    $dumpfile("register4bit.vcd");
    $dumpvars(0 , register4bit_tb);
    clk=0;
    d=4'b0000;#5;
    d=4'b0110;#5;
    d=4'b0100;#5;
    d=4'b1111;#5;
    $finish;
  end 
  always #5 clk <= ~clk;
endmodule
  