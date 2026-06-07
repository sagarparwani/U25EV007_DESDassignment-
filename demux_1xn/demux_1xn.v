module demux_1xn #(parameter N = 4)(
    input wire s,
    input wire [$clog2(N)-1:0] sel,
    output reg [N-1:0] y

);

always @(*) begin
    y={N{1'b0}};
    y[sel]=s;
end
endmodule
