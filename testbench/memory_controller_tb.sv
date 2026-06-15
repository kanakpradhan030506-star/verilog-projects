module memory_controller_tb ;
  reg clk , reset,read_en , write_en ;
  reg [3:0] addr;
  reg [7:0] din ;
  wire [7:0] dout;
  wire ready;
  memory_controller uut(.clk(clk) , .reset(reset), .read_en(read_en) , .write_en(write_en) , .addr(addr) , .din(din) , .dout(dout) , .ready(ready));
 always #5 clk = ~clk ;
  initial begin 
    $dumpfile("memory_controller.vcd");
    $dumpvars(0, memory_controller_tb);
    clk = 0;
    reset=1;
    read_en =0;
    write_en =0;
    addr=0;
    din=0;
    #10 reset =0;
    #10;
    write_en=1;
    addr = 4'b0010;
    din = 8'b01011010;
    #10;
    write_en=0;
    #10;
    read_en=1;
    addr = 4'b0010;
    #10;
    read_en=0;
    #20;
    $finish;
  end
endmodule
    
    