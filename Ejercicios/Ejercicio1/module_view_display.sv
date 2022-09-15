`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2022 23:43:42
// Design Name: 
// Module Name: module_view_display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module module_view_display(
        input   logic                   clk_i,
                                        rst_i,
                                        clk_en1_i,
                                        clk_en2_i,
                                        pause_i,
        output  logic   [31 : 0]        salida_view1_o,
                                        salida_view2_o
    );
    
    //parametros
    parameter                   NUM_BITS = 32;
    
    
    //modulo generador de numeros
    module_pseudo_random #(.NUM_BITS (NUM_BITS)) random_display(
        .i_Clk                  (clk_i),
        .i_Rst                  (rst_i),
        .i_Enable               (clk_en1_i),
        .pause_i                (pause_i),
        .o_LFSR_Data            (salida_view1_o)
    );
    
    //contador en forma de bebe
    module_bebe_sweept sweept(
    
        .clk_10Mhz_i            (clk_i),    
        .clk_en_i               (clk_en2_i),
        .rst_i                  (rst_i),
        .pause_i                (pause_i),                     
        .bebe_sweept_o          (salida_view2_o)
    
    );
    
endmodule
