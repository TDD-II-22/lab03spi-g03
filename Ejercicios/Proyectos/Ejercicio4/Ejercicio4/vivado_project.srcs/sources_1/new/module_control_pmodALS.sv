`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2022 09:08:03
// Design Name: 
// Module Name: module_control_pmodALS
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

module module_control_pmodALS(

    input  logic                        clk_i,
                                        rst_i,
                        [2 : 0]         control_als_i,
    output logic                        we_reg_control_o,
                                        we_addr_o,
                                        selec_out_o,
                                        send_o,
     pkg_global::bits_n                 addr_pmod_o
                                                                           
    );

     //IMPORTAR DATOS
    import pkg_global::*;
    
    //PARAMETROS
    parameter   //datos control
                CTR_WAITP               = 3'b000,
                CTR_ENP                 = 3'b001,
                CTR_WAITS               = 3'b010,
                CTR_FINISH              = 3'b011,
                CTR_PMODALS             = 3'b100; 
                                        
    //variables internas
    
    logic                               we_reg_control,
                                        selec_out,
                                        send,
                                        we_addr;
                                        
    bits_n                              addr_pmod;
    
    logic               [2 : 0]         control_als;
   
    always @(*) begin
   
        //internas del modulo
        control_als                     = control_als_i;
      
    end
    
    always @(posedge clk_i) begin
        
        if(rst_i) begin
        
             we_reg_control                 <= 0;
             send                           <= 0;
             we_addr                        <= 0;
             addr_pmod                      <= 0;
             selec_out                      <= 0;
             
        end else begin

            case(control_als)
            
                CTR_WAITP: //0
                    begin        
                        we_reg_control      <= 1;
                    end
                
                CTR_ENP: //1
                    begin            
                        we_reg_control      <= 0;
                        send                <= 1;                                  
                    end
                        
                CTR_WAITS: //2
                    begin
                        send                <= 0;                            
                    end
                       
                CTR_FINISH: //3
                    begin             
                      we_addr               <= 1;
                      selec_out             <= 1;         
                    end
                
                CTR_PMODALS: //4
                    begin 
                        if(!addr_pmod) begin
                            addr_pmod       <= addr_pmod + 1;
                        end else begin
                            addr_pmod       <= 0;
                            we_addr         <= 0;
                            selec_out       <= 0;     
                        end
                    end
                 
                default: 
                    begin
                         we_reg_control                 <= 0;
                         send                           <= 0;
                         we_addr                        <= 0;
                         addr_pmod                      <= 0;
                    end
            endcase    
        
        end

    end//end always
    
    //SALIDA
    always_comb begin
        we_reg_control_o    = we_reg_control;
        we_addr_o           = we_addr;
        addr_pmod_o         = addr_pmod;
        send_o              = send;
        selec_out_o         = selec_out;
    end
    
endmodule  
