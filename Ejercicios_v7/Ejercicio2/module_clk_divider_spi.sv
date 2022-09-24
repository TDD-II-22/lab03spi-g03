`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2022 21:56:58
// Design Name: 
// Module Name: module_clock_mux_divider
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


module module_clk_divider_spi(

    input   logic       clk_i,
                        rst_i,
                        start_i,
    output  logic       clk_fp_o,
                        clk_fn_o,
                        clk_sck_o
    );   
        
    //variables internas 
    int                 divider;   
    
    logic   [31 : 0]    counter,
                        cntr_flankp,
                        cntr_flankn;
    
    logic               clk_out = 1,
                        clk_fp,
                        clk_fn,
                        flanco = 1;
    
    assign divider      = 100;

    //logica contador
    always_ff @(posedge clk_i)
        
        if(rst_i) begin
        
            counter         <= 0;
            clk_out         <= 1;  
            cntr_flankp     <= 0;
            cntr_flankn     <= 0;
            clk_fp          <= 0; 
            clk_fn          <= 0;
            flanco          <= 1;
            
        end else begin
            
            if(start_i) begin
                
                //CLOCK CON CICLOS DE 50%
                if(counter  == (divider / 2)- 1) begin //esto genera un flanco reloj, que se va a dar justo en el counter         
                    
                    counter             <= 0;
                    clk_out             <= ~clk_out;
               
                end else begin
                        
                    counter             <= counter + 1;
                    
                end
                
                //FLANCOS POSITVOS Y NEGATIVOS AL 50% DEL RELOJ
                if(clk_out) begin
                
                    if(flanco) begin
                        if(cntr_flankp == (divider / 4) - 1) begin                 
                            clk_fp                  <= 1; 
                            cntr_flankp             <= 0;
                            flanco                  <= 0;         
                        end else begin
                            clk_fp                  <= 0;
                            cntr_flankp             <= cntr_flankp + 1;
                        end              
                    end else
                        clk_fp                      <= 0;
                           
                end else begin
                
                    if(!flanco) begin
                        if(cntr_flankn == (divider / 4) - 1) begin                 
                            clk_fn                  <= 1; 
                            cntr_flankn             <= 0;
                            flanco                  <= 1;         
                        end else begin
                            clk_fn                  <= 0;
                            cntr_flankn             <= cntr_flankn + 1;        
                        end  
                    end else
                        clk_fn                      <= 0;
                         
                end     
            
            end else begin
            
                counter         <= 0;
                clk_out         <= 1;  
                cntr_flankp     <= 0;
                cntr_flankn     <= 0;                
            
            end
        
        end
        
    //salidas
    always_comb begin
        clk_fp_o    = clk_fp;
        clk_fn_o    = clk_fn;
        clk_sck_o   = clk_out;
    end
    
endmodule
