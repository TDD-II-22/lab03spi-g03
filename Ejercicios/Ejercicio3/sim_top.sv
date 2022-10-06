`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2022 17:42:19
// Design Name: 
// Module Name: sim_top
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


module sim_top(
    
    input   logic               clk_100Mhz_pi,    
                                rst_pi,
                                miso_pi,                 
    output logic                mosi_po, //puede ser un led, no se ocupa
                                locked_po,
                                clk_sim_o,
                                cs_ctrl_po,
                                sck_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po,   
                    [7 : 0]     dato,   
                    [32: 0]     entrada_display          
    );
    
    parameter real              PERIODO      = 1e-3;
    
    parameter      [10 : 0]     IN_CONTROL_PMODALS = 11'b000_0000_01_00;
    
    import pkg_global::*;
    
    bits_width              salida;
                        //    entrada_display; 
     
   logic                    clk, 
                            send,
                            we_reg_control,
                            proccess,
                            selec_out;
                            
    bits_n                  addr_pmod;                        
    
    
        //generar clock 10M
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk),                  // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked_po),            // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    ); 
    
    top_pmodALS pmodALS(
        .clk_i                  (clk),
        .rst_i                  (rst_pi),
        .proccess_i             (proccess),                             
        .we_reg_control_o       (we_reg_control),
        .send_o                 (send),
        .selec_out_o            (selec_out),
        .addr_pmod_o            (addr_pmod),
        .entrada_display_o      (entrada_display),
        .in_datos_i             (salida)                
    );
    
    
    top_interface_spi interface_spi(

        .clk_i                 (clk),
        .rst_i                 (rst_pi),
        .miso_i                (miso_pi),
        .btn_send_i            (send),
        .dato_recibido         (dato),
        .sw_we_i               (we_reg_control),
        .reg_sel_i             (selec_out),
        .sw_addr_in_i          (addr_pmod),
        .sw_entrada_i          (IN_CONTROL_PMODALS),                   
        .mosi_o                (mosi_po),
        .salida_o              (salida),
        .clk_sim               (clk_sim_o),
        .cs_ctrl_o             (cs_ctrl_po),
        .proccess_o            (proccess),
        .sck_o                 (sck_po)                  
    );
    
     module_seg7_control #(.PERIODO(PERIODO)) seg7_control(
    
        .clk_10Mhz_i            (clk),
        .reset_i                (rst_pi),
        .display_i              (entrada_display),
        .display_o              (display_po),
        .display_select_o       (display_select_po)
    
    );
    
endmodule
