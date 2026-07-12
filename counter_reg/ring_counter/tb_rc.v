module tbrc;

wire [7:0] q;
reg clk,reset;


ring #(.N(8)) uut(
    .q(q), .clk(clk), .reset(reset)
);

initial begin
    clk = 0;
   forever #5 clk = ~clk;
end

initial begin 
    reset=1;
    #12 reset=0;
end
initial begin
    
    #100 $finish;
end


endmodule