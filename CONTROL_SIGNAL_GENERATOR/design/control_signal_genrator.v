module control_signal_generator(input [6:0] opcode , output reg reg_write , output reg mem_read , output reg mem_write , output reg alu_src , output reg branch , output reg [1:0] alu_op);
  always @(*)
    begin
      reg_write =0;
      mem_read =0;
      mem_write=0;
      alu_src =0;
      branch =0;
      alu_op =2'b00;
      case(opcode)
       7'b0110011:
         begin      // R-Type
            reg_write = 1;
            alu_src = 0;
            alu_op = 2'b10;
        end
        7'b0000011:
          begin      // Load 
            reg_write = 1;
            mem_read = 1;
            alu_src = 1;
            alu_op = 2'b00;
        end
        7'b0100011:
          begin      // Store 
            mem_write = 1;
            alu_src = 1;
            alu_op = 2'b00;
        end
        7'b1100011: 
          begin      // Branch
            branch = 1;
            alu_src = 0;
            alu_op = 2'b01;
        end
default:
  begin
       reg_write = 0;
   end
 endcase
end
endmodule