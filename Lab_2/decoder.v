`timescale 1ns / 1ps

module decoder(x,y,z,d);

input x,y,z;
output [7:0] d;
wire nx,ny,nz;

not(nx,x);
not(ny,y);
not(nz,z);

and(d[0],nx,ny,nz);
and(d[1],nx,ny,z);
and(d[2],nx,y,nz);
and(d[3],nx,y,z);
and(d[4],x,ny,nz);
and(d[5],x,ny,z);
and(d[6],x,y,nz);
and(d[7],x,y,z);

endmodule
