`timescale 1ns/1ns
`include "ex3.v"

module ex3_tb;

    reg P, W, M, S;
    wire A;
    sistemaseguranca uut(P, W, M, S, A);

    initial begin
        $dumpfile("ex3.vcd");
        $dumpvars(0, ex3_tb);

        P = 0; W = 0; M = 0; S = 0; #20;
        P = 0; W = 1; M = 0; S = 0; #20;
        P = 1; W = 0; M = 0; S = 0; #20;
        P = 1; W = 1; M = 0; S = 0; #20;
        P = 0; W = 0; M = 1; S = 0; #20;
        P = 0; W = 1; M = 1; S = 0; #20;
        P = 1; W = 0; M = 1; S = 0; #20;
        P = 1; W = 1; M = 1; S = 0; #20;
        P = 0; W = 0; M = 0; S = 1; #20;
        P = 0; W = 1; M = 0; S = 1; #20;
        P = 1; W = 0; M = 0; S = 1; #20;
        P = 1; W = 1; M = 0; S = 1; #20;
        P = 0; W = 0; M = 1; S = 1; #20;
        P = 0; W = 1; M = 1; S = 1; #20;
        P = 1; W = 0; M = 1; S = 1; #20;
        P = 1; W = 1; M = 1; S = 1; #20;

        $display("Teste completo");
    end

endmodule