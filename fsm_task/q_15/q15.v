module q15(
    input clk,rst,in,
    output reg out
);

parameter A=0,B=1,C=2, D=3;
reg[1:0] state,next;

always @(*) begin
    case(state)
        A: next=in?B:A;
        B: next=in?D:C;
        C: next=in?B:A;
        D: next=in?D:C;
    endcase
end

always@(posedge clk) begin
    if(rst)
        state<=A;
    else
        state<=next;
end

always@(*) begin
    case(state)
        A: out=1'b0;
        B: out=(in==0);
        C: out=(in==1);
        D: out=1'b0;
    endcase
end

endmodule