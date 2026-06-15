module alu_4bit (input [3:0] A , input [3:0] B , input [1:0] sel , output reg [3:0] result , output reg carry );
  //00 <= ADD
  //01 <= SUB
  //10 <= AND
  //11 <= OR
  always @(*) 
    begin
      case(sel)
        2'b00:
          begin
            {carry , result} = A + B;
          end
        2'b01:
          begin
            {carry , result} = A - B;
          end
        2'b10:
          begin 
            result = A & B ;
            carry = 0;
          end
        2'b11:
         begin 
           result = A | B ;
           carry =0;
         end 
        default:
          begin 
            result = 4'b0000;
            carry =0;
          end
      endcase
    end
endmodule
