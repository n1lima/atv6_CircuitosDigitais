module contador_sincrono_crescente(CK, CLR, Q);
    input wire CK;    
    input wire CLR;    
    output reg [3:0] Q;  

    always @(posedge CK or posedge CLR) begin
        if (CLR)
            Q <= 4'b0000;      
        else
            Q <= Q + 1;         
    end
endmodule
