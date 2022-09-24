`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2022 00:35:38
// Design Name: 
// Module Name: module_mux_salida
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


module module_mux_salida(
    input   logic                       selec_salida_i,
    input   logic   [31 : 0]            salida_datos_o,
                                        salidas_control_o,
    output  logic   [31 : 0]            salida_i            
    );
    
    always@(*) begin
    
        case(selec_salida_i)
        
            0: salida_i = salidas_control_o;
            
            1: salida_i = salida_datos_o;
            
        endcase

    end
endmodule
