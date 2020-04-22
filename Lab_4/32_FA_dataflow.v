`timescale 1ns / 1ps
`include "FA_dataflow.v"

module FA_dataflow_32(Cout,Sum,In1,In2,Cin);

input [31:0] In1,In2;
input Cin;
output Sum[31:0];
output cout;
wire [30:0] c;
genvar j;

FA_dataflow f0(c[0],Sum[0],In1[0],In2[0],Cin);

generate for(j=1;j<31;j=j+1) 
	begin: add_loop
	FA_dataflow f1(c[j],Sum[j],In1[j],In2[j],c[j-1]);
	end
endgenerate

FA_dataflow f2(Cout,Sum[31],In1[31],In2[31],c[30]);

endmodule

