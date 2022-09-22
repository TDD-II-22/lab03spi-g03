`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2022 13:32:35
// Design Name: 
// Module Name: top_simulate_7seg_v3
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


module top_simulate_7seg_v3(
    input   logic               clk_100Mhz_pi,
                                reset_pi,
                                control_pi,
                    [31: 0]     display_1,
                                display_2,       
                    [1 : 0]     periodos_pi,
                    
    output  logic   [2 : 0]     rgb_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po,
                                clk_10Mhz,
                                
    input logic     [7 : 0]     clk_en1,
                                clk_en2,
                                clk_en
     //               output  logic locked
    );
    
    parameter       real        PERIODO_ANODO   = 1e-3;   
    
    //variables internas

    logic [31 : 0]              salida_r;
    


    //generar clock 10M
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk_10Mhz),            // output CLK_10MHZ
        // Status and control signals
        //.locked                 (locked),                     // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    
    );    
    
   
    
    
    
    module_registros registros(
        .clk_i                  (clk_10Mhz),
        .rst_i                  (reset_pi),
        .write_en_i             (control_pi),
        .clk_en_i               (clk_en),
        .entrada_r1_i           (display_1),
        .entrada_r2_i           (display_2),
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
    

endmodule
