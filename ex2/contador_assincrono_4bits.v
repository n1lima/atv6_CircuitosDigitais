`include "borda_subida.v"  

module contador_assincrono_4bits(CK, PR, CLR, Q);
    input CK;              
    input PR, CLR;          
    output [3:0] Q;         

    borda_subida ff1(1'b1, 1'b1, CK,   PR, CLR, Q[0]);
    borda_subida ff2(1'b1, 1'b1, Q[0], PR, CLR, Q[1]);
    borda_subida ff3(1'b1, 1'b1, Q[1], PR, CLR, Q[2]);
    borda_subida ff4(1'b1, 1'b1, Q[2], PR, CLR, Q[3]);

endmodule
