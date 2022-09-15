`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 15.08.2022 02:59:44
// Design Name: 
// Module Name: module_clock_catodo
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


module module_clock_divider #(parameter real PERIODO = 2)(

    input   logic   clk_10Mhz_i,
                    reset_i,
                    pausa_i,
    output  logic   clock_o 
    
    );
    
    //CLOCK DIVIDER DE PULSO
    
    //variables internas 
   
    int                 divider;   
    real                frecuencia;
    
    logic   [31 : 0]    counter;
    
    logic               clk_out;
    
    //asignacion de la frecuencia a dividir
    always_comb begin
    
        frecuencia  = 1.0 / PERIODO ;
        divider     = 10e6 / frecuencia;
    
    end
    
    //logica contador
    always_ff @(posedge clk_10Mhz_i)
        
        if(reset_i) begin
            counter <= 0;
            clk_out <= 0;        
        end else begin
            if(!pausa_i) begin //si se habilita detiene el conteo
                if(counter  == (divider - 1)) begin //esto genera un flanco reloj, que se va a dar justo en el counter
                    counter <= 0;
                    clk_out <= 1; 
                end else begin
                    counter <= counter + 1;
                    clk_out <= 0;
                end 
            end
        end   
    assign clock_o = clk_out;
    
endmodule
