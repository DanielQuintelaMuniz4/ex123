`timescale 1ns/1ns
`include "mux3.v"

module mux3_tb;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;
    mux teste(D,S,Y);
    initial begin
        $dumpfile("mux3.vcd");
        $dumpvars(0, mux3_tb);

        D = 4'b0101;
        
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste completo");
    end

endmodule