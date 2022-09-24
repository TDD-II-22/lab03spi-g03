`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2022 10:25:47
// Design Name: 
// Module Name: pkg_global
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


package pkg_global;

    parameter int N = 6;
    parameter int BITS_WIDTH = 32;
    typedef logic [BITS_WIDTH - 1: 0] bits_width;
    typedef logic [N: 0] bits_n;
    typedef logic [N: 0] bits_n1;
    typedef logic [9 : 0]                                   bitsh_t;
    typedef logic [1023 : 0] [ BITS_WIDTH - 1 : 0]  matriz_2alaN_x_W_t;
    typedef struct packed{
    
        logic   [5 : 0]     not_used1;
        logic   [9 : 0]     n_rx_end;
        logic   [2 : 0]     not_used2;
        logic   [8 : 0]     n_tx_end;
        logic               all_0s,
                            all_1s,
                            cs_ctrl,
                            send;
                        
    } struct_reg_control;

    
        
endpackage
