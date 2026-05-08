module sync_counter_tb;
  reg clk ;
  wire [3:0] q;
  sync_counter uut (.clk(clk) , .q(q));
  initial begin
    $dumpfile("sync_counter.vcd");
    $dumpvars(0,sync_counter_tb);
    clk=0;
    #100;
    $finish;
  end
  always #5 clk<= ~clk;
endmodule