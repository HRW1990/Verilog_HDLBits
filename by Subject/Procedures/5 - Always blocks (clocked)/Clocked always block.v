/***************************************************
Engineer: Harrison Warke
Date Created: 07/11/2025
Module Name: Alwaysblock2
Project Name: HDL_Bits
Target Device: N/a


Description: Implements an XOR gate using an continuous 
assignment, combinational always block and clocked 
always block.

***************************************************/

module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    assign out_assign = a ^ b;
    
    always @(*) begin
       out_always_comb = a ^ b; 
    end
	
    always @ (posedge clk) begin
        out_always_ff <= a ^ b;
    end
    
endmodule