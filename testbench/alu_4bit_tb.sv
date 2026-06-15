module alu_4bit_tb;
  reg [3:0] A , B;
  reg [1:0] sel ;
  wire [3:0] result ;
  wire carry;
  alu_4bit uut(.A(A) , .B(B) ,.sel(sel) , .result(result) , .carry(carry));
  initial begin
    $dumpfile("alu_4bit.vcd");
    $dumpvars(0 , alu_4bit_tb);
    A = 4'b0010;
    B = 4'b1111;
    sel = 2'b01;
    #10;
    sel = 2'b11;
    #10;
    sel = 2'b00;
    #10;
    sel = 2'b10;
    #10;
    $finish;
  end
endmodule