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


module module_clock_mux_divider(

    input   logic               clk_10Mhz_i,
                                reset_i,
                    [1 : 0]     periodos_i,
    output  logic               clock_o,
                                clk_en1,
                                clk_en2 
    
    );
    
    //CLOCK DIVIDER DE PULSO
    
    
    //variables internas 
    int                 divider;   
    
    logic   [31 : 0]    counter;
    
    logic               clk_out;
    
    //logica de seleccion 
    always @(periodos_i) begin
        
        case(periodos_i)
        
            0: divider = 10;//cambiar para fpga
            1: divider = 10e6;
            2: divider = 20e6;
            3: divider = 30e6;   
            default: divider = 1e6;
        
        endcase

    end

    //logica contador
    always_ff @(posedge clk_10Mhz_i)
        
        if(reset_i) begin
        
            counter         <= 0;
            clk_out         <= 0;  
            
        end else begin
            
            if(counter  == (divider - 1)) begin //esto genera un flanco reloj, que se va a dar justo en el counter         
                
                counter <= 0;
                clk_out <= ~clk_out;                 
                if(!clk_out) begin
                    clk_en1        <= 1;     
                end else begin
                    clk_en2        <= 1;
                end     
                  
            end else if(counter  > (divider - 1)) begin
                                        
                    counter         <= 1;
                    clk_en1         <= 0;
                    clk_en2         <= 0;
            
            end else begin
                    
                    counter         <= counter + 1;
                    clk_en1         <= 0;
                    clk_en2         <= 0;
            end 
                
        end
             
    assign clock_o = clk_out;
endmodule