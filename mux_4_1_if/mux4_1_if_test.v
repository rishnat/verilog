/*A simple testbench to verify the functionality of our design*/

module mux4_1_if_test;

	// Inputs
	reg [3:0] X;
	reg [1:0] sel;

	// Outputs
	wire Y;
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	mux4_1_if_top uut (
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
	sel=0;
	#10;
	sel=1;
	#10;
	sel=2;
	#10;
	sel=3;
	#10;
	end
	
   #100;     
	

	end
      
endmodule

