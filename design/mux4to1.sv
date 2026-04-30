module mux4to1 (
input a, input b, input c, input d,
input s1, input s2,
output y
);

assign y = (s1==0 && s2==0) ? a :
           (s1==0 && s2==1) ? b :
           (s1==1 && s2==0) ? c :
                              d;

endmodule