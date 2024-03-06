`timescale 1ns / 1ps

module tb_BCD;

reg sw3, sw2, sw1, sw0;
wire a,b,c,d,e,f,g;

BCD uut (sw3,sw2,sw1,sw0,a,b,c,d,e,f,g); 

initial begin 
sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 0;
#10
sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 1;
#10
sw3 = 0; sw2 = 0; sw1 = 1; sw0 = 0;
#10
sw3 = 0; sw2 = 0; sw1 = 1; sw0 = 1;
#10
sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 0;
#10
sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 1;
#10
sw3 = 0; sw2 = 1; sw1 = 1; sw0 = 0;
#10
sw3 = 0; sw2 = 1; sw1 = 1; sw0 = 1;
#10
sw3 = 1; sw2 = 0; sw1 = 0; sw0 = 0;
#10
sw3 = 1; sw2 = 0; sw1 = 0; sw0 = 1;
#10
sw3 = 1; sw2 = 0; sw1 = 1; sw0 = 0;
#10
sw3 = 1; sw2 = 0; sw1 = 1; sw0 = 1;
#10
sw3 = 1; sw2 = 1; sw1 = 0; sw0 = 0;
#10
sw3 = 1; sw2 = 1; sw1 = 0; sw0 = 1;
#10
sw3 = 1; sw2 = 1; sw1 = 1; sw0 = 0;
#10
sw3 = 1; sw2 = 1; sw1 = 1; sw0 = 1;

end


endmodule
