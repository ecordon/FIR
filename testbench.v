`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company: 	
// Engineer:
//
// Create Date:   13:57:49 09/20/2013
// Design Name:   Filter8bit
// Module Name:   testbench.v
// Project Name:  Filter8bit
// Target Device:  
// Tool versions:  
// Description: 	Testbench for FIR/IIR 8-bit filter
//
// Verilog Test Fixture created by ISE for module: Filter8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] x;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	Filter8bit uut (
		.clk(clk),
		.rst(rst),
		.x(x), 
		.y(y)
	);

	//clock process
	initial begin
		clk = 0;
		forever begin
			#5 clk =~ clk;
		end
	end

	initial begin
		
		// Initialize Inputs
		x = 0;
		rst <= 1'b1;
		
		// Wait for global reset to finish
		#10;
        
		// Add stimulus here
		rst <= 1'b0;
		x <= 8'b00000001;
		#10;
		
	end
      
endmodule

