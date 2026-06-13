module tb_demux_1xn;

reg s;
reg [2:0] sel;
wire [7:0] y;

demux_1xn #(8) uut(
    .s(s),
    .sel(sel),
    .y(y)
);

initial begin
    s=1;
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