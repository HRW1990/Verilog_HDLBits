/***************************************************
Engineer: Harrison Warke
Date Created: 07/11/2025
Module Name: Always if 
Project Name: HDL_Bits
Target Device: N/a


Description: Implements an 2:1 multiplexer in two 
ways. Firstly with an always block, and next
using an assign statement with the ternary operator. 

If sel_b1 and sel_b2 are both HIGH, the output should
follow 'b', otherwise output follows 'a'.

***************************************************/

module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    always @(*) begin
        
        if (sel_b1 == 1 & sel_b2 == 1) begin
            out_always = b;
        end
        
        else begin
        	out_always = a;
        end
        
    end
    
    assign out_assign = (sel_b1 == 1 & sel_b2 == 1) ? b : a;
    
endmodule