module mux_16x1_task(
    input wire [15:0] s,
    input wire [3:0] sel,
    output reg result
);


task mux;
output out;
input [15:0] in;
input [3:0] sel;
begin
    out=in[sel];
end
endtask

always@(*)
mux(result,s,sel);


endmodule