module tbsipo;

reg clk,rst,d;
wire [3:0] out;

sipo #(.N(4)) uut(.clk(clk), .rst(rst), .d(d), .q(out));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1;
    #12 rst=0;
end

initial begin
    d=1; #10;
    d=0; #10;
    d=1; #10;
    d=1; #10;
    d=0; #10;
    $finish;
end
endmodule
