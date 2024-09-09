module amplificador(A, B, C, SA, SB, SC);

    input A, B, C;
    output SA, SB, SC;

    assign SA = A;
    assign SB = ~A & B;
    assign SC = ~A & ~B & C;
    

endmodule