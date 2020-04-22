`timescale 1ns / 1ps
`include "fadder.v"

module eight_fadder(a,b,cin,s,cout);

input [7:0] a,b;
input cin;
output [7:0] s;
output cout;

wire [6:0] c

fadder f0(a[0],b[0],cin,s[0],c[0]);
fadder f1(a[1],b[1],c[0],s[1],c[1]);
fadder f2(a[2],b[2],c[1],s[2],c[2]);
fadder f3(a[3],b[3],c[2],s[3],c[3]);
fadder f4(a[4],b[4],c[3],s[4],c[4]);
fadder f5(a[5],b[5],c[4],s[5],c[5]);
fadder f6(a[6],b[6],c[5],s[6],c[6]);
fadder f7(a[7],b[7],c[6],s[7],cout);

endmodule
