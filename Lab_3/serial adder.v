`timescale 1ns / 1ps
`include "full_adder.v"
`include "shiftreg.v"
`include "dflipflop.v"

module seq_detector(addend,augend,sum,clk,en,clr);

input [3:0] addend,augend;
input clk,clr,en;
reg cin;
reg cout;
output reg sum;
integer i;

initial
	begin 
	cin<=1'b0;
	i=0
	end

always@(posedge clk)
	begin
		full_adder(addend[i],augend[i],cin,sum,cout);
		


