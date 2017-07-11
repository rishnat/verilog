/*Internal logic for n bit comparator that has been created using behavioral modelling*/
/*We have used if-else construct for behavioral modelling*/

module comp_n_bit
	#(parameter n=8)		//n is taken as 8 to model an 8-bit comparator
	(
    input [n:1] a,
    input [n:1] b,
    output reg gt,
	 output reg eq,
	 output reg lt
    );



always@(a or b)
begin
gt=1'b0;
eq=1'b0;
lt=1'b0;

if(a>b)
gt=1'b1;

else if(a<b)
lt=1'b1;

else
eq=1'b1;

end


endmodule
