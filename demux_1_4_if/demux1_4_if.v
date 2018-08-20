/*Internal logic for 1:4 demux that has been created using behavioral modelling*/
/*If-else construct has been used for behavioral modelling*/


module demux1_4_if(
    input a,
    input [2:1] c,
    output reg [4:1] b
    );



always@(a or c)	//Sensitivity List
begin
b=4'b0000;
if (c==2'b00)
b[1]=a;
else if (c==2'b01)
b[2]=a;
else if (c==2'b10)
b[3]=a;
else if (c==2'b11)
b[4]=a;
else
b=b;
end


endmodule
