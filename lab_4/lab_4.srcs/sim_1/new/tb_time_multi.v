`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 10:31:13 PM
// Design Name: 
// Module Name: tb_time_multi
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_time_multi();

reg clk, reset, sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10, sw11, sw12, sw13, sw14, sw15;
wire slow_clk, sseg0,sseg1,sseg2,sseg3,sseg4,sseg5,sseg6;

time_multi ul(clk, reset, sw0, sw1,sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10, sw11, sw12, sw13, sw14, sw15, slow_clk, sseg0,sseg1,sseg2,sseg3,sseg4,sseg5,sseg6); 


initial
begin

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

end

always
#5 clk = ~clk;

endmodule
