module full_subtractor(input a, input b,input bin ,output d, output bout);
  assign d=(a^b^bin) ;
  assign bout = ~a&b | ~(a^b)&bin;
endmodule
  