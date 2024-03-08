`timescale 1ns / 1ps

module tb_rising_edge();

reg clk;
wire slow_clk;

reg signal;
reg reset;

wire outedge;

rising_edge ul(
.clk(clk),
.slow_clk(slow_clk),
.signal(signal),
.reset(reset),
.outedge(outedge)
);


initial
begin

clk = 0;
signal = 0;
reset = 0;

#25;
signal = 0;
reset = 1;

#25
signal = 0;
reset = 0;

#100;
signal = 1;
reset = 0;

#100;
signal = 1;
reset = 0;

#100;
signal = 0;
reset = 0;

end

always
#5 clk = ~clk;

endmodule