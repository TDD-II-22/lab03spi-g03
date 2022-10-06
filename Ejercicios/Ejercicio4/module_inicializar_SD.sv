`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 21:36:35
// Design Name: 
// Module Name: module_inicializar_SD
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


module module_inicializar_SD(
    input  logic                        clk_i,
                                        rst_i,
										process_sd_i,
										enable_inicializar_sd_i,
										flags_i,
    output logic						we_sd_o,
										send_o,
										slc_mux_sd_o,
										c1_o,
						[1  : 0]		comando_o,
						[9  : 0] 		addr2_sd_o,
						[11 : 0] 		data_sd_o                                            
    );

     //IMPORTAR DATOS
    import pkg_global::*;
    
	logic 								we_sd;
	logic 								slc_mux_sd;
	logic		[9  : 0]			    addr2_sd;		
	logic		[31 : 0]				data_sd;
	logic							    c1;
	logic							    send;
    logic 		[1 : 0]					comando;
	logic       [4 : 0]					pasitos;
    logic 		[5 : 0]					contador;
    
    always @(posedge clk_i) begin
    
        if(rst_i) begin
			contador             <= 0;
			pasitos              <= 0;
			c1                   <= 0;
			we_sd                <= 0;
			slc_mux_sd     	     <= 0;
			data_sd              <= 0;
			send				 <= 0;
			addr2_sd       		 <= 0;
		end 
		
		else begin
			if(enable_inicializar_sd_i) begin
				case(pasitos)
				//128 PULSOS
					0:begin        
						we_sd           	<= 1;
						slc_mux_sd     		<= 0;
						data_sd            	<= 12'h3FA;
						addr2_sd       		<= 0;
						contador   		    <= 0;
						pasitos        		<= pasitos+1;
					end
					1:begin
						we_sd           	<= 0;
						slc_mux_sd     		<= 0;
						pasitos        		<= pasitos+1;
						send				<= 1'b1;
					end
					2:begin
					    send		        <= 1'b0;
					    
						if(process_sd_i)	begin
							we_sd           <= 1;
							slc_mux_sd     	<= 1;
							pasitos        	<= pasitos+1;
						end
					end
				//CMD0
					3:begin
						if( contador < 8 ) begin 
							addr2_sd   		<= contador;
							data_sd    		<= CMD0[contador];
							contador   		<= contador+1;
							comando			<= 1;
						end
						else begin
							addr2_sd		<= 7;
							data_sd         <= 12'h41;
							pasitos        	<= pasitos+1;
							slc_mux_sd     	<= 0;
						end	
					end
					4:begin
					   send			        <= 1'b1;
						we_sd           	<= 0;
						slc_mux_sd     		<= 1;
						pasitos        		<= pasitos+1;
					end
					5:begin
					   send			<= 1'b0;
						if(process_sd_i)	begin
							if(flags_i)begin
								we_sd           <= 1;
								slc_mux_sd      <= 0;
								data_sd         <= 12'h0;
								pasitos         <= pasitos+1;
							end
							else begin
								addr2_sd       	<= 0;
								slc_mux_sd      <= 1;
								contador   		<= 0;
								pasitos         <= 3;
							end
						end
					end
					6:begin
						addr2_sd       	<= 0;
						slc_mux_sd      <= 1;
						contador   		<= 0;
						pasitos 		<= pasitos+1;
					end
				//CMD8
					7:begin
						if( contador < 13 ) begin 
							addr2_sd   		<= contador;
							data_sd    		<= CMD8[contador];
							contador   		<= contador+1;
							comando			<= 1;
						end
						else begin
							addr2_sd		<= 7;
							data_sd         <= 12'h61;
							pasitos        	<= pasitos+1;
							slc_mux_sd     	<= 0;
						end	
					end
					8:begin
					    send			    <= 1'b1;
						we_sd           	<= 0;
						slc_mux_sd     		<= 1;
						pasitos        		<= pasitos+1;
					end
					9:begin
					    send			<= 1'b0;
						if(process_sd_i)	begin
							if(flags_i)begin
								we_sd           <= 1;
								slc_mux_sd      <= 0;
								data_sd         <= 12'h0;
								pasitos 		<= pasitos+1;
							end
							else begin
								addr2_sd       	<= 0;
								slc_mux_sd      <= 1;
								contador   		<= 0;
								pasitos         <= 7;
							end
						end
					end
					10:begin
						addr2_sd       	<= 0;
						slc_mux_sd      <= 1;
						contador   		<= 0;
						pasitos 		<= pasitos+1;
					end
				//CMD58
					11:begin
						if( contador < 13 ) begin 
							addr2_sd   		<= contador;
							data_sd    		<= CMD58[contador];
							contador   		<= contador+1;
							comando			<= 1;
						end
						else begin
							addr2_sd		<= 7;
							data_sd         <= 12'h61;
							pasitos        	<= pasitos+1;
							slc_mux_sd     	<= 0;
						end	
					end
					12:begin
					    send			    <= 1'b1;
						we_sd           	<= 0;
						slc_mux_sd     		<= 1;
						pasitos        		<= pasitos+1;
					end
					13:begin
					    send			<= 1'b0;
						if(process_sd_i)	begin
							if(flags_i)begin
								we_sd           <= 1;
								slc_mux_sd      <= 0;
								data_sd         <= 12'h0;
								pasitos         <= pasitos+1;
							end
							else begin
								addr2_sd       	<= 0;
								slc_mux_sd      <= 1;
								contador   		<= 0;
								pasitos         <= 11;
							end
						end
					end
					14:begin
						addr2_sd       	<= 0;
						slc_mux_sd      <= 1;
						contador   		<= 0;
						pasitos         <= pasitos+1;
					end
				//CMD55
					15:begin
						if( contador < 10 ) begin 
							addr2_sd   		<= contador;
							data_sd    		<= CMD55[contador];
							contador   		<= contador+1;
							comando			<= 0;
						end
						else begin
							data_sd         <= 12'h49;
							pasitos        	<= pasitos+1;
							slc_mux_sd     	<= 0;
						end	
					end
					16:begin
					    send			    <= 1'b1;
						we_sd           	<= 0;
						slc_mux_sd     		<= 1;
						pasitos        		<= pasitos+1;
					end
					17:begin
					    send			    <= 1'b0;
						if(process_sd_i)	begin
							we_sd           <= 1;
							slc_mux_sd      <= 0;
							data_sd         <= 12'h0;
							pasitos 		<= pasitos+1;
						end
					end
					18:begin
						addr2_sd       	<= 0;
						slc_mux_sd      <= 1;
						contador   		<= 0;
						pasitos 		<= pasitos+1;
					end
				//CMD41
					19:begin
						if( contador < 12 ) begin 
							addr2_sd   		<= contador;
							data_sd    		<= CMD41[contador];
							contador   		<= contador+1;
							comando			<= 0;
						end
						else begin
							addr2_sd		<= 7;
							data_sd         <= 12'h59;
							pasitos        	<= pasitos+1;
							slc_mux_sd     	<= 0;
						end	
					end
					20:begin
					    send			    <= 1'b1;
						we_sd           	<= 0;
						slc_mux_sd     		<= 1;
						pasitos        		<= pasitos+1;
					end
					21:begin
					    send			    <= 1'b0;
						if(process_sd_i)	begin
							if(flags_i)begin
								we_sd           <= 1;
								slc_mux_sd      <= 0;
								data_sd         <= 12'h0;
								pasitos         <= pasitos+1;
							end
							else begin
								addr2_sd       	<= 0;
								slc_mux_sd      <= 1;
								contador   		<= 0;
								pasitos         <= 15;
							end
						end
					end
					22:begin
						addr2_sd       	<= 0;
						slc_mux_sd      <= 1;
						contador   		<= 0;
						pasitos         <= pasitos+1;
					end
				//CMD59
					23:begin
						if( contador < 9 ) begin 
							addr2_sd   		<= contador;
							data_sd    		<= CMD59[contador];
							contador   		<= contador+1;
							comando			<= 1;
						end
						else begin
							addr2_sd		<= 7;
							data_sd         <= 12'h41;
							pasitos        	<= pasitos+1;
							slc_mux_sd     	<= 0;
						end	
					end
					24:begin
					    send			    <= 1'b1;
						we_sd           	<= 0;
						slc_mux_sd     		<= 1;
						pasitos        		<= pasitos+1;
					end
					25:begin
					    send			<= 1'b0;
						if(process_sd_i)	begin
							if(flags_i)begin
								we_sd           <= 1;
								slc_mux_sd      <= 0;
								data_sd         <= 12'h0;
								pasitos         <= pasitos+1;
							end
							else begin
								addr2_sd       	<= 0;
								slc_mux_sd      <= 1;
								contador   		<= 0;
								pasitos         <= 23;
							end
						end
					end
					26:begin
						addr2_sd       	<= 0;
						we_sd           <= 0;
						slc_mux_sd      <= 0;
						contador   		<= 0;
						c1              <= 1;
						pasitos         <= pasitos+1;
					end
					27:begin
						//ESPERAR RESET
					end
					
					default: 
						begin
							pasitos     <= 0;
						end
				endcase    
			end
			else begin
               pasitos            <=0;
               c1                 <= 0;
            end
		end
    end//end always
    
    //SALIDA
    always_comb begin
		send_o				= send;
		comando_o			= comando;
		we_sd_o				= we_sd;
		slc_mux_sd_o		= slc_mux_sd;
		addr2_sd_o			= addr2_sd;		
		data_sd_o			= data_sd;
		c1_o 				= c1;
    end
endmodule
