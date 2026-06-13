module tb_bcd_encoder;

reg[9:0] s;
wire[3:0] y;

bcd_encoder uut(
    .s(s),
    .y(y)
);

initial begin
    s=10'b0000000001; #10;
    s=10'b0000000010; #10;
    s=10'b0000000100; #10;
    s=10'b0000001000; #10;
    s=10'b0000010000; #10;
    s=10'b0000100000; #10;
    s=10'b0001000000; #10;
    s=10'b0010000000; #10;
    s=10'b0100000000; #10;
    s=10'b1000000000; #10;

    $finish;
end
endmodule
