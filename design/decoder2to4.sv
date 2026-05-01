module decoder2to4 (input a,input b ,input en,output y1,output y2,output y3,output y4);
  assign y1=(en==1 && a==0 && b==0)?1:0;
  assign y2=(en==1 && a==0 && b==1)?1:0;
  assign y3=(en==1 && a==1 && b==0)?1:0;
  assign y4=(en==1 && a==1 && b==1)?1:0;
endmodule
  
  