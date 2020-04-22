`timescale 1ns / 1ps
`include "four_full_adder.v"

module tb_four_full_adder;

reg [3:0] a,b;
reg cin;

wire[3:0] s;
wire cout;

four_full_adder(a,b,cin,s,cout);

initial 
	begin
	$monitor("a=%b + b=%b = s=%b | cin=%b cout=%b", a,b,s,cin,cout);
	end

initial
	begin
	#0 a=4'b0001; b=4'b0010; cin=1'b0;
	#2 a=4'b0110; b=4'b0001; cin=1'b1;
	#4 a=4'b1111; b=4'b0001; cin=1'b0;
	end
endmodule