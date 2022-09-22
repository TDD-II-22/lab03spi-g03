`timescale 1ns / 1ps
module module_control_spi(

    input  logic                        clk_i,
                                        rst_i,
                                        clk_fn_i,
                        [2 : 0]         control_i,
    pkg_global:: struct_reg_control     cntr_str_i,
       
    output logic                        send_o,
                                        we_reg_o,
                                        progress_o,
                                        contador_o,
                                        we_rx_o,
                                        hold_ctrl_o,
                                        we_ram2_o,
                                        cs_ctrl_o,
                       [1 : 0]          all_o,
                       [9 : 0]          rx_o,
    pkg_global::bits_n                  addr2_o   
    );

     //IMPORTAR DATOS
    import pkg_global::*;
    
                //datos control
    parameter   CTR_SEND                = 3'b000,
                CTR_PRELOAD1            = 3'b001, 
                CTR_LOAD                = 3'b010,
                CTR_TRANSFER            = 3'b011,               
                CTR_CHECK               = 3'b100,
                CTR_PRELOAD2            = 3'b101, 
                CTR_DOWN                = 3'b110; 

    //VARIABLES IMPORTADAS
    bits_n1                             n_rx_end,
                                        rx;
    bits_n                              n_tx_end,
                                        addr2;  
    logic                               all_1s,
                                        all_0s,
                                        send;
    
    logic   [3 : 0]                     contador,
                                        control;                                
    
    logic                               hold_ctrl,
                                        clk_fn,
                                        we_reg,
                                        progress,
                                        en_conta,
                                        we_rx,
                                        we_ram2,
                                        cs_ctrl;


    //ASIGNACIONES INCIALEs
    
    //struct
    assign send                            = cntr_str_i.send;
    assign n_rx_end                        = cntr_str_i.n_rx_end;
    assign n_tx_end                        = cntr_str_i.n_tx_end;
    assign all_1s                          = cntr_str_i.all_1s;
    assign all_0s                          = cntr_str_i.all_0s;
    assign cs_ctrl                         = cntr_str_i.cs_ctrl;
    
    always @(*) begin
   
        //internas del modulo
        control                             = control_i;
        clk_fn                              = clk_fn_i;
      
    end
    
    always @(posedge clk_i) begin
        
        if(rst_i) begin
        
             hold_ctrl           <= 0; 
             addr2               <= 0;
             contador            <= 0;
             we_reg              <= 0;
             progress            <= 0;
             en_conta            <= 0;
             we_rx               <= 0;
             rx                  <= 0; 
             
        end else begin

            case(control)
            
                CTR_SEND: //0
                    begin        
                        hold_ctrl           <= 0;
                        we_ram2             <= 0;  
                    end
                
                CTR_PRELOAD1: //1
                    begin            
                        hold_ctrl           <= 1; 
                        addr2               <= 0;                                     
                    end
                        
                CTR_LOAD: //2
                    begin
                        contador            <= 0;             
                        we_reg              <= 1;
                        we_ram2             <= 0; 
                        
                    end
                       
                CTR_TRANSFER: //3
                    begin             
                         
                        we_reg              <= 0;
                        we_ram2             <= 1;
                        if(contador  != 8) begin
                            if(clk_fn) begin
                                contador <= contador + 1;
                                en_conta <= 0;
                            end
                        end else
                            en_conta <=1;
                            
                    end
                
                CTR_CHECK: //4
                    begin 
                        en_conta                <= 0;
                        we_ram2                 <= 0;      
                        if(n_rx_end < n_tx_end) begin
                            progress            <= 0;
                            addr2               <= addr2 + 1;
                            rx                  <= rx + 1;
                            we_rx               <= 1;
                        end else begin
                            progress            <= 1;
                        end
                    end
    
                CTR_PRELOAD2: //5
                    begin
                       we_reg                   <= 1;
                       we_rx                    <= 0; 
                    end
                   
                CTR_DOWN: //6
                    begin
                        progress                <= 0;
                        rx                      <= 0;
                        we_reg                  <= 0;  
                    end
                
                default: 
                    begin
                        hold_ctrl               <= 0; 
                        addr2                   <= 0;
                        contador                <= 0;
                        we_reg                  <= 0;
                        progress                <= 0;
                    end
            endcase    
        
        end

    end//end always
    
    //SALIDA
    always_comb begin
        send_o                      = send;
        contador_o                  = en_conta;
        all_o                       = {all_0s, all_1s};
        we_reg_o                    = we_reg;
        progress_o                  = progress;    
        rx_o                        = rx;
        we_rx_o                     = we_rx;
        hold_ctrl_o                 = hold_ctrl;
        addr2_o                     = addr2;
        we_ram2_o                   = we_ram2;
        cs_ctrl_o                   = ~cs_ctrl;
    end
    
endmodule  