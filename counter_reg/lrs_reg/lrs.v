module lrs #(parameter N=4)(
    input rst,clk,d,m,
    output [N-1:0] qout
);

reg [N-1:0] q;

always@(posedge clk) begin
    if(rst)
        q<={N{1'b0}};
    else if(!m) begin
        q[0]<=d;
        q[N-1:1]<=q[N-2:0];
    end
    else begin
        q[N-1]<=d;
        q[N-2:0]<=q[N-1:1];
    end
end

assign qout=q;

endmodule