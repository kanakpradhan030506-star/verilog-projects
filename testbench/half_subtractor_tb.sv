module half_subtractor_tb;
  reg a,b;
  wire d,bout;
  half_subtractor uut (.a(a) , .b(b) ,.d(d), .bout(bout));
  initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(0,half_subtractor_tb);
    a=0;b=0;#5;
    a=0;b=1;#5;
    a=1;b=0;#5;
    a=1;b=1;#5;
    $finish;
  end
  initial $monitor(" a=%b , b=%b , d=%b , bout=%b ",a,b,d,bout);
endmodule
  