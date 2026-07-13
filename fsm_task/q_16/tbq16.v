module tbq16;
    reg clk, rst, in;
    wire out;

    q16 uut(.clk(clk), .rst(rst), .in(in), .out(out));

    reg [15:0] pattern;
    integer i;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; #10;
        rst = 0;


        pattern[0]=0; pattern[1]=1; pattern[2]=0; pattern[3]=0;
        pattern[4]=1; pattern[5]=1; pattern[6]=0; pattern[7]=1;
        pattern[8]=1; pattern[9]=0; pattern[10]=0;


        for (i=0; i<11; i=i+1) begin
            in = pattern[i];
            #10;
        end

        #10;
        $finish;
    end
endmodule