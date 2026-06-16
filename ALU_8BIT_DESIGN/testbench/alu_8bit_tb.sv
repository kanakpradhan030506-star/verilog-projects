module alu_8bit_tb;
  reg [7:0] A , B;
  reg [2:0] sel ;
  wire [7:0] result ;
  alu_8bit uut(.A(A) , .B(B) ,.sel(sel) , .result(result));
  initial begin
    $dumpfile("alu_8bit.vcd");
    $dumpvars(0 , alu_8bit_tb);
    A = 8'b00110111;
    B = 8'b01111011;
    sel = 3'b000;
    #10;
    sel = 3'b001;
    #10;
    sel = 3'b010;
    #10;
    sel = 3'b011;
    #10;
     sel = 3'b100;
    #10;
    sel = 3'b101;
    #10;
    sel = 3'b110;
    #10;
    sel = 3'b111;
    #10;
    $finish;
  end
endmodule