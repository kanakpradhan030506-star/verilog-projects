module half_subtractor(input a, input b,output d, output bout);
  assign d=(a^b) ;
  assign bout = ~a&b;
endmodule
  