module johnson_counter_tb;
reg clk;
reg reset;
wire [3:0] q;

johnson_counter uut(.clk(clk), .reset(reset), .q(q));
initial begin
  $dumpfile("johnson_counter.vcd");
  $dumpvars(0 ,johnson_counter_tb);
    clk = 0;
    forever #5 clk = ~clk;
end
initial
begin
    reset = 1;
    #10 reset = 0;

    #120 
  $finish;
end

initial begin
    $monitor("time=%0t q=%b", $time, q);
end

endmodule