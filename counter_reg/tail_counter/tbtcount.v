module tbtcount;

wire [3:0] q;
reg clk,rst;

tcount #(.N(4)) uut(
    .q(q), .clk(clk), .rst(rst)
);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    #12; rst=0;
    #100; $finish;
end

endmodule
