module decoder2to4_tb;
  reg a,b,en;
  wire y1,y2,y3,y4;
  decoder2to4 uut(.a(a) , .b(b) ,.en(en) ,.y1(y1) ,.y2(y2) ,.y3(y3) ,.y4(y4));
  initial begin
    $dumpfile("decoder2to4.vcd");
    $dumpvars(0,decoder2to4_tb);
   a=0;b=0;en=1;#5;
   a=0;a=1;en=1;#5;
   a=1;b=0;en=1;#5;
   a=1;b=1;en=1;#5;
    $finish;
  end
endmodule
