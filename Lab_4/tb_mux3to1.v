 `include"mux3to1.v"

 module tb_mux3to1;

 reg in1,in2,in3,sel1,sel2;
 wire out;
 mux3to1 mx(out,sel1,sel2,in1,in2,in3);

 initial begin
        $monitor(" in1: %b",in1," in2: %b", in2," in3: %b", in3," sel1: %b", sel1," sel2:%b",sel2, " out: %b", out);
    end
    
    initial begin
        in1 = 1'b0;
        in2 = 1'b1;
        in3 = 1'b0;

        sel1 = 1'b0;
        sel2= 1'b0;
        #10 sel1 = 1'b0; sel2=1'b1;
        #100 sel1 = 1'b1; sel2=1'b0;
        #500 sel1 = 1'b1; sel2=1'b1;

        #1000 $finish;

    end

endmodule