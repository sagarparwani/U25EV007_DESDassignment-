module tb_booth_multiplier_8bit;

reg signed [7:0] a,b;
wire signed [15:0] out;

booth_multiplier #(8) uut(.a(a), .b(b), .out(out));

initial begin
    a=8'b00010100; b=8'b00001100; #10;
    a=8'b11101100; b=8'b11110100; #10;
    a=8'b00010100; b=8'b11110100; #10;
    $finish;

end

endmodule