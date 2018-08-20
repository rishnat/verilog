/*This is the top level module which interfaces with the internal logic*/

module dec3_8_top(
    input [2:0] X,
    output [7:0] Y
    );


dec3_8 D1(.a(X), .b(Y));	//Connecting top level module to the internal logic

endmodule
