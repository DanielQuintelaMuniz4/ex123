`timescale 1ns / 1ps
`include "register_8bit.v"

module register_8bit_tb;

    // Declaração de sinais
    reg [7:0] D;
    reg CLK;
    reg CLR;
    wire [7:0] Q;

    // Instancia o módulo register_8bit
    register_8bit uut (
        .D(D),
        .CLK(CLK),
        .CLR(CLR),
        .Q(Q)
    );

    // Geração do clock
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // Clock de 10ns de período
    end

    // Teste das entradas
    initial begin
        // Inicializa sinais
        D = 8'b00000000; 
        CLR = 0;

        // Inicia o dump para o arquivo VCD
        $dumpfile("register_8bit_tb.vcd");
        $dumpvars(0, register_8bit_tb);

        // Teste com CLR
        #10; 
        CLR = 1; // Ativa o Clear
        #10;
        CLR = 0; // Desativa o Clear
        #10;

        // Teste da entrada D
        D = 8'b10101010; // Define D
        #10; // Espera um ciclo de clock

        D = 8'b11110000; // Altera D
        #10; // Espera um ciclo de clock

        D = 8'b00001111; // Altera D novamente
        #10; // Espera um ciclo de clock

        // Finaliza a simulação
        $finish;
    end

    // Monitoramento das saídas
    initial begin
        $monitor("Time = %0dns | D = %b | CLR = %b | Q = %b", 
                 $time, D, CLR, Q);
    end

endmodule
