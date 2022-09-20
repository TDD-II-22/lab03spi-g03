`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2022 09:50:02
// Design Name: 
// Module Name: module_state_machine_spi
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


module module_state_machine_spi(

        input  logic                    clk_i,
                                        rst_i,
                                        send_i,
                                        progress_i,
                                        contador_i,
        output logic    [2 : 0]         control_o
    );
    
    //PARAMETROS
    parameter   WAIT_SEND               = 2'b00,
                LOAD                    = 2'b01,
                TRANSMISSION            = 2'b10,
                DOWNLOAD                = 2'b11,
                
                //datos control
                CTR_SEND                = 3'b000,
                CTR_PRELOAD1            = 3'b001, 
                CTR_LOAD                = 3'b010,
                CTR_TRANSFER            = 3'b011,               
                CTR_CHECK               = 3'b100,
                CTR_PRELOAD2            = 3'b101, 
                CTR_DOWN                = 3'b110;           
     
    //VARIABLES INTERNAS
    logic       [2 : 0]                 control;
    
    logic                               progress,
                                        send,
                                        contador;
    
    //ASIGNACIONES
    always_comb begin
        send        = send_i;
        progress    = progress_i;
        contador    = contador_i;         
    end
    
    //DECLARACION DE ESTADOS
    logic [1 : 0]                       state,
                                        next_state;

   //MEMORIA              
    always_ff @ ( posedge clk_i ) begin
        if( rst_i )  begin
            state <= WAIT_SEND;
            next_state <= WAIT_SEND;
        end else        
            state <= next_state;
    end 
    
    //MAQUINA DE ESTADOS
    always_comb begin
    
        //reinicio de variables
        control     = '0;
        
        case ( state )
        
            WAIT_SEND : //0
                begin
                    if(!send) begin
                        control             = CTR_SEND;//espera send
                        next_state          = WAIT_SEND;
                    end else begin
                        control             = CTR_PRELOAD1;//envia direccion para cargar datos
                        next_state          = LOAD;
                    end
                end
            
            LOAD : //1
                begin
                    control                 = CTR_LOAD;//carga datos al registro
                    next_state              = TRANSMISSION;
                end
           
            TRANSMISSION : //2
                begin
                    if (!contador) begin
                        control             = CTR_TRANSFER;//proceso de transmision
                        next_state          = state;
                    end else begin
                        control             = CTR_CHECK;//revisa para mas transmisiones
                        next_state          = DOWNLOAD;                       
                    end
                end
            
            DOWNLOAD : begin//3
                    
                if (!progress) begin
                    control                 = CTR_PRELOAD2;//envia direccion para cargar datoss
                    next_state              = LOAD;
                end else begin
                    control                 = CTR_DOWN;//cierra el chinamo y el proceso de transmision
                    next_state              = WAIT_SEND;
                end
            end
            
        endcase
        
    end
    
    //SALIDA DE LA MAQUINA
    assign control_o    = control;
    
endmodule
