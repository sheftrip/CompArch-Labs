`timescale 1ns / 1ps
`include "counter.v"

module tb_counter;

reg clk,j,k;
wire [3:0] q,nq;

counter ans(j,k,clk,q,nq);

initial 
	begin
	j=1'b1;
	k=1'b1;
	clk=1'b0;
	#1000 $finish;
	end
initial
	begin
	forever
		begin
		 #5 clk=~clk;
		 if(clk)
		 $display("%d",q);
		end
end

endmodule