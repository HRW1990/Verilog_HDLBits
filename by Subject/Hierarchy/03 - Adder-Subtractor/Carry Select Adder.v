/***************************************************
Engineer: Harrison Warke
Date Created: 17/10/2025
Module Name: Adder-Subtractor
Project Name: HDL_Bits
Target Device: N/a


Description: Implementes an adder-subtractor, using a 2-1 multiplexer which inputs 
the 1s complement of b to each full adder if the 'sub' line is 1.
The provided module 'add16' has the following definition:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
***************************************************/

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] onescomp;
    assign onescomp = ~b;
    
    wire [31:0] c;
    wire cout;
    wire dummycarry;
    
    assign c = sub ? onescomp: b; //if sub = 0, perform addition, if sub = 1 subtract b from a
    
	//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    add16 lower16 (a[15:0], c[15:0], sub, sum[15:0], cout);
    add16 upper16(a[31:16], c[31:16], cout, sum[31:16], dummycarry);

endmodule