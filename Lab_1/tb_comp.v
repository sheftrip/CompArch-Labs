`timescale 1ns / 1ps
//`include "comp.v"
`include "bh_comp.v"

module tb_comp;

reg [3:0] a;
reg [3:0] b;
wire altb,agtb,aeqb;

//comp ans(a,b,altb,agtb,aeqb);
bh_comp ans(a,b,altb,agtb,aeqb);

initial
	begin
	$monitor("a=%d   b=%d  (a<b)=%1b | (a==b)=%1b | (a>b)=%1b ", a,b,altb,aeqb,agtb);

	end

initial
	begin
	#0 a=0;b=0;
	#2 a=5;b=7;
	#4 a=9;b=3;
	#6 a=8;b=8;
	end

endmodule
