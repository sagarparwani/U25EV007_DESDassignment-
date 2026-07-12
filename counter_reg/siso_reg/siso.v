module siso #(parameter N=4)(
    input clk,rst,d,
    output qout
);

reg [N-1:0] q;
always @ (posedge clk) begin
    if(rst)
        q<={N{1'b0}};
    else begin
        q[N-1]<=d;
        q[N-2:0]<=q[N-1:1];
    end
end

assign qout=q[0];

endmodule
