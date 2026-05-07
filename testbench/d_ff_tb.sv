module d_ff_tb;
  reg d ,clk;
  wire q , qbar ;
  d_ff uut( .d(d) , .clk(clk) , .q(q) , .qbar(qbar));
  initial begin 
    $dumpfile("d_ff.vcd");
    $dumpvars(0,d_ff_tb);
    clk=0;
   d=0;#10;
   d=1;#10;
   d=0;#10;
   d=1;#10;
   $finish;
  end
  always #5 clk = ~clk;
endmodule