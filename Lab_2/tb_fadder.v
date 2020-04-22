`timescale 1ns / 1ps
`include "fadder.v"

module tb_fadder;

reg a,b,cin;
wire s,cout;

fadder ans(a,b,cin,s,cout);

initial
	 begin
	 $monitor("a=%b b=%b cin=%b | s=%b cout=%b",a,b,cin,s,cout);
	 end

initial
 begin
 #0 a=1'b0;b=1'b0;cin=1'b0;
 #4 a=1'b1;b=1'b0;cin=1'b0;
 #4 a=1'b0;b=1'b1;cin=1'b0;
 #4 a=1'b1;b=1'b1;cin=1'b0;
 #4 a=1'b0;b=1'b0;cin=1'b1;
 #4 a=1'b1;b=1'b0;cin=1'b1;
 #4 a=1'b0;b=1'b1;cin=1'b1;
 #4 a=1'b1;b=1'b1;cin=1'b1;
 end
endmodule