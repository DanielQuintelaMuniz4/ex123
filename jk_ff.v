module jk_ff (
    input wire J,      // Entrada J
    input wire K,      // Entrada K
    input wire CLK,    // Sinal de clock
    input wire PR,     // Preload (ativo em nível lógico zero)
    input wire CLR,    // Clear (ativo em nível lógico zero)
    output reg Q,      // Saída Q
    output reg Qn      // Saída Q complementada
);

// Sempre que houver uma borda de subida no CLK
always @(posedge CLK or negedge PR or negedge CLR) begin
    if (!CLR) begin
        Q <= 0;      // Se CLR é ativado, Q é resetado para 0
    end else if (!PR) begin
        Q <= 1;      // Se PR é ativado, Q é setado para 1
    end else begin
        case ({J, K})
            2'b00: Q <= Q;      // Sem alteração
            2'b01: Q <= 0;      // Reset
            2'b10: Q <= 1;      // Set
            2'b11: Q <= ~Q;     // Toggle
        endcase
    end
end

// Saída complementada
always @(*) begin
    Qn = ~Q;
end

endmodule
