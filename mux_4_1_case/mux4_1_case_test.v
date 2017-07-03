/*A simple testbench to verify the functionality of our design*/

module mux4_1_case_test;

	// Inputs
	reg [3:0] X;
	reg [1:0] sel;

	// Outputs
	wire Y;
	integer i;
	integer j;
	// Instantiate the Unit Under Test (UUT)
	mux4_1_case_top uut (
		.X(X), 
		.sel(sel), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		sel = 0;

	for (i=0;i<16;i=i+1)
	begin
	X=i;
		for (j=3;j>=0;j=j-1)
		begin
		sel=j;
		#10;
		end
	end
	
	#100;

	end
      
endmodule

