`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 20:52:30
// Design Name: 
// Module Name: module_mux_condiciones
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


module module_mux_condiciones  #(parameter SEL_BITS=3)(
    input   logic       [SEL_BITS-1:0] sel, //Bus de selección con ancho SEL_BITS (ej.: 3 bits)
    input   logic       [(2**SEL_BITS)-1:0] in_bits, //los bits de entrada: 2^SEL_BITS (ej.: 2^3=8 bits)
    output  logic       out //bit de salida
    );
    
    always_comb begin
        out = in_bits[sel];
    end
endmodule
