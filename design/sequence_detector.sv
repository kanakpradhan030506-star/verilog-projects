module sequence_detector(
    input clk,
    input reset,
    input x,
    output reg y
);

reg [2:0] state;

parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= S0;
        y <= 0;
    end
    else
    begin
        case(state)

        S0: begin
            y <= 0;
            if(x==1)
                state <= S1;
            else
                state <= S0;
        end

        S1: begin
            y <= 0;
            if(x==0)
                state <= S2;
            else
                state <= S1;
        end

        S2: begin
            y <= 0;
            if(x==1)
                state <= S3;
            else
                state <= S0;
        end

        S3: begin
            if(x==1)
            begin
                state <= S1;
                y <= 1;   
            end
            else
            begin
                state <= S2;
                y <= 0;
            end
        end

        default: state <= S0;

        endcase
    end
end

endmodule