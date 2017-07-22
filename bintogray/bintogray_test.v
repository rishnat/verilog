/*A simple testbench to verify the functionality of our design*/

module bintogray_test;

	parameter n=8;	
	// Inputs
	reg [n-1:0] B;

	// Outputs
	wire [n-1:0] G;
	
	
	integer i;
	// Instantiate the Unit Under Test (UUT)
	bintogray_nbit_top uut (
		.B(B), 
		.G(G)
	);

	initial begin
		// Initialize Inputs
		B = 0;
		
		for(i=0;i<2**n;i=i+1)
		begin
		B=i;
		#5;
		end

		#100;
        

	end
      
endmodule

