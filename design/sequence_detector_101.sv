module sequence_detector_101(input clk , input reset , input x , output reg y);
  parameter s0 = 2'b00;
  parameter s1 = 2'b01;
  parameter s2 = 2'b10;
  reg [1:0] state;
  always@ (posedge clk or posedge reset)
    begin
      if(reset)
        begin 
          state <= s0;
          y =0;
        end 
      else 
        begin 
          case(state)
            s0:
              begin
                y <= 0;
                if(x)
                  state <= s1;
                else
                  state <=  s0;
              end
            s1:
              begin
                y <= 0;
                if(x)
                  state <= s1;
                else
                  state <=  s2;
              end
            s2:
              begin
                if(x)
                  begin 
                    state <= s1;
                    y <=1;
                  end
                 else
                begin
                    state <= s0;
                    y <= 0;
                end
            end
            default:
              begin 
                state<= s0;
                y<= 0;
              end
            endcase
        end
    end
endmodule