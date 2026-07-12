module tbs;

wire [3:0] q;
reg clk,rst,m;

scount #(.N(4)) uut(
    .q(q), .clk(clk), .rst(rst), .m(m)
);

initial begin
    clk =0;
    forever #5 clk=~clk;
end

initial begin
    rst = 1; #12;
    rst=0;
end

initial begin
    m=1; #100;
    m=0; #100
    $finish;
end

endmodule