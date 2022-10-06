`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 12:00:17
// Design Name: 
// Module Name: module_control_micro
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


module module_control_micro(

    input  logic                        clk_i,
                                        rst_i,
                                        //datos entrada fpga
                                        sw_modo_i,
                                        btn_guardar_i,
                                        //datos de entrada sensor luz
                                        proccess_luz_i,
                                        //datos de entrada SD
                                        en_c1_i,
                                        //datos de entrada de la micro
                        [2 : 0]         micro_control_i,
                        
    output logic                        //salidas de la micro
                                        c1_o,
                                        c2_o,
                                        c3_o,
                                        c4_o,
                                        we_buffer_o,
                                        en_clk_luz_o,
                                        en_initial_sd_o,
            [2 : 0]                     led_rgb_o,                              
         pkg_global:: bits_n        addr_buffer_sensor_o            
                                                                        
    );

     //IMPORTAR DATOS
    import pkg_global::*;
    
    //PARAMETROS
    parameter   //datos control
                INICIA_SD               = 8'h00,
                CAPTURA                 = 8'h03,
                GUARDAR_SD              = 8'h04,
                LEER_SD                 = 8'h05;
    
    //variables internas
    logic       [2 : 0]                 led_rgb;
    
    logic       [7 : 0]                 micro_control;
    
    logic       [8 : 0]                 contador_muestras;
    
    logic                               c1,
                                        c2,
                                        c3,
                                        c4,
                                        c5,
                                        en_clk_luz,
                                        en_btn_guardar,
                                        we_buffer,
                                        en_initial_sd,
                                        en_c1;
                                       
   
    always @(*) begin
   
        //internas del modulo
        micro_control   = micro_control_i;
        en_c1           = en_c1_i;
        
    end
    
    always @(posedge clk_i) begin
        
        if(rst_i) begin
            c1                  <= 0;
            c2                  <= 0;
            c3                  <= 0;
            c4                  <= 0;
            contador_muestras   <= 0;
            en_clk_luz          <= 0;
            en_btn_guardar      <= 0;
            we_buffer           <= 0;
            en_initial_sd       <= 0;
            led_rgb             <= 0;
             
        end else begin

            case(micro_control)
            
                INICIA_SD: 
                    begin
                    
                        en_initial_sd <= 1;
                        
                        if(en_c1) begin
                            //estos dos datos se debe activar justamente cuando realiza el salto
                            en_clk_luz      <= 1;
                            we_buffer       <= 1;
                            c1              <= 1;
                            en_initial_sd   <= 0;
                        end else begin
                            c1              <= 0;
                        end
                        
                    end
               
                CAPTURA: 
                    begin
                    
                        c1              <= 0;
                        
                        if(!sw_modo_i) begin                          
                                
                            if(!en_btn_guardar) begin
                                if(contador_muestras < 511) begin //cambiar a 512
                                
                                    if(proccess_luz_i) contador_muestras <= contador_muestras + 1;
                                
                                end else begin
                                           
                                    we_buffer           <= 0;
                                    en_clk_luz          <= 0;
                                    en_btn_guardar      <= 1;
                                    led_rgb             <= 6;
                                    
                                end 
                                
                            end else begin
                           
                                if(btn_guardar_i) begin 
                                
                                     c3                 <= 1;
                                     led_rgb            <= 0;
                                
                                end
                            end
                            
                        end else begin
                        
                            c2 <= 1;
                            
                        end
                                           
                    end                    
                
                GUARDAR_SD: 
                    begin 
                        //al terminar el proceso
                        /*c2                  <= 0;
                        c3                  <= 0;
                        en_clk_luz          <= 1;
                        we_buffer           <= 1;
                        en_btn_guardar      <= 0;
                        contador_muestras   <= 0;*/
                    end
                
                
                LEER_SD: 
                    begin 
                        
                    end
  
                default: 
                    begin
                        c2                  <= 0;
                        c3                  <= 0;
                        c4                  <= 0;
                        contador_muestras   <= 0;
                        en_clk_luz          <= 0;
                        en_btn_guardar      <= 0;
                        we_buffer           <= 0;
                    end
            endcase    
        
        end

    end//end always
    
    //SALIDA
    always_comb begin
        c1_o                    = c1;
        c2_o                    = c2;
        c3_o                    = c3;
        c4_o                    = c4;
        addr_buffer_sensor_o    = contador_muestras;
        we_buffer_o             = we_buffer;
        en_clk_luz_o            = en_clk_luz;
        led_rgb_o               = led_rgb;
        en_initial_sd_o         = en_initial_sd;      
    end
endmodule
