/*Internal logic for 4:1 mux using structural modelling*/

module mux4_1_str(
    input [4:1] a,
    input [2:1] c,
    output b
    );


wire out1;
wire out2;
wire out3;
wire out4;

and_gate A1(~(c[1]), ~(c[2]), a[1], out1);		//and gate instance
and_gate A2(c[1], ~(c[2]), a[2], out2);
and_gate A3(~(c[1]), c[2], a[3], out3);
and_gate A4(c[1], c[2], a[4], out4);				

or_gate O0(out1, out2, out3, out4, b); 			//or gate instance

endmodule

module and_gate(input a, input b, input c, output y);	//and gate module

assign y=a&b&c;

endmodule


module or_gate(input a, input b, input c, input d, output y);	//or gate module

assign y=a|b|c|d;

endmodule


