/***************************************************
Engineer: Harrison Warke
Date Created: 15/10/2025
Module Name: Carry Select Adder
Project Name: HDL_Bits
Target Device: N/a


Description: Implementes a carry select adder, using a 2-1 multiplexer
The provided module 'add16' has the following definition:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
***************************************************/

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry;
    wire dummycarry1;
    wire dummycarry2;
    wire [15:0] sumlow;
    wire [15:0] sumhigh_0carry;
    wire [15:0] sumhigh_1carry;
      
    //module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    add16 lower16sum (a[15:0], b[15:0], 1'b0, sumlow, carry);
    add16 upper16sum_zerocarry (a[31:16], b[31:16], 1'b0, sumhigh_0carry, dummycarry1 );
    add16 upper16sum_onecarry  (a[31:16], b[31:16], 1'b1, sumhigh_1carry, dummycarry2 );
    
    assign sum[15:0] = sumlow;
    assign sum[31:16] = carry ? sumhigh_1carry : sumhigh_0carry;

endmodule