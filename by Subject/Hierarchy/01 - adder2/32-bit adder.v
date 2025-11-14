module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

	wire adder1carryout;
	wire adder2carryout;

	add16 lower16bits (.a (a[15:0]), .b (b[15:0]), .cin (1'b0), .sum (sum[15:0]), .cout (adder1carryout) );
	add16 upper16bits (.a (a[31:16]), .b (b[31:16]), .cin (adder1carryout), .sum (sum[31:16]), .cout (adder2carryout) );

endmodule


	wire adder1carryout;
	wire adder2carryout;

	module add1 ( input a, input b, input cin,   output sum, output cout );

		assign sum = a ^ b ^ cin; 
		assign cout = (b & cin) | (a & cin) | (a & b);
	
	endmodule


	




