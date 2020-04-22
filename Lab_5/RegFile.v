`include "decoder2_4.v"
`include "reg_32bit.v"
`include "mux4_1.v"


module RegFile(clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite,ReadData1,ReadData2);

input clk,reset;
input [1:0] ReadReg1,ReadReg2;
input [1:0] WriteReg; 
input RegWrite;
input [31:0] WriteData;
output [31:0] ReadData1,ReadData2;

genvar j;

wire [3:0] RegClk,decoderOut;
wire [3:0][31:0] regOut;


decoder2_4 d1(decoderOut,WriteReg);


generate for(j=0;j<4;j=j+1)
	begin: clkloop
	and a1(RegClk[j],clk,RegWrite,decoderOut[j]);
	end
endgenerate

generate for(j=0;j<4;j=j+1)
	begin: wrtloop
	reg_32bit r1(regOut[j],WriteData,RegClk[j],reset);
	end
endgenerate

mux4_1 m1(ReadData1,regOut[0],regOut[1],regOut[2],regOut[3],ReadReg1);
mux4_1 m2(ReadData2,regOut[0],regOut[1],regOut[2],regOut[3],ReadReg2);

endmodule

