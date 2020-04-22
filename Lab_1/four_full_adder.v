`timescale 1ns / 1ps
`include "df_full_adder.v"

module four_full_adder(a,b,cin,s,cout);

input [3:0] a,b;
input cin;
output [3:0] s;
output cout;

wire [2:0] c;

df_full_adder sum0(a[0],b[0],cin,s[0],c[0]);
df_full_adder sum1(a[1],b[1],c[0],s[1],c[1]);
df_full_adder sum2(a[2],b[2],c[1],s[2],c[2]);
df_full_adder sum3(a[3],b[3],c[2],s[3],cout);

endmodule