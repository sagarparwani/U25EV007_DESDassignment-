module piso #(parameter N=4)(
    input rst,clk,load,
    input [N-1:0] d,
    output qout
);
 
reg [N-1:0] q;

always@(posedge clk) begin
    if(rst)
        q<={N{1'b0}};
    else if(load)
        q<=d;
    else
        q<={1'b0, q[N-1:1]};
end

assign qout=q[0];
endmodule