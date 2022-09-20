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
                                btn_send_pi,
                                sw_we_pi,//habilita el WE
                                reg_sel_pi,//controla los demux salida y we
                    [1 : 0]     sw_addr_in_pi,//selecciona la direcccion
                    [11 : 0]    sw_entrada_pi,                    
    output logic                mosi_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po
                   
    /*output logic                locked*/
    );
    
    parameter real PERIODO = 1e-3;
    
    import pkg_global::*;
    
    bits_width      salida;       
    
    logic           clk;
    
        //generar clock 10M
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk),                  // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked),                     // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    ); 
    
    
    top_interface_spi interface_spi(

        .clk_i                  (clk),
        .rst_pi                 (rst_pi),
        .miso_pi                (miso_pi),
        .btn_send_pi            (btn_send_pi),
        .sw_we_pi               (sw_we_pi),
        .reg_sel_pi             (reg_sel_pi),
        .sw_addr_in_pi          (sw_addr_in_pi),
        .sw_entrada_pi          (sw_entrada_pi),                   
        .mosi_po                (mosi_po),
        .salida_po              (salida)
    /*output logic                locked*/
                           
    );
    
     module_seg7_control #(.PERIODO(PERIODO)) seg7_control(
    
        .clk_10Mhz_i            (clk),
        .reset_i                (rst_pi),
        .display_i              (salida),
        .display_o              (display_po),
        .display_select_o       (display_select_po)
    
    );
    
endmodule
