`timescale 1ns/1ns
`include "ex1.v"

module ex1_tb;

    reg A, B;
    wire SA, SB;
    semaforo uut(A, B, SA, SB);

    initial begin
        $dumpfile("ex1.vcd");
        $dumpvars(0, ex1_tb);

        A = 0; B = 0; #20;
        A = 0; B = 1; #20;
        A = 1; B = 0; #20;
        A = 1; B = 1; #20;

        $display("Teste completo");
    end

endmodule