`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 19:47:31
// Design Name: 
// Module Name: top_memoria_SD
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


module top_memoria_SD(
    input    logic              clk_i,
                                rst_i,
                                miso_sd_i,
                                en_initial_sd_i,
                                
    output   logic              mosi_sd_o,
                                cs_ctrl_sd_o,
                                sck_o,
                                proccess_o,
                                ter_c1_o
                      
    );
    
    import pkg_global::*;
    
    parameter      [10 : 0]     IN_CONTROL_PMODALS = 11'b1_1111_1111_00;
    
    logic                       clk,
                                rst,
                                proccess,
                                send_sd,
                                we_sd,
                                selec_out_sd,
                                flags;
                                
    bits_n                      addr2_sd;
                                  
    bits_width                  salida_spi_sd; 
    
    logic    [1 : 0]		    comando;
    
    logic    [11 : 0]            data_sd;
                        
    always_comb begin
    
        clk = clk_i;
        rst = rst_i;
        
    end
    
    module_inicializar_SD initial_SD(
        .clk_i                  (clk),
        .rst_i                  (rst),
        .process_sd_i           (proccess),
        .enable_inicializar_sd_i(en_initial_sd_i),
        .flags_i                (flags),
        .we_sd_o                (we_sd),
        .send_o                 (send_sd),
        .slc_mux_sd_o           (selec_out_sd),
        .c1_o                   (ter_c1_o),
        .comando_o              (comando),
        .addr2_sd_o             (addr2_sd),
        .data_sd_o              (data_sd)                                   
    );
    
    
    top_interface_spi spi_SD(

        .clk_i                 (clk),
        .rst_i                 (rst_i),
        .miso_i                (miso_sd_i),
        .send_i                (send_sd),
        .sw_we_i               (we_sd),
        .reg_sel_i             (selec_out_sd),
        .sw_addr_in_i          (addr2_sd),
        .sw_entrada_i          (data_sd),                   
        .mosi_o                (mosi_sd_o),
        .salida_o              (salida_spi_sd),
        .cs_ctrl_o             (cs_ctrl_sd_o),
        .proccess_o            (proccess),
        .sck_o                 (sck_o)   
                       
    );
    
    module_flags_sd flags_sd(
    
       .comando_i               (comando),
	   .salida_spi_sd_i         (salida_spi_sd),
       .flags_o                 (flags)        
                  
    );
endmodule
