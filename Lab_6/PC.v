module PC(
	input [4:0] inp,
	input clk,
	output [4:0] outp);
		
		always @(posedge clk)	
			outp = inp;
		
endmodule