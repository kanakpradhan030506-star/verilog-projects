module d_latch_tb;
  reg d ,en;
  wire q , qbar ;
  d_latch uut( .d(d) , .en(en) , .q(q) , .qbar(qbar));
  initial begin 
    $dumpfile("d_latch.vcd");
    $dumpvars(0,d_latch_tb);
   d=0;en=1;#10;
   d=1;en=1;#10;
   d=0;en=0;#10;
   d=1;en=0;#10;
   $finish;
  end
endmodule