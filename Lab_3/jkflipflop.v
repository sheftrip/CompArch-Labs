`timescale 1ns / 1ps

module jkflipflop(j,k,q,q0,clk);

input j,k,clk;
output q,q0;
reg q,q0;

initial
	begin
	q=1'b0;
	q0=1'b1;
	end

always@(posedge clk)
	begin
	case({j,k})
		{1'b0,1'b0}:
			begin
			q=q;
			q0=q0;
			end
		{1'b0,1'b1}:
			begin
			q=1'b0;
			q0=1'b1;
			end
		{1'b1,1'b0}:
			begin
			q=1'b1;
			q0=1'b0;
			end
		{1'b1,1'b1}:
			begin
			q=~q;
			q0=~q0;
			end
		endcase
	end
endmodule

