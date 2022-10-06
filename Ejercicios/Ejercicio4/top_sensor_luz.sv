`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 14:41:05
// Design Name: 
// Module Name: top_sensor_luz
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


module top_sensor_luz(
    input    logic              clk_i,
                                rst_i,
                                miso_i,
                                en_clk_luz_i,
                                
    output   logic              mosi_o,
                                cs_ctrl_o,
                                sck_o,
                                proccess_o,
    pkg_global::bits_width      salida_sensor_o
                      
    );
    
    parameter      [11 : 0]     IN_CONTROL_PMODALS = 12'b000_0000_01_00_1;
    
    import pkg_global::*;
    
    logic                       clk,
                                rst,
                                proccess,
                                send,
                                we_reg_control,
                                selec_out;
                                
    bits_n                      addr_pmod;
                                  
    bits_width                  salida,
                                entrada_display; 
                            
    always_comb begin
    
        clk = clk_i;
        rst = rst_i;
        
    end
    
   top_pmodALS pmodALS(
        .clk_i                  (clk),
        .rst_i                  (rst),
        .proccess_i             (proccess),
        .in_datos_i             (salida),
        .en_clk_luz_i           (en_clk_luz_i),                       
        .we_reg_control_o       (we_reg_control),
        .send_o                 (send),
        .selec_out_o            (selec_out),
        .addr_pmod_o            (addr_pmod),
        .entrada_display_o      (entrada_display)
                    
    );
    
    top_interface_spi spi_pmodALS(

        .clk_i                 (clk),
        .rst_i                 (rst_i),
        .miso_i                (miso_i),
        .send_i                (send),
        .sw_we_i               (we_reg_control),
        .reg_sel_i             (selec_out),
        .sw_addr_in_i          (addr_pmod),
        .sw_entrada_i          (IN_CONTROL_PMODALS),                   
        .mosi_o                (mosi_o),
        .salida_o              (salida),
        .proccess_o            (proccess),
        .sck_o                 (sck_o),
        .cs_ctrl_o             (cs_ctrl_o) 
                       
    );
    
    always_comb begin
        salida_sensor_o   = entrada_display; 
        proccess_o          = proccess;         
    end
    
endmodule
