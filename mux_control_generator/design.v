module mux_signal_generator(input [1:0] opcode , output reg [1:0] mux_sel);
  always @(*)
    begin
      case(opcode)
        2'b00:
          begin
            mux_sel = 2'b00;
          end
        2'b01:
          begin 
            mux_sel =2'b01;
          end
        2'b10:
          begin
            mux_sel = 2'b10;
          end
        2'b11:
          begin 
            mux_sel = 2'b11;
          end
        default:
          begin 
            mux_sel = 2'b00;
          end
      endcase
    end
endmodule
    