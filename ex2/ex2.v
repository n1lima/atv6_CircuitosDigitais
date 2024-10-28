`include "borda_subida.v"

module ex2(CK, T, PR, CLR, Q);

    input T, CK, PR, CLR;
    output [3:0] Q;

    ex2 ff1(T,CLK,PR,CLR,Q[0]);
    ex2 ff2(Q[0],CLK,PR,CLR,Q[1]);
    ex2 ff3(Q[1],CLK,PR,CLR,Q[2]);
    ex2 ff4(Q[2],CLK,PR,CLR,Q[3]);

endmodule