module seqc(
    input clk,rst,
    output [7:0] z
);

wire a,b;
wire da,db;
wire an,bn;


xor x1(da,a,b);
not n1(db,b);

dff d1(.clk(clk), .rst(rst), .d(da), .q(a));
dff d2(.clk(clk), .rst(rst), .d(db), .q(b));

not(an,a);
not(bn,b);

and a1(z[0],an,bn);
and a2(z[5],an,b);
and a3(z[6],a,bn);
and a4(z[7],a,b);

assign z[4:1] = 4'b0;

endmodule

