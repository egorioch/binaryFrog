`timescale 1ns / 1ps

module rf_riscv(
    input clk,
    input WE,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD3,
    output [31:0] RD1,
    output [31:0] RD2
    );
    
//    wire [31:0]write;
//    assign write = (A3) ? WD3 : 0;
    
    reg [31:0] RAM [0:31];
//    initial RAM[0] = 0;
    
    assign RD1 = (A1) ? RAM[A1] : 0;
    assign RD2 = (A2) ? RAM[A2] : 0;
    
    always @(posedge clk)
        if(WE) 
            RAM[A3] <= WD3;

endmodule
