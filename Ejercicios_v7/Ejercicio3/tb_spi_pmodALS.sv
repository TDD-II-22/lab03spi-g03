`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2022 12:25:54
// Design Name: 
// Module Name: tb_spi_pmodALS
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


module tb_spi_pmodALS;
   
    logic               clk_100Mhz_pi,
                        rst_i,
                        locked,
                        mosi,
                        miso,
                        cs_ctrl_po,
                        sck_po;
    
    logic   [6 : 0]     display_po;
    logic   [7 : 0]     display_select_po;
                        
   
    //instancia
    top_tactico joder_encima_tactico(
    
        .clk_100Mhz_pi      (clk_100Mhz_pi),
        .rst_pi             (rst_i),
        .miso_pi            (miso),                 
        .mosi_po            (mosi), //puede ser un led, no se ocupa
        .locked_po          (locked),
        .cs_ctrl_po         (cs_ctrl_po),
        .sck_po             (sck_po),
        .display_po         (display_po),
        .display_select_po  (display_select_po)                     
    ); 
                                                                             
    initial begin
        rst_i = 1;
        miso=0;
        clk_100Mhz_pi = 0;
        forever #5 clk_100Mhz_pi = ~clk_100Mhz_pi;   
    end
    
     //aplicar reset
    always @(posedge locked) begin
        #50;
        rst_i <= 0;
        #2000;
    end
    always @(*) begin
       miso = ~mosi;    
    end
endmodule
