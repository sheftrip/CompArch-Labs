`timescale 1ns / 1ps
`include "mux3to1.v"

module bit32_3to1mux(out,sel1,sel2,in1,in2,in3);

input [31:0] in1,in2,in3;
output [31:0] out;
input sel1,sel2;
genvar j;

generate for(j=0;j<32;j=j+1) 
	begin: mux_loop
	mux3to1 m1(out[j],sel1,sel2,in1[j],in2[j],in3[j]);
	end
endgenerate

endmodule