
`timescale 1ns / 1ps

module bcd_to_gray(b,g3,g2,g1,g0);
//wire x;
input [3:0] b;
output g3,g2,g1,g0;
and(g3,b[3],1'b1);
or(g2,b[3],b[2]);
xor(g1,b[2],b[1]);
xor(g0,b[1],b[0]);
endmodule
