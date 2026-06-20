module program_counter_tb;
  reg clk , reset ;
  wire [7:0] pc;
  program_counter uut (.clk(clk) , . reset(reset) , .pc(pc));
  always #5 clk = ~clk;
  initial begin 
    $dumpfile("program_counter.vcd");
    $dumpvars(0 , program_counter_tb);
    clk = 0;
    reset = 1;
    #10;
    reset = 0;
    #100;
    $finish;
  end
  initial $monitor ("Time=%0t PC=%d", $time, pc);
 
endmodule