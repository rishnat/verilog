/*Internal logic for n-bit binary to gray converter*/


module bintogray_nbit
	#(parameter n=8)	//This can be changed to any desired number
	(
    input [n-1:0] a,
    output reg [n-1:0] b
    );

integer i;

always@(a)	//Sensitivity List
begin
	b[n-1]=a[n-1];
	for(i=n-2;i>=0;i=i-1)
	begin
	b[i]=a[i+1]^a[i];
	end
end


endmodule
