/*Internal logic for 3:8 using behavioral modelling*/
/*We have used if construct for behavioral modelling*/

module dec3_8(
    input [3:1] a,
    output reg [8:1] b
    );

integer i;

always@(a)
begin
b=8'd0;
	for(i=0;i<=7;i=i+1)
	begin
		if(a==i)
		begin
		b[i+1]=1'b1;
		end
	end
end



endmodule
