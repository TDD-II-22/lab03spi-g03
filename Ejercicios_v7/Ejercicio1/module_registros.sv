`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2022 23:25:41
// Design Name: 
// Module Name: module_registros_16bits
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


module module_registros(
    input   logic                   clk_i,
                                    rst_i,
                                    write_en_i,
                                    clk_en_i,
                    [31 : 0]        entrada_r1_i,
                                    entrada_r2_i,
    output  logic   [31 : 0]        salida_ro    
    );
    
    logic   seleccion_reg = 0;
    
    logic   [31 : 0]        salida_r1,
                            salida_r2;
    
    always_comb begin
    
        if(!clk_en_i)       salida_ro  = salida_r1;
        else                salida_ro  = salida_r2;

    end
    
    
    //module registro1
    module_register_pp register_pp1(
                  
        .clk_i                  (clk_i),            
        .rst_i                  (rst_i),            
        .control_i              (write_en_i), 
        .entrada_i              (entrada_r1_i),        
        .salida_o               (salida_r1)         
    
    );
        
    //module registro1
    module_register_pp register_pp2(
                  
        .clk_i                  (clk_i),            
        .rst_i                  (rst_i),            
        .control_i              (write_en_i), 
        .entrada_i              (entrada_r2_i),        
        .salida_o               (salida_r2)         
    
    );
    
endmodule
