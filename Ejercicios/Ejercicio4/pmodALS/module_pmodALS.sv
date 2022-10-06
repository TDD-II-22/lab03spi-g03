`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2022 10:03:20
// Design Name: 
// Module Name: module_pmodALS
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


module module_pmodALS(
    
    input logic                 clk_i,
                                rst_i,
                                addr_i,
                                we_addr_i,
                    [7 : 0]     dato_ram_i,
    output logic    [32 : 0]    dato_pmod_o
            
    );
    
    logic [7 : 0]   state,
                    next_state;
                    
    //memoria
    always_ff @(posedge clk_i) begin
        if(rst_i)   state <= 0;
        else        state <= next_state;            
    end
    
    always_comb begin
        if(we_addr_i) begin
        
            if(!addr_i) next_state =  {dato_ram_i[3 : 0], state[3 : 0]};
            else        next_state =  {state[7 : 4], dato_ram_i[7 : 4]};  
            
        end else
                        next_state = state;     
    end
    
    //salida
    assign dato_pmod_o = {24'b0, state};
    
endmodule
