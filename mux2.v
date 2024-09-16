module mux(d, s, y);

    input [3:0] d;
    input [1:0] s;
    output reg y;

    always @ (d or s) begin

        if (s == 2'b00)
            y =d[0];
        else if (s == 2'b01)
             y =d[1];
        else if (s == 2'b10)
             y =d[2];
         else 
             y =d[3];

    end
    
endmodule