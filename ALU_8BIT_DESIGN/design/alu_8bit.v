module alu_8bit(input [7:0] A , input [7:0] B , input [2:0] sel , output reg [7:0] result);
  always @(*)
    begin 
    case(sel) 
      3'b000 : result = A + B; //ADDITION
      3'b001 : result = A - B; //SUBTRACTION
      3'b010 : result = A & B; // AND
      3'b011 : result = A | B; //OR
      3'b100 : result = A ^ B; //XOR
      3'b101 : result = ~A ; // NOT A
      3'b110 : result = A << 1; //LEFT SHIFT
      3'b111 : result = A >> 1; //RIGHT SHIFT
      default: result = 8'b00000000;
    endcase
    end
endmodule