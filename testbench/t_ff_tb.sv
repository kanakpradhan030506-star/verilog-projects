module t_ff_tb;
  reg t ,clk;
  wire q , qbar ;
  t_ff uut( .t(t) , .clk(clk) , .q(q) , .qbar(qbar));
  initial begin 
    $dumpfile("t_ff.vcd");
    $dumpvars(0,t_ff_tb);
   clk =0;
   t=0;#10;
   t=1;#40;
   t=0;#10;
   
   $finish;
  end
 always #5 clk = ~clk;
endmodule