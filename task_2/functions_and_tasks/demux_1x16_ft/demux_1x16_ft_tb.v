module demux_1x16_ft_tb;

    reg in;
    reg [3:0] sel;
    wire [15:0] out;

    demux_1x16_ft uut(
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin 
        in=1'b1;
        sel=4'd0; #10;
        sel=4'd1; #10;
        sel=4'd2; #10;
        sel=4'd3; #10;
        sel=4'd4; #10;
        sel=4'd5; #10;
        sel=4'd6; #10;
        sel=4'd7; #10;
        sel=4'd8; #10;
        sel=4'd9; #10;
        sel=4'd10; #10;
        sel=4'd11; #10;
        sel=4'd12; #10;
        sel=4'd13; #10;
        sel=4'd14; #10;
        sel=4'd15; #10;
        $finish;
    end

endmodule
