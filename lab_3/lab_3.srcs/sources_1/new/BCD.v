`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2024 12:39:45 PM
// Design Name: 
// Module Name: BCD
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


module BCD(
    input sw3,
    input sw2,
    input sw1,
    input sw0,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output an0,
    output an1,
    output an2,
    output an3,
    output gp
    );
    
    wire notsw3, notsw2, notsw1, notsw0;
    not int1(notsw3, sw3);
    not int2(notsw2, sw2);
    not int3(notsw1, sw1);
    not int4(notsw0, sw0);
    
    //product AND gates that form SOP form for each output
    wire a1,a2,a3,a4,b1,b2,b3,b4,c1,c2,c3,c4,d1,d2,d3,d4,e1,e2,f1,f2,f3,f4,g1,g2,g3,g4;
    and aa(a1, notsw2, notsw1, notsw0);
    and ab(a2, notsw3, sw1);
    and ac(a3, notsw3, sw2, sw0);
    and ad(a4, sw3, notsw2, notsw1);
    and ba(b1, notsw3, notsw2);
    and bb(b2, notsw2, notsw1);
    and bc(b3, notsw3, notsw1, notsw0);
    and bd(b4, notsw3, sw1, sw0);
    and ca(c1, notsw3, sw2);
    and cb(c2, notsw3, sw0);
    and cc(c3, notsw3, notsw1);
    and cd(c4, notsw2, notsw1);
    and da(d1, notsw2, notsw1, notsw0);
    and db(d2, notsw3, sw2, notsw1, sw0);
    and dc(d3, notsw3, notsw2, sw1);
    and dd(d4, notsw3, sw1, notsw0);
    and ea(e1, notsw2, notsw1, notsw0);
    and eb(e2, notsw3, sw1, notsw0);
    and fa(f1, sw3, notsw2, notsw1);
    and fb(f2, notsw3, sw2, notsw1);
    and fc(f3, notsw3, notsw1, notsw0);
    and fd(f4, notsw3, sw2, notsw0);
    and ga(g1, notsw3, sw2, notsw1);
    and gb(g2, sw3, notsw2, notsw1);
    and gc(g3, notsw3, notsw2, sw1);
    and gd(g4, notsw3, sw1, notsw0);
    
    //SOP form
    or a_output (wa, a1, a2, a3, a4);
    or b_output (wb, b1, b2, b3, b4);
    or c_output (wc, c1, c2, c3, c4);
    or d_output (wd, d1, d2, d3, d4);
    or e_output (we, e1, e2);
    or f_output (wf, f1, f2, f3, f4);
    or g_output (wg, g1, g2, g3, g4);
    
    //low read
    not inta(a,wa);
    not intb(b,wb);
    not intc(c,wc);
    not intd(d,wd);
    not inte(e,we);
    not intf(f,wf);
    not intg(g,wg);
    
    and na0 (an0, 0, 0);
    and na1 (an1, 1, 1);
    and na2 (an2, 1, 1);
    and na3 (an3, 1, 1);
    and gpg (gp, 1, 1);
    
endmodule
