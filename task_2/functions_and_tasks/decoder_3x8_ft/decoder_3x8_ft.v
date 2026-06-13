module decoder_3x8_ft(
    input wire[2:0] in,
    output wire[7:0] out
);

function [7:0]decode;
input [2:0] in;
case(in)
3'd0: decode=8'b00000001;
3'd1: decode=8'b00000010;
3'd2: decode=8'b00000100;
3'd3: decode=8'b00001000;
3'd4: decode=8'b00010000;
3'd5: decode=8'b00100000;
3'd6: decode=8'b01000000;
3'd7: decode=8'b10000000;
default: decode=8'b0;
endcase
endfunction

assign out=decode(in);
endmodule




