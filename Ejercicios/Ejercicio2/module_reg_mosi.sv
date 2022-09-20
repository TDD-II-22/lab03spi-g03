`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2022 14:59:34
// Design Name: 
// Module Name: module_reg_mosi
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


module module_reg_mosi(
    input   logic                           clk_i,
                                            rst_i,
                                            we_i,
                                            clk_fp_i,
                        [1 : 0]             all_i,
                        [7 : 0]             dato_in_i,
    
    output                                  mosi_o
    
    );
    
    //variables internas
    logic  [7 : 0]                          reg_shift_mosi,
                                            dato_in;
    logic                                   mosi;
    logic                                   clk_fp,
                                            we;
    //asignaturas
    
    assign clk_fp                           = clk_fp_i;
    assign we                               = we_i;
    
    always @(*) begin
    
        case(all_i)
        
            2'b00: dato_in = dato_in_i;
            2'b01: dato_in = 0;
            2'b11: dato_in = 1;
            
            default: dato_in = 0;
        
        endcase      
         
    end
    
    always @(posedge clk_i) begin
    
        if(rst_i) begin
            mosi            <= 0;
            reg_shift_mosi  <= 0;
            
        end else begin
            if(we) begin
               
               reg_shift_mosi   <= dato_in;  
            
            end else begin
            
               if(clk_fp) begin
                    mosi             <= reg_shift_mosi[0];
                    reg_shift_mosi   <= {1'b0, reg_shift_mosi[7 : 1]};  
               end
    
            end
        end
    end
    
    //salidas
    assign mosi_o = mosi;

endmodule
