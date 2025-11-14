/***************************************************
Engineer: Harrison Warke
Date Created: 14/11/2025
Module Name: Avoid Latches
Project Name: HDL_Bits
Target Device: N/a


Description: Implements a scancode processing circuit.

Given the scancode recieved, indicate whether
one of the arrow keys has been pressed.

To avoid latches, outputs are assigned a value of 0
within an always block, unless one of the cases 
evaluates to true. 

***************************************************/

// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always @(*) begin
   	 left = 1'b0; down = 1'b0; right = 1'b0; up = 1'b0; //default all arrows to 0 to avoid latching
        case (scancode)
      		16'he06b: left = 1'b1;   //left arrow pressed
			16'he072: down = 1'b1;   //down arrow pressed 
			16'he074: right = 1'b1;  //right arrow pressed 
			16'he075: up = 1'b1;     //up arrow pressed
   		endcase
    end
    
endmodule