module comparator_4bit(input [3:0]a , input [3:0]b , output eq, output gr,output le);
  assign eq = (a==b);
  assign gr = (a>b);
  assign le = (a<b);
endmodule
