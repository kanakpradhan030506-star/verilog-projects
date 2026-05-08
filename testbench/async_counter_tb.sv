module async_counter_tb;
  reg clk ;
  wire [3:0] q;
  async_counter uut (.clk(clk) , .q(q));
  initial begin
    $dumpfile("async_counter.vcd");
    $dumpvars(0,async_counter_tb);
    clk=0;
    #100;
    $finish;
  end
  always #5 clk<= ~clk;
endmodule