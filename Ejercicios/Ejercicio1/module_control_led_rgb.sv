`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2022 00:36:59
// Design Name: 
// Module Name: module_control_led_rgb
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


module module_control_led_rgb(
    
    input   logic               clk_i,
                                rst_i,
                                clk_en1,
                                clk_en2,                   
    output  logic   [2 : 0]     rgb_o
    
    );
    
    parameter       real        PERIODO   = 1e-3;  
     
    logic           [2 : 0]     color_i;
    
    
    always @(posedge clk_i) begin
    
        if(rst_i)
            color_i <= 0;
        else begin 
            if(clk_en1) color_i <= 5;
            if(clk_en2) color_i <= 6;
        end
    end
    
    module_leds_rgb #(.PERIODO( PERIODO )) rgb (
    
    .clk_i                      (clk_i),
    .rst_i                      (rst_i),
    .color_i                    (color_i),
    .rgb_o                      (rgb_o)
    
    );
endmodule
