module semaforo(A, B, SA, SB);

    input A, B;
    output SA, SB;

    assign SA = A;
    assign SB = ~A;

endmodule