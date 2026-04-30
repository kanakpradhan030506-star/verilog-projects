module rca_4bit_tb;
reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;
rca_4bit uut (.a(a),.b(b),.cin(cin), .sum(sum),.cout(cout));
initial begin
    $dumpfile("rca_4bit.vcd");
    $dumpvars(0, rca_4bit_tb);
    a = 4'b0000; b = 4'b0000; cin = 0; #10;
    a = 4'b0011; b = 4'b0101; cin = 0; #10;
    a = 4'b0110; b = 4'b0011; cin = 1; #10;
    a = 4'b1111; b = 4'b0001; cin = 0; #10;
    a = 4'b1010; b = 4'b0101; cin = 1; #10;
    a = 4'b1100; b = 4'b1010; cin = 0; #10;
$finish;
end

  initial $monitor("a=%b , b=%b ,cin=%b ,sum= %b ,cout=%b", a, b, cin, sum, cout);

endmodule
