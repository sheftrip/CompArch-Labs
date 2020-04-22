`timescale 1ns / 1ps
module comp(a,b,altb,agtb,aeqb);

input [3:0] a,b;
output altb,agtb,aeqb;

wire na3,na2,na1,na0,nb3,nb2,nb1,nb0,ana3b3,aa3nb3,ana2b2,aa2nb2,ana1b1,aa1nb1,ana0b0,aa0nb0,x3,x2,x1,x0,a1,a2,a3,a4,a5,a6;

not(na3,a[3]);
not(na2,a[2]);
not(na1,a[1]);
not(na0,a[0]);
not(nb3,b[3]);
not(nb2,b[2]);
not(nb1,b[1]);
not(nb0,b[0]);

and(ana3b3,na3,b[3]);
and(aa3nb3,a[3],nb3);
and(ana2b2,na2,b[2]);
and(aa2nb2,a[2],nb2);
and(ana1b1,na1,b[1]);
and(aa1nb1,a[1],nb1);
and(ana0b0,na0,b[0]);
and(aa0nb0,a[0],nb0);

nor(x3,ana3b3,aa3nb3);
nor(x2,ana2b2,aa2nb2);
nor(x1,ana1b1,aa1nb1);
nor(x0,ana0b0,aa0nb0);

and(a1,x3,ana2b2);
and(a2,x3,aa2nb2);
and(a3,x3,x2,ana1b1);
and(a4,x3,x2,aa1nb1);
and(a5,x3,x2,x1,ana0b0);
and(a6,x3,x2,x1,aa0nb0);


and(aeqb,x3,x2,x1,x0);

or(altb,ana3b3,a1,a3,a5);

or(agtb,aa3nb3,a2,a4,a6);

endmodule
