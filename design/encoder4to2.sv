module encoder4to2 (input a,input b, input c, input d , output y1,output y2);
  assign y1=( c==0 && d==1)?1:0;
  assign y2=( c==1 && d==0)?1:0;
endmodule
  