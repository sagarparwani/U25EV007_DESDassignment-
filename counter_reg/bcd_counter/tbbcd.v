module tbbcd;

reg clk,rst;
wire z3,z2,z1,z0;

bcd uut(.clk(clk), .rst(rst), .z3(z3), .z2(z2), .z1(z1), .z0(z0));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    #12; rst=0;
    #100;
    $finish;
end
endmodule