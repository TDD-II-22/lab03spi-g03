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
    input   pkg_global::bits_width      salida_datos_o,
                                        salidas_control_o,
    output  pkg_global::bits_width      salida_i            
    );
    
    always@(*) begin
    
        case(selec_salida_i)
        
            0: salida_i = salida_datos_o;
            
            1: salida_i = salidas_control_o;
            
        endcase

    end
endmodule
