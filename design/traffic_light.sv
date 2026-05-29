module traffic_light(input clk , input reset , output reg [2:0] light );
  parameter red = 3'b100;
  parameter yellow = 3'b010;
  parameter green = 3'b001;
  reg [1:0] state , next_state ;
  always @(posedge clk or posedge reset)
    begin 
      if (reset)
        state <= red;
      else
        state <= next_state;
    end
  always @(*)
    begin
      case(state)
        // 001 - green
        //010 - yellow
        //100 - red
  red:
     begin
       light = 3'b100;
         next_state = green;
     end
   green:
      begin
        light = 3'b001;
        next_state = yellow;
      end
   yellow:
        begin
          light = 3'b010;
          next_state = red;
        end
        default:
          begin
          light = 3'b100;
          next_state = red;
          end
      endcase
    end
endmodule
        
            