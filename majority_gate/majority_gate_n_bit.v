/*Internal logic for majority gate using  behavioral modelling*/
/*Majority gate is a digital circuit in which output is high */
/* only when number of 1's is higher than number of 0's*/

module majority_gate_n_bit
	#(parameter n=8)	//Generalizing the input port for any number of bits
    (input [n:1] a,
    output reg b
    );
	 
integer i, count=0;
always@(*) 
begin
	count=0;
	for(i=1;i<=n;i=i+1)
	begin
	if(a[i]==1'b1)
	count=count+1;
	end

	if(count>n/2)
	b=1'b1;
	else
	b=1'b0;

end

endmodule
