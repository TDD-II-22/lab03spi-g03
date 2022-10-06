`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 21:31:32
// Design Name: 
// Module Name: module_control_SD
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


module module_control_SD(
    input  logic        [4  : 0]        pasitos_i,
						[1  : 0]		comando_i,
						[31 : 0]		salida_spi_sd_i,
    output logic				 		flags_o,
										we_sd_o,
										c1_o,
										slc_mux_sd_o,
						[9  : 0] 		addr2_sd_o,
						[31 : 0] 		data_sd_o              
                                                                        
    );

     //IMPORTAR DATOS
    import pkg_global::*;
    always_comb begin
		if(comando_i == 1)begin
			if(salida_spi_sd_i == 1)begin
				flags_o = 1;
			end
			else begin
				flags_o = 0;
			end
		end
		if(comando_i==0)begin
			if(salida_spi_sd_i == 0)begin
				flags_o = 1;
			end
			else begin
				flags_o =0;
			end
		end
		if( comando_i == 2 )begin
		   if( salida_spi_sd_i == 254 )begin
				flags_o = 1;
			end
			else begin
				flags_o = 0;
			end     
		end
	end
endmodule
