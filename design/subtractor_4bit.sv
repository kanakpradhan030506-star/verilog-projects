module subtractor_4bit(input [3:0]a , input [3:0]b , output [3:0]d, output br);
  assign {br,d}=a-b;
endmodule
