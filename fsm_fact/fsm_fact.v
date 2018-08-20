//This design implements factorial using FSM technique
//Input:32-bit number
//Output:64-bit number
//Limitation: As factorial grows rapidly there is a limit to the maximum input before the result overflows

module fsm_fact(input[31:0] N, input clk, input rst, output reg[63:0] Out
    );

reg[63:0] a;	//register to hold intermediate values
reg[31:0] b;
reg[1:0] S0=2'd0, S1=2'd1, S2=2'd2;	//States for start ,process and done state

reg[1:0]state, next_state;

always@(posedge clk or negedge rst)
begin
if(~rst)
	begin
	state<=S0;
	end
else
	begin
	state<=next_state;
	end
end

always@(posedge clk or negedge rst)
begin
case(state)
	S0:	//Start state
	begin
	next_state<=S1;
	b<=N;
	a<=64'd1;
	Out<=64'd0;
	end
	S1:	//Process state
	begin
	if(b==32'd0)
		begin
		next_state<=S2;
		end
	else
		begin
		next_state<=S1;
		a<=a*b;
		b<=b-1;
		end
	end
	S2:	//Done state
	begin
	next_state<=S2;
	Out<=a;
	end
endcase


end

endmodule
