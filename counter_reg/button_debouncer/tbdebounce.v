module tbdebounce;

reg clk,rst,in;
wire out;

bdeb uut(.clk(clk), .rst(rst), .in(in), .out(out));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1; #12;
    rst=0;

    in=0;

    #100; in=1;
    #100; in=0;

#50 in=1;
#10000050;

$finish;
end

endmodule