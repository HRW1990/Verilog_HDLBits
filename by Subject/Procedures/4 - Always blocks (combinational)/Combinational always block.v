/***************************************************
Engineer: Harrison Warke
Date Created: 06/11/2025
Module Name: Alwaysblock1
Project Name: HDL_Bits
Target Device: N/a


Description: Implements an AND gate using both an assignment statement
and a combinational always block.

***************************************************/

module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    
    assign out_assign = a & b;
    always @(*) out_alwaysblock = a & b;

endmodule
