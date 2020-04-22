`timescale 1ns / 1ps
`include "jkflipflop.v"

module counter(j,k,clk,q,nq);

input clk;
input j,k;
output [3:0] nq,q;
//wire [3:0] nq;
wire a1,a2;
//wire [3:0] q;

/*initial
	begin
	q[0]=1'b0;
	q[1]=1'b0;
	q[2]=1'b0;
	q[3]=1'b0;
	end	
*/
/*
not a(nq[0],q[0]);
not b(nq[1],q[1]);
not c(nq[2],q[2]);
not d(nq[3],q[3]);
*/



jkflipflop jk0(j,k,q[0],nq[0],clk);
jkflipflop jk1(q[0],q[0],q[1],nq[1],clk);
and(a1,q[0],q[1]);
jkflipflop jk2(a1,a1,q[2],nq[2],clk);
and(a2,a1,q[2]);
jkflipflop jk3(a2,a2,q[3],nq[3],clk);

endmodule