module mux_nx1 #(parameter N = 4)(
    input wire [N-1:0] s,
    input wire [$clog2(N)-1:0] sel,
    output reg y

);

always@(*) begin
    y=s[sel];
end
endmodule