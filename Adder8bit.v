//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edwin Cordon
// 
// Create Date:    21:59:25 09/18/2013 
// Design Name: 
// Module Name:    Adder8bit.v 
// Project Name: 	Filter8bit
// Target Devices: 
// Tool versions: 
// Description: 8-bit fixed-point adder
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module Adder8bit(a, b, c);
	
	input [7:0] a, b;
	output [7:0] c;
	reg [7:0] c;

	always @ (a or b) begin
		c <= a + b;
	end
	
endmodule
