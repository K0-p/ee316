`timescale 1ns / 1ps

module sprinkler(
    input up, center, left, right, 
    output combo0, combo1, combo2, combo3, combo4, combo5, combo6, combo7
    );
    
    // Structural
    wire notup, notleft, notright;
    not int1(notup, up);
    not int2(notleft, left);
    not int3(notright, right);
    and out0 (combo0, center, notup, notleft, notright);
    and out1 (combo1, center, notup, notleft, right);
    and out2 (combo2, center, notup, left, notright);
    and out3 (combo3, center, notup, left, right);
    and out4 (combo4, center, up, notleft, notright);
    and out5 (combo5, center, up, notleft, right);
    and out6 (combo6, center, up, left, notright);
    and out7 (combo7, center, up, left, right);
    
endmodule
