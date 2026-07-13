module q13(
    input in,
    input clk,reset,
    output reg out

);

reg [1:0] state,next;
parameter A = 2'b00, B=2'b01, C=2'b10, D=2'b11 ;

always @(*) begin
    case(state)
    A: next= in?B:A;
    B: next= in?D:C;
    C: next= in?B:A;
    D: next= in?D:C;
    default: next=A;
    endcase


end

always@(posedge clk) begin
   if(reset)
        state<=A;
   else
    state<=next;
end

always@(*) begin
    case(state)
    A: out=0;
    B: out=in?1:0;
    C: out=in?1:0;
    D: out=1;
    default: out=0;
    endcase
end

endmodule