/*Testbench to verify the functionality of our design*/
`timescale 1ns / 1ps

module dec3_8_test;

	// Inputs
	reg [2:0] X;

	// Outputs
	wire [7:0] Y;
	
	integer i;	//for loop variable
	
	// Instantiate the Unit Under Test (UUT)
	dec3_8_top uut (
		.X(X), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		
		for(i=0;i<8;i=i+1)
		begin
		X=i;
		#5;
		end


		#100;
	end
      
endmodule

