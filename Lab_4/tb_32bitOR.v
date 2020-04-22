`include "bit32OR.v"

module tb_bit32OR;
 reg [31:0] IN1,IN2;
 wire [31:0] OUT;
 bit32OR a1 (OUT,IN1,IN2);
 intial 
 	begin
 	$monitor("%d + %d = %d", IN1,IN2,OUT);
 initial
 begin
 IN1=32'hA5A5;
 IN2=32'h5A5A;
 #100 IN1=32'h5A5A;
 #400 $finish;
 end
endmodule
