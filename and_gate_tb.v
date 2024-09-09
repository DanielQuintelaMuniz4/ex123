`timescale 1ns/1ns
`include "and_gate.v"

module and_tb;

    reg A, B;
    wire S;
    and_gate uut(A, B, S);

    initial begin
        $dumpfile("and_tb.vcd");
        $dumpvars(0, and_tb);

        A = 0; B = 0; #20;
        A = 0; B = 1; #20;
        A = 1; B = 0; #20;
        A = 1; B = 1; #20;

        $display("Teste completo");
    end

endmodule