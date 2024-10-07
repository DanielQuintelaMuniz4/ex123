module somador_completo(A, B, C_in, S, C_out);

    input A, B,C_in;
    output S, C_out;

    assign S = A^B^C_in;
    assign C_out = (B & C_in) | (A & C_in) | (A & B);

endmodule