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
                                btn_guardar_pi,
                                miso_sd_pi,            
    output logic                mosi_po, //puede ser un led, no se ocupa
                                mosi_sd_po,
                                locked_po,
                                cs_ctrl_po,
                                cs_ctrl_sd_po,
                                sck_po,
                                sck_sd_po,
                                dat1_po,
                                dat2_po,
                    [2 : 0]     led_rgb_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po                     
    );
    
    parameter real              PERIODO         = 1e-3,
                                PERIODO_GUARDAR = 1;
    
    import pkg_global::*;
    
    bits_width                  salida_sensor; 
    
    logic                       clk,
                                proccess_luz,
                                en_clk_luz,
                                guardar_pulso,
                                en_initial_sd,
                                ter_c1;
                                                 
    logic   [7 : 0]             datos_buffer_o;
    bits_n                      addr_buffer_sensor;
    
    logic   [31 : 0]            entrada_display;
    
    logic   [2 : 0]             led_rgb;
    
    always_comb begin
    
        entrada_display = {salida_sensor, 15'b000_0000_0000_0000,  addr_buffer_sensor};
        dat1_po = 1;
        dat2_po = 1;
        
    end
    
    
        //generar clock 10M
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk),                  // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked_po),            // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    ); 
    
    module_debounce_timer #(.PERIODO(PERIODO_GUARDAR)) envio_pulso_send (

        .clk_10Mhz_i            (clk),
        .reset_i                (rst_pi),
        .btn_guardar_i          (btn_guardar_pi),
        .guardar_pulso_i        (guardar_pulso) 
    
    );
    
    top_micro maquina_microprogramada(
    
        .clk_i                      (clk),
        .rst_i                      (rst_pi),
        .sw_modo_i                  (sw_modo_pi),
        .btn_guardar_i              (guardar_pulso),
        .proccess_luz_i             (proccess_luz),
        .datos_sensor_i             (salida_sensor),
        .ter_c1_i                   (ter_c1),
        .en_clk_luz_o               (en_clk_luz),
        .datos_buffer_o             (datos_buffer_o),
        .addr_buffer_sensor_o       (addr_buffer_sensor),
        .led_rgb_o                  (led_rgb),        
        .en_initial_sd_o            (en_initial_sd)
    );
     
    top_sensor_luz sensor_luz1(
    
        .clk_i                      (clk),
        .rst_i                      (rst_pi),
        .miso_i                     (miso_pi), 
        .en_clk_luz_i               (en_clk_luz),                         
        .mosi_o                     (mosi_po),
        .cs_ctrl_o                  (cs_ctrl_po),
        .sck_o                      (sck_po),
        .salida_sensor_o            (salida_sensor),
        .proccess_o                 (proccess_luz)
                                
    );

     module_seg7_control #(.PERIODO(PERIODO)) seg7_control(
    
        .clk_10Mhz_i                (clk),
        .reset_i                    (rst_pi),
        .display_i                  (entrada_display),
        .display_o                  (display_po),
        .display_select_o           (display_select_po)
    
    );
    
    top_memoria_SD SD_NO_potente(
    
        .clk_i                      (clk),
        .rst_i                      (rst_pi),
        .miso_sd_i                  (miso_sd_pi),
        .en_initial_sd_i            (en_initial_sd),                             
        .mosi_sd_o                  (mosi_sd_po),
        .cs_ctrl_sd_o               (cs_ctrl_sd_po),
        .sck_o                      (sck_sd_po),
        .proccess_o                 (),
        .ter_c1_o                   (ter_c1)
                      
    );
    
    
     module_leds_rgb #(.PERIODO( PERIODO )) rgb (
    
        .clk_i                      (clk),
        .rst_i                      (rst_pi),
        .color_i                    (led_rgb),
        .rgb_o                      (led_rgb_po)
    
    );
    
    
endmodule
