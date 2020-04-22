`timescale 1ns / 1ps
`include "decoder.v"

module fadder(a,b,cin,s,cout);

input a,b,cin;
wire[7:0] d;
output s,cout;

decoder dec(a,b,cin,d);

assign s= d[1] | d[2] | d[4] | d[7];
assign cout= d[3] | d[5] | d[6] | d[7];

endmodule