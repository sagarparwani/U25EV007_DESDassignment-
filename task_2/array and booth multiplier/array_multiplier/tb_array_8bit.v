module tb_array_8bit;

reg [7:0] a,b;
wire [15:0] out;

array_multiplier #(8) uut(.a(a), .b(b), .out(out));

initial begin
    a=8'b11110000;
    b=8'b11111111; #10;
    b=8'b00000000; #10;
    b=8'b10101010; #10;
    b=8'b01010101; #10;
    $finish;
end

endmodule