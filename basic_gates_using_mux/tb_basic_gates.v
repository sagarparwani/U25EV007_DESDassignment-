module tb_logic_gates;

reg A, B;
wire NOT_A, AND_out, OR_out, NAND_out, NOR_out, XOR_out, XNOR_out;

logic_gates uut(
    .A(A), .B(B),
    .NOT_A(NOT_A),
    .AND_out(AND_out),
    .OR_out(OR_out),
    .NAND_out(NAND_out),
    .NOR_out(NOR_out),
    .XOR_out(XOR_out),
    .XNOR_out(XNOR_out)
);

initial begin
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
    $finish;
end

endmodule