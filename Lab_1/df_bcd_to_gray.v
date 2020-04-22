module df_bcd_to_gray(b,g3,g2,g1,g0);
//wire x;
input [3:0] b;
output g3,g2,g1,g0;

assign g3=b[3];
assign g2= b[3]|b[2];
assign g1= b[2]^b[1];
assign g0= b[1]^b[0];

endmodule