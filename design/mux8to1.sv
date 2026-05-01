module mux8to1(input a,input b,input c, input d,input e, input f, input g,input h ,input s1,input s2, input s3,output y);
  assign y= (s1==0 && s2==0 && s3==0 ) ? a:
    (s1==0 && s2==0 && s3==0 ) ? a:
    (s1==0 && s2==0 && s3==1 ) ? b:
    (s1==0 && s2==1 && s3==0 ) ? c:
    (s1==0 && s2==1 && s3==1 ) ? d:
    (s1==1 && s2==0 && s3==0 ) ? e:
    (s1==1 && s2==0 && s3==1 ) ? f:
    (s1==1 && s2==1 && s3==0 ) ? g:
                                 h;
endmodule