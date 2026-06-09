module dual_port_ram_tb;
  reg clk,we_a , we_b;
  reg [3:0] addr_a , addr_b;
  reg [7:0] din_a , din_b;
  wire [7:0] dout_a , dout_b;
  dual_port_ram uut (.clk(clk) , .we_a(we_a) , .addr_a(addr_a) , .din_a(din_a) , .dout_a(dout_a) , .we_b(we_b) , .addr_b(addr_b) , .din_b(din_b) , .dout_b(dout_b));
  always #5 clk = ~clk;
  initial begin 
    $dumpfile("dual_port_ram.vcd");
    $dumpvars(0, dual_port_ram_tb);
    clk =0;
    
    we_a= 1;
    addr_a = 4'd2;
    din_a = 8'd55;
    we_b=0;
    #10;
    we_a=0;
    addr_b = 4'd2;
    we_b=0;
    #10;
    
    $finish;
  end
endmodule
