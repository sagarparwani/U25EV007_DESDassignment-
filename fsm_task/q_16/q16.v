module q16(
    input clk, rst, in,
    output reg out
);

parameter A=0, B=1, C=2, D=3;  // state = last 2 bits seen: A=00, B=01, C=10, D=11
reg [1:0] state, next;

// Next state logic (shift in new bit)
always @(*) begin
    case(state)
        A: next = in ? B : A;
        B: next = in ? D : C;
        C: next = in ? B : A;
        D: next = in ? D : C;
        default: next = A;
    endcase
end

// State register
always @(posedge clk) begin
    if (rst)
        state <= A;
    else
        state <= next;
end


always @(*) begin
    case(state)
        A: out = 1'b0;        
        B: out = in;          
        C: out = in;          
        D: out = 1'b1;        
        default: out = 1'b0;
    endcase
end

endmodule