module vending_machine(input clk , input reset , input [1:0] coin , output reg dispense,output reg change );
  parameter s0 = 2'b00;
  parameter s5 = 2'b01;
  parameter s10 = 2'b10;
  reg [1:0] state , next_state ;
  always @(posedge clk or posedge reset)
    begin 
      if (reset)
        state <= s0;
      else
        state <= next_state;
    end
  always @(*)
    begin
      dispense = 0;
      change = 0;
      case(state)
      
  s0:
     begin
       if (coin == 2'b01)
         next_state = s5;
       else if (coin == 2'b01)
         next_state = s10;
       else
         next_state = s0;
     end
   s5:
      begin
        if(coin == 2'b01)
          next_state = s10;
        else if (coin == 2'b10)
          begin
            next_state = s0;
            dispense = 1;
          end
        else
          next_state = s5;
      end
        s10:
        begin
          if(coin == 2'b01)
            begin
          next_state = s10;
          dispense = 1;
            end
          else if (coin == 2'b10)
            begin
              next_state = s0;
              dispense = 1;
              change = 1;
            end
          else 
            next_state = s10;
        end
        default:
          next_state = s0;
      endcase
    end
endmodule
        
            