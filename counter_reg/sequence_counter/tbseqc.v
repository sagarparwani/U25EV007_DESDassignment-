module tbseqc;
reg clk,rst;
wire [7:0] z;

seqc uut(.clk(clk), .rst(rst), .z(z));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    #12 rst=0;
    #100;
    $finish;
end

endmodule

