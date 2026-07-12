module tcount #(parameter N=4)(
    input clk,rst,
    output [N-1:0] q
);

reg [N-1:0] be;

always @ (posedge clk) begin
    if(rst)
        be<={N{1'b0}};
    else 
        be<={~be[0], be[N-1:1]};
end

assign q = be;
endmodule
