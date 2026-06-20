module mux_datapath(input  [7:0] A ,input  [7:0] B, input  [1:0] sel,output reg [7:0] result);
wire [7:0] add_res;
wire [7:0] sub_res;
wire [7:0] and_res;
wire [7:0] or_res;

assign add_res = A + B;
assign sub_res = A - B;
assign and_res = A & B;
assign or_res  = A | B;

always @(*)
begin
    case(sel)
        2'b00: result = add_res;
        2'b01: result = sub_res;
        2'b10: result = and_res;
        2'b11: result = or_res;
        default: result = 8'b0;
    endcase
end

endmodule