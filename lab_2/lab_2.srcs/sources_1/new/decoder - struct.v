`timescale 1ns / 1ps

module decoder(
    input s1,s0,d0,d1,d2,d3, 
    output d
    );
    
    // Structural
    wire nots1, nots0;
    wire o0, o1, o2, o3;
    not int1(nots1, s1);
    not int2(nots0, s0);    
    and out0 (o0, nots1, nots0,d0);
    and out1 (o1, nots1, s0,d1);
    and out2 (o2, s1, nots0,d2);
    and out3 (o3, s1, s0,d3);   
    or out (d,o0,o1,o2,o3);
    
endmodule
