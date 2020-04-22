
`timescale 1ns / 1ps
`include "df_bcd_to_gray.v"

module tb_bcd_to_gray;

reg [0:3] b;
wire g3,g2,g1,g0;

df_bcd_to_gray ans(b,g3,g2,g1,g0);

initial
	begin
	$monitor("b=%b | g=%1b%1b%1b%1b", b,g3,g2,g1,g0 );
	end

initial
	begin
	#0 b=4'b0000;
	#5 b=4'b0001;
	#10 b=4'b0010; 
	#15 b=4'b0011;
	#20 b=4'b0100;
	#25 b=4'b0101;
	#30 b=4'b0110;
	#35 b=4'b0111;
	#40 b=4'b1000;
	#45 b=4'b1001;
	end
endmodule