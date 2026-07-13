module tb_q13;

reg in,clk,reset;
wire out;

q13 uut(
    .in(in), .clk(clk), .reset(reset), .out(out)
);

reg[15:0] pattern;
integer i=0;




always begin
    clk=~clk;
    #5;
end

initial begin
reset=1;
clk=0;
in=0;
pattern[15:0]=16'b0110001010111010;

#10;
reset=0;
    for(i=0;i<16;i=i+1) begin
        in=pattern[i]; #10;
    end

    #10;
    $finish;
end
endmodule