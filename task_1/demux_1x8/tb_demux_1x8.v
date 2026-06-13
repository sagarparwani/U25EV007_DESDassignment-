module tb_demux_1x8;

reg d;
reg [2:0] sel;
wire [7:0] y;

demux_1x8 uut(
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin 

    d=0; sel=3'b000; #10;
    d=1; sel= 3'b000; #10;
    d=1; sel= 3'b001; #10;
    d=1; sel= 3'b010; #10;
    d=1; sel= 3'b011; #10;
    d=1; sel= 3'b100; #10;
    d=1; sel= 3'b101; #10;
    d=1; sel= 3'b110; #10;
    d=1; sel= 3'b111; #10;

    $finish;
end
endmodule