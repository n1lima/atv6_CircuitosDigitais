`timescale 1ns/1ns
`include "ex2.v"

module ex2_tb;

    reg D, CLK, PR, CLR;
    wire [3:0] Q;

    ex2 uut (D, CLK, PR, CLR, Q);

    initial begin
        $dumpfile("ex1_tb.vcd");
        $dumpvars(0, ex2_tb);

        PR = 1; CLR = 0; #30
        CLR = 1; #30
        D = 1; #100
       
        $finish;
        $display("Teste completo");
    end

    initial begin
            CLK = 0;
            forever #10 CLK = ~ CLK;
    end
endmodule
