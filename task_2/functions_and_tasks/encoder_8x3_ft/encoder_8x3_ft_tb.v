module encoder_8x3_ft_tb;

     reg [7:0] in;
     wire [2:0] outp;

     encoder_8x3_ft uut(
        .in(in),
        .outp(outp)
     );

     initial begin
    in=8'b00000001; #10;
    in=8'b00000010; #10;
    in=8'b00000100; #10;
    in=8'b00001000; #10;
    in=8'b00010000; #10;
    in=8'b00100000; #10;
    in=8'b01000000; #10;
    in=8'b10000000; #10;
    $finish;
     end
     endmodule