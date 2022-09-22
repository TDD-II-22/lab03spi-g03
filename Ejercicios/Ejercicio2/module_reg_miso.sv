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


module module_reg_miso(
    input   logic                           clk_i,
                                            rst_i,
                                            clk_fn_i,
                                            miso_i,
    output  logic           [7 : 0]         dato_recibido_o
                                            
    );
    
    //variables internas
    logic  [7 : 0]                          reg_shift_miso;
    logic                                   miso;
    logic                                   clk_fn;
    
    
    
    
    //asignaturas
    
    assign clk_fn                           = clk_fn_i;
    assign miso                             = miso_i;
    
    always @(posedge clk_i) begin
    
        if(rst_i) begin   
            reg_shift_miso <= 0;
        end else begin
        
           if(clk_fn) begin
                reg_shift_miso             <= {reg_shift_miso [6 : 0], miso};  
            end

        end
    
    end
    
    //salidas
    assign dato_recibido_o = reg_shift_miso;

endmodule
