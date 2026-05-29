module sequence_detector_tb;

reg clk, reset, x;
wire y;

sequence_detector uut(
    .clk(clk),
    .reset(reset),
    .x(x),
    .y(y)
);
  $dumpfile("sequence_detector.vcd");
  $dumpvars(0,sequence_detector_tb);

initial
begin
    clk = 0;
    reset = 1;
    x = 0;

    #10 reset = 0;

    x=1; #10;
    x=0; #10;
    x=1; #10;
    x=1; #10;

    #20 $finish;
end
 


endmodule