module async_counter(
    input clk,
    output reg [3:0] q
);

initial
    q = 0;

always @(posedge clk)
    q[0] <= ~q[0];

always @(negedge q[0])
    q[1] <= ~q[1];

always @(negedge q[1])
    q[2] <= ~q[2];

always @(negedge q[2])
    q[3] <= ~q[3];

endmodule