`include "FA_dataflow_32.v"

module tb_FA_dataflow_32;

reg [31:0] In1,In2;
reg Cin;
wire [31:0] Sum;
wire Cout;

FA_dataflow_32 ans(Cout,Sum,In1,In2,Cin);

initial
	begin
	$monitor("%d + %d + (%d)= %d + (%d)", In1,In2,Cin, Sum, Cout);
	end

initial 
	begin
	In1=32'hA5A5;
 	In2=32'h5A5A;
 	Cin=1'b0;
 	end
 endmodule