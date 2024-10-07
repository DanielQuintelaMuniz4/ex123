`include "meio_somador.v"
`include "somador_completo.v"

module somador_8bits(A,B,S);
    input[7:0] A, B;
    output[8:0] S;
    wire[6:0] C;

meio_somador u1(A[0],B[0],S[0],C[0]);
somador_completo u2(A[1],B[1],C[0],S[1],C[1]);
somador_completo u3(A[2],B[2],C[1],S[2],C[2]);
somador_completo u4(A[3],B[3],C[2],S[3],C[3]);
somador_completo u5(A[4],B[4],C[3],S[4],C[4]);
somador_completo u6(A[5],B[5],C[4],S[5],C[5]);
somador_completo u7(A[6],B[6],C[5],S[6],C[6]);
somador_completo u8(A[7],B[7],C[6],S[7],S[8]);

endmodule