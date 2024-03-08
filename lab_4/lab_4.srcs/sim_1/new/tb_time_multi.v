`timescale 1ns / 1ps

module tb_time_multi();

reg clk;
wire slow_clk;

reg reset;
reg [15:0] sw;

wire [3:0] an;
wire [6:0] sseg;

time_multi ul(
    .clk(clk),
    .slow_clk(slow_clk),
    .reset(reset),
    .sw(sw),
    .an(an),
    .sseg(sseg)
); 


initial
begin

clk = 0;
reset = 0;
sw = 0;

#10
reset = 1;
#10
reset = 0;

#50
sw[15] = 1; sw[14] = 0; sw[13] = 0; sw[12] = 0; sw[11] = 0; sw[10] = 0; sw[9] = 0; sw[8] = 0; sw[7] = 0; sw[6] = 0; sw[5] = 0; sw[4] = 0; sw[3] = 0; sw[2] = 0; sw[1] = 0; sw[0] = 0;

#50
sw[15] = 0; sw[14] = 0; sw[13] = 0; sw[12] = 0; sw[11] = 0; sw[10] = 1; sw[9] = 0; sw[8] = 0; sw[7] = 0; sw[6] = 0; sw[5] = 0; sw[4] = 0; sw[3] = 0; sw[2] = 0; sw[1] = 0; sw[0] = 0;

#50
sw[15] = 0; sw[14] = 0; sw[13] = 0; sw[12] = 0; sw[11] = 0; sw[10] = 0; sw[9] = 0; sw[8] = 0; sw[7] = 1; sw[6] = 1; sw[5] = 1; sw[4] = 1; sw[3] = 0; sw[2] = 0; sw[1] = 0; sw[0] = 0;

#50
sw[15] = 0; sw[14] = 0; sw[13] = 0; sw[12] = 0; sw[11] = 0; sw[10] = 0; sw[9] = 0; sw[8] = 0; sw[7] = 0; sw[6] = 0; sw[5] = 0; sw[4] = 0; sw[3] = 0; sw[2] = 1; sw[1] = 0; sw[0] = 0;

#50
sw[15] = 1; sw[14] = 1; sw[2] = 1; sw[1] = 1; sw[0] = 0;

end

always
#5 clk = ~clk;

endmodule
