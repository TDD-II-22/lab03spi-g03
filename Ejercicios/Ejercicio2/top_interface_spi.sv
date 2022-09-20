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

    input   logic               clk_100Mhz_pi,
                                rst_pi,
                                miso_pi,
                                btn_send_pi,
                                sw_we_pi,
                                reg_sel_pi,
                                selec_entra_pi,
                     [1 : 0]    sw_addr_in_pi,
                     [11 : 0]   sw_entrada_pi,                   
    
    output logic                locked,
                                mosi_po,
    pkg_global::bits_width      salida_po                           
                                
                     
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
                                addr2,
                                add_addr1;                           
    
    struct_reg_control          cntr_str;
    
    logic [7 : 0]               dato_ram;
    
    //generar clock 10M
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk),                  // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked),                     // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    ); 
    
    //demux we
    module_mux_we mux_we(
        .we_i                   (sw_we_pi),
        .reg_sel_i              (reg_sel_pi),
        .wr1_o                  (we_ex1),
        .wr2_o                  (we_ex2)
        
    );
    
    
    //master spi
    top_master_race_spi master_race_spi(

        .clk_i                  (clk),
        .rst_i                  (rst_pi),
        .miso_i                 (miso_pi),                     
        .dato_in                (dato_ram),
        .cntr_str_i             (cntr_str),  
        .mosi_o                 (mosi_po),
        .we_rx_o                (we_rx),
        .proccess_o             (proccess),
        .hold_ctrl_o            (hold_ctrl),
        .we_ram2_o              (we_ram2),      
        .dato_recibido_r        (dato_recibido),
        .rx_o                   (rx_o),
        .addr2_o                (addr2)
        
    ); 
    
     module_reg_control registro_control(

        .clk_i                  (clk),
        .rst_i                  (rst_pi),
        .send_i                 (btn_send_pi),
        .proccess_i             (proccess),
        .we_rx_i                (we_rx),
        .we_ex_i                (we_ex1),
        .in_rx_i                (rx_o),
        .in_ex_i                (sw_entrada_pi),
        .cntr_str_o             (cntr_str)   
    
    );
    
    module_reg_datos memoria_ram(
        .clk_i                  (clk),
        .rst_i                  (rst_pi),  
        .hold_ctrl_i            (hold_ctrl),  
        .addr1_i                (sw_addr_in_pi),
        .addr2_i                (addr2),
        .in1_i                  (sw_entrada_pi),
        .in2_i                  (dato_recibido),
        .wr1_i                  (we_ex2),
        .wr2_i                  (we_ram2),
        .data_o                 (dato_ram)
    );
    
    module_mux_salida mux_salida(
        .selec_salida_i         (sw_we_pi),
        .salida_datos_o         (cntr_str),
        .salidas_control_o      (dato_ram),
        .salida_i               (salida_po)            
    );
    

endmodule
