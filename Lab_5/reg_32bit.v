`include "dflipflop.v"

module reg_32bit(q,d,clk,reset);

input clk,reset;
input [31:0] d;
output [31:0] q;
genvar i;

generate for(i=0;i<32;i=i+1) 
	begin: dloop
	dflipflop ff(q[i],d[i],clk,reset);
	end
endgenerate

endmodule