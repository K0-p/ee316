`timescale 1ns / 1ps

module tb_decoder;

reg s1,s0,d0,d1,d2,d3;
wire d;

decoder uut (s1,s0,d0,d1,d2,d3,d); 

initial begin 
s1=0;s0=0;d0=0;d1=0;d2=0;d3=0;
#10
s1=0;s0=0;d0=1;d1=0;d2=1;d3=0;
#10
s1=0;s0=1;d0=1;d1=0;d2=1;d3=0;
#10
s1=1;s0=0;d0=1;d1=0;d2=1;d3=0;
#10
s1=1;s0=1;d0=1;d1=0;d2=1;d3=0;

end


endmodule
