`include "borda_subida.v"  

module contador_assincrono_4bits#(parameter N = 4)(CK, PR, CLR, Q);             
    input CK, PR, CLR;          
    output [N-1:0] Q;         

    borda_subida ff1(CK, 1'b1, 1'b1, PR, CLR, Q[0]);
    borda_subida ff2(Q[0], 1'b1, 1'b1, PR, CLR, Q[1]);
    borda_subida ff3(Q[1], 1'b1, 1'b1, PR, CLR, Q[2]);
    borda_subida ff4(Q[2], 1'b1, 1'b1, PR, CLR, Q[3]);

endmodule
