module jk_ff_tb;
  reg j , k , clk ;
  wire q , qbar ;
  jk_ff uut (.j(j) , .k(k) , .clk(clk) ,.q(q) ,.qbar(qbar));
   always #5 clk = ~clk;
  initial begin 
    $dumpfile("jk_ff.vcd");
    $dumpvars(0 , jk_ff_tb);
    clk=0;
    j=0;k=0;#5;
    j=0;k=1;#5;
    j=1;k=0;#5;
    j=1;k=1;#5;
    $finish;
  end
 
endmodule
