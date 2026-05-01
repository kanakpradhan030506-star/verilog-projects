module decoder3to8_tb;
  reg a,b,c,en;
  wire y1,y2,y3,y4,y5,y6,y7,y8;
  decoder3to8 uut(.a(a) , .b(b) ,.c(c), .en(en) , .y1(y1) , .y2(y2) , .y3(y3) , .y4(y4) , .y5(y5) , .y6(y6) , .y7(y7) , .y8(y8));
  initial begin
    $dumpfile("decoder3to8.vcd");
    $dumpvars(0,decoder3to8_tb);
    a=0;b=0;c=0;en=1;#5;
    a=0;b=0;c=1;en=1;#5;
    a=0;b=1;c=0;en=1;#5;
    a=0;b=1;c=1;en=1;#5;
    a=1;b=0;c=0;en=1;#5;
    a=1;b=0;c=1;en=1;#5;
    a=1;b=1;c=0;en=1;#5;
    a=1;b=1;c=1;en=1;#5;
   
    $finish;
  end
endmodule
