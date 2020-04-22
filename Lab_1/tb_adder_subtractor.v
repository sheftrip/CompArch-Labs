`timescale 1ns / 1ps
`include "adder_subtractor.v"

module tb_adder_subtractor;

reg [3:0] a,b;
reg k;

wire[3:0] s;
wire cout;

adder_subtractor ans(a,b,k,s,cout);

initial 
	begin
	$monitor("a=%d + b=%d = s=%d | k=%b cout=%b", a,b,s,k,cout);
	end

initial
	begin
	#0 a=4'b0001; b=4'b0010; k=1'b0;
	#2 a=4'b0110; b=4'b0001; k=1'b1;
	#4 a=4'b1111; b=4'b0001; k=1'b0;
	end
endmodule