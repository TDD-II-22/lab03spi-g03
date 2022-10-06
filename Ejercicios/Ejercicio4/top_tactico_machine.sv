`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2022 23:16:41
// Design Name: 
// Module Name: top_tactico
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


module top_tactico(
    
    input   logic               clk_100Mhz_pi,
                                rst_pi,
                                miso_pi,
                                sw_modo_pi,
                                btn_guardar_i,              
    output logic                mosi_po, //puede ser un led, no se ocupa
                                locked_po,
                                cs_ctrl_po,
                                sck_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po                     
    );
    
    parameter real              PERIODO      = 1e-3;
    
    import pkg_global::*;
    
    bits_width                  entrada_display; 
    
    logic                       clk,
                                proccess_luz,
                                en_clk_luz;
                                                 
    pkg_global::bits_width      datos_buffer_o;
    
        //generar clock 10M
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk),                  // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked_po),            // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    ); 
     
    top_micro maquina_microprogramada(
    
        .clk_i                      (clk),
        .rst_i                      (rst_pi),
        .sw_modo_i                  (sw_modo_pi),
        .btn_guardar_i              (btn_guardar_i),
        .proccess_luz_i             (proccess_luz),
        .datos_sensor_i             (entrada_display), 
        .en_clk_luz_o               (en_clk_luz),
        .datos_buffer_o             (datos_buffer_o)  
            
    );
     
    top_sensor_luz sensor_luz1(
    
        .clk_i                      (clk),
        .rst_i                      (rst_pi),
        .miso_i                     (miso_pi), 
        .en_clk_luz_i               (en_clk_luz),                         
        .mosi_o                     (mosi_po),
        .cs_ctrl_o                  (cs_ctrl_po),
        .sck_o                      (sck_po),
        .entrada_display_o          (entrada_display),
        .proccess_o                 (proccess_luz)
                                
    );

     module_seg7_control #(.PERIODO(PERIODO)) seg7_control(
    
        .clk_10Mhz_i                (clk),
        .reset_i                    (rst_pi),
        .display_i                  (entrada_display),
        .display_o                  (display_po),
        .display_select_o           (display_select_po)
    
    );
    
    
    
endmodule
