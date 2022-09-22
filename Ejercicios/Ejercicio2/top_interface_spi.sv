`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2022 17:16:34
// Design Name: 
// Module Name: top_interface_spi
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


module top_interface_spi(

    input   logic               clk_i,
                                rst_i,
                                miso_i,
                                btn_send_i,
                                sw_we_i,
                                reg_sel_i,
                     [1 : 0]    sw_addr_in_i,
                     [11 : 0]   sw_entrada_i,                   
    
    output logic                mosi_o,
                                cs_ctrl_o,
    pkg_global::bits_width      salida_o                    
);   
    
    
    //IMPORTAR DATOS
    import pkg_global::*;
     
    //variables internas
    logic                       clk,
                                we_rx, 
                                proccess,
                                hold_ctrl,
                                we_ram2;
     
    logic       [7 : 0]         dato_recibido; 
     
    logic       [9 : 0]         rx_o;   
    
    logic                       we_ex1,
                                we_ex2;
    
    bits_n                      addr1,
                                addr2;                          
    
    struct_reg_control          cntr_str;
    
    logic [31 : 0]              dato_ram;
    
    assign clk = clk_i;
    
    //demux we
    module_mux_we mux_we(
        .we_i                   (sw_we_i),
        .reg_sel_i              (reg_sel_i),
        .wr1_o                  (we_ex1),
        .wr2_o                  (we_ex2)       
    );
    
    
    //master spi
    top_master_race_spi master_race_spi(

        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .miso_i                 (miso_i),                     
        .dato_in                (dato_ram),
        .cntr_str_i             (cntr_str),  
        .mosi_o                 (mosi_o),
        .we_rx_o                (we_rx),
        .proccess_o             (proccess),
        .hold_ctrl_o            (hold_ctrl),
        .we_ram2_o              (we_ram2),      
        .dato_recibido_r        (dato_recibido),
        .rx_o                   (rx_o),
        .addr2_o                (addr2),
        .cs_ctrl_o              (cs_ctrl_o)
        
    ); 
    
     module_reg_control registro_control(

        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .send_i                 (btn_send_i),
        .proccess_i             (proccess),
        .we_rx_i                (we_rx),
        .we_ex_i                (we_ex1),
        .in_rx_i                (rx_o),
        .in_ex_i                (sw_entrada_i),
        .cntr_str_o             (cntr_str)   
    
    );
    
    module_reg_datos memoria_ram(
        .clk_i                  (clk),
        .rst_i                  (rst_i),  
        .hold_ctrl_i            (hold_ctrl),  
        .addr1_i                (sw_addr_in_i),
        .addr2_i                (addr2),
        .in1_i                  (sw_entrada_i),
        .in2_i                  (dato_recibido),
        .wr1_i                  (we_ex2),
        .wr2_i                  (we_ram2),
        .data_o                 (dato_ram)
    );
    
    module_mux_salida mux_salida(
        .selec_salida_i         (reg_sel_i),
        .salida_datos_o         (dato_ram),
        .salidas_control_o      (cntr_str),
        .salida_i               (salida_o)            
    );

endmodule
