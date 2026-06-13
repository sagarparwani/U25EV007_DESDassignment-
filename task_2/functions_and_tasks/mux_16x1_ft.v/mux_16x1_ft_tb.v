module mux_16x1_ft_tb;
     reg [15:0] s;
     reg [3:0] sel;
     wire out;

    mux_16x1_ft uut(
        .s(s),
        .sel(sel),
        .out(out)
    );

    initial begin
        s=16'b1010101010101010;
        sel=4'b0000; #10;
        sel=4'b0001; #10;
        sel=4'b0010; #10;
        sel=4'b0011; #10;
        sel=4'b0100; #10;
        sel=4'b0101; #10;
        sel=4'b0110; #10;
        sel=4'b0111; #10;
        sel=4'b1000; #10;
        sel=4'b1001; #10;
        sel=4'b1010; #10;
        sel=4'b1011; #10;
        sel=4'b1100; #10;
        sel=4'b1101; #10;
        sel=4'b1110; #10;
        sel=4'b1111; #10;
    $finish;
    end

endmodule
