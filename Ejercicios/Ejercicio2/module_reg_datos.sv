`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2022 00:05:47
// Design Name: 
// Module Name: module_reg_datos
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


module module_reg_datos(
    input  logic                        clk_i,  
    input  logic                        rst_i, 
    input  logic                        hold_ctrl_i,
    input  [1 : 0]                      addr1_i,
    input  pkg_global::bits_n           addr2_i,
    input  [11 : 0]                     in1_i,
    input  [7 : 0]                      in2_i,
    input  logic                        wr1_i,
    input  logic                        wr2_i,
    output pkg_global::bits_width       data_o
    );
    //IMPORTAR DATOS
    import pkg_global::*;
    
    logic [9 : 0]                       addr_ram;
    logic [7 : 0]                       datain_ram;
    logic                               enable_ram;
    logic [7 : 0]                       data_out;   
    
    always_comb begin
        if( hold_ctrl_i ) begin
            if( wr2_i ) begin
                    enable_ram        = 1;
                    addr_ram          = addr2_i;
                    datain_ram        = in2_i[ 7 : 0 ];        
            end
            else begin
                    enable_ram        = 0;
                    addr_ram          = addr2_i;
                    datain_ram        = in2_i[ 7 : 0 ]; 
            end         
        end
        else begin
            if( wr1_i ) begin
                    enable_ram        = 1;
                    addr_ram          = addr1_i;
                    datain_ram        = in1_i[ 7 : 0 ];   
                end
                else begin
                    enable_ram        = 0;
                    addr_ram          = addr1_i;
                    datain_ram        = in1_i[ 7 : 0 ];  
                end
        end
    end
    
    
    module_memoria memoria_1(                
                        .clk_i          (clk_i),
                        .rst_i          (rst_i),
                        .we_i           (enable_ram),
                        .addr_rs1_i     (addr_ram),
                        .addr_rd_i      (addr_ram),
                        .data_in_i      (datain_ram),
                        .rs1_o          (data_out)
    );
    
    assign data_o = {24'b0, data_out};
    
endmodule
