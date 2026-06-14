module bus_arbiter_tb;
  reg [2:0] req;
  wire [2:0] grant;
 bus_arbiter uut(.req(req), .grant(grant));
  initial begin 
    $dumpfile("bus_arbiter.vcd");
    $dumpvars(0 , bus_arbiter_tb);
     req = 3'b000;#10;
     req = 3'b100;#10;
     req = 3'b010;#10;
     req = 3'b111;#10;
     req = 3'b001;#10;
    $finish;
  end
endmodule
    