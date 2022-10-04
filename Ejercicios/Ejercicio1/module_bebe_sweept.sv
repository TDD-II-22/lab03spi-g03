`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2022 22:33:35
// Design Name: 
// Module Name: module_bebe_sweept
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


module module_bebe_sweept(
    
    input   logic               clk_10Mhz_i,    
                                clk_en_i,
                                pause_i,
                                rst_i,
                                
    output  logic   [31 : 0]    bebe_sweept_o
    
    );
    
    
    logic   [3 : 0]             Display1,
                                Display2,
                                Display3,
                                Display4,
                                Display5,
                                Display6,
                                Display7,
                                Display8;
    logic   [2 : 0]             contador;                                
    
    
    always_ff @(posedge clk_10Mhz_i) begin    
    
        if(rst_i) begin
        
            Display1 <= 4'hd;
            Display2 <= 0;
            Display3 <= 0;
            Display4 <= 0;
            Display5 <= 0;
            Display6 <= 0;
            Display7 <= 0;
            Display8 <= 0;
            contador <= 1;
        
        end else begin
            if(!pause_i) begin
           
                if(clk_en_i) begin
                    
                    contador <= contador + 1;
                    
                    if(contador == 7) contador <=0;
               
                    case(contador)
                        0:
                            begin
                                Display1 <= 4'hd;
                                Display2 <= 4'h0;
                                Display3 <= 4'h0;
                                Display4 <= 4'h0;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        1:
                            begin
                                Display1 <= 4'ha;
                                Display2 <= 4'hd;
                                Display3 <= 4'h0;
                                Display4 <= 4'h0;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        2:
                            begin
                                Display1 <= 4'h1;
                                Display2 <= 4'ha;
                                Display3 <= 4'hd;
                                Display4 <= 4'h0;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        3:
                            begin
                                Display1 <= 4'he;
                                Display2 <= 4'h1;
                                Display3 <= 4'ha;
                                Display4 <= 4'hd;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        4:
                            begin
                                Display1 <= 4'hb;
                                Display2 <= 4'he;
                                Display3 <= 4'h1;
                                Display4 <= 4'ha;
                                Display5 <= 4'hd;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        5:
                            begin
                                Display1 <= 4'he;
                                Display2 <= 4'hb;
                                Display3 <= 4'he;
                                Display4 <= 4'h1;
                                Display5 <= 4'ha;
                                Display6 <= 4'hd;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        6:
                            begin
                                Display1 <= 4'hb;
                                Display2 <= 4'he;
                                Display3 <= 4'hb;
                                Display4 <= 4'he;
                                Display5 <= 4'h1;
                                Display6 <= 4'ha;
                                Display7 <= 4'hd;
                                Display8 <= 4'h0;
                            end
                        7:
                            begin
                                Display1 <= 4'he;
                                Display2 <= 4'hb;
                                Display3 <= 4'he;
                                Display4 <= 4'hb;
                                Display5 <= 4'he;
                                Display6 <= 4'h1;
                                Display7 <= 4'ha;
                                Display8 <= 4'hd;
                            end
                    endcase      
                end
            
            end
               
        end
                  
    end //always

    assign bebe_sweept_o = {Display8, Display7, Display6, Display5, 
                            Display4, Display3, Display2, Display1};
    endmodule
