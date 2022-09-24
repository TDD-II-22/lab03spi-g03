`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2022 20:42:04
// Design Name: 
// Module Name: prueba
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


module prueba;

    logic               clk_100Mhz_pi,
                        reset_pi,
                        control_pi,
                        locked;
    logic   [1 : 0]     periodos_pi;
    logic   [2 : 0]     rgb_po;
    logic   [6 : 0]     display_po;
    
    logic   [7 : 0]     display_select_po;






top_module_7seg_v3 top_module_7seg_v3(

    .clk_100Mhz_pi(clk_100Mhz_pi),
    .reset_pi(reset_pi),
    .control_pi(control_pi),
    .locked(locked),
    .periodos_pi(periodos_pi),
    .rgb_po(rgb_po),
    .display_po(display_po),
    .display_select_po(display_select_po)
    );

    initial begin
    reset_pi    =1;
    control_pi  =0;
    clk_100Mhz_pi =0;
    periodos_pi =0;
    forever #5 clk_100Mhz_pi = ~clk_100Mhz_pi;
    end
    
      //aplicar reset
    always @(posedge locked) begin
        #50;
        reset_pi <= 0;
        #10000;
         control_pi  =1;
    end


endmodule
