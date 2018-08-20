/*This is the top level module which interfaces with the internal logic*/

module graytobin_n_bit_top
	#(parameter n=4)
	(
    input [n-1:0]G,
    output [n-1:0]B
    );

graytobin_n_bit GB(.a(G), .b(B));	//Connecting top level module to the internal logic

endmodule
