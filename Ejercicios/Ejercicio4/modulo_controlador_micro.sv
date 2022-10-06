`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 20:49:54
// Design Name: 
// Module Name: modulo_controlador_micro
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


module modulo_controlador_micro(
    input logic             clk,
                            rst,
                            Condicion1,
                            Condicion2,
                            Condicion3,
                            Condicion4,
                            Condicion5,
                            Condicion6,
     output logic [2 : 0]   salidas_o
    );
    
    parameter ANCHO_CONTADOR = 4;//Ancho del contador y del bus de la memoria
    parameter BITS_SELECCION_SALTO = 3;//bits usados para seleccionar condiciones de salto
    parameter ANCHO_MEMORIA = ANCHO_CONTADOR+8+1+BITS_SELECCION_SALTO; //20 bits en este ejemplo
    
    
    logic [ANCHO_CONTADOR-1:0] Cuenta_Direccion_Memoria;
    logic [ANCHO_CONTADOR-1:0] Direccion_Salto;
    logic [BITS_SELECCION_SALTO-1:0] Seleccion_De_Condicion_Salto;
    logic Senal_De_Carga_Contador;
    
    logic [15 : 0] memoria;
    
    always_comb begin
            
        Direccion_Salto                 = memoria[8 : 6];
        Seleccion_De_Condicion_Salto    = memoria[2 : 0];
        
    end
    
    dist_mem_gen_0 memoria_room(
        .a(Cuenta_Direccion_Memoria),
        .spo(memoria)
    );
    
    module_counter_with_load #(.ANCHO(ANCHO_CONTADOR)) Uconta (
    
        .clk(clk),
        .rst(rst),
        .LD_C(Senal_De_Carga_Contador), //cargar (1), contar (0)
        .CuentaEntrada(Direccion_Salto), //Valor para carga paralela (donde vamos a saltar)
        .cuenta(Cuenta_Direccion_Memoria) //salida del contador
        
    );
    
    module_mux_condiciones #(.SEL_BITS(BITS_SELECCION_SALTO)) MUX(
       .sel(Seleccion_De_Condicion_Salto), //Bus de selección 
       /*
       Para el ejemplo de 3 bits de selección de salto:
       La selección en 000 significa NO SALTO
       La selección en 111 significa SALTO INCONDICIONAL
       Cualquier otra selección corresponde a las condiciones...
       
       **RECORDAR que el contador salta si la condición es 1
         y continua contando si la condición es 0!!!
       */
       .in_bits(//8 opciones
            {1'b1,//salto incondicional
            Condicion6, //sel 6
            Condicion5, //sel 5
            Condicion4, //sel 4
            Condicion3, //sel 3
            Condicion2, //sel 2
            Condicion1, //sel 1
            1'b0}//NO saltar //menos significativo
            ), //los bits de entrada: 2^SEL_BITS (ej.: 2^3=8 bits)
       .out(Senal_De_Carga_Contador) //bit de salida
       
    );
    
     always_comb begin
            
        salidas_o = memoria[5 : 3];
 
    end

endmodule
