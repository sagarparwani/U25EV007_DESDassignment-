module tb_encoder;
reg [3:0] s;
wire [1:0] y;

encoder_4x2 uut(
    .s(s),
    .y(y)
);

initial begin

s=4'b0001; #10;
s=4'b0010; #10;
s=4'b0100; #10;
s=4'b1000; #10;

$finish;
end

endmodule