module d_ff( input d , input clk , output reg q, output qbar );
   assign qbar = ~q;
  always@(posedge clk)
    begin 
           q <= d;
    end
endmodule
