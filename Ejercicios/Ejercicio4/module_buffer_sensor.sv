`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 16:55:10
// Design Name: 
// Module Name: module_buffer_sensor
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


module module_buffer_sensor(
    input  logic                        clk_i,  
    input  logic                        rst_i, 
    input  pkg_global::bits_n           addr1_i,//temporal
    input  [7 : 0]                      in1_i,
    input  logic                        wr1_i,
    output pkg_global::bits_width       data_o
    );
    
    //IMPORTAR DATOS
    import pkg_global::*;
    
    logic [9 : 0]                       addr_ram;
    logic [7 : 0]                       datain_ram;
    logic                               enable_ram;
    logic [7 : 0]                       data_out; 
    
    always_comb begin
    
            if( wr1_i ) begin
                    enable_ram          = 1;
                    addr_ram            = addr1_i;
                    datain_ram          = in1_i[ 7 : 0 ];        
            end
            else begin
                    enable_ram          = 0;
                    addr_ram            = addr1_i;
                    datain_ram          = in1_i[ 7 : 0 ]; 
            end         
        end


    
    module_memoria memoria_buffer(                
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
