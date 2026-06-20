module mux_datapath_tb;
reg [7:0] A, B;
reg [1:0] sel;
wire [7:0] result;
mux_datapath uut(.A(A),.B(B), .sel(sel), .result(result));
initial begin
  $dumpfile("mux_datapath.vcd");
  $dumpvars(0 , mux_datapath_tb);
    A = 8'd10;
    B = 8'd5;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

initial $monitor("Time=%0t A=%d B=%d sel=%b result=%d", $time, A, B, sel, result);
endmodule