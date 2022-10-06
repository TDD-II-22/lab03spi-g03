`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 11:59:52
// Design Name: 
// Module Name: top_micro
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


module top_micro(
    input    logic              clk_i,
                                rst_i,
                                sw_modo_i,
                                btn_guardar_i,
                                proccess_luz_i,
                                ter_c1_i,
        [2 : 0]                 led_rgb_o,                       
        [7 : 0]                 datos_sensor_i,   
                            
    output                      en_clk_luz_o,
                                en_initial_sd_o,
        [7 : 0]                 datos_buffer_o,
    pkg_global::bits_n          addr_buffer_sensor_o             
    
             
    ); 
    
    import pkg_global::*;
    
    
    logic                       c1,
                                c2,
                                c3,
                                c4,
                                we_buffer;
    
    
    logic   [2 : 0]             micro_control;
    
    bits_n                      addr_buffer_sensor;
    
    modulo_controlador_micro maquina_micro(
        .clk                        (clk_i),
        .rst                        (rst_i),
        .Condicion1                 (c1),
        .Condicion2                 (c2),
        .Condicion3                 (c3),
        .Condicion4                 (c4),
        .Condicion5                 (),
        .Condicion6                 (),
        .salidas_o                  (micro_control)
    );
    
    
    module_control_micro micro(

        .clk_i                      (clk_i),
        .rst_i                      (rst_i),
        .sw_modo_i                  (sw_modo_i),
        .btn_guardar_i              (btn_guardar_i),
        .proccess_luz_i             (proccess_luz_i),
        .en_c1_i                    (ter_c1_i),
        .micro_control_i            (micro_control),
        .c1_o                       (c1),
        .c2_o                       (c2),
        .c3_o                       (c3),
        .c4_o                       (c4),
        .en_clk_luz_o               (en_clk_luz_o),
        .addr_buffer_sensor_o       (addr_buffer_sensor),
        .we_buffer_o                (we_buffer),
        .led_rgb_o                  (led_rgb_o),
        .en_initial_sd_o            (en_initial_sd_o)                                                                    
    );
    
    module_buffer_sensor sensor(
        .clk_i                      (clk_i),  
        .rst_i                      (rst_i), 
        .addr1_i                    (addr_buffer_sensor),//temporal
        .in1_i                      (datos_sensor_i),
        .wr1_i                      (we_buffer),
        .data_o                     (datos_buffer_o)
    );
    
    always_comb begin
        addr_buffer_sensor_o    = addr_buffer_sensor;    
    end
    
    
    
    
endmodule
