`timescale 1ns / 1ps
`include "seq_detector.v"

module tb_seq_detector;

parameter n=16;
reg inp,clk,rst;
wire outp;
reg [n-1:0] sequence;

integer i;

seq_detector ans(inp,clk,rst,outp);

initial 
	begin
	clk=0;
	rst=1;
	sequence = 16'b0010110110010110;
	#5 rst=0;
	
	for(i=n-1;i>=0;i=i-1)
		begin
		inp=sequence[i];
		#2 clk=1;
		#2 clk=0;
		$display("State = ", ans.state, " Input = ", inp, " Output = ",outp);
		end
	end
endmodule

