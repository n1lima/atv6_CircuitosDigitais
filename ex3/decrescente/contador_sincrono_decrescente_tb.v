`timescale 1ns/1ns
`include "contador_sincrono_decrescente.v" 

module contador_sincrono_decrescente_tb;
    reg CK, CLR;
    wire [5:0] Q;

    contador_sincrono_decrescente uut (CK, CLR, Q);

    initial begin
        $dumpfile("contador_sincrono_decrescente_tb.vcd"); 
        $dumpvars(0, contador_sincrono_decrescente_tb); 

        CLR = 1; #15;
        CLR = 0; #400;
        CLR = 1; #10;
        CLR = 0; #100;

        $display("Teste completo");                
        $finish;             
               
    end

    initial begin
        CK = 0;
        forever #10 CK = ~CK;  
    end
endmodule
