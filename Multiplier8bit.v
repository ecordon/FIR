//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edwin Cordon
// 
// Create Date:    22:23:54 09/18/2013 
// Design Name: 
// Module Name:    Multiplier8bit.v
// Project Name: 	Filter8bit
// Target Devices: 
// Tool versions: 
// Description: 8-bit fixed-point multiplier
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module Multiplier8bit(
			input [7:0] a, 
			input [7:0] b, 
			output [7:0] c);
	
	assign c[7:0] = a*b;

endmodule
