module bh_comp(a,b,altb,agtb,aeqb);

input[3:0] a,b;
output altb,agtb,aeqb;
reg altb,agtb,aeqb;
always @(a or b)
	begin
		if(a<b)
			begin
			altb=1;
			agtb=0;
			aeqb=0;
			end
		else if(a>b)
			begin
			altb=0;
			agtb=1;
			aeqb=0;
			end
		else
			begin
			altb=0;
			agtb=0;
			aeqb=1;
			end
	end


endmodule