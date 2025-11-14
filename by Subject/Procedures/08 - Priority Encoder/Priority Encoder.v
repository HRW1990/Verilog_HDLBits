/***************************************************
Engineer: Harrison Warke
Date Created: 11/11/2025
Module Name: Priority Encoder
Project Name: HDL_Bits
Target Device: N/a


Description: Implements a priority encoder with
priority direction from LSB to MSB.

Outputs the index position of the first '1' bit 
in the 4-bit input vector. 

***************************************************/

// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    
    //priority encoder where priority direction is from LSB to MSB

    always @(*) begin     // This is a combinational circuit
        case (in)
          4'b0001,     //in[0] is first '1'
          4'b0011, 
          4'b0101,  
          4'b0111,  
          4'b1001,
          4'b1011,  
          4'b1101,  
          4'b1111: pos = 2'b00;
            
          4'b0010,     //in[1] is first '1'
          4'b0110,
          4'b1010,  
          4'b1110: pos = 2'b01;
   
          4'b0100,     //in[2] is first '1'
          4'b1100: pos = 2'b10;
   
          4'b1000: pos = 2'b11;    //in[3] is first 1
  
          default: pos = 2'b00;    //no input bits high, output zero
    endcase
end
    
endmodule