`include "ex2.v"

module ex1(D, CLK, PR, CLR, Q);

    input D, CLK, PR, CLR;
    output [3:0]  Q;

    ex2 ff1(D,CLK,PR,CLR,Q[3]);
    ex2 ff2(Q[3],CLK,PR,CLR,Q[2]);
    ex2 ff3(Q[2],CLK,PR,CLR,Q[1]);
    ex2 ff4(Q[1],CLK,PR,CLR,Q[0]);

endmodule