module mux8to1_tb;
  reg a,b,c,d,e,f,g,h,s1,s2,s3;
  wire y;
  mux8to1 uut(.a(a) , .b(b) ,.c(c) ,.d(d) ,.e(e) ,.f(f) ,.g(g) ,.h(h) ,.s1(s1) ,.s2(s2) ,.s3(s3) ,.y(y));
  initial begin
    $dumpfile("mux8to1.vcd");
    $dumpvars(0,mux8to1_tb);
    a=1;b=0;c=0;d=0;e=0;f=0;g=0;h=0;s1=0;s2=0;s3=0;#5;
    a=0;b=1;c=0;d=0;e=0;f=0;g=0;h=0;s1=0;s2=0;s3=1;#5;
    a=0;b=0;c=1;d=0;e=0;f=0;g=0;h=0;s1=0;s2=1;s3=0;#5;
    a=0;b=0;c=0;d=1;e=0;f=0;g=0;h=0;s1=0;s2=1;s3=1;#5;
    a=0;b=0;c=0;d=0;e=1;f=0;g=0;h=0;s1=1;s2=0;s3=0;#5;
    a=0;b=0;c=0;d=0;e=0;f=1;g=0;h=0;s1=1;s2=0;s3=1;#5;
    a=0;b=0;c=0;d=0;e=0;f=0;g=1;h=0;s1=1;s2=1;s3=0;#5;
    a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=1;s1=1;s2=1;s3=1;#5;
        $finish;
  end
endmodule
