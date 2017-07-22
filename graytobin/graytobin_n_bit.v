/*Internal logic for n-bit gray to binary converter*/


module graytobin_n_bit
	#(parameter n=4)	//Design for 4-bit gray to binary converter
	( 
	 input [n-1:0]a,
    output reg [n-1:0]b
    );

integer i;
always@(a)
begin
	b[n-1]=a[n-1];

	for(i=n-2;i>=0;i=i-1)
	begin
	b[i]=b[i+1]^a[i];
	end

end

endmodule
