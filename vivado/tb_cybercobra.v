`timescale 1ns / 1ps

module tb_CYBERcobra();
    
    CYBERcobra dut(
    .clk_i(clk),
    .rst_i(rstn),
    .sw_i (sw_i ),
    .out_o(OUT)
    );
    
    wire [31:0] OUT;
    reg clk;
    reg rstn;
    reg [15:0] sw_i;

    initial clk <= 0;
    always #5 clk = ~clk;
    
    initial begin 
    rstn = 1'b1;
   
    #10;
    rstn = 1'b0;
    sw_i = 16'b100001000; //значение, до которого считает счетчик
    //#260;
    //sw_i = 15'b0;
    #10000;
    $display("\n ТЕСТ ОКОНЧЕН \n Смотри внутренние сигналы кобры на времянке \n");
    $finish;
    end
    
endmodule
