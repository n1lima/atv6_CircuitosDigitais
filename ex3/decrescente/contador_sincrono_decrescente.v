module contador_sincrono_decrescente(CK, CLR, Q);
    input wire CK;     
    input wire CLR;   
    output reg [5:0] Q;  


    always @(negedge CK or posedge CLR) begin
        if (CLR)
            Q <= 6'd35;      
        else if (Q > 6'd10)
            Q <= Q - 1;      
        else
            Q <= 6'd35;      
    end
endmodule
