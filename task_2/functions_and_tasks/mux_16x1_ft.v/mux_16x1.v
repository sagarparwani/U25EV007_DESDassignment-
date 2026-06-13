module mux_16x1_ft(
    input wire [15:0] s,
    input wire [3:0] sel,
    output wire out
);

function mux;
input [15:0] in;
input [3:0] sel;
 mux=in[sel];
endfunction

assign out=mux(s,sel);
endmodule