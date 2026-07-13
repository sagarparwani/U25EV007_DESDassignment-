module q14(
    input clk,rst,in,
    output out
);

parameter A=1,B=2,C=3,D=4,E=5,F=6;

reg [2:0] state,next;

always@(*) begin
    case(state)
        A: next=in?B:A;
        B: next=in?B:C;
        C: next=in?D:A;
        D: next=in?F:E;
        E: next=in?D:A;
        F: next=in?B:C;
        default: next=A;
    endcase
end

always @(posedge clk) begin
    if(rst)
        state<=A;
    else
        state<=next;
end

assign out = (state==D) || (state==E) || (state==F);
endmodule