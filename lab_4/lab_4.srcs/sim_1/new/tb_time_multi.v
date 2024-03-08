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

/*
#10
reset = 1;
#10
reset = 0;

clk = 0;
#10

sw15 = 1; sw14 = 0; sw13 = 0; sw12 = 0; sw11 = 0; sw10 = 0; sw9 = 0; sw8 = 0; sw7 = 0; sw6 = 0; sw5 = 0; sw4 = 0; sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 0;
#10

sw15 = 0; sw14 = 0; sw13 = 0; sw12 = 0; sw11 = 0; sw10 = 1; sw9 = 0; sw8 = 0; sw7 = 0; sw6 = 0; sw5 = 0; sw4 = 0; sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 0;
#10

sw15 = 0; sw14 = 0; sw13 = 0; sw12 = 0; sw11 = 0; sw10 = 0; sw9 = 0; sw8 = 0; sw7 = 0; sw6 = 1; sw5 = 0; sw4 = 0; sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 0;
#10

sw15 = 0; sw14 = 0; sw13 = 0; sw12 = 0; sw11 = 0; sw10 = 0; sw9 = 0; sw8 = 0; sw7 = 0; sw6 = 0; sw5 = 0; sw4 = 0; sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 0;

#10

sw15 = 1; sw14 = 0; sw13 = 0; sw12 = 0; sw11 = 0; sw10 = 0; sw9 = 0; sw8 = 0; sw7 = 0; sw6 = 0; sw5 = 0; sw4 = 0; sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 0;
*/
end

always
#5 clk = ~clk;

endmodule
