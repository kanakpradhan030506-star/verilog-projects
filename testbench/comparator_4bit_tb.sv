module comparator_4bit_tb;
  reg [3:0] a, b;
  wire eq , ge , le ;
  comparator_4bit uut( .a(a) , .b(b) , .eq(eq) ,.gr(gr) , .le(le));
  initial begin 
    $dumpfile("comparator_4bit.vcd");
    $dumpvars(0,comparator_4bit_tb);
    
    a = 4'b0011; b = 4'b1111; #5;
    a = 4'b0111; b = 4'b0011; #5; 
    a = 4'b1111; b = 4'b1111; #5; 
$finish;
  end
endmodule