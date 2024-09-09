module sistemaseguranca(P, W, M, S, A);

    input P, W, M, S;
    output A;

    assign A = (P & S) | (W & S) | M;


endmodule