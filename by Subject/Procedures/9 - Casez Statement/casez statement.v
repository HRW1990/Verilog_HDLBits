/***************************************************
Engineer: Harrison Warke
Date Created: 11/11/2025
Module Name: casez statement
Project Name: HDL_Bits
Target Device: N/a


Description: Implements a priority encoder with
priority direction from LSB to MSB.

Outputs the index position of the first '1' bit 
in the 8-bit input vector.

Here the 'casez' statement supports 'dont care'
bits that have the value 'z' to reduce complexity.

***************************************************/

// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );

    always @(*) begin
        casez (in)
            8'bzzzzzzz1: pos = 3'b000; //in[0] is first '1' (from LSB to MSB)
            8'bzzzzzz1z: pos = 3'b001; //in[1] is first '1' 
            8'bzzzzz1zz: pos = 3'b010; //in[2] is first '1' 
            8'bzzzz1zzz: pos = 3'b011; //in[3] is first '1' 
            8'bzzz1zzzz: pos = 3'b100; //in[4] is first '1' 
            8'bzz1zzzzz: pos = 3'b101; //in[5] is first '1' 
            8'bz1zzzzzz: pos = 3'b110; //in[6] is first '1' 
            8'b1zzzzzzz: pos = 3'b111; //in[7] is first '1' 
            default: pos = 3'b000;
        endcase
        end
        
endmodule