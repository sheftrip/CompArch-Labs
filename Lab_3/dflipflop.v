`timescale 1ns / 1ps

module dflipflop(d,q,nq,clk,clr);

input d,clk,clr;
output reg q,nq;

always @ (negedge clr or posedge clk)
	begin
	if (!clr) q <= 1'b0;
	else q <= d;
	nq <= ~q;
	end
endmodule

