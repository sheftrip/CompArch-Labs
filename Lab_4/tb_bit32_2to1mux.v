
`include "bit32_2to1mux.v"           //mux_2to1_32bit( outp, inp1, inp2, sel )
module tb_bit32_2to1mux();

    reg [31:0] inp1, inp2;
    reg sel;
    wire [31:0] outp;

    bit32_2to1mux mx(outp, sel, inp1, inp2);

    initial begin
        $monitor(" inp1: %b ", inp1, " inp2: %b ", inp2," sel: ",sel, " outp: %b ",outp);
    end
    
    initial begin
        inp1 = 32'b00000000000000000000000000000000;
        inp2 = 32'b11111111111111111111111111111111;
        
        sel = 1'b0;
        #100 sel = 1'b1;
        #1000 $finish;
    end

endmodule