module tbsiso;

reg rst,clk,d;
wire qout;

siso uut(.clk(clk), .rst(rst), .d(d), .qout(qout));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    #12; rst=0;
end

initial begin
    d=1; #20;
    d=0; #20;
    d=1; #20;
    d=0; #20;
    d=0; #20;
    $finish;
end
endmodule