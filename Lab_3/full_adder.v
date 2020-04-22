`timescale 1ns / 1ps
module full_adder(a,b,cin,sum,cout);

input a,b,cin;
output reg sum,cout;
reg t1,t2,t3;

//wire x,u,v,w;


/* 
and(v,b,cin);
and(w,a,cin);
and(u,a,b);
or(cout,u,v,w);
xor(x,a,b);
xor(sum,x,cin);
*/

initial 
	begin
	sum<=0;
	cout<=0;
	end

always@(*)
	begin
	sum<= (a^b)^cin;
	t1<= a & b;
	t2<= b & cin;
	t3<= a & cin;
	cout<= (t1 | t2 )| t3;
	end 

endmodule