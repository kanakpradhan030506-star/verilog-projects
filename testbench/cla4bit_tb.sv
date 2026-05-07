module cla4bit_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
cla4bit uut(a,b,cin,s,cout);
initial begin
    $dumpfile("cla4bit.vcd");
    $dumpvars(0,cla4bit_tb);
    a=4'b0000; b=4'b0000; cin=0; #10;
    a=4'b0011; b=4'b0101; cin=0; #10;
    a=4'b0110; b=4'b0011; cin=1; #10;
    a=4'b1111; b=4'b0001; cin=0; #10;
    a=4'b1010; b=4'b0101; cin=1; #10;
$finish;
end
endmodule