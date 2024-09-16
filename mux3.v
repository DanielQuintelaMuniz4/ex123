module mux(d, s, y);

    input [3:0] d;
    input [1:0] s;
    output y;

    wire n_s0, n_s1, y1, y2, y3, y4;

    not(n_s0, s[0]);
    not(n_s1, s[1]);

    and(y1, n_s1, n_s0, d[0]);

    and(y2, s[0], n_s1, d[1]);

    and(y3, n_s0, s[1], d[2]);

    and(y4, s[1], s[0], d[3]);


    or(y, y1, y2, y3, y4);

endmodule