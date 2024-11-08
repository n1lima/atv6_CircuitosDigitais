module borda_subida(J, K, CK, PR, CLR, Q);
    input J, K, CK, PR, CLR;
    output reg Q;

    always @(posedge CK or posedge CLR or posedge PR) begin
        if (CLR) 
            Q <= 1'b0; 
        else if (PR)
            Q <= 1'b1; 
        else begin
            case ({J, K})
                2'b00: Q <= Q;    
                2'b01: Q <= 1'b0; 
                2'b10: Q <= 1'b1; 
                2'b11: Q <= ~Q;   
            endcase
        end
    end
endmodule
