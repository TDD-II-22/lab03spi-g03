`timescale 1ns / 1ps
module top_master_race_spi(

    input   logic                       clk_i,
                                        rst_i,
                                        miso_i,                                            
                    [7 : 0]             dato_in,
    pkg_global:: struct_reg_control     cntr_str_i,
     
    output logic                        mosi_o,
                                        we_rx_o,                                      
                                        proccess_o,
                                        hold_ctrl_o,
                                        we_ram2_o,
                                        cs_ctrl_o,          
                    [7 : 0]             dato_recibido_r,
                    [9 : 0]             rx_o,
    pkg_global::bits_n                  addr2_o
                    
    );   
    
    import pkg_global::*;
    
    //variables internas
    
    logic           [1 : 0]     all;
    
    logic           [2 : 0]     control;
    
    logic                       clk,
                                clk_fp,
                                clk_fn,
                                contador,
                                send,
                                progress,
                                we_reg; 
    assign clk = clk_i;
        
    //clock divider
    module_clk_divider_spi clk_divider_spi(

        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .start_i                (hold_ctrl_o),
        .clk_fp_o               (clk_fp),
        .clk_fn_o               (clk_fn)
    
    );   
      
    
    //maquina de estados
    module_state_machine_spi state_machine(
        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .send_i                 (send),
        .progress_i             (progress),
        .contador_i             (contador),
        .control_o              (control)
    );
    
    //Control
    module_control_spi control_spi(
        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .clk_fn_i               (clk_fn),
        .control_i              (control),
        .cntr_str_i             (cntr_str_i),
        .send_o                 (send),
        .we_reg_o               (we_reg),
        .progress_o             (progress),
        .contador_o             (contador),
        .we_rx_o                (we_rx_o),
        .hold_ctrl_o            (hold_ctrl_o),
        .we_ram2_o              (we_ram2_o),
        .all_o                  (all),
        .rx_o                   (rx_o),
        .addr2_o                (addr2_o),
        .cs_ctrl_o              (cs_ctrl_o)   
    );
    
    //MOSI
    module_reg_mosi reg_mosi(
        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .we_i                   (we_reg),
        .clk_fp_i               (clk_fp),
        .all_i                  (all),
        .dato_in_i              (dato_in),
        .mosi_o                 (mosi_o)   
    );
    
    //MISO
    module_reg_miso reg_miso(
        .clk_i                  (clk),
        .rst_i                  (rst_i),
        .clk_fn_i               (clk_fn),
        .miso_i                 (miso_i),
        .dato_recibido_o        (dato_recibido_r)                                       
    );
    
    
    //salidas
    assign proccess_o = progress;
    
    
    
endmodule