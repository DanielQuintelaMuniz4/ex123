`timescale 1ns / 1ps
`include "d_ff.v"
module d_ff_tb;

    // Declaração de sinais
    reg D;
    reg CLK;
    reg PR;
    reg CLR;
    wire Q;
    wire Qn;

    // Instancia o módulo d_ff
    d_ff uut (
        .D(D),
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
        D = 0; PR = 0; CLR = 0;

        // Inicia o dump para o arquivo VCD
        $dumpfile("d_ff_tb.vcd");
        $dumpvars(0, d_ff_tb);

        // Teste com CLR e PR
        #10; 
        CLR = 1; // Ativa o Clear
        #10;
        CLR = 0; // Desativa o Clear
        #10;

        // Teste com PR
        PR = 1; // Ativa o Preload
        #10;
        PR = 0; // Desativa o Preload
        #10;

        // Teste da entrada D
        D = 1; // Define D como 1
        #10; // Espera um ciclo de clock

        D = 0; // Define D como 0
        #10; // Espera um ciclo de clock

        // Finaliza a simulação
        $finish;
    end

    // Monitoramento das saídas
    initial begin
        $monitor("Time = %0dns | D = %b | PR = %b | CLR = %b | Q = %b | Qn = %b", 
                 $time, D, PR, CLR, Q, Qn);
    end

endmodule
