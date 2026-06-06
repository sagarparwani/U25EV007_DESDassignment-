module tb_dec;

reg [1:0] s;
wire [3:0] y;

decoder_2x4 uut(
    .s(s),
    .y(y)
);
 
 initial begin

    s=2'b00;  #10;
    s=2'b01;  #10;
    s=2'b10;  #10;
    s=2'b11;  #10;

    $finish;
    end
endmodule
