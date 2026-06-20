module barrel_shifter(input [3:0] din , input [1:0] shift , input dir ,output reg [3:0] dout);
  always@(*)
    begin 
      if(dir == 0)
        dout <= din << shift ;
      else
        dout <= din >> shift ;
    end
endmodule
//00 <= no shift
//01 <= left shift
//10 <= right shift