module encoder8to3_tb;
  reg a,b,c,d,e,f,g,h;
  wire y1,y2,y3;
  encoder8to3 uut(.a(a) , .b(b), .c(c) , .d(d) , .e(e) ,.f(f) , .g(g) ,.h(h), .y1(y1) , .y2(y2) ,.y3(y3));
  initial begin
    $dumpfile("encoder8to3.vcd");
    $dumpvars(0,encoder8to3_tb);
    a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=1;#5;
    a=0;b=0;c=0;d=0;e=0;f=0;g=1;h=0;#5;
    a=0;b=0;c=0;d=0;e=0;f=1;g=0;h=0;#5;
    a=0;b=0;c=0;d=0;e=1;f=0;g=0;h=0;#5;
    a=0;b=0;c=0;d=1;e=0;f=0;g=0;h=0;#5;
    a=0;b=0;c=1;d=0;e=0;f=0;g=0;h=0;#5;
    a=0;b=1;c=0;d=0;e=0;f=0;g=0;h=0;#5;
    a=1;b=0;c=0;d=0;e=0;f=0;g=0;h=0;#5;
   
        $finish;
  end
endmodule
