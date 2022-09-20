`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2022 15:01:17
// Design Name: 
// Module Name: module_reg_control
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


module module_reg_control(

    input   logic                               clk_i,
                                                rst_i,
                                                send_i,
                                                proccess_i,
                                                we_rx_i,
                                                we_ex_i,
                     [9 : 0]                    in_rx_i,
                     [11 : 0]                   in_ex_i,
    output  pkg_global:: struct_reg_control     cntr_str_o   
    
    );
        
    logic [31 : 0]  state;
    logic [31 : 0]  next_state;
   
    //generar memoria
    always_ff @(posedge clk_i) begin   
        if(rst_i) state <= 0;
        else      state <= next_state;
    end 
    
    //SIGUIENTE ESTADO
    always@(*) begin
        
        if(send_i && !state[0]) begin
                    
            next_state = {state[31 : 1], 1'b1};
            
        end else begin

            if(state[0]) begin
                
                if(!proccess_i) begin
                
                    if(we_rx_i)
                        next_state   = {state[31 : 26], in_rx_i, state[15 : 0]};
                    else
                        next_state   = state;   
                
                end else 
                    next_state = {state[31 : 26], 10'b0, state[15 : 1], 1'b0}; 
                
            end else begin  
                
                if(we_ex_i) begin
                    next_state = {19'b0, in_ex_i, 1'b0};
                end else begin
                    next_state = state;
                end
                
            end  
     
        end
               
    end
    
    //SALIDA
    always@(*) begin
	   cntr_str_o = state;
    end  
    
endmodule
