/*This is the top level module which interfaces with the internal logic*/

module comp_n_bit_top
	#(parameter N=8)
	(
    input [N-1:0] X,
    input [N-1:0] Y,
    output gt,
    output eq,
    output lt
    );

comp_n_bit C1(.a(X), .b(Y), .gt(gt), .eq(eq), .lt(lt));	//Connecting top level module to the internal logic

endmodule
