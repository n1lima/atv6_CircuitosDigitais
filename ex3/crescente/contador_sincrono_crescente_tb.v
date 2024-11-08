`timescale 1ns/1ns
`include "contador_sincrono_crescente.v" 

module contador_sincrono_crescente_tb;
    reg CK, CLR;
    wire [3:0] Q;

    contador_sincrono_crescente uut (CK, CLR, Q);
 
    initial begin
        $dumpfile("contador_sincrono_crescente_tb.vcd"); 
        $dumpvars(0, contador_sincrono_crescente_tb); 

        CLR = 1; #15 
        CLR = 0; #200;
        CLR = 1; #10 
        CLR = 0; #100;

        $display("Teste completo");                
        $finish;
    end

    initial begin
        CK = 0;
        forever #10 CK = ~CK;  
    end

endmodule
