module demux_1x16_task(
    input wire in,
    input [3:0] sel,
    output reg [15:0] out
);


task demux1;
output [15:0] demux;
input [3:0] sel;
input in;
begin
case (sel)

4'd0: begin demux=16'b0; demux[0]=in; end
4'd1: begin demux=16'b0; demux[1]=in; end
4'd2: begin demux=16'b0; demux[2]=in; end
4'd3: begin demux=16'b0; demux[3]=in; end
4'd4: begin demux=16'b0; demux[4]=in; end
4'd5: begin demux=16'b0; demux[5]=in; end
4'd6: begin demux=16'b0; demux[6]=in; end
4'd7: begin demux=16'b0; demux[7]=in; end
4'd8: begin demux=16'b0; demux[8]=in; end
4'd9: begin demux=16'b0; demux[9]=in; end
4'd10: begin demux=16'b0; demux[10]=in; end
4'd11: begin demux=16'b0; demux[11]=in; end
4'd12: begin demux=16'b0; demux[12]=in; end
4'd13: begin demux=16'b0; demux[13]=in; end
4'd14: begin demux=16'b0; demux[14]=in; end
4'd15: begin demux=16'b0; demux[15]=in; end
default: demux=16'b0;
endcase
end
endtask

always@(*)
demux1(out,sel,in);

endmodule

