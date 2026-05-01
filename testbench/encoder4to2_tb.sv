module encoder4to2_tb;
  reg a,b,c,d;
  wire y1,y2;
  encoder4to2 uut(.a(a) , .b(b), .c(c) , .d(d) , .y1(y1) , .y2(y2));
  initial begin
    $dumpfile("encoder4to2.vcd");
    $dumpvars(0,encoder4to2_tb);
    a=0;b=0;c=0;d=1;#5;
    a=0;b=0;c=1;d=0;#5;
    a=0;b=1;c=0;d=0;#5;
    a=1;b=0;c=0;d=0;#5;
        $finish;
  end
endmodule
