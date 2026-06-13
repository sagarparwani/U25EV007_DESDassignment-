module priority_encoder(
    input wire [3:0] s,
    output reg [1:0] y
);

always@(*) begin
    if (s[3])
        y=2'b11;
    else if(s[2])
        y=2'b10;
    else if(s[1])
        y=2'b01;
    else if(s[0])
        y=2'b00;
    else 
        y=2'bxx;
end
endmodule