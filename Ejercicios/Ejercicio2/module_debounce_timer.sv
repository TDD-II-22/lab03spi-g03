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


module module_debounce_timer #(parameter real PERIODO = 1)(

    input   logic   clk_10Mhz_i,
                    reset_i,
                    btn_send_i,
    output  logic   send_pulso_i 
    
    );
    
    //CLOCK DIVIDER DE PULSO
    
    //variables internas 
   
    int                 divider;   
    real                frecuencia;
    
    logic   [31 : 0]    counter;
    
    logic               start,
                        send,
                        send_pulso;
    
    //asignacion de la frecuencia a dividir
    always_comb begin
    
        frecuencia  = 1.0 / PERIODO ;
        divider     = 10e6 / frecuencia;
        
    end
    
    //logica contador
    always_ff @(posedge clk_10Mhz_i)
        
        if(reset_i) begin
            counter <= 0;
            send    <= 0;
            start   <= 0;      
        end else begin
            if(btn_send_i && !start) begin 
                start   <= 1;
                send    <= 1;
            end         
            if(start) begin //si se habilita inicia el conteo
                if(counter  == (divider - 1)) begin //esto genera un flanco reloj, que se va a dar justo en el counter
                    counter <= 0;
                    start   <= 0;           
                end else begin
                    counter <= counter + 1;
                    send    <= 0;
                end 
            end
        end   
    assign send_pulso_i = send;
    
endmodule
