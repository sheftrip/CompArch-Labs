`include "RegFile.v"

module tb_RegFile;

reg clk,reset;
reg [1:0] ReadReg1,ReadReg2;
reg [1:0] WriteReg; 
reg RegWrite;
reg [31:0] WriteData;
wire [31:0] ReadData1,ReadData2;

RegFile ans(clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite,ReadData1,ReadData2);

initial
	$monitor("clk=%d",clk," reset=%d", reset, " ReadReg1=%d", ReadReg1," ReadReg2=%d",ReadReg2," WriteData=%d",WriteData," WriteReg=%d",WriteReg," RegWrite=%d",RegWrite," ReadData1=%d",ReadData1," ReadData2=%d",ReadData2);

always 
    #5 clk = ~clk;

initial
	begin
	clk = 0;
	reset = 1;
	#5 reset = 0;
	#5 reset=1;
	#20 RegWrite=1'b1; WriteReg=2'b11; WriteData=32'b0000_1100_0101_0000;
	#10 RegWrite=1'b0;ReadReg1=2'b11;
	#10 $finish; 
	end
endmodule

