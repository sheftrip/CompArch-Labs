`timescale 1ns / 1ps
`include "four_full_adder.v"

module adder_subtractor(a,b,k,s,cout);

input [3:0] a,b;
input k;
output [3:0] s;
output cout;
//wire [2:0] c;
wire[3:0] bnew;


xor(bnew[0],b[0],k);
xor(bnew[1],b[1],k);
xor(bnew[2],b[2],k);
xor(bnew[3],b[3],k);

four_full_adder ff(a,bnew,k,s,cout);

endmodule