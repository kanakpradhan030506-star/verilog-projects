module washing_machine_tb;

reg clk;
reg reset;
reg start;

wire water_valve;
wire motor;
wire spin_motor;
wire done;

washing_machine uut(
    .clk(clk),
    .reset(reset),
    .start(start),
    .water_valve(water_valve),
    .motor(motor),
    .spin_motor(spin_motor),
    .done(done)
);

always #5 clk = ~clk;

initial
begin
    $dumpfile("washing_machine.vcd");
    $dumpvars(0, washing_machine_tb);

    clk = 0;
    reset = 1;
    start = 0;

    #10 reset = 0;

    #10 start = 1;
    #10 start = 0;

    #300 $finish;
end
initial
begin
    $monitor("t=%0t start=%b state=%0d count=%0d done=%b",
             $time,
             start,
             uut.state,
             uut.count,
             done);
end
endmodule
                    
                      
