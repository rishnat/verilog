/*A simple testbench to verify the functionality of our design*/

module demux1_4_if_test;

	// Inputs
	reg X;
	reg [1:0] sel;

	// Outputs
	wire [3:0] Y;
	integer i,j;
	// Instantiate the Unit Under Test (UUT)
	demux1_4_if_top uut (
		.X(X), 
		.sel(sel), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		sel = 0;
		
		for(i=0;i<2;i=i+1)
		begin
		X=i;
			for(j=0;j<4;j=j+1)
			begin
			sel=j;
			#10;
			end
		end
		
		#100;
        
		
	end
      
endmodule

