module booth_multiplier #(parameter n = 8)(

    input signed [n-1:0] a,b,
    output signed [2*n-1:0] out
);

assign out= a*b;
endmodule