module multiplier_4bit_tb;
  reg a , b;
  wire p ;
  multiplier_4bit uut( .a(a) , .b(b) , .p(p));
  initial begin 
    $dumpfile("multiplier_4bit.vcd");
    $dumpvars(0,multiplier_4bit_tb);
    
    a = 4'b0011; b = 4'b1111; #10;
    a = 4'b0010; b = 4'b0011; #10; 
    a = 4'b0100; b = 4'b0101; #10; 
    a = 4'b0111; b = 4'b0011; #10; 
    a = 4'b1111; b = 4'b1111; #10; 
$finish;
  end
endmodule