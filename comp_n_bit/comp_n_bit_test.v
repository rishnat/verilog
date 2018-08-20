/*A simple testbench to verify the functionality of our design*/

`timescale 1ps/1ps	//Timescale to increase the simulation window to cover all cases

module comp_n_bit_test;

	parameter N=8;
	
	// Inputs
	reg [N-1:0] X;
	reg [N-1:0] Y;

	// Outputs
	wire gt;
	wire eq;
	wire lt;

	// Instantiate the Unit Under Test (UUT)
	comp_n_bit_top uut (
		.X(X), 
		.Y(Y), 
		.gt(gt), 
		.eq(eq), 
		.lt(lt)
	);

	integer i,j;
	
	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		
		for(i=0;i<2**N;i=i+1)
		begin
			X=i;
			for(j=0;j<2**N;j=j+1)
			begin
			Y=j;
			#5;		//5 units delay between successive test values
			end
		end
		
		#100;
        
	end
      
endmodule

