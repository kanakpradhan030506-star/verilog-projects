module washing_machine(
    input clk,
    input reset,
    input start,
    output reg water_valve,
    output reg motor,
    output reg spin_motor,
    output reg done
);

    parameter IDLE  = 3'b000,
              FILL  = 3'b001,
              WASH  = 3'b010,
              RINSE = 3'b011,
              SPIN  = 3'b100,
              OVER  = 3'b101;

    reg [2:0] state;
    reg [3:0] count;

    // State transitions
    always @(posedge clk or posedge reset)
    begin
        if(reset)
        begin
            state <= IDLE;
            count <= 0;
        end
        else
        begin
            case(state)

                IDLE:
                begin
                    count <= 0;

                    if(start)
                        state <= FILL;
                end

                FILL:
                begin
                    if(count == 3)
                    begin
                        count <= 0;
                        state <= WASH;
                    end
                    else
                        count <= count + 1;
                end

                WASH:
                begin
                    if(count == 5)
                    begin
                        count <= 0;
                        state <= RINSE;
                    end
                    else
                        count <= count + 1;
                end

                RINSE:
                begin
                    if(count == 4)
                    begin
                        count <= 0;
                        state <= SPIN;
                    end
                    else
                        count <= count + 1;
                end

                SPIN:
                begin
                    if(count == 3)
                    begin
                        count <= 0;
                        state <= OVER;
                    end
                    else
                        count <= count + 1;
                end

                OVER:
                    state <= IDLE;

                default:
                    state <= IDLE;

            endcase
        end
    end

    // Output logic
    always @(*)
    begin
        water_valve = 0;
        motor = 0;
        spin_motor = 0;
        done = 0;

        case(state)

            FILL:
                water_valve = 1;

            WASH:
                motor = 1;

            RINSE:
            begin
                water_valve = 1;
                motor = 1;
            end

            SPIN:
                spin_motor = 1;

            OVER:
                done = 1;

            default:
            begin
                water_valve = 0;
                motor = 0;
                spin_motor = 0;
                done = 0;
            end

        endcase
    end

endmodule