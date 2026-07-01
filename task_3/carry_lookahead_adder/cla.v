module cla #(parameter N=4)(
    input [N-1:0] a,b,
    input cin
    output [N-1:0] sum,
    output cout 
);

wire [N-1:0] P,G,C;

assign p= a ^ b;
assign g=a & b;

assign c[0]= cin;
generate
    genvar i;
    for (i = 0; i < N; i = i + 1) begin 
        assign c[i]= g[i] | (p[i]&c[i]);
    end
endgenerate
    assign cout= g[N-1] | (p[N-1]&c[n-1]);

    assign sum = p^c;

endmodule
