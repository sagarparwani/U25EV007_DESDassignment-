module tb_dec;

reg [2:0] s;
wire [7:0] y;

decoder_3x8 uut(
    .s(s),
    .y(y)
);
 
 initial begin

    s=3'b000;  #10;
    s=3'b001;  #10;
    s=3'b010;  #10;
    s=3'b011;  #10;
    s=3'b100;  #10;
    s=3'b101;  #10;
    s=3'b110;  #10;
    s=3'b111;  #10;


    $finish;
    end
endmodule
