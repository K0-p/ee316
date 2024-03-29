`timescale 1ns / 1ps
module clk_div(
    input clk,
    input reset,
    output clk_out
);

    reg[24:0] COUNT;
    
        assign clk_out=COUNT[24];
                
        always @(posedge clk)
        begin
        if (reset)
            COUNT = 0;
        else
            COUNT = COUNT + 1;
        end

    endmodule
