`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2022 22:31:58
// Design Name: 
// Module Name: module_leds_rgb
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


module module_leds_rgb #(parameter real PERIODO = 1e-3)(
    
    input   logic               clk_i,
                                rst_i,
                    [2 : 0]     color_i,
    output  logic   [2 : 0]     rgb_o
    
    );

    parameter                   OFF             = 0,
                                ROJO            = 1,
                                VERDE           = 2,
                                AZUL            = 3,
                                AMARILLO        = 4,
                                CIAN            = 5,
                                MAGENTA         = 6,
                                BLANCO          = 7;
    
        
    int                         divider;   
    real                        frecuencia;
    
    logic [1 : 0]               digit_select;   // 3 bits para seleccionar los 8 digitos 
    logic [31 : 0]              digit_timer;    // contador para refrescar los digitos
    
    logic [2 : 0]               rgb;
    //asignacion de la frecuencia a dividir
    always_comb begin
    
        frecuencia  = 1.0 / PERIODO ;
        divider     = 10e6 / frecuencia;
    
    end
    
    //CLOCK
    //logica para controlar la seleccion de digitos
    always_ff @(posedge clk_i) begin
        if(rst_i) begin
            digit_select <= 0;
            digit_timer  <= 0;
        end else
            //logica para el periodo de refrescamiento
            if( digit_timer  == (divider - 1)) begin
                digit_timer  <= 0;
                digit_select <= digit_select + 1;
            end else
                digit_timer  <= digit_timer + 1;   
    end
    
    //logica para encender un adono determinado
    always @(digit_select) begin
        case(color_i)
            OFF:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b000;
                        2'h1: rgb <= 3'b000;
                        2'h2: rgb <= 3'b000;
                    endcase
                end
            ROJO:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b100;
                        2'h1: rgb <= 3'b000;
                        2'h2: rgb <= 3'b000;
                    endcase
                end
            VERDE:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b000;
                        2'h1: rgb <= 3'b010;
                        2'h2: rgb <= 3'b000;
                    endcase
                end
            AZUL:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b000;
                        2'h1: rgb <= 3'b000;
                        2'h2: rgb <= 3'b001;
                    endcase
                end
            AMARILLO:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b100;
                        2'h1: rgb <= 3'b010;
                        2'h2: rgb <= 3'b000;
                    endcase
                end
            CIAN:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b000;
                        2'h1: rgb <= 3'b010;
                        2'h2: rgb <= 3'b001;
                    endcase
                end
            MAGENTA:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b100;
                        2'h1: rgb <= 3'b000;
                        2'h2: rgb <= 3'b001;
                    endcase
                end
            BLANCO:
                begin
                     case(digit_select)
                        2'h0: rgb <= 3'b100;
                        2'h1: rgb <= 3'b010;
                        2'h2: rgb <= 3'b001;
                    endcase
                end
        endcase    
        
    end
    
    assign rgb_o = rgb;
    
    
    
endmodule
