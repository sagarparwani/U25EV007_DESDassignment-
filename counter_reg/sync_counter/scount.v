module scount #(parameter N=4)(
    input clk,rst,
    input m,
    output [N-1:0] q
);

reg [N-1:0] count;

always @ (posedge clk) begin
    if(rst)
        count <= {N{1'b0}};
    else if (m) begin
            count <= count + 1;
    end
    else begin
        count <= count - 1;
    end
end


assign q =  count;

endmodule