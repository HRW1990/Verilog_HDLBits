/***************************************************
Engineer: Harrison Warke
Date Created: 10/11/2025
Module Name: Case statement 
Project Name: HDL_Bits
Target Device: N/a


Description: Implements an 6:1 multiplexer using a case
statement. When sel is between 0 and 5 select the 
appropriate data input. If sel is 6/7 output 0. 

***************************************************/

module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel)
            3'b000: out = data0;
            3'b001: out = data1;
            3'b010: out = data2;
            3'b011: out = data3;
            3'b100: out = data4;
            3'b101: out = data5;
            default: out = 4'b0000;
        endcase
    end

endmodule