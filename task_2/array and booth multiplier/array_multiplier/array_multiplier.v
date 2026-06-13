module array_multiplier(
    input [3:0] a,b,
    output [7:0] product
);

wire [3:0] pp0,pp1,pp2,pp3;

assign pp0= a & {4{b[0]}};
assign pp1= a & {4{b[1]}};
assign pp2= a & {4{b[2]}};
assign pp3= a & {4{b[3]}};

wire [9:0] c1,s1;

assign product[0]=pp0[0];
half_adder ha1(.a(pp0[1]), .b(pp1[0]), .sum(product[1]), .carry(c1[0]));

full_adder fa1(.a(pp0[2]), .b(pp1[1]), .c(c1[0]), .sum(s1[0]), .carry(c1[1]));
full_adder fa2(.a(s1[0]), .b(pp2[0]), .c(c1[1]), .sum(product[2]), .carry(c1[2]));

full_adder fa3(.a(pp0[3]), .b(pp1[2]), .c(pp2[1]), .sum(s1[1]), .carry(c1[3]));
full_adder fa4(.a(s1[1]), .b(pp3[0]), .c(c1[2]), .sum(s1[2]), .carry(c1[4]));
full_adder fa5(.a(s1[2]), .b(c1[3]), .c(c1[4]), .sum(product[3]), .carry(c1[5]));

full_adder fa6(.a(pp1[3]), .b(pp2[2]), .c(pp3[1]), .sum(s1[3]), .carry(c1[6]));
full_adder fa7(.a(s1[3]), .b(c1[5]), .c(c1[6]), .sum(product[4]), .carry(c1[7]));

full_adder fa8(.a(pp2[3]), .b(pp3[2]), .c(c1[7]), .sum(product[5]), .carry(c1[8]));

half_adder ha2(.a(c1[8]), .b(pp3[3]), .sum(product[6]), .carry(c1[9]));
assign product[7]=c1[9];

endmodule