`include "jk_ff.v"

module d_ff (
    input wire D,      // Entrada D
    input wire CLK,    // Sinal de clock
    input wire PR,     // Preload (ativo em nível lógico zero)
    input wire CLR,    // Clear (ativo em nível lógico zero)
    output  Q,      // Saída Q
    output  Qn      // Saída Q complementada
);

    jk_ff uut    (
        .J(D),
        .K(~D),
        .CLK(CLK),
        .PR(PR),
        .CLR(CLR),
        .Q(Q),
        .Qn(Qn)
    );

endmodule
