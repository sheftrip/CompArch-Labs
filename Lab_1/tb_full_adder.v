`timescale 1ns / 1ps
`include "full_adder.v"

module tb_full_adder;

reg a,b,cin;
wire x,y,z;
wire sum,cout;

full_adder ans(a,b,cin,sum,cout);

initial 
	begin
	$monitor("a=%b b=%b cin=%b | sum=%b cout=%b",a,b,cin,sum,cout);
	end

initial 
	begin
	#0 a=1'b0; b=1'b0; cin=1'b0; 
	#1 a=1'b0; b=1'b0; cin=1'b1;
	#2 a=1'b0; b=1'b1; cin=1'b0;
	#3 a=1'b0; b=1'b1; cin=1'b1;
	#4 a=1'b1; b=1'b0; cin=1'b0;
	#5 a=1'b1; b=1'b0; cin=1'b1;
	#6 a=1'b1; b=1'b1; cin=1'b0;
	#7 a=1'b1; b=1'b1; cin=1'b1;
	end
endmodule