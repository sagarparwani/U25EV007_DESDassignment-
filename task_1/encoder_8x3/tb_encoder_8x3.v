module tb_encoder;

reg [7:0] s;
wire [2:0] y;

encoder_8x3 uut(
    .s(s),
    .y(y)
);

initial begin

    s=8'b00000001; #10;
    s=8'b00000010; #10;
    s=8'b00000100; #10;
    s=8'b00001000; #10;
    s=8'b00010000; #10;
    s=8'b00100000; #10;
    s=8'b01000000; #10;
    s=8'b10000000; #10;

    $finish;
end
endmodule