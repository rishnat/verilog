/*This is the top level module which interfaces with the internal logic*/


module majority_gate_n_bit_top
	#(parameter n=8)
    (input [n-1:0] X,
    output Y
    );

majority_gate_n_bit Major_n(.a(X), .b(Y));	//Connecting top level module to the internal logic

endmodule
