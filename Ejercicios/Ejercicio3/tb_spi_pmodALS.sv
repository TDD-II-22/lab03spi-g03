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
                        clk,
                        clk_sim,
                        locked,
                        cs,
                        mosi,
                        cntr,
                        miso,
                        cs_ctrl_po,
                        sck_po;
    logic   [15 : 0]    var_reg;
    logic   [6 : 0]     display_po;
    logic   [7 : 0]     display_select_po;
    logic   [7 : 0]     dato;
    logic   [7 : 0]     autoverificacion;
                        
   
    //instancia
    sim_top DUT(
    
        .clk_100Mhz_pi      (clk_100Mhz_pi),
        .rst_pi             (rst_i),
        .clk_sim_o          (clk_sim),
        .miso_pi            (miso),  
        .dato               (dato),               
        .mosi_po            (mosi), //puede ser un led, no se ocupa
        .locked_po          (locked),
        .cs_ctrl_po         (cs_ctrl_po),
        .sck_po             (sck_po),
        .display_po         (display_po),
        .display_select_po  (display_select_po)                     
    ); 
                                                                             
    initial begin
        rst_i            = 1;
        miso             = 0;
        autoverificacion = 0;
        cntr             = 0;
        clk_100Mhz_pi    = 0;
        forever #5 clk_100Mhz_pi = ~clk_100Mhz_pi;   
    end
                                                                             
    always @(posedge locked) begin
    rst_i    <=    0;
    
    #8400;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;

    #10000;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;

    #9700;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;

    #9700;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;

    #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
    
        #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
    
        #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
    
        #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
    
        #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
    
        #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
    
        #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
    
        #9700;
    miso <=    1'b1;
    #300;
    miso <=    1'b0;
       autoverificacion  <=    dato;
        #9700;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;

        #9700;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;

        #9700;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;

        #9700;
    miso <=    1'b0;
    #300;
    miso <=    1'b0;
 
    #10000;
    end
    
    
//    always @(posedge clk_sim)begin 
//        if (cntr == 15)begin
//        #50;
//        miso       <=    1'b0;
//        cntr        <=    0;
//        end
//        if (cntr == 0 || cntr == 1 || cntr == 2 || cntr == 3 || cntr == 12 || cntr == 13 || cntr == 14) begin
//        #50;
//        miso       <=    1'b0;
//        cntr        <=    cntr+1;
//        end else begin
//        #50;
//        miso       <=     1'b1;
//        //miso       <=    {$random} %1;
//        #50;
//        miso       <=    1'b0;
//        cntr <=    cntr+1;
//        end

//    end




endmodule
