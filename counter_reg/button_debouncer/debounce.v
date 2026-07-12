module bdeb(
    input clk,rst,in,
    output reg out
);

reg prev_in;
reg [19:0] count;

always@(posedge clk) begin
    if(rst) begin
        prev_in<=in;
        count<=0;
    end
    else if(in !=prev_in) begin
        count<=0;
        prev_in <= in;
    end
    else if(count==20'd1000000)
        out<=in;
    else 
        count<=count+1;
    
end

endmodule