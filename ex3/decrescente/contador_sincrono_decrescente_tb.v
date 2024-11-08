`timescale 1ns/1ns
`include "contador_sincrono_decrescente.v" 

module contador_sincrono_decrescente_tb;
    reg CK, CLR;
    wire [5:0] Q;

    // Instancia o contador
    contador_sincrono_decrescente uut (CK, CLR, Q);

    // Sinais de reset e teste
    initial begin
        $dumpfile("contador_sincrono_decrescente_tb.vcd"); 
        $dumpvars(0, contador_sincrono_decrescente_tb); 

        CLR = 1;
        #15 CLR = 0;            // Libera o reset após 15 unidades de tempo

        // Testa a contagem por um tempo
        #400;
        CLR = 1;                // Aplica reset novamente
        #10 CLR = 0;

        #100;
        $display("Teste completo");                
        $finish;             
               
    end

    // Geração de clock
    initial begin
        CK = 0;
        forever #10 CK = ~CK;  // Clock com período de 20 unidades de tempo
    end
endmodule
