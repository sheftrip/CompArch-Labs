`timescale 1ns / 1ps

module df_comp(a,b,altb,agtb,aeqb);

input[3:0] a,b;
output altb,agtb,aeqb;

assign altb=(a<b)?1:0;
assign aeqb=(a==b)?1:0;
assign agtb=(a>b)?1:0;


endmodule