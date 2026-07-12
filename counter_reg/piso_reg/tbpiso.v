module tbpiso;

reg rst,clk,load;
reg [3:0] d;
wire qout;

piso #(.N(4)) uut( .rst(rst), .clk(clk), .load(load), .d(d), .qout(qout));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    rst=1; 
    #12; rst=0;
end

initial begin
    d=4'b1011;
    load=0;
    #12;
    load=1; #10;
    load=0; #100;
    $finish;
end

endmodule

