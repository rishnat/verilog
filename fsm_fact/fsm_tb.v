`timescale 1ns / 1ps

module fsm_tb;

	// Inputs
	reg [31:0] N;
	reg clk;
	reg rst;

	// Outputs
	wire [63:0] Out;

	// Instantiate the Unit Under Test (UUT)
	fsm_fact uut (
		.N(N), 
		.clk(clk), 
		.rst(rst), 
		.Out(Out)
	);

	always
	#10 clk=~clk;

	initial begin
		N =6;
		clk = 0;
		rst = 0;

		#20;
		
		rst=1;
		
		#300;
		
		rst=0;
		
		#30;
		
		rst=1;

	end
      
endmodule

