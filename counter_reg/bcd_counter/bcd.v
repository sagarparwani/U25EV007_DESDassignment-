module bcd(
    input clk,rst,
    output z3,z2,z1,z0
);

wire q3,q2,q1,q0;



wire d3,d2,d1,d0;
wire w3,w2,w1,w0;

not o0(d0,q0);

not n2(w3,q3);
not n3(w2,q2);
not n4(w1,q1);
not n5(w0,q0);

wire r6,r5,r4,r3,r2,r1,r0;
and a1(r0,w3,w1,q0);
and a2(r1,q1,w0);

or o1(d1,r1,r0);

and a3(r2,q2,w1);
and a4(r3,w2,q1,q0);
and a5(r4,q2,q1,w0);

or o2(d2,r2,r3,r4);

and a6(r5,q3,w1,w0);
and a7(r6,q2,q1,q0);

or o3(d3,r5,r6);

dff k0(.clk(clk), .rst(rst), .q(q0), .d(d0));
dff k1(.clk(clk), .rst(rst), .q(q1), .d(d1));
dff k2(.clk(clk), .rst(rst), .q(q2), .d(d2));
dff k3(.clk(clk), .rst(rst), .q(q3), .d(d3));

assign z3=q3;
assign z2=q2;
assign z1=q1;
assign z0=q0;

endmodule