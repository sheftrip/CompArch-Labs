
`include "bit32_3to1mux.v"         //mux3to1_32bit( outp, inp1, inp2, inp3, sel )
module tb_bit32_3to1mux();

    reg [31:0] in1, in2, in3;
    reg sel1,sel2;
    wire [31:0] outp;

    bit32_3to1mux mx( outp, sel1,sel2, in1, in2, in3);
    
    initial begin
        $monitor(" in1: %b",in1," in2: %b", in2," in3: %b", in3," sel1: %b", sel1," sel2:%b",sel2, " out: %b", outp);
    end
    
    initial begin
        in1 = 32'b0;
        in2 = 32'b11111111111111111111111111111111;
        in3 = {16'b0, 16'b1111111111111111};

        sel1 = 1'b0;
        sel2= 1'b0;
        #10 sel1 = 1'b0; sel2=1'b1;
        #100 sel1 = 1'b1; sel2=1'b0;
        #500 sel1 = 1'b1; sel2=1'b1;

        #1000 $finish;

    end

endmodule