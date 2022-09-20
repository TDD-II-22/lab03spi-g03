`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2022 07:37:56 PM
// Design Name: 
// Module Name: module_memoria
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


module module_memoria(
                        input                             clk_i,
                        input                             rst_i,
                        input                             we_i,
                        input  pkg_global:: bitsh_t       addr_rs1_i,
                        input  pkg_global:: bitsh_t       addr_rd_i,
                        input  pkg_global:: bits_width    data_in_i,
                        output pkg_global:: bits_width    rs1_o
                     );
    
    import                 pkg_global::*;
    
    
    matriz_2alaN_x_W_t            memoria;
    
    always @ ( posedge clk_i ) begin
     if   ( rst_i )  memoria <=          '0;
     else begin 
            memoria [ 0 ] <= '0;
            if ( we_i ) begin
                if ( addr_rd_i != 0 ) begin
                    memoria [ addr_rd_i ] <= data_in_i; 
                end
            end
     end
    end
    
    //Logica de salida
    always_comb begin
        rs1_o = memoria [ addr_rs1_i ];
    end
endmodule
