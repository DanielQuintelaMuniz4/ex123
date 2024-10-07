`timescale 1ns/1ns
`include "somador_8bits.v"

module somador_8bits_tb;

    reg [7:0] A, B;
    wire [8:0] S;
    somador_8bits uut(A, B, S);

    initial begin
        $dumpfile("somador_8bits.vcd");
        $dumpvars(0, somador_8bits_tb);
        A = 8'd78; B =8'd42; #10;
        A = 8'd3; B =8'd2; #10;
        A = 8'd65; B =8'd24; #10
        A = 8'd39; B =8'd16; #10

           $display("Teste completo");
    end

    endmodule