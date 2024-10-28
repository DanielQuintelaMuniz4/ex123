module register_8bit (
    input wire [7:0] D,   // Entrada de 8 bits
    input wire CLK,       // Sinal de clock
    input wire CLR,       // Sinal de Clear (ativo alto)
    output reg [7:0] Q    // Saída de 8 bits
);

// Geração dos flip-flops individuais
genvar i; // Declaração da variável de geração

generate
    for (i = 0; i < 8; i = i + 1) begin : ff_gen
        always @(posedge CLK or posedge CLR) begin
            if (CLR) begin
                Q[i] <= 1'b0; // Reset para 0
            end else begin
                if (CLK) // O D[i] só é considerado na borda de subida
                    Q[i] <= D[i]; // Armazena o valor da entrada D
            end
        end
    end
endgenerate

endmodule
