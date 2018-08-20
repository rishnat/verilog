
/*Internal logic for 4:1 mux that has been created using behavioral modelling*/
/*We have used if-else construct for behavioral modelling*/

module mux4_1_if(
    input [4:1] a,	//4 1-bit input to the mux
    input [2:1] c,	//select line
    output reg b		//mux	output
    );

always@(a,c)
begin
if (c==2'b00)
b=a[1];
else if (c==2'b01)
b=a[2];
else if (c==2'b10)
b=a[3];
else if (c==2'b11)
b=a[4];
else
b=b;
end





endmodule
