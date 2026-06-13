module tb_booth_multiplier_32bit;

reg signed [31:0] a,b;
wire signed [63:0] out;

booth_multiplier #(32) uut(.a(a), .b(b), .out(out));

initial begin
a = 32'h00000014; b = 32'h0000000C; #10; // +20 × +12 = 240
a = 32'hFFFFFFEC; b = 32'hFFFFFFF4; #10; // -20 × -12 = 240
a = 32'h00000014; b = 32'hFFFFFFF4; #10; // +20 × -12 = -240
a = 32'h7FFFFFFF; b = 32'h00000001; #10; // max positive × 1
a = 32'h80000000; b = 32'h00000001; #10; // min negative × 1
a = 32'h00000000; b = 32'hFFFFFFEC; #10; // 0 × -20 = 0
    $finish;

end

endmodule