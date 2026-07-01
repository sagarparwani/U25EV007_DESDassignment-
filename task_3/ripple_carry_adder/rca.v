module rca #(parameter N=4)(
    input [N-1:0] num1,num2,
    output [N:0] result
);

wire [N:0] carry;
wire [N-1:0] sum; 
assign carry[0]=1'b0;
generate
    genvar i;
    for (i = 0; i < N; i = i + 1) begin : fa_chain
        full_adder fa (
            .a(num1[i]),
            .b(num2[i]),
            .c(carry[i]),
            .sum(sum[i]),
            .cout(carry[i+1])
        );
    end
endgenerate

assign result={carry[N],sum[N-1:0]};
endmodule