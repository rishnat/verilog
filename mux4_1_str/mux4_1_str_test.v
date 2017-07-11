/*A simple testbench to verify the functionality of our design*/

`timescale 1ns / 1ps

module mux4_1_str_test;

	// Inputs
	reg [3:0] X;
	reg [1:0] sel;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	mux4_1_str_top uut (
		.X(X), 
		.sel(sel), 
		.Y(Y)
	);

	integer i, j;
	initial begin
		// Initialize Inputs
		X = 0;
		sel = 0;

		for(i=0;i<16;i=i+1)
		begin
			X=i;
			for(j=0;j<4;j=j+1)
			begin
			sel=j;
			#2;
			end
		end
		#100;
        
	end
      
endmodule

