module mux4to1_tb;
  reg a,b,c,d,s1,s2;
  wire y;
  mux4to1 uut( .a(a) , .b(b) ,.c(c) , .d(d),.s1(s1) , .s2(s2) ,.y(y));
  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0,mux4to1_tb);
    a=0;b=1;c=0;d=1;s1=0;s2=0;#5;
    a=1;b=0;c=1;d=0;s1=0;s2=0;#5;
    a=0;b=0;c=1;d=1;s1=0;s2=1;#5;
    a=1;b=1;c=0;d=0;s1=0;s2=1;#5;
    a=0;b=1;c=0;d=1;s1=1;s2=0;#5;
    a=1;b=0;c=1;d=0;s1=1;s2=0;#5;
    a=0;b=1;c=1;d=0;s1=1;s2=1;#5;
    a=1;b=0;c=0;d=1;s1=1;s2=1;#5;
   $finish;
  end
  
endmodule