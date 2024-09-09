`timescale 1ns/1ns
`include "ex2.v"

module ex2_tb;

    reg A, B, C;
    wire SA, SB, SC;
    amplificador uut(A, B, C, SA, SB, SC);

    initial begin
        $dumpfile("ex2.vcd");
        $dumpvars(0, ex2_tb);

        A = 0; B = 0; C = 0; #20;
        A = 0; B = 1; C = 0; #20;
        A = 1; B = 0; C = 0; #20;
        A = 1; B = 1; C = 0; #20;
        A = 0; B = 0; C = 1; #20;
        A = 0; B = 1; C = 1; #20;
        A = 1; B = 0; C = 1; #20;
        A = 1; B = 1; C = 1; #20;

        $display("Teste completo");
    end

endmodule