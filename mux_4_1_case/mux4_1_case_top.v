/*This is the top level module which interfaces with the internal logic*/

module mux4_1_case_top(
    input [3:0] X,
    input [1:0] sel,
    output Y
    );

mux4_1_case M1(.a(X), .c(sel), .b(Y));		//Connecting top level module to the internal logic

endmodule
