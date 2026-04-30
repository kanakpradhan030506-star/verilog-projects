module full_subtractor_tb;
  reg a,b,bin;
  wire d,bout;
  full_subtractor uut (.a(a) , .b(b) ,.bin(bin) ,.d(d), .bout(bout));
  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0,full_subtractor_tb);
    a=0; b=0; bin=0; #5;
    a=0; b=0; bin=1; #5;
    a=0; b=1; bin=0; #5;
    a=0; b=1; bin=1; #5;
    a=1; b=0; bin=0; #5;
    a=1; b=0; bin=1; #5;
    a=1; b=1; bin=0; #5;
    a=1; b=1; bin=1; #5;
    $finish;
  end
  initial $monitor(" a=%b , b=%b ,bin=%b, d=%b , bout=%b ",a,b,bin,d,bout);
endmodule
  