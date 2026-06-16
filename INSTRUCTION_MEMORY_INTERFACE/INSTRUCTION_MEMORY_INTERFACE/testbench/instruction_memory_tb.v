module instruction_memory_tb;
  reg [3:0] addr;
  wire [7:0] instruction ;
  instruction_memory uut(.addr(addr) , .instruction(instruction));
  initial begin
    $dumpfile("instruction_memory.vcd");
    $dumpvars(0 , instruction_memory_tb);
    addr=0;
    #10;
    addr=1;
    #10;
    addr=2;
    #10;
    addr=3;
    #10;
    addr=4;
    #10;
    addr=5;
    #10;
$finish;
  end
endmodule
