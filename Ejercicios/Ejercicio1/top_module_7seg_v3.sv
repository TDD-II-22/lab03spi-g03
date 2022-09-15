`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2022 00:00:09
// Design Name: 
// Module Name: top_module_7seg_v3
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


module top_module_7seg_v3(
    
    input   logic               clk_100Mhz_pi,
                                reset_pi,
                                control_pi,
                    [1 : 0]     periodos_pi,
    output  logic   [2 : 0]     rgb_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po,
                    output  logic locked
    );
    
    parameter       real        PERIODO_ANODO   = 1e-3;   
    
    //variables internas
    logic                       clk_10Mhz,
                                clk_en,
                                clk_en1,
                                clk_en2;
    
    logic [31 : 0]              display1,
                                display2,
                                salida_r;
    


    //generar clock 10M
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk_10Mhz),            // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked),                     // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    
    );    
    
    //generador de clocks
    module_clock_mux_divider clock_divider(

        .clk_10Mhz_i            (clk_10Mhz),
        .reset_i                (reset_pi),
        .periodos_i             (periodos_pi),
        .clock_o                (clk_en),
        .clk_en1                (clk_en1),
        .clk_en2                (clk_en2) 
    
    );
    
    module_view_display module_display_view(
        .clk_i                  (clk_10Mhz),
        .rst_i                  (reset_pi),
        .clk_en1_i              (clk_en1),
        .clk_en2_i              (clk_en2),
        .pause_i                (control_pi),
        .salida_view1_o         (display1),
        .salida_view2_o         (display2)
    );
    
    module_registros registros(
        .clk_i                  (clk_10Mhz),
        .rst_i                  (reset_pi),
        .write_en_i             (control_pi),
        .clk_en_i               (clk_en),
        .entrada_r1_i           (display1),
        .entrada_r2_i           (display2),
        .salida_ro              (salida_r)    
    ); 
      
    //modulo de la instancia
    module_seg7_control #( .PERIODO (PERIODO_ANODO)) seg7_control(                                   

         //entradas / salidas 
        .clk_10Mhz_i            (clk_10Mhz),         
        .reset_i                (reset_pi),           
        .display_i              (salida_r),        
        .display_o              (display_po),         
        .display_select_o       (display_select_po)                    
    
    );
    
    module_control_led_rgb module_rgb(
    
    .clk_i                      (clk_10Mhz),
    .rst_i                      (reset_pi),
    .clk_en1                    (clk_en1),
    .clk_en2                    (clk_en2),                   
    .rgb_o                      (rgb_po)
    
    );
    
      
endmodule
