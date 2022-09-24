`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2022 13:37:42
// Design Name: 
// Module Name: top_pmodALS
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


module top_pmodALS(
    input    logic              clk_i,
                                rst_i,
                                proccess_i,
     pkg_global::bits_width     in_datos_i,                              
     output  logic              we_reg_control_o,
                                send_o,
                                selec_out_o,
     pkg_global::bits_n         addr_pmod_o,
     pkg_global::bits_width     entrada_display_o                
    );
    
    parameter real              PERIODO1S    = 1; //cambiar
                     
    import pkg_global::*;
    
    //variables internas
    logic                       clk1s,
                                clk,
                                we_addr;
    
    bits_n                      addr_pmod; 
    
    logic    [2 : 0]            control_als; 
    
    assign clk                  = clk_i;

       
    module_state_machine_pmodALS machine_pmodALS(

        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .progress_i             (proccess_i),
        .en_clk_1s_i            (clk1s),
        .addr_pmod_i            (addr_pmod),
        .control_als_o          (control_als)
    );

    module_control_pmodALS control_pmodALS(
        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .control_als_i          (control_als),
        .we_reg_control_o       (we_reg_control_o),
        .we_addr_o              (we_addr),
        .addr_pmod_o            (addr_pmod),
        .send_o                 (send_o),
        .selec_out_o            (selec_out_o)                                    
    );

    module_clk1s #(.PERIODO(PERIODO1S)) module_clk1s(

        .clk_10Mhz_i            (clk),
        .reset_i                (rst_i),
        .en_clk1s_o             (clk1s) 
    
    );
    
    module_pmodALS module_pmodALS1(
    
        .clk_i                   (clk),
        .rst_i                   (rst_i),
        .addr_i                  (addr_pmod),
        .we_addr_i               (we_addr),
        .dato_ram_i              (in_datos_i),
        .dato_pmod_o             (entrada_display_o)
            
    );
    
    
    always_comb begin
        addr_pmod_o             = addr_pmod;
    end
    
endmodule
