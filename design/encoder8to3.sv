module encoder8to3 (input a,input b, input c, input d ,input e ,input f ,input g , input h , output y1,output y2,output y3);
  assign y1 = (e==1 || f==1 || g==1 || h==1) ? 1 : 0;
  assign y2 = (c==1 || d==1 || g==1 || h==1) ? 1 : 0;
  assign y3 = (b==1 || d==1 || f==1 || h==1) ? 1 : 0;
endmodule
  