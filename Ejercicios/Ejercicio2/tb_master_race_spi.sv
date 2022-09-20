`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2022 21:40:38
// Design Name: 
// Module Name: tb_master_race_spi
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


module tb_master_race_spi;

    
    logic               clk_100Mhz_pi,
                        rst_i,
                        locked,
                        mosi,
                        miso,
                        btn_send_pi,
                        sw_we_pi,
                        reg_sel_pi,
                        selec_entra_pi;
    logic   [11 : 0]    sw_entrada_pi;
    
    logic   [1:0]       sw_addr_in_pi;
    
    logic   [6 : 0]     display_po;
    logic   [7 : 0]     display_select_po;
                        
    //DATOS TEMPORALES                            
                               
    
    logic   [31 : 0 ]   salida_po;
   


 top_tactico top_tactico1(

    .clk_100Mhz_pi(clk_100Mhz_pi),
    .rst_pi(rst_i),
    .miso_pi(miso),                      
    .btn_send_pi(btn_send_pi),
    .sw_we_pi(sw_we_pi),
    .reg_sel_pi(reg_sel_pi),
    .sw_addr_in_pi(sw_addr_in_pi),
    .sw_entrada_pi(sw_entrada_pi),
    .locked(locked),
    .mosi_po(mosi),
    .display_po(display_po),
    .display_select_po(display_select_po) 
);   
                                                                             
    initial begin
        rst_i = 1;
        miso=0;
        clk_100Mhz_pi = 0;
        btn_send_pi=0;
        sw_we_pi=0;
        reg_sel_pi=0;   
        selec_entra_pi=0;
        sw_entrada_pi=0;
        sw_addr_in_pi=0;
        forever #5 clk_100Mhz_pi = ~clk_100Mhz_pi;   
    end
    
     //aplicar reset
    always @(posedge locked) begin
        #50;
        rst_i <= 0;
        #1000;
        reg_sel_pi = 1;
        sw_we_pi = 1;
        #200;
        sw_addr_in_pi=2'b01;
        sw_entrada_pi = 8'haa;
        #200;
        
        
        
        /*
        reg_sel_pi =1;
        sw_we_pi = 1;
        #200;
        sw_addr_in_pi=2'b01;
        sw_entrada_pi = 8'haa;
        #200;
        sw_addr_in_pi=2'b10;
        sw_entrada_pi = 8'h00;
        #200;
        sw_addr_in_pi=2'b11;
        sw_entrada_pi = 8'hff;
        #500; 
        sw_we_pi = 0;
        reg_sel_pi =0; 
        sw_entrada_pi = 12'b0000_0010_001; 
        
        //entrada a registro control
        #500;
        sw_we_pi = 1;
        selec_entra_pi=0;
        #300
        sw_we_pi = 0;
        #200;
        btn_send_pi = 1;
        #200;
        btn_send_pi = 0;
        #600000;
        sw_addr_in_pi=1;
        #200
        sw_addr_in_pi=2;
        #200
        sw_addr_in_pi=3;
        #500000; 
        sw_addr_in_pi=0;
        #1000;
        sw_addr_in_pi=1;
        */
    end
    always @(*) begin
       miso = ~mosi;    
    end
    
  

endmodule
