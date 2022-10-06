`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 20:51:22
// Design Name: 
// Module Name: module_counter_with_load
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


module module_counter_with_load #(parameter ANCHO = 8)(
    input   logic           clk,
    input   logic           rst,
    input   logic           LD_C, //cargar (1), contar (0)
    input   logic           [ANCHO-1:0] CuentaEntrada, //Valor para carga paralela (donde vamos a saltar)
    output  logic           [ANCHO-1:0] cuenta  //salida del contador
    
    );
    
    always_ff @(posedge clk) begin
    
      if (rst) //reset activo en ALTO
         cuenta <= {ANCHO{1'b0}};
      else
         if (LD_C) //si LD_C es 1 entonces cargue el valor a la entrada
            cuenta <= CuentaEntrada;
         else // sino entonces cuente hacia arriba
            cuenta <= cuenta + 1'b1;
            
    end
endmodule
