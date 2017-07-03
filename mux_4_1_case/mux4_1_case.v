
/*Internal logic for 4:1 mux that has been created using behavioral modelling*/
/*Case construct has been used for behavioral modelling*/

module mux4_1_case(
    input [4:1] a,
    input [2:1] c,
    output reg b
    );

always@(a,c)		//Sensitivity List
begin

case(c)
2'b00:b=a[1];
2'b01:b=a[2];
2'b10:b=a[3];
2'b11:b=a[4];

default:b=b;
endcase

end

endmodule
