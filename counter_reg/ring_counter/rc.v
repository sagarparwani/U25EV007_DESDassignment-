module ring #(parameter N=4)(
    input clk, reset,
    output [N-1:0] q
);


reg [N-1:0] be;

always@(posedge clk) begin
    if(reset)
        be <= {1'b1,{(N-1){1'b0}}};
        else 
            be <= {be[0], be[N-1:1]};
        end

assign q[N-1:0] = be[N-1:0];

endmodule