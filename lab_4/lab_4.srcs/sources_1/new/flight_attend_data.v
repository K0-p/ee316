`timescale 1ns / 1ps

module flight_attend_data(
 input wire clk,
 input wire call_button,
 input wire cancel_button,
 output reg light_state
);

wire next_state;

assign next_state = 0;

always @(posedge clk) begin
    light_state <= next_state;
end

endmodule
