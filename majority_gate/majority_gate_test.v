/*Testbench to verify the functionality of our design*/

module majority_gate_test;

parameter N=8; 	//This should be equal to the number of pins in input port	

	// Inputs
	reg [N-1:0] X;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	majority_gate_n_bit_top uut (
		.X(X), 
		.Y(Y)
	);
integer i;

	initial begin
		// Initialize Inputs
		X = 0;
		
		for(i=0;i<2**N;i=i+1)
		begin
		X=i;
		#10;
		end
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

