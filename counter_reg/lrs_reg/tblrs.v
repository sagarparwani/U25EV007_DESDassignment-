module tblrs;

reg rst,clk,d,m;
wire [3:0] qout;

lrs #(.N(4)) uut(.rst(rst), .clk(clk), .d(d), .m(m), .qout(qout));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1; #12;
    rst=0;
    
    m=0;
    d=1; #10;
    d=0; #10;
    d=1; #10;
    d=0; #10;

    m=1;
    d=1; #10;
    d=0; #10;
    d=1; #10;
    d=0; #10;
$finish;
end

endmodule

