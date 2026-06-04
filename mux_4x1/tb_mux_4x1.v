`timescale 1ns / 1ps

module tb_mux_4x1;

    // Inputs
    reg [3:0] i;
    reg [1:0] sel;

    // Output
    wire y;

    // Instantiate the Unit Under Test (UUT)
    mux_4x1 uut (
        .i(i),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Initialize Inputs
        i = 4'b1010; // i[3]=1, i[2]=0, i[1]=1, i[0]=0
        sel = 2'b00;
        
        // Test all combinations of select lines
        #10 sel = 2'b00; // y should pick i[0] -> 0
        #10 sel = 2'b01; // y should pick i[1] -> 1
        #10 sel = 2'b10; // y should pick i[2] -> 0
        #10 sel = 2'b11; // y should pick i[3] -> 1
        
        #10;
        $finish;
    end
      
endmodule
