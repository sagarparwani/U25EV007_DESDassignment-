module tbq14;
 
 reg clk,rst,in;
 wire out;

 q14 uut(.clk(clk), .rst(rst), .in(in), .out(out));

 reg [15:0] pattern;
 integer i=0;

 initial begin
    clk=0;
    forever #5 clk=~clk;
 end

 initial begin 
    rst=1; #10;
    rst=0;
    in=0;
    pattern[15:0]=16'b0110100101110101;

        for(i=0;i<16;i=i+1) begin
            in=pattern[i]; #10;
        end

        #10
        $finish;
 end
endmodule
