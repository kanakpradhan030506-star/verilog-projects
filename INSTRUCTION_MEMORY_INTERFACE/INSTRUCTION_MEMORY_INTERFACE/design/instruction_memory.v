module instruction_memory(input [3:0] addr , output reg [7:0] instruction);
  reg [7:0] memory [15:0] ;
  initial begin 
    memory[0] = 8'b00000001;
    memory[1] = 8'b00000010;
    memory[2] = 8'b00000011;
    memory[3] = 8'b00000100;
    memory[4] = 8'b00000101;
    memory[5] = 8'b00000110;
    memory[6] = 8'b00000111;
  end
  always @(*)
    begin
      instruction <= memory[addr];
    end
endmodule