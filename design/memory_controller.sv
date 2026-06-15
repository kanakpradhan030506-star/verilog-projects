module memory_controller (input clk , input reset , input read_en , input write_en , input [3:0] addr , input [7:0] din , output reg [7:0] dout , output reg ready);
  reg [ 7:0] memory[15:0];
  always @(posedge clk or posedge reset)
    begin 
      if(reset)
        begin
          dout <= 8'b0;
          ready <= 0;
        end
      else if (write_en)
        begin
          memory[addr] <= din ;
          ready <= 1;
        end
      else if (read_en)
        begin 
          dout <= memory[addr];
          ready <= 1;
        end
      else
        ready <= 0;
    end
endmodule
      
          
