module barrel_shifter_tb;
  reg [3:0] din ;
  reg [1:0] shift;
  reg dir;
  wire [3:0] dout;
  barrel_shifter uut(.din(din) , .shift(shift) , .dir(dir) ,.dout(dout));
  initial begin
    $dumpfile("barrel_shifter.vcd");
    $dumpvars(0 , barrel_shifter_tb);
    din = 4'b0010;
    dir =0;
    shift = 2'b00;#10;
    shift = 2'b01;#10;
    shift = 2'b10;#10;
    dir =1;
    shift = 2'b01;#10;
    shift = 2'b10;#10;
    $finish;
  end
endmodule
    
        