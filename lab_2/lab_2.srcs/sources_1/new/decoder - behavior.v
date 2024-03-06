`timescale 1ns / 1ps

module decoder(
    input s1,s0,d0,d1,d2,d3, 
    output d
    );
    
    // Behavioral
    reg d_buf;
    assign d = d_buf;
    
    always @(*) begin
    
        // Turn off
        d_buf = 0;
        
        // Ligh
           case({s1,s0}) 
               2'b00: d_buf = d0; 
               2'b01: d_buf = d1; 
               2'b10: d_buf = d2; 
               2'b11: d_buf = d3; 
               
               default: begin
                d_buf = 0;
                end
           endcase
    end
    
endmodule
