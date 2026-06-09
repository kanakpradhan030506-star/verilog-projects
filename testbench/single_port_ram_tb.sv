module single_port_ram_tb;
  reg clk,we;
  reg [3:0] addr;
  reg [7:0] din;
  wire [7:0] dout;
  single_port_ram uut (.clk(clk) , .we(we) , .addr(addr) , .din(din) , .dout(dout));
  always #5 clk = ~clk;
  initial begin 
    $dumpfile("single_port_ram.vcd");
    $dumpvars(0, single_port_ram_tb);
    clk =0;
    
    we = 1;
    addr = 4'd2;
    din = 8'd55;
    #10;
    we=0;
    addr = 4'd2;
    #10;
    $display ("data read = %d", dout);
    #10;
    $finish;
  end
endmodule
​