module regwrite_control_generator(input [2:0] opcode , output reg regwrite);
  always @(*)
    begin
      case(opcode)
        3'b000 : regwrite = 1'b1;//ADD
        3'b001 : regwrite = 1'b1;//SUB
        3'b010 : regwrite = 1'b1;//AND
        3'b011 : regwrite = 1'b1;//OR
        3'b100 : regwrite = 1'b1;//LOAD
        3'b101 : regwrite = 1'b0;//STORE
        3'b110 : regwrite = 1'b0;//BRANCH
        default: regwrite = 1'b0;
      endcase
    end
endmodule