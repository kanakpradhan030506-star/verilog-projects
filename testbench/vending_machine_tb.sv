module vending_machine_tb;
  reg clk, reset;
  reg [1:0] coin;
  wire dispense ;
  wire change;
  vending_machine uut(.clk(clk) , .reset(reset) , .coin(coin), .dispense(dispense) , .change(change));
  always #5 clk = ~clk;

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, vending_machine_tb);
end

  initial 
    begin
      clk =0;
      reset =1;
      coin = 2'b00;
      #10 reset =0;
      #10 coin = 2'b01;
      #10 coin = 2'b10;
      #10 coin = 2'b00;
      #10 coin = 2'b10;
      #10 coin = 2'b10;
      #20 $finish ;
    end
  initial
    begin
      $monitor ("Time =%0t , coin =%b , dispense=%b , change =%b" ,$time , coin , dispense , change);
    end 
endmodule