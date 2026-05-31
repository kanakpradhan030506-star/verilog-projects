module sequence_detector_101_tb;
  reg clk, reset ,x;
  wire y;
  sequence_detector_101 uut(.clk(clk) , .reset(reset) , .x(x) , .y(y));
  always #5 clk = ~clk;

initial
begin
  $dumpfile("sequence_detector_101.vcd");
  $dumpvars(0, sequence_detector_101_tb);
      clk =0;
      reset =1;
      x=0;
  
  #10 reset = 0;
  #10 x=1;
  #10 x=0;
  #10 x=1;
  
  #10 x=1;
  #10 x=0;
  #10 x=1;
  
      #20 $finish;
    end
  
endmodule