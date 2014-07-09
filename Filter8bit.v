//////////////////////////////////////////////////////////////////////////////////
// Company: 	
// Engineer: 	Edwin Cordon
// 
// Create Date:    23:03:44 09/18/2013 
// Design Name: 
// Module Name:    Filter8bit.v
// Project Name: 	Filter8bit
// Target Devices: 
// Tool versions: 
// Description: Top-level source file
//
// Dependencies: 
//		- Adder8bit.v
//		- Multiplier8bit.v
//		- Register8bit.v
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

`define b0 8'b00000001
`define b1 8'b00000010
`define b2 8'b11111101

module Filter8bit(
    input clk,
	input rst,
    input [7:0] x,
    output [7:0] y
    );

	/*
	 *	Implementing FIR with difference equation 
	 * y[n] = x[n] + 2x[n-1] - 3x[n-2]
	 * 
	 */

	// Intermediate wires
	wire [7:0] b0x, b1x, b2x;	// Multiplications
	wire [7:0] xz1, xz2, xz3;	// Delays
	wire [7:0] add0, add1;		// Additions

	// Connections between components
	Multiplier8bit mult_b0(.a (x), .b (b0), .c (b0x));
	Register8bit delayreg_b1(.clk (clk), .rst (rst), .I (x), .Q (xz1));
	
	Multiplier8bit mult_b1(.a (xz1), .b (b1), .c (b1x));
	Register8bit delayreg_b2(.clk (clk), .rst (rst), .I (xz1), .Q (xz2));
	
	Multiplier8bit mult_b2(.a (xz2), .b (b2), .c (b2x));
	
	Adder8bit adderx1(.a (b1x), .b (b2x), .c (add1));
	Adder8bit adderx0(.a (b0x), .b (add1), .c (add0));
	
	assign y = add0;
	
endmodule
