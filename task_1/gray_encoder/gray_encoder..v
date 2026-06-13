module gray_encoder(
    input wire [3:0] s,
    output wire [3:0] y
);

assign y = s ^ (s>>1);
endmodule