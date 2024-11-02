`timescale 1ns/1ns
`include "contador_assincrono_4bits.v" 
module contador_assincrono_4bits_tb;

    reg CLK;         
    reg PR, CLR;     
    wire [3:0] Q;    
   
   contador_assincrono_4bits uut (CLK, PR, CLR, Q);

    initial begin
        $dumpfile("contador_assincrono_4bits_tb.vcd"); 
        $dumpvars(0, contador_assincrono_4bits_tb);     

       PR = 1; CLR = 0; #30 
       CLR = 1; #100
       CLR = 0; #20 
       CLR = 1; #100
                        
        $finish;            
        $display("Teste completo");
    end

    initial begin
        CLK = 0;
        forever #10 CLK = ~CLK; 
    end

endmodule
