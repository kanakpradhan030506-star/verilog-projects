module full_adder_tb;
  reg a,b,cin;
  wire s,cout;
  full_adder uut (.a(a) , .b(b) ,.cin(cin), .s(s) , .cout(cout));
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);
    a=0;b=0;cin=0;#5;
    a=0;b=0;cin=1;#5;
    a=0;b=1;cin=0;#5;
    a=0;b=1;cin=1;#5;
    a=1;b=0;cin=0;#5;
    a=1;b=0;cin=1;#5;
    a=1;b=1;cin=0;#5;
    a=1;b=1;cin=1;#5;
    $finish;
  end
  initial $monitor(" a=%b , b=%b , cin=%b , s=%b , cout=%b ",a,b,cin,s,cout);
endmodule
  