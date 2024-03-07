`timescale 1ns / 1ps

module tb_rising_edge();

reg clk;
reg signal;
reg reset;

wire outedge;

rising_edge ul(
.clk(clk),
.signal(signal),
.reset(reset),
.outedge(outedge)
);

endmodule
