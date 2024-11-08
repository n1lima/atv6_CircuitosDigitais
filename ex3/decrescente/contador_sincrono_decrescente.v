module contador_sincrono_decrescente(CK, CLR, Q);
    input wire CK;      // Clock
    input wire CLR;   // Reset assíncrono
    output reg [5:0] Q;  // Saída de 6 bits para contagem de 35 a 10


    always @(negedge CK or posedge CLR) begin
        if (CLR)
            Q <= 6'd35;      // Define o contador no valor inicial 35
        else if (Q > 6'd10)
            Q <= Q - 1;      // Decrementa o contador
        else
            Q <= 6'd35;      // Reinicia para 35 quando atingir 10
    end
endmodule
