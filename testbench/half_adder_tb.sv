module half_adder_tb;
  reg a,b;
  wire sum,carry;
  half_adder uut (.a(a) , .b(b) , .sum(sum) , .carry(carry));
  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);
    a=0;b=0;#5;
    a=0;b=1;#5;
    a=1;b=0;#5;
    a=1;b=1;#5;
    $finish;
  end
  initial $monitor(" a=%b , b=%b , sum=%b , carry=%b ",a,b, sum , carry);
endmodule
  