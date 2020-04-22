`timescale 1ns / 1ps
`include "bit32_2to1mux.v"
`include "bit32AND.v"
`include "bit32OR.v"
`include "FA_dataflow_32.v"
`include "bit32_3to1mux.v"

module ALU  (a,b,Binvert,Carryin,Operation,Result,CarryOut);

input Binvert, Carryin;
input [1:0] Operation;
input [31:0] a,b;

output [31:0] Result;
output CarryOut;

wire [31:0] notb, bmuxout, andout,orout,sumout;

assign {notb} = ~b;

bit32_2to1mux m2(bmuxout,Binvert,b,notb);
bit32AND a1(andout,a,bmuxout);
bit32OR o1(orout,a,bmuxout);
FA_dataflow_32 faout(CarryOut,sumout,a,bmuxout,Carryin);
bit32_3to1mux m3(Result,Operation[1],Operation[0],andout,orout,sumout);

endmodule



