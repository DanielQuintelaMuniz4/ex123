module mux(d, s, y);

    input [3:0] d;
    input [1:0] s;
    output y;

    assign y = (d[0] & ~s[0] & ~s[1]) |  (d[1] & ~s[1] & s[0]) | (d[2] & s[1] & ~s[0]) | (d[3] & s[0] & s[1]);
endmodule