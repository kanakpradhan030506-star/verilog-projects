module dual_port_ram(input clk , input wire we_a , input wire [3:0] addr_a , input wire [7:0] din_a ,input wire we_b , input wire [3:0] addr_b , input wire [7:0] din_b , output reg [7:0] dout_a, output reg [7:0] dout_b  );
  reg [7:0] mem [15:0];
  always @(posedge clk)
    begin 
      if (we_a)
        mem[addr_a] <= din_a ;
       
      dout_a <= mem[addr_a];
      
      if (we_b)
        mem[addr_b] <= din_b ;
       
      dout_b <= mem[addr_b];
    end
endmodule