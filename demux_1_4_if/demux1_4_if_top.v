/*This is the top level module which interfaces with the internal logic*/
module demux1_4_if_top(
    input X,
    input [1:0] sel,
    output [3:0] Y
    );

demux1_4_if D1(.a(X), .c(sel), .b(Y));	//Connecting top level module to the internal logic

endmodule
