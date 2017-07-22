/*A simple testbench to verify the functionality of our design*/

`timescale 1ns / 1ps

module graytobin_n_bit_test;

	parameter n=4;
	// Inputs
	reg [n-1:0] G;

	// Outputs
	wire [n-1:0] B;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	graytobin_n_bit_top uut (
		.G(G), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		G = 0;
	
		for(i=0;i<2**n;i=i+1)
		begin
		G=i;
		#5;
		end

		#100;
        


	end
      
endmodule

