module single_port_ram(input clk , input wire we , input wire [3:0] addr , input wire [7:0] din , output reg [7:0] dout );
  reg [7:0] mem [15:0];
  always @(posedge clk)
    begin 
      if (we)
        mem[addr] <= din ;
       
      dout <= mem[addr];
    end
endmodule