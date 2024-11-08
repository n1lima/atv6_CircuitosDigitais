`timescale 1ns/1ns
`include "contador_assincrono_4bits.v" 
module contador_assincrono_4bits_tb#(parameter N = 4);

    reg CK, PR, CLR;     
    wire [N-1:0] Q;    
   
   contador_assincrono_4bits uut (CK, PR, CLR, Q);

    initial begin
        $dumpfile("contador_assincrono_4bits_tb.vcd"); 
        $dumpvars(0, contador_assincrono_4bits_tb);     

        PR = 1; CLR = 0; #20;  
        PR = 1; CLR = 1; #320;             
     

        $display("Teste completo");                
        $finish;             
    end

    initial begin
            CK = 0;
            forever #10 CK = ~CK; 
    end

endmodule
