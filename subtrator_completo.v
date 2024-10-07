module subtrator_completo(A, B, S, C_in, C_out);

    input A, B,C_in;
    output S, C_out;

    assign S = A^B^C_in;
    assign C_out = (~A & B) | (~A & C_in) | (B & C_in)

endmodule