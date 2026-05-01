module decoder3to8 (input a,input b ,input c,input en,output y1,output y2,output y3,output y4,output y5,output y6,output y7, output y8);
  assign y1=(en==1 && a==0 && b==0 && c==0)?1:0;
  assign y2=(en==1 && a==0 && b==0 && c==1)?1:0;
  assign y3=(en==1 && a==0 && b==1 && c==0)?1:0;
  assign y4=(en==1 && a==0 && b==1 && c==1)?1:0;
  assign y5=(en==1 && a==1 && b==0 && c==0)?1:0;
  assign y6=(en==1 && a==1 && b==0 && c==1)?1:0;
  assign y7=(en==1 && a==1 && b==1 && c==0)?1:0;
  assign y8=(en==1 && a==1 && b==1 && c==1)?1:0;
endmodule
  
  