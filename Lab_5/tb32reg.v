`include "reg_32bit.v"

module tb32reg;

reg [31:0] d;
reg clk,reset;
wire [31:0] q;

reg_32bit R(q,d,clk,reset);

initial
        $monitor("D = %d ", d, "Q = %d ",q," time = ", $time);

always @(clk)
	#5 clk<=~clk;

initial
	begin
	clk= 1'b1;
	reset=1'b0;//reset the register
	#20 reset=1'b1;
	#20 d=32'hAFAFAFAF;
	#200 $finish;
	end

endmodule