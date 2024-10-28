`timescale 1ns / 1ps
`include "jk_ff.v"
module jk_ff_tb;

    // Declaração de sinais
    reg J;
    reg K;
    reg CLK;
    reg PR;
    reg CLR;
    wire Q;
    wire Qn;

    // Instancia o módulo jk_ff
    jk_ff uut (
        .J(J),
        .K(K),
        .CLK(CLK),
        .PR(PR),
        .CLR(CLR),
        .Q(Q),
        .Qn(Qn)
    );

    // Geração do clock
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // Clock de 10ns de período
    end

    // Teste das entradas
    initial begin
        // Inicializa sinais
        J = 0; K = 0; PR = 1; CLR = 1;

        // Inicia o dump para o arquivo VCD
        $dumpfile("jk_ff_tb.vcd");  // Nome do arquivo VCD
        $dumpvars(0, jk_ff_tb);      // Dump de todas as variáveis do testbench

        // Teste com PR e CLR
        #10; 
        CLR = 0; // Ativa o Clear
        #10;
        CLR = 1; // Desativa o Clear
        #10;

        // Teste com PR
        PR = 0; // Ativa o Preload
        #10;
        PR = 1; // Desativa o Preload
        #10;

        // Teste das entradas J e K
        J = 0; K = 0; // Nenhuma alteração
        #10;

        J = 0; K = 1; // Reset
        #10;

        J = 1; K = 0; // Set
        #10;

        J = 1; K = 1; // Toggle
        #10;

        $finish;

    end

endmodule
