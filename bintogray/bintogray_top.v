/*This is the top level module which interfaces with the internal logic*/

module bintogray_nbit_top
	#(parameter n=8)		//The design is for 8-bit binary to gray converter
	(
    input [n-1:0] B,
    output [n-1:0] G
    );

bintogray_nbit BG(.a(B), .b(G));	//Connecting top level module to the internal logic

endmodule
