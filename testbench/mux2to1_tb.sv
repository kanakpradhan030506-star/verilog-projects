module mux2to1_tb;
  reg a,b,s;
  wire y;
  mux2to1 uut( .a(a) , .b(b) ,.s(s) ,.y(y));
  initial begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0,mux2to1_tb);
    a=0;b=0;s=0;#5;
    a=0;b=1;s=0;#5;
    a=1;b=0;s=0;#5;
    a=1;b=1;s=0;#5;
    a=0;b=0;s=1;#5;
    a=0;b=1;s=1;#5;
    a=1;b=0;s=1;#5;
    a=1;b=1;s=1;#5;
    $finish;
  end
  
endmodule