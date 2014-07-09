//////////////////////////////////////////////////////////////////////////////////
// Company: Senior Design (TechSonic)
// Engineer: Edwin Cordon
// 
// Create Date:    22:04:58 09/18/2013 
// Design Name: 
// Module Name:    Register8bit.v 
// Project Name: 	Filter8bit
// Target Devices: 
// Tool versions: 
// Description: 	8-bit register
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module Register8bit(clk, rst, I, Q);

	input clk, rst;
	input [7:0] I;
	output [7:0] Q;
	reg [7:0] Q;

	always @(posedge clk or posedge rst) begin
		
		if(rst == 1'b1)
			Q <= 8'b0;
		else
			Q <= I;
	end

endmodule
