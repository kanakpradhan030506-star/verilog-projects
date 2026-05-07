module d_latch( input d , input en , output reg q, output qbar );
   assign qbar = ~q;
  always@(d or en)
    begin 
    if(en ==1 )
      q = d;
    end
endmodule
