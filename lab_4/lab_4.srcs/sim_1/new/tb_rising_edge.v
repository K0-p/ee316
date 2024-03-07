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


initial
begin

clk = 0;
signal = 0;
reset = 0;

#10;
signal = 1;
reset = 0;

#10;
signal = 1;
reset = 0;

#10;
signal = 0;
reset = 0;

end

always
#5 clk = ~clk;

endmodule

endmodule
