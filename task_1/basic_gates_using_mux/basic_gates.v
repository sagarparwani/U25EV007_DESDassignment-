module logic_gates(
    input wire A,
    input wire B,
    output wire NOT_A,
    output wire AND_out,
    output wire OR_out,
    output wire NAND_out,
    output wire NOR_out,
    output wire XOR_out,
    output wire XNOR_out
);

assign NOT_A   = A ? 1'b0 : 1'b1;
assign AND_out = A ? B    : 1'b0;
assign OR_out  = A ? 1'b1 : B;
assign NAND_out= A ? ~B   : 1'b1;
assign NOR_out = A ? 1'b0 : ~B;
assign XOR_out = A ? ~B   : B;
assign XNOR_out= A ? B    : ~B;

endmodule