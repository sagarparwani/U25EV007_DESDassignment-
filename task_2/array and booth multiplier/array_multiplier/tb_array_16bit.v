module tb_array_16bit;

reg [15:0] a,b;
wire [31:0] out;

array_multiplier #(16) uut(.a(a), .b(b), .out(out));

initial begin
    a=16'b1111111100000000;
    b=16'b1111111111111111; #10;
    b=16'b0000000000000000; #10;
    b=16'b1010101010101010; #10;
    b=16'b0101010101010101; #10;
    $finish;
end

endmodule