module tb_mux_nx1;

reg [7:0] s;
reg [2:0] sel;
wire y;

mux_nx1 #(8) uut(
    .s(s),
    .sel(sel),
    .y(y)
);

initial begin
    s=8'b10101010;
    sel=3'b000; #10;
    sel=3'b001; #10;
    sel=3'b010; #10;
    sel=3'b011; #10;
    sel=3'b100; #10;
    sel=3'b101; #10;
    sel=3'b110; #10;
    sel=3'b111; #10;

    $finish;


end
endmodule
