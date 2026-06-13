module tb_priority_encoder;

reg [3:0] s;
wire [1:0] y;

priority_encoder uut(
    .s(s),
    .y(y)
);

initial begin

    s=4'b0000; #10;
    s=4'b0001; #10;
    s=4'b0010; #10;
    s=4'b0100; #10;
    s=4'b1000; #10;
    s=4'b1111; #10;
    s=4'b1110; #10;
    s=4'b1100; #10;
     $finish;
end
endmodule