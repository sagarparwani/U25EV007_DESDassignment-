module array_multiplier #(parameter n = 8)(
    input [n-1:0] a,b,
    output [2*n-1:0] out
);

assign out = a * b;
endmodule