// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Sep 24 14:16:48 2022
// Host        : Andrey-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Lab3/Respaldo/Ejercicios_v7/Proyectos/Ejercicio3/vivado_project.sim/sim_1/synth/func/xsim/tb_spi_pmodALS_func_synth.v
// Design      : top_tactico
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module WCLK
   (CLK_10MHZ,
    locked,
    CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_10MHZ;
  wire locked;

  WCLK__WCLK_clk_wiz inst
       (.CLK_100MHZ(CLK_100MHZ),
        .CLK_10MHZ(CLK_10MHZ),
        .locked(locked));
endmodule

(* ORIG_REF_NAME = "WCLK_clk_wiz" *) 
module WCLK__WCLK_clk_wiz
   (CLK_10MHZ,
    locked,
    CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_100MHZ_WCLK;
  wire CLK_10MHZ;
  wire CLK_10MHZ_WCLK;
  wire clkfbout_WCLK;
  wire clkfbout_buf_WCLK;
  wire locked;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_WCLK),
        .O(clkfbout_buf_WCLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(CLK_100MHZ),
        .O(CLK_100MHZ_WCLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(CLK_10MHZ_WCLK),
        .O(CLK_10MHZ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(41),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(82),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_WCLK),
        .CLKFBOUT(clkfbout_WCLK),
        .CLKIN1(CLK_100MHZ_WCLK),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(CLK_10MHZ_WCLK),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module module_clk1s
   (clk1s,
    clk_out_reg_0,
    rst_pi_IBUF,
    CLK_10MHZ,
    Q);
  output clk1s;
  output clk_out_reg_0;
  input rst_pi_IBUF;
  input CLK_10MHZ;
  input [0:0]Q;

  wire CLK_10MHZ;
  wire [0:0]Q;
  wire clk1s;
  wire clk_out_i_1__0_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire clk_out_i_4_n_0;
  wire clk_out_i_5_n_0;
  wire clk_out_i_6_n_0;
  wire clk_out_i_7_n_0;
  wire clk_out_i_8_n_0;
  wire clk_out_i_9_n_0;
  wire clk_out_reg_0;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire rst_pi_IBUF;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0004)) 
    clk_out_i_1__0
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(clk_out_i_4_n_0),
        .I3(clk_out_i_5_n_0),
        .O(clk_out_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    clk_out_i_2
       (.I0(counter_reg[11]),
        .I1(counter_reg[8]),
        .I2(counter_reg[28]),
        .I3(counter_reg[2]),
        .I4(clk_out_i_6_n_0),
        .O(clk_out_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    clk_out_i_3
       (.I0(counter_reg[14]),
        .I1(counter_reg[30]),
        .I2(counter_reg[22]),
        .I3(counter_reg[26]),
        .I4(clk_out_i_7_n_0),
        .O(clk_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    clk_out_i_4
       (.I0(counter_reg[15]),
        .I1(counter_reg[13]),
        .I2(counter_reg[21]),
        .I3(counter_reg[19]),
        .I4(clk_out_i_8_n_0),
        .O(clk_out_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_out_i_5
       (.I0(counter_reg[20]),
        .I1(counter_reg[18]),
        .I2(counter_reg[5]),
        .I3(counter_reg[29]),
        .I4(clk_out_i_9_n_0),
        .O(clk_out_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_out_i_6
       (.I0(counter_reg[27]),
        .I1(counter_reg[7]),
        .I2(counter_reg[24]),
        .I3(counter_reg[4]),
        .O(clk_out_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clk_out_i_7
       (.I0(counter_reg[1]),
        .I1(counter_reg[31]),
        .I2(counter_reg[16]),
        .I3(counter_reg[6]),
        .O(clk_out_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clk_out_i_8
       (.I0(counter_reg[9]),
        .I1(counter_reg[23]),
        .I2(counter_reg[25]),
        .I3(counter_reg[12]),
        .O(clk_out_i_8_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    clk_out_i_9
       (.I0(counter_reg[0]),
        .I1(counter_reg[17]),
        .I2(counter_reg[10]),
        .I3(counter_reg[3]),
        .O(clk_out_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(clk_out_i_1__0_n_0),
        .Q(clk1s),
        .R(rst_pi_IBUF));
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \counter[0]_i_1__0 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(clk_out_i_4_n_0),
        .I3(clk_out_i_5_n_0),
        .I4(rst_pi_IBUF),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__0_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    selec_out_i_2
       (.I0(clk1s),
        .I1(Q),
        .O(clk_out_reg_0));
endmodule

module module_clk_divider_spi
   (clk_out_reg_0,
    clk_fp,
    clk_fn,
    mosi,
    CLK_10MHZ,
    rst_pi_IBUF,
    hold_ctrl,
    we_reg,
    SR);
  output clk_out_reg_0;
  output clk_fp;
  output clk_fn;
  output mosi;
  input CLK_10MHZ;
  input rst_pi_IBUF;
  input hold_ctrl;
  input we_reg;
  input [0:0]SR;

  wire CLK_10MHZ;
  wire [0:0]SR;
  wire clk_fn;
  wire clk_fn_i_1_n_0;
  wire clk_fp;
  wire clk_fp_i_1_n_0;
  wire clk_out_i_1_n_0;
  wire clk_out_reg_0;
  wire [31:0]cntr_flankn;
  wire cntr_flankn0_carry__0_n_0;
  wire cntr_flankn0_carry__0_n_1;
  wire cntr_flankn0_carry__0_n_2;
  wire cntr_flankn0_carry__0_n_3;
  wire cntr_flankn0_carry__0_n_4;
  wire cntr_flankn0_carry__0_n_5;
  wire cntr_flankn0_carry__0_n_6;
  wire cntr_flankn0_carry__0_n_7;
  wire cntr_flankn0_carry__1_n_0;
  wire cntr_flankn0_carry__1_n_1;
  wire cntr_flankn0_carry__1_n_2;
  wire cntr_flankn0_carry__1_n_3;
  wire cntr_flankn0_carry__1_n_4;
  wire cntr_flankn0_carry__1_n_5;
  wire cntr_flankn0_carry__1_n_6;
  wire cntr_flankn0_carry__1_n_7;
  wire cntr_flankn0_carry__2_n_0;
  wire cntr_flankn0_carry__2_n_1;
  wire cntr_flankn0_carry__2_n_2;
  wire cntr_flankn0_carry__2_n_3;
  wire cntr_flankn0_carry__2_n_4;
  wire cntr_flankn0_carry__2_n_5;
  wire cntr_flankn0_carry__2_n_6;
  wire cntr_flankn0_carry__2_n_7;
  wire cntr_flankn0_carry__3_n_0;
  wire cntr_flankn0_carry__3_n_1;
  wire cntr_flankn0_carry__3_n_2;
  wire cntr_flankn0_carry__3_n_3;
  wire cntr_flankn0_carry__3_n_4;
  wire cntr_flankn0_carry__3_n_5;
  wire cntr_flankn0_carry__3_n_6;
  wire cntr_flankn0_carry__3_n_7;
  wire cntr_flankn0_carry__4_n_0;
  wire cntr_flankn0_carry__4_n_1;
  wire cntr_flankn0_carry__4_n_2;
  wire cntr_flankn0_carry__4_n_3;
  wire cntr_flankn0_carry__4_n_4;
  wire cntr_flankn0_carry__4_n_5;
  wire cntr_flankn0_carry__4_n_6;
  wire cntr_flankn0_carry__4_n_7;
  wire cntr_flankn0_carry__5_n_0;
  wire cntr_flankn0_carry__5_n_1;
  wire cntr_flankn0_carry__5_n_2;
  wire cntr_flankn0_carry__5_n_3;
  wire cntr_flankn0_carry__5_n_4;
  wire cntr_flankn0_carry__5_n_5;
  wire cntr_flankn0_carry__5_n_6;
  wire cntr_flankn0_carry__5_n_7;
  wire cntr_flankn0_carry__6_n_2;
  wire cntr_flankn0_carry__6_n_3;
  wire cntr_flankn0_carry__6_n_5;
  wire cntr_flankn0_carry__6_n_6;
  wire cntr_flankn0_carry__6_n_7;
  wire cntr_flankn0_carry_n_0;
  wire cntr_flankn0_carry_n_1;
  wire cntr_flankn0_carry_n_2;
  wire cntr_flankn0_carry_n_3;
  wire cntr_flankn0_carry_n_4;
  wire cntr_flankn0_carry_n_5;
  wire cntr_flankn0_carry_n_6;
  wire cntr_flankn0_carry_n_7;
  wire \cntr_flankn[31]_i_10_n_0 ;
  wire \cntr_flankn[31]_i_11_n_0 ;
  wire \cntr_flankn[31]_i_1_n_0 ;
  wire \cntr_flankn[31]_i_3_n_0 ;
  wire \cntr_flankn[31]_i_4_n_0 ;
  wire \cntr_flankn[31]_i_5_n_0 ;
  wire \cntr_flankn[31]_i_6_n_0 ;
  wire \cntr_flankn[31]_i_7_n_0 ;
  wire \cntr_flankn[31]_i_8_n_0 ;
  wire \cntr_flankn[31]_i_9_n_0 ;
  wire [31:0]cntr_flankn_0;
  wire [31:0]cntr_flankp;
  wire cntr_flankp0_carry__0_n_0;
  wire cntr_flankp0_carry__0_n_1;
  wire cntr_flankp0_carry__0_n_2;
  wire cntr_flankp0_carry__0_n_3;
  wire cntr_flankp0_carry__0_n_4;
  wire cntr_flankp0_carry__0_n_5;
  wire cntr_flankp0_carry__0_n_6;
  wire cntr_flankp0_carry__0_n_7;
  wire cntr_flankp0_carry__1_n_0;
  wire cntr_flankp0_carry__1_n_1;
  wire cntr_flankp0_carry__1_n_2;
  wire cntr_flankp0_carry__1_n_3;
  wire cntr_flankp0_carry__1_n_4;
  wire cntr_flankp0_carry__1_n_5;
  wire cntr_flankp0_carry__1_n_6;
  wire cntr_flankp0_carry__1_n_7;
  wire cntr_flankp0_carry__2_n_0;
  wire cntr_flankp0_carry__2_n_1;
  wire cntr_flankp0_carry__2_n_2;
  wire cntr_flankp0_carry__2_n_3;
  wire cntr_flankp0_carry__2_n_4;
  wire cntr_flankp0_carry__2_n_5;
  wire cntr_flankp0_carry__2_n_6;
  wire cntr_flankp0_carry__2_n_7;
  wire cntr_flankp0_carry__3_n_0;
  wire cntr_flankp0_carry__3_n_1;
  wire cntr_flankp0_carry__3_n_2;
  wire cntr_flankp0_carry__3_n_3;
  wire cntr_flankp0_carry__3_n_4;
  wire cntr_flankp0_carry__3_n_5;
  wire cntr_flankp0_carry__3_n_6;
  wire cntr_flankp0_carry__3_n_7;
  wire cntr_flankp0_carry__4_n_0;
  wire cntr_flankp0_carry__4_n_1;
  wire cntr_flankp0_carry__4_n_2;
  wire cntr_flankp0_carry__4_n_3;
  wire cntr_flankp0_carry__4_n_4;
  wire cntr_flankp0_carry__4_n_5;
  wire cntr_flankp0_carry__4_n_6;
  wire cntr_flankp0_carry__4_n_7;
  wire cntr_flankp0_carry__5_n_0;
  wire cntr_flankp0_carry__5_n_1;
  wire cntr_flankp0_carry__5_n_2;
  wire cntr_flankp0_carry__5_n_3;
  wire cntr_flankp0_carry__5_n_4;
  wire cntr_flankp0_carry__5_n_5;
  wire cntr_flankp0_carry__5_n_6;
  wire cntr_flankp0_carry__5_n_7;
  wire cntr_flankp0_carry__6_n_2;
  wire cntr_flankp0_carry__6_n_3;
  wire cntr_flankp0_carry__6_n_5;
  wire cntr_flankp0_carry__6_n_6;
  wire cntr_flankp0_carry__6_n_7;
  wire cntr_flankp0_carry_n_0;
  wire cntr_flankp0_carry_n_1;
  wire cntr_flankp0_carry_n_2;
  wire cntr_flankp0_carry_n_3;
  wire cntr_flankp0_carry_n_4;
  wire cntr_flankp0_carry_n_5;
  wire cntr_flankp0_carry_n_6;
  wire cntr_flankp0_carry_n_7;
  wire \cntr_flankp[31]_i_10_n_0 ;
  wire \cntr_flankp[31]_i_11_n_0 ;
  wire \cntr_flankp[31]_i_1_n_0 ;
  wire \cntr_flankp[31]_i_3_n_0 ;
  wire \cntr_flankp[31]_i_4_n_0 ;
  wire \cntr_flankp[31]_i_5_n_0 ;
  wire \cntr_flankp[31]_i_6_n_0 ;
  wire \cntr_flankp[31]_i_7_n_0 ;
  wire \cntr_flankp[31]_i_8_n_0 ;
  wire \cntr_flankp[31]_i_9_n_0 ;
  wire [31:0]cntr_flankp_1;
  wire [31:0]counter;
  wire \counter[31]_i_10_n_0 ;
  wire \counter[31]_i_11_n_0 ;
  wire \counter[31]_i_12_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire [31:0]counter_2;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_2_n_1 ;
  wire \counter_reg[16]_i_2_n_2 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg[20]_i_2_n_0 ;
  wire \counter_reg[20]_i_2_n_1 ;
  wire \counter_reg[20]_i_2_n_2 ;
  wire \counter_reg[20]_i_2_n_3 ;
  wire \counter_reg[24]_i_2_n_0 ;
  wire \counter_reg[24]_i_2_n_1 ;
  wire \counter_reg[24]_i_2_n_2 ;
  wire \counter_reg[24]_i_2_n_3 ;
  wire \counter_reg[28]_i_2_n_0 ;
  wire \counter_reg[28]_i_2_n_1 ;
  wire \counter_reg[28]_i_2_n_2 ;
  wire \counter_reg[28]_i_2_n_3 ;
  wire \counter_reg[31]_i_4_n_2 ;
  wire \counter_reg[31]_i_4_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire [31:1]data0;
  wire flanco;
  wire flanco_i_1_n_0;
  wire hold_ctrl;
  wire mosi;
  wire rst_pi_IBUF;
  wire we_reg;
  wire [3:2]NLW_cntr_flankn0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cntr_flankn0_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_cntr_flankp0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cntr_flankp0_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_counter_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_4_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFF2F0020)) 
    clk_fn_i_1
       (.I0(\cntr_flankn[31]_i_3_n_0 ),
        .I1(flanco),
        .I2(hold_ctrl),
        .I3(clk_out_reg_0),
        .I4(clk_fn),
        .O(clk_fn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_fn_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(clk_fn_i_1_n_0),
        .Q(clk_fn),
        .R(rst_pi_IBUF));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    clk_fp_i_1
       (.I0(flanco),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .I2(hold_ctrl),
        .I3(clk_out_reg_0),
        .I4(clk_fp),
        .O(clk_fp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_fp_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(clk_fp_i_1_n_0),
        .Q(clk_fp),
        .R(rst_pi_IBUF));
  LUT4 #(
    .INIT(16'hFF9F)) 
    clk_out_i_1
       (.I0(clk_out_reg_0),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(hold_ctrl),
        .I3(rst_pi_IBUF),
        .O(clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    clk_out_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(clk_out_reg_0),
        .R(1'b0));
  CARRY4 cntr_flankn0_carry
       (.CI(1'b0),
        .CO({cntr_flankn0_carry_n_0,cntr_flankn0_carry_n_1,cntr_flankn0_carry_n_2,cntr_flankn0_carry_n_3}),
        .CYINIT(cntr_flankn[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankn0_carry_n_4,cntr_flankn0_carry_n_5,cntr_flankn0_carry_n_6,cntr_flankn0_carry_n_7}),
        .S(cntr_flankn[4:1]));
  CARRY4 cntr_flankn0_carry__0
       (.CI(cntr_flankn0_carry_n_0),
        .CO({cntr_flankn0_carry__0_n_0,cntr_flankn0_carry__0_n_1,cntr_flankn0_carry__0_n_2,cntr_flankn0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankn0_carry__0_n_4,cntr_flankn0_carry__0_n_5,cntr_flankn0_carry__0_n_6,cntr_flankn0_carry__0_n_7}),
        .S(cntr_flankn[8:5]));
  CARRY4 cntr_flankn0_carry__1
       (.CI(cntr_flankn0_carry__0_n_0),
        .CO({cntr_flankn0_carry__1_n_0,cntr_flankn0_carry__1_n_1,cntr_flankn0_carry__1_n_2,cntr_flankn0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankn0_carry__1_n_4,cntr_flankn0_carry__1_n_5,cntr_flankn0_carry__1_n_6,cntr_flankn0_carry__1_n_7}),
        .S(cntr_flankn[12:9]));
  CARRY4 cntr_flankn0_carry__2
       (.CI(cntr_flankn0_carry__1_n_0),
        .CO({cntr_flankn0_carry__2_n_0,cntr_flankn0_carry__2_n_1,cntr_flankn0_carry__2_n_2,cntr_flankn0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankn0_carry__2_n_4,cntr_flankn0_carry__2_n_5,cntr_flankn0_carry__2_n_6,cntr_flankn0_carry__2_n_7}),
        .S(cntr_flankn[16:13]));
  CARRY4 cntr_flankn0_carry__3
       (.CI(cntr_flankn0_carry__2_n_0),
        .CO({cntr_flankn0_carry__3_n_0,cntr_flankn0_carry__3_n_1,cntr_flankn0_carry__3_n_2,cntr_flankn0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankn0_carry__3_n_4,cntr_flankn0_carry__3_n_5,cntr_flankn0_carry__3_n_6,cntr_flankn0_carry__3_n_7}),
        .S(cntr_flankn[20:17]));
  CARRY4 cntr_flankn0_carry__4
       (.CI(cntr_flankn0_carry__3_n_0),
        .CO({cntr_flankn0_carry__4_n_0,cntr_flankn0_carry__4_n_1,cntr_flankn0_carry__4_n_2,cntr_flankn0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankn0_carry__4_n_4,cntr_flankn0_carry__4_n_5,cntr_flankn0_carry__4_n_6,cntr_flankn0_carry__4_n_7}),
        .S(cntr_flankn[24:21]));
  CARRY4 cntr_flankn0_carry__5
       (.CI(cntr_flankn0_carry__4_n_0),
        .CO({cntr_flankn0_carry__5_n_0,cntr_flankn0_carry__5_n_1,cntr_flankn0_carry__5_n_2,cntr_flankn0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankn0_carry__5_n_4,cntr_flankn0_carry__5_n_5,cntr_flankn0_carry__5_n_6,cntr_flankn0_carry__5_n_7}),
        .S(cntr_flankn[28:25]));
  CARRY4 cntr_flankn0_carry__6
       (.CI(cntr_flankn0_carry__5_n_0),
        .CO({NLW_cntr_flankn0_carry__6_CO_UNCONNECTED[3:2],cntr_flankn0_carry__6_n_2,cntr_flankn0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cntr_flankn0_carry__6_O_UNCONNECTED[3],cntr_flankn0_carry__6_n_5,cntr_flankn0_carry__6_n_6,cntr_flankn0_carry__6_n_7}),
        .S({1'b0,cntr_flankn[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cntr_flankn[0]_i_1 
       (.I0(cntr_flankn[0]),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[10]_i_1 
       (.I0(cntr_flankn0_carry__1_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[11]_i_1 
       (.I0(cntr_flankn0_carry__1_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[12]_i_1 
       (.I0(cntr_flankn0_carry__1_n_4),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[13]_i_1 
       (.I0(cntr_flankn0_carry__2_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[14]_i_1 
       (.I0(cntr_flankn0_carry__2_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[15]_i_1 
       (.I0(cntr_flankn0_carry__2_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[16]_i_1 
       (.I0(cntr_flankn0_carry__2_n_4),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[17]_i_1 
       (.I0(cntr_flankn0_carry__3_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[18]_i_1 
       (.I0(cntr_flankn0_carry__3_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[19]_i_1 
       (.I0(cntr_flankn0_carry__3_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[1]_i_1 
       (.I0(cntr_flankn0_carry_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[20]_i_1 
       (.I0(cntr_flankn0_carry__3_n_4),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[21]_i_1 
       (.I0(cntr_flankn0_carry__4_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[22]_i_1 
       (.I0(cntr_flankn0_carry__4_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[23]_i_1 
       (.I0(cntr_flankn0_carry__4_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[24]_i_1 
       (.I0(cntr_flankn0_carry__4_n_4),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[25]_i_1 
       (.I0(cntr_flankn0_carry__5_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[26]_i_1 
       (.I0(cntr_flankn0_carry__5_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[27]_i_1 
       (.I0(cntr_flankn0_carry__5_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[28]_i_1 
       (.I0(cntr_flankn0_carry__5_n_4),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[29]_i_1 
       (.I0(cntr_flankn0_carry__6_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[2]_i_1 
       (.I0(cntr_flankn0_carry_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[30]_i_1 
       (.I0(cntr_flankn0_carry__6_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[30]));
  LUT2 #(
    .INIT(4'h1)) 
    \cntr_flankn[31]_i_1 
       (.I0(clk_out_reg_0),
        .I1(flanco),
        .O(\cntr_flankn[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr_flankn[31]_i_10 
       (.I0(cntr_flankn[20]),
        .I1(cntr_flankn[28]),
        .I2(cntr_flankn[16]),
        .I3(cntr_flankn[25]),
        .O(\cntr_flankn[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr_flankn[31]_i_11 
       (.I0(cntr_flankn[13]),
        .I1(cntr_flankn[10]),
        .I2(cntr_flankn[6]),
        .I3(cntr_flankn[27]),
        .O(\cntr_flankn[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[31]_i_2 
       (.I0(cntr_flankn0_carry__6_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \cntr_flankn[31]_i_3 
       (.I0(\cntr_flankn[31]_i_4_n_0 ),
        .I1(\cntr_flankn[31]_i_5_n_0 ),
        .I2(\cntr_flankn[31]_i_6_n_0 ),
        .I3(\cntr_flankn[31]_i_7_n_0 ),
        .O(\cntr_flankn[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cntr_flankn[31]_i_4 
       (.I0(cntr_flankn[24]),
        .I1(cntr_flankn[23]),
        .I2(cntr_flankn[1]),
        .I3(cntr_flankn[30]),
        .I4(\cntr_flankn[31]_i_8_n_0 ),
        .O(\cntr_flankn[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cntr_flankn[31]_i_5 
       (.I0(cntr_flankn[0]),
        .I1(cntr_flankn[22]),
        .I2(cntr_flankn[15]),
        .I3(cntr_flankn[5]),
        .I4(\cntr_flankn[31]_i_9_n_0 ),
        .O(\cntr_flankn[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cntr_flankn[31]_i_6 
       (.I0(cntr_flankn[29]),
        .I1(cntr_flankn[14]),
        .I2(cntr_flankn[21]),
        .I3(cntr_flankn[19]),
        .I4(\cntr_flankn[31]_i_10_n_0 ),
        .O(\cntr_flankn[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cntr_flankn[31]_i_7 
       (.I0(cntr_flankn[17]),
        .I1(cntr_flankn[18]),
        .I2(cntr_flankn[9]),
        .I3(cntr_flankn[8]),
        .I4(\cntr_flankn[31]_i_11_n_0 ),
        .O(\cntr_flankn[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cntr_flankn[31]_i_8 
       (.I0(cntr_flankn[4]),
        .I1(cntr_flankn[11]),
        .I2(cntr_flankn[3]),
        .I3(cntr_flankn[7]),
        .O(\cntr_flankn[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr_flankn[31]_i_9 
       (.I0(cntr_flankn[12]),
        .I1(cntr_flankn[26]),
        .I2(cntr_flankn[31]),
        .I3(cntr_flankn[2]),
        .O(\cntr_flankn[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[3]_i_1 
       (.I0(cntr_flankn0_carry_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[4]_i_1 
       (.I0(cntr_flankn0_carry_n_4),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[5]_i_1 
       (.I0(cntr_flankn0_carry__0_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[6]_i_1 
       (.I0(cntr_flankn0_carry__0_n_6),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[7]_i_1 
       (.I0(cntr_flankn0_carry__0_n_5),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[8]_i_1 
       (.I0(cntr_flankn0_carry__0_n_4),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankn[9]_i_1 
       (.I0(cntr_flankn0_carry__1_n_7),
        .I1(\cntr_flankn[31]_i_3_n_0 ),
        .O(cntr_flankn_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[0] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[0]),
        .Q(cntr_flankn[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[10] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[10]),
        .Q(cntr_flankn[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[11] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[11]),
        .Q(cntr_flankn[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[12] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[12]),
        .Q(cntr_flankn[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[13] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[13]),
        .Q(cntr_flankn[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[14] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[14]),
        .Q(cntr_flankn[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[15] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[15]),
        .Q(cntr_flankn[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[16] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[16]),
        .Q(cntr_flankn[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[17] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[17]),
        .Q(cntr_flankn[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[18] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[18]),
        .Q(cntr_flankn[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[19] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[19]),
        .Q(cntr_flankn[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[1] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[1]),
        .Q(cntr_flankn[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[20] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[20]),
        .Q(cntr_flankn[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[21] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[21]),
        .Q(cntr_flankn[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[22] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[22]),
        .Q(cntr_flankn[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[23] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[23]),
        .Q(cntr_flankn[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[24] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[24]),
        .Q(cntr_flankn[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[25] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[25]),
        .Q(cntr_flankn[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[26] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[26]),
        .Q(cntr_flankn[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[27] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[27]),
        .Q(cntr_flankn[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[28] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[28]),
        .Q(cntr_flankn[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[29] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[29]),
        .Q(cntr_flankn[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[2] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[2]),
        .Q(cntr_flankn[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[30] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[30]),
        .Q(cntr_flankn[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[31] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[31]),
        .Q(cntr_flankn[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[3] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[3]),
        .Q(cntr_flankn[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[4] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[4]),
        .Q(cntr_flankn[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[5] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[5]),
        .Q(cntr_flankn[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[6] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[6]),
        .Q(cntr_flankn[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[7] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[7]),
        .Q(cntr_flankn[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[8] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[8]),
        .Q(cntr_flankn[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankn_reg[9] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankn[31]_i_1_n_0 ),
        .D(cntr_flankn_0[9]),
        .Q(cntr_flankn[9]),
        .R(SR));
  CARRY4 cntr_flankp0_carry
       (.CI(1'b0),
        .CO({cntr_flankp0_carry_n_0,cntr_flankp0_carry_n_1,cntr_flankp0_carry_n_2,cntr_flankp0_carry_n_3}),
        .CYINIT(cntr_flankp[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankp0_carry_n_4,cntr_flankp0_carry_n_5,cntr_flankp0_carry_n_6,cntr_flankp0_carry_n_7}),
        .S(cntr_flankp[4:1]));
  CARRY4 cntr_flankp0_carry__0
       (.CI(cntr_flankp0_carry_n_0),
        .CO({cntr_flankp0_carry__0_n_0,cntr_flankp0_carry__0_n_1,cntr_flankp0_carry__0_n_2,cntr_flankp0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankp0_carry__0_n_4,cntr_flankp0_carry__0_n_5,cntr_flankp0_carry__0_n_6,cntr_flankp0_carry__0_n_7}),
        .S(cntr_flankp[8:5]));
  CARRY4 cntr_flankp0_carry__1
       (.CI(cntr_flankp0_carry__0_n_0),
        .CO({cntr_flankp0_carry__1_n_0,cntr_flankp0_carry__1_n_1,cntr_flankp0_carry__1_n_2,cntr_flankp0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankp0_carry__1_n_4,cntr_flankp0_carry__1_n_5,cntr_flankp0_carry__1_n_6,cntr_flankp0_carry__1_n_7}),
        .S(cntr_flankp[12:9]));
  CARRY4 cntr_flankp0_carry__2
       (.CI(cntr_flankp0_carry__1_n_0),
        .CO({cntr_flankp0_carry__2_n_0,cntr_flankp0_carry__2_n_1,cntr_flankp0_carry__2_n_2,cntr_flankp0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankp0_carry__2_n_4,cntr_flankp0_carry__2_n_5,cntr_flankp0_carry__2_n_6,cntr_flankp0_carry__2_n_7}),
        .S(cntr_flankp[16:13]));
  CARRY4 cntr_flankp0_carry__3
       (.CI(cntr_flankp0_carry__2_n_0),
        .CO({cntr_flankp0_carry__3_n_0,cntr_flankp0_carry__3_n_1,cntr_flankp0_carry__3_n_2,cntr_flankp0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankp0_carry__3_n_4,cntr_flankp0_carry__3_n_5,cntr_flankp0_carry__3_n_6,cntr_flankp0_carry__3_n_7}),
        .S(cntr_flankp[20:17]));
  CARRY4 cntr_flankp0_carry__4
       (.CI(cntr_flankp0_carry__3_n_0),
        .CO({cntr_flankp0_carry__4_n_0,cntr_flankp0_carry__4_n_1,cntr_flankp0_carry__4_n_2,cntr_flankp0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankp0_carry__4_n_4,cntr_flankp0_carry__4_n_5,cntr_flankp0_carry__4_n_6,cntr_flankp0_carry__4_n_7}),
        .S(cntr_flankp[24:21]));
  CARRY4 cntr_flankp0_carry__5
       (.CI(cntr_flankp0_carry__4_n_0),
        .CO({cntr_flankp0_carry__5_n_0,cntr_flankp0_carry__5_n_1,cntr_flankp0_carry__5_n_2,cntr_flankp0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr_flankp0_carry__5_n_4,cntr_flankp0_carry__5_n_5,cntr_flankp0_carry__5_n_6,cntr_flankp0_carry__5_n_7}),
        .S(cntr_flankp[28:25]));
  CARRY4 cntr_flankp0_carry__6
       (.CI(cntr_flankp0_carry__5_n_0),
        .CO({NLW_cntr_flankp0_carry__6_CO_UNCONNECTED[3:2],cntr_flankp0_carry__6_n_2,cntr_flankp0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cntr_flankp0_carry__6_O_UNCONNECTED[3],cntr_flankp0_carry__6_n_5,cntr_flankp0_carry__6_n_6,cntr_flankp0_carry__6_n_7}),
        .S({1'b0,cntr_flankp[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cntr_flankp[0]_i_1 
       (.I0(cntr_flankp[0]),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[10]_i_1 
       (.I0(cntr_flankp0_carry__1_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[11]_i_1 
       (.I0(cntr_flankp0_carry__1_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[12]_i_1 
       (.I0(cntr_flankp0_carry__1_n_4),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[13]_i_1 
       (.I0(cntr_flankp0_carry__2_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[14]_i_1 
       (.I0(cntr_flankp0_carry__2_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[15]_i_1 
       (.I0(cntr_flankp0_carry__2_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[16]_i_1 
       (.I0(cntr_flankp0_carry__2_n_4),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[17]_i_1 
       (.I0(cntr_flankp0_carry__3_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[18]_i_1 
       (.I0(cntr_flankp0_carry__3_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[19]_i_1 
       (.I0(cntr_flankp0_carry__3_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[1]_i_1 
       (.I0(cntr_flankp0_carry_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[20]_i_1 
       (.I0(cntr_flankp0_carry__3_n_4),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[21]_i_1 
       (.I0(cntr_flankp0_carry__4_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[22]_i_1 
       (.I0(cntr_flankp0_carry__4_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[22]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[23]_i_1 
       (.I0(cntr_flankp0_carry__4_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[24]_i_1 
       (.I0(cntr_flankp0_carry__4_n_4),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[25]_i_1 
       (.I0(cntr_flankp0_carry__5_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[26]_i_1 
       (.I0(cntr_flankp0_carry__5_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[27]_i_1 
       (.I0(cntr_flankp0_carry__5_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[28]_i_1 
       (.I0(cntr_flankp0_carry__5_n_4),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[28]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[29]_i_1 
       (.I0(cntr_flankp0_carry__6_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[29]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[2]_i_1 
       (.I0(cntr_flankp0_carry_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[30]_i_1 
       (.I0(cntr_flankp0_carry__6_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr_flankp[31]_i_1 
       (.I0(clk_out_reg_0),
        .I1(flanco),
        .O(\cntr_flankp[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr_flankp[31]_i_10 
       (.I0(cntr_flankp[20]),
        .I1(cntr_flankp[28]),
        .I2(cntr_flankp[16]),
        .I3(cntr_flankp[25]),
        .O(\cntr_flankp[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr_flankp[31]_i_11 
       (.I0(cntr_flankp[13]),
        .I1(cntr_flankp[10]),
        .I2(cntr_flankp[6]),
        .I3(cntr_flankp[27]),
        .O(\cntr_flankp[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[31]_i_2 
       (.I0(cntr_flankp0_carry__6_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \cntr_flankp[31]_i_3 
       (.I0(\cntr_flankp[31]_i_4_n_0 ),
        .I1(\cntr_flankp[31]_i_5_n_0 ),
        .I2(\cntr_flankp[31]_i_6_n_0 ),
        .I3(\cntr_flankp[31]_i_7_n_0 ),
        .O(\cntr_flankp[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \cntr_flankp[31]_i_4 
       (.I0(cntr_flankp[1]),
        .I1(cntr_flankp[3]),
        .I2(cntr_flankp[7]),
        .I3(cntr_flankp[4]),
        .I4(\cntr_flankp[31]_i_8_n_0 ),
        .O(\cntr_flankp[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cntr_flankp[31]_i_5 
       (.I0(cntr_flankp[15]),
        .I1(cntr_flankp[31]),
        .I2(cntr_flankp[2]),
        .I3(cntr_flankp[12]),
        .I4(\cntr_flankp[31]_i_9_n_0 ),
        .O(\cntr_flankp[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cntr_flankp[31]_i_6 
       (.I0(cntr_flankp[24]),
        .I1(cntr_flankp[30]),
        .I2(cntr_flankp[21]),
        .I3(cntr_flankp[19]),
        .I4(\cntr_flankp[31]_i_10_n_0 ),
        .O(\cntr_flankp[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cntr_flankp[31]_i_7 
       (.I0(cntr_flankp[17]),
        .I1(cntr_flankp[18]),
        .I2(cntr_flankp[9]),
        .I3(cntr_flankp[8]),
        .I4(\cntr_flankp[31]_i_11_n_0 ),
        .O(\cntr_flankp[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr_flankp[31]_i_8 
       (.I0(cntr_flankp[5]),
        .I1(cntr_flankp[0]),
        .I2(cntr_flankp[22]),
        .I3(cntr_flankp[11]),
        .O(\cntr_flankp[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr_flankp[31]_i_9 
       (.I0(cntr_flankp[14]),
        .I1(cntr_flankp[23]),
        .I2(cntr_flankp[29]),
        .I3(cntr_flankp[26]),
        .O(\cntr_flankp[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[3]_i_1 
       (.I0(cntr_flankp0_carry_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[4]_i_1 
       (.I0(cntr_flankp0_carry_n_4),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[5]_i_1 
       (.I0(cntr_flankp0_carry__0_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[6]_i_1 
       (.I0(cntr_flankp0_carry__0_n_6),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[7]_i_1 
       (.I0(cntr_flankp0_carry__0_n_5),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[8]_i_1 
       (.I0(cntr_flankp0_carry__0_n_4),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cntr_flankp[9]_i_1 
       (.I0(cntr_flankp0_carry__1_n_7),
        .I1(\cntr_flankp[31]_i_3_n_0 ),
        .O(cntr_flankp_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[0] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[0]),
        .Q(cntr_flankp[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[10] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[10]),
        .Q(cntr_flankp[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[11] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[11]),
        .Q(cntr_flankp[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[12] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[12]),
        .Q(cntr_flankp[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[13] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[13]),
        .Q(cntr_flankp[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[14] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[14]),
        .Q(cntr_flankp[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[15] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[15]),
        .Q(cntr_flankp[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[16] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[16]),
        .Q(cntr_flankp[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[17] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[17]),
        .Q(cntr_flankp[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[18] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[18]),
        .Q(cntr_flankp[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[19] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[19]),
        .Q(cntr_flankp[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[1] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[1]),
        .Q(cntr_flankp[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[20] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[20]),
        .Q(cntr_flankp[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[21] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[21]),
        .Q(cntr_flankp[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[22] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[22]),
        .Q(cntr_flankp[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[23] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[23]),
        .Q(cntr_flankp[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[24] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[24]),
        .Q(cntr_flankp[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[25] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[25]),
        .Q(cntr_flankp[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[26] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[26]),
        .Q(cntr_flankp[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[27] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[27]),
        .Q(cntr_flankp[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[28] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[28]),
        .Q(cntr_flankp[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[29] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[29]),
        .Q(cntr_flankp[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[2] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[2]),
        .Q(cntr_flankp[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[30] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[30]),
        .Q(cntr_flankp[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[31] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[31]),
        .Q(cntr_flankp[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[3] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[3]),
        .Q(cntr_flankp[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[4] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[4]),
        .Q(cntr_flankp[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[5] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[5]),
        .Q(cntr_flankp[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[6] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[6]),
        .Q(cntr_flankp[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[7] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[7]),
        .Q(cntr_flankp[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[8] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[8]),
        .Q(cntr_flankp[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_flankp_reg[9] 
       (.C(CLK_10MHZ),
        .CE(\cntr_flankp[31]_i_1_n_0 ),
        .D(cntr_flankp_1[9]),
        .Q(cntr_flankp[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[10]),
        .O(counter_2[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[11]),
        .O(counter_2[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[12]),
        .O(counter_2[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[13]),
        .O(counter_2[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[14]),
        .O(counter_2[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[15]),
        .O(counter_2[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[16]),
        .O(counter_2[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[17]),
        .O(counter_2[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[18]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[18]),
        .O(counter_2[18]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[19]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[19]),
        .O(counter_2[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[1]),
        .O(counter_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[20]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[20]),
        .O(counter_2[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[21]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[21]),
        .O(counter_2[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[22]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[22]),
        .O(counter_2[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[23]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[23]),
        .O(counter_2[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[24]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[24]),
        .O(counter_2[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[25]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[25]),
        .O(counter_2[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[26]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[26]),
        .O(counter_2[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[27]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[27]),
        .O(counter_2[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[28]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[28]),
        .O(counter_2[28]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[29]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[29]),
        .O(counter_2[29]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[2]),
        .O(counter_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[30]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[30]),
        .O(counter_2[30]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[31]_i_10 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(\counter[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_11 
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(\counter[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_12 
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .O(\counter[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[31]_i_2 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[31]),
        .O(counter_2[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_3 
       (.I0(\counter[31]_i_5_n_0 ),
        .I1(\counter[31]_i_6_n_0 ),
        .I2(\counter[31]_i_7_n_0 ),
        .I3(\counter[31]_i_8_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_5 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .I4(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \counter[31]_i_6 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(\counter[31]_i_10_n_0 ),
        .O(\counter[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_7 
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(\counter[31]_i_11_n_0 ),
        .O(\counter[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_8 
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(\counter[31]_i_12_n_0 ),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(\counter[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[3]),
        .O(counter_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[4]),
        .O(counter_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[5]),
        .O(counter_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[6]),
        .O(counter_2[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[7]),
        .O(counter_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[8]),
        .O(counter_2[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(data0[9]),
        .O(counter_2[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[0]),
        .Q(counter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[10]),
        .Q(counter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[11]),
        .Q(counter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[12]),
        .Q(counter[12]),
        .R(SR));
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[13]),
        .Q(counter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[14]),
        .Q(counter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[15]),
        .Q(counter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[16]),
        .Q(counter[16]),
        .R(SR));
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[17]),
        .Q(counter[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[18]),
        .Q(counter[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[19]),
        .Q(counter[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[1]),
        .Q(counter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[20]),
        .Q(counter[20]),
        .R(SR));
  CARRY4 \counter_reg[20]_i_2 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CO({\counter_reg[20]_i_2_n_0 ,\counter_reg[20]_i_2_n_1 ,\counter_reg[20]_i_2_n_2 ,\counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[21]),
        .Q(counter[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[22]),
        .Q(counter[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[23]),
        .Q(counter[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[24]),
        .Q(counter[24]),
        .R(SR));
  CARRY4 \counter_reg[24]_i_2 
       (.CI(\counter_reg[20]_i_2_n_0 ),
        .CO({\counter_reg[24]_i_2_n_0 ,\counter_reg[24]_i_2_n_1 ,\counter_reg[24]_i_2_n_2 ,\counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[25]),
        .Q(counter[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[26]),
        .Q(counter[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[27]),
        .Q(counter[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[28]),
        .Q(counter[28]),
        .R(SR));
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_2_n_0 ),
        .CO({\counter_reg[28]_i_2_n_0 ,\counter_reg[28]_i_2_n_1 ,\counter_reg[28]_i_2_n_2 ,\counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(counter[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[29]),
        .Q(counter[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[2]),
        .Q(counter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[30]),
        .Q(counter[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[31]),
        .Q(counter[31]),
        .R(SR));
  CARRY4 \counter_reg[31]_i_4 
       (.CI(\counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter_reg[31]_i_4_CO_UNCONNECTED [3:2],\counter_reg[31]_i_4_n_2 ,\counter_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_4_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,counter[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[3]),
        .Q(counter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[4]),
        .Q(counter[4]),
        .R(SR));
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[5]),
        .Q(counter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[6]),
        .Q(counter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[7]),
        .Q(counter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[8]),
        .Q(counter[8]),
        .R(SR));
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_2[9]),
        .Q(counter[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h7F7F0C00)) 
    flanco_i_1
       (.I0(\cntr_flankp[31]_i_3_n_0 ),
        .I1(hold_ctrl),
        .I2(clk_out_reg_0),
        .I3(\cntr_flankn[31]_i_3_n_0 ),
        .I4(flanco),
        .O(flanco_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    flanco_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(flanco_i_1_n_0),
        .Q(flanco),
        .S(rst_pi_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    mosi_i_1
       (.I0(clk_fp),
        .I1(we_reg),
        .O(mosi));
endmodule

module module_control_pmodALS
   (\addr_pmod_reg[0]_0 ,
    we_reg_control_reg_0,
    selec_out_reg_0,
    send_reg_0,
    we_addr,
    send_reg_1,
    E,
    \state_reg[1] ,
    rst_pi_IBUF,
    \addr_pmod_reg[0]_1 ,
    CLK_10MHZ,
    we_reg_control_reg_1,
    send_reg_2,
    we_addr_reg_0,
    proccess,
    we_rx,
    \state_reg[22]_inv ,
    Q,
    selec_out_reg_1,
    \cntr_str_i[n_tx_end] );
  output \addr_pmod_reg[0]_0 ;
  output we_reg_control_reg_0;
  output selec_out_reg_0;
  output send_reg_0;
  output we_addr;
  output send_reg_1;
  output [1:0]E;
  output \state_reg[1] ;
  input rst_pi_IBUF;
  input \addr_pmod_reg[0]_1 ;
  input CLK_10MHZ;
  input we_reg_control_reg_1;
  input send_reg_2;
  input we_addr_reg_0;
  input proccess;
  input we_rx;
  input \state_reg[22]_inv ;
  input [1:0]Q;
  input selec_out_reg_1;
  input [0:0]\cntr_str_i[n_tx_end] ;

  wire CLK_10MHZ;
  wire [1:0]E;
  wire [1:0]Q;
  wire \addr_pmod_reg[0]_0 ;
  wire \addr_pmod_reg[0]_1 ;
  wire [0:0]\cntr_str_i[n_tx_end] ;
  wire proccess;
  wire rst_pi_IBUF;
  wire selec_out_i_1_n_0;
  wire selec_out_reg_0;
  wire selec_out_reg_1;
  wire send_reg_0;
  wire send_reg_1;
  wire send_reg_2;
  wire \state_reg[1] ;
  wire \state_reg[22]_inv ;
  wire we_addr;
  wire we_addr_reg_0;
  wire we_reg_control_reg_0;
  wire we_reg_control_reg_1;
  wire we_rx;

  FDRE #(
    .INIT(1'b0)) 
    \addr_pmod_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\addr_pmod_reg[0]_1 ),
        .Q(\addr_pmod_reg[0]_0 ),
        .R(rst_pi_IBUF));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \registro_control/state[4]_i_1 
       (.I0(\state_reg[22]_inv ),
        .I1(send_reg_0),
        .I2(we_reg_control_reg_0),
        .I3(selec_out_reg_0),
        .I4(\cntr_str_i[n_tx_end] ),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFF7F730303000)) 
    selec_out_i_1
       (.I0(\addr_pmod_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(proccess),
        .I4(selec_out_reg_1),
        .I5(selec_out_reg_0),
        .O(selec_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    selec_out_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(selec_out_i_1_n_0),
        .Q(selec_out_reg_0),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    send_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(send_reg_2),
        .Q(send_reg_0),
        .R(rst_pi_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFF0004040404)) 
    \state[21]_i_1 
       (.I0(send_reg_0),
        .I1(we_reg_control_reg_0),
        .I2(selec_out_reg_0),
        .I3(proccess),
        .I4(we_rx),
        .I5(\state_reg[22]_inv ),
        .O(send_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[3]_i_1 
       (.I0(\addr_pmod_reg[0]_0 ),
        .I1(we_addr),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[7]_i_1 
       (.I0(we_addr),
        .I1(\addr_pmod_reg[0]_0 ),
        .O(E[1]));
  FDRE #(
    .INIT(1'b0)) 
    we_addr_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(we_addr_reg_0),
        .Q(we_addr),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    we_reg_control_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(we_reg_control_reg_1),
        .Q(we_reg_control_reg_0),
        .R(rst_pi_IBUF));
endmodule

module module_control_spi
   (CO,
    hold_ctrl,
    we_reg,
    progress_reg_0,
    we_rx,
    contador_0,
    \addr2_reg[0]_0 ,
    E,
    hold_ctrl_reg_0,
    hold_ctrl_reg_1,
    addr_ram,
    hold_ctrl_reg_2,
    we_ram2_reg_0,
    we_ram2_reg_1,
    \addr2_reg[6]_0 ,
    \addr2_reg[6]_1 ,
    \addr2_reg[6]_2 ,
    \addr2_reg[6]_3 ,
    hold_ctrl_reg_3,
    \addr2_reg[6]_4 ,
    \addr2_reg[6]_5 ,
    \addr2_reg[6]_6 ,
    we_ram2_reg_2,
    we_ram2_reg_3,
    we_ram2_reg_4,
    p_1_in,
    SR,
    \contador_reg[0]_0 ,
    reg_shift_mosi,
    \rx_reg[0]_0 ,
    \rx_reg[1]_0 ,
    \rx_reg[5]_0 ,
    \rx_reg[6]_0 ,
    D,
    progress_reg_1,
    progress_reg_2,
    progress_reg_3,
    hold_ctrl_reg_4,
    hold_ctrl_reg_5,
    hold_ctrl_reg_6,
    hold_ctrl_reg_7,
    hold_ctrl_reg_8,
    hold_ctrl_reg_9,
    hold_ctrl_reg_10,
    hold_ctrl_reg_11,
    hold_ctrl_reg_12,
    hold_ctrl_reg_13,
    hold_ctrl_reg_14,
    hold_ctrl_reg_15,
    hold_ctrl_reg_16,
    hold_ctrl_reg_17,
    hold_ctrl_reg_18,
    hold_ctrl_reg_19,
    hold_ctrl_reg_20,
    hold_ctrl_reg_21,
    hold_ctrl_reg_22,
    hold_ctrl_reg_23,
    hold_ctrl_reg_24,
    hold_ctrl_reg_25,
    hold_ctrl_reg_26,
    hold_ctrl_reg_27,
    hold_ctrl_reg_28,
    hold_ctrl_reg_29,
    hold_ctrl_reg_30,
    hold_ctrl_reg_31,
    hold_ctrl_reg_32,
    hold_ctrl_reg_33,
    hold_ctrl_reg_34,
    hold_ctrl_reg_35,
    hold_ctrl_reg_36,
    hold_ctrl_reg_37,
    hold_ctrl_reg_38,
    hold_ctrl_reg_39,
    hold_ctrl_reg_40,
    hold_ctrl_reg_41,
    hold_ctrl_reg_42,
    hold_ctrl_reg_43,
    hold_ctrl_reg_44,
    hold_ctrl_reg_45,
    hold_ctrl_reg_46,
    hold_ctrl_reg_47,
    hold_ctrl_reg_48,
    hold_ctrl_reg_49,
    hold_ctrl_reg_50,
    hold_ctrl_reg_51,
    hold_ctrl_reg_52,
    hold_ctrl_reg_53,
    hold_ctrl_reg_54,
    hold_ctrl_reg_55,
    hold_ctrl_reg_56,
    hold_ctrl_reg_57,
    hold_ctrl_reg_58,
    hold_ctrl_reg_59,
    hold_ctrl_reg_60,
    hold_ctrl_reg_61,
    hold_ctrl_reg_62,
    hold_ctrl_reg_63,
    hold_ctrl_reg_64,
    hold_ctrl_reg_65,
    hold_ctrl_reg_66,
    hold_ctrl_reg_67,
    hold_ctrl_reg_68,
    hold_ctrl_reg_69,
    hold_ctrl_reg_70,
    hold_ctrl_reg_71,
    hold_ctrl_reg_72,
    hold_ctrl_reg_73,
    hold_ctrl_reg_74,
    hold_ctrl_reg_75,
    hold_ctrl_reg_76,
    hold_ctrl_reg_77,
    hold_ctrl_reg_78,
    hold_ctrl_reg_79,
    hold_ctrl_reg_80,
    hold_ctrl_reg_81,
    hold_ctrl_reg_82,
    hold_ctrl_reg_83,
    hold_ctrl_reg_84,
    hold_ctrl_reg_85,
    hold_ctrl_reg_86,
    hold_ctrl_reg_87,
    hold_ctrl_reg_88,
    hold_ctrl_reg_89,
    hold_ctrl_reg_90,
    hold_ctrl_reg_91,
    hold_ctrl_reg_92,
    hold_ctrl_reg_93,
    hold_ctrl_reg_94,
    hold_ctrl_reg_95,
    hold_ctrl_reg_96,
    hold_ctrl_reg_97,
    hold_ctrl_reg_98,
    hold_ctrl_reg_99,
    hold_ctrl_reg_100,
    hold_ctrl_reg_101,
    hold_ctrl_reg_102,
    hold_ctrl_reg_103,
    hold_ctrl_reg_104,
    hold_ctrl_reg_105,
    hold_ctrl_reg_106,
    hold_ctrl_reg_107,
    hold_ctrl_reg_108,
    hold_ctrl_reg_109,
    hold_ctrl_reg_110,
    hold_ctrl_reg_111,
    hold_ctrl_reg_112,
    hold_ctrl_reg_113,
    hold_ctrl_reg_114,
    hold_ctrl_reg_115,
    hold_ctrl_reg_116,
    hold_ctrl_reg_117,
    DI,
    S,
    rst_pi_IBUF,
    hold_ctrl_reg_118,
    CLK_10MHZ,
    selec_out,
    we_reg_control,
    \reg_shift_mosi_reg[7] ,
    \reg_shift_mosi_reg[7]_0 ,
    \reg_shift_mosi_reg[6] ,
    \reg_shift_mosi_reg[6]_0 ,
    \reg_shift_mosi_reg[5] ,
    \reg_shift_mosi_reg[5]_0 ,
    \reg_shift_mosi_reg[4] ,
    \reg_shift_mosi_reg[4]_0 ,
    \reg_shift_mosi_reg[3] ,
    \reg_shift_mosi_reg[3]_0 ,
    \reg_shift_mosi_reg[2] ,
    \reg_shift_mosi_reg[2]_0 ,
    \reg_shift_mosi_reg[1] ,
    \reg_shift_mosi_reg[1]_0 ,
    addr_pmod,
    Q,
    en_conta_reg_0,
    \contador_reg[0]_1 ,
    en_conta_reg_1,
    \contador_reg[1]_0 ,
    clk_fp,
    \memoria_reg[1][7] ,
    \addr2_reg[6]_7 ,
    \contador_reg[0]_2 );
  output [0:0]CO;
  output hold_ctrl;
  output we_reg;
  output progress_reg_0;
  output we_rx;
  output contador_0;
  output \addr2_reg[0]_0 ;
  output [0:0]E;
  output hold_ctrl_reg_0;
  output hold_ctrl_reg_1;
  output [4:0]addr_ram;
  output [0:0]hold_ctrl_reg_2;
  output [0:0]we_ram2_reg_0;
  output [0:0]we_ram2_reg_1;
  output [0:0]\addr2_reg[6]_0 ;
  output [0:0]\addr2_reg[6]_1 ;
  output [0:0]\addr2_reg[6]_2 ;
  output [0:0]\addr2_reg[6]_3 ;
  output hold_ctrl_reg_3;
  output [0:0]\addr2_reg[6]_4 ;
  output [0:0]\addr2_reg[6]_5 ;
  output [0:0]\addr2_reg[6]_6 ;
  output [0:0]we_ram2_reg_2;
  output [0:0]we_ram2_reg_3;
  output [0:0]we_ram2_reg_4;
  output [6:0]p_1_in;
  output [0:0]SR;
  output [0:0]\contador_reg[0]_0 ;
  output [0:0]reg_shift_mosi;
  output \rx_reg[0]_0 ;
  output \rx_reg[1]_0 ;
  output \rx_reg[5]_0 ;
  output \rx_reg[6]_0 ;
  output [6:0]D;
  output progress_reg_1;
  output progress_reg_2;
  output progress_reg_3;
  output [0:0]hold_ctrl_reg_4;
  output [0:0]hold_ctrl_reg_5;
  output [0:0]hold_ctrl_reg_6;
  output [0:0]hold_ctrl_reg_7;
  output [0:0]hold_ctrl_reg_8;
  output [0:0]hold_ctrl_reg_9;
  output [0:0]hold_ctrl_reg_10;
  output [0:0]hold_ctrl_reg_11;
  output [0:0]hold_ctrl_reg_12;
  output [0:0]hold_ctrl_reg_13;
  output [0:0]hold_ctrl_reg_14;
  output [0:0]hold_ctrl_reg_15;
  output [0:0]hold_ctrl_reg_16;
  output [0:0]hold_ctrl_reg_17;
  output [0:0]hold_ctrl_reg_18;
  output [0:0]hold_ctrl_reg_19;
  output [0:0]hold_ctrl_reg_20;
  output [0:0]hold_ctrl_reg_21;
  output [0:0]hold_ctrl_reg_22;
  output [0:0]hold_ctrl_reg_23;
  output [0:0]hold_ctrl_reg_24;
  output [0:0]hold_ctrl_reg_25;
  output [0:0]hold_ctrl_reg_26;
  output [0:0]hold_ctrl_reg_27;
  output [0:0]hold_ctrl_reg_28;
  output [0:0]hold_ctrl_reg_29;
  output [0:0]hold_ctrl_reg_30;
  output [0:0]hold_ctrl_reg_31;
  output [0:0]hold_ctrl_reg_32;
  output [0:0]hold_ctrl_reg_33;
  output [0:0]hold_ctrl_reg_34;
  output [0:0]hold_ctrl_reg_35;
  output [0:0]hold_ctrl_reg_36;
  output [0:0]hold_ctrl_reg_37;
  output [0:0]hold_ctrl_reg_38;
  output [0:0]hold_ctrl_reg_39;
  output [0:0]hold_ctrl_reg_40;
  output [0:0]hold_ctrl_reg_41;
  output [0:0]hold_ctrl_reg_42;
  output [0:0]hold_ctrl_reg_43;
  output [0:0]hold_ctrl_reg_44;
  output [0:0]hold_ctrl_reg_45;
  output [0:0]hold_ctrl_reg_46;
  output [0:0]hold_ctrl_reg_47;
  output [0:0]hold_ctrl_reg_48;
  output [0:0]hold_ctrl_reg_49;
  output [0:0]hold_ctrl_reg_50;
  output [0:0]hold_ctrl_reg_51;
  output [0:0]hold_ctrl_reg_52;
  output [0:0]hold_ctrl_reg_53;
  output [0:0]hold_ctrl_reg_54;
  output [0:0]hold_ctrl_reg_55;
  output [0:0]hold_ctrl_reg_56;
  output [0:0]hold_ctrl_reg_57;
  output [0:0]hold_ctrl_reg_58;
  output [0:0]hold_ctrl_reg_59;
  output [0:0]hold_ctrl_reg_60;
  output [0:0]hold_ctrl_reg_61;
  output [0:0]hold_ctrl_reg_62;
  output [0:0]hold_ctrl_reg_63;
  output [0:0]hold_ctrl_reg_64;
  output [0:0]hold_ctrl_reg_65;
  output [0:0]hold_ctrl_reg_66;
  output [0:0]hold_ctrl_reg_67;
  output [0:0]hold_ctrl_reg_68;
  output [0:0]hold_ctrl_reg_69;
  output [0:0]hold_ctrl_reg_70;
  output [0:0]hold_ctrl_reg_71;
  output [0:0]hold_ctrl_reg_72;
  output [0:0]hold_ctrl_reg_73;
  output [0:0]hold_ctrl_reg_74;
  output [0:0]hold_ctrl_reg_75;
  output [0:0]hold_ctrl_reg_76;
  output [0:0]hold_ctrl_reg_77;
  output [0:0]hold_ctrl_reg_78;
  output [0:0]hold_ctrl_reg_79;
  output [0:0]hold_ctrl_reg_80;
  output [0:0]hold_ctrl_reg_81;
  output [0:0]hold_ctrl_reg_82;
  output [0:0]hold_ctrl_reg_83;
  output [0:0]hold_ctrl_reg_84;
  output [0:0]hold_ctrl_reg_85;
  output [0:0]hold_ctrl_reg_86;
  output [0:0]hold_ctrl_reg_87;
  output [0:0]hold_ctrl_reg_88;
  output [0:0]hold_ctrl_reg_89;
  output [0:0]hold_ctrl_reg_90;
  output [0:0]hold_ctrl_reg_91;
  output [0:0]hold_ctrl_reg_92;
  output [0:0]hold_ctrl_reg_93;
  output [0:0]hold_ctrl_reg_94;
  output [0:0]hold_ctrl_reg_95;
  output [0:0]hold_ctrl_reg_96;
  output [0:0]hold_ctrl_reg_97;
  output [0:0]hold_ctrl_reg_98;
  output [0:0]hold_ctrl_reg_99;
  output [0:0]hold_ctrl_reg_100;
  output [0:0]hold_ctrl_reg_101;
  output [0:0]hold_ctrl_reg_102;
  output [0:0]hold_ctrl_reg_103;
  output [0:0]hold_ctrl_reg_104;
  output [0:0]hold_ctrl_reg_105;
  output [0:0]hold_ctrl_reg_106;
  output [0:0]hold_ctrl_reg_107;
  output [0:0]hold_ctrl_reg_108;
  output [0:0]hold_ctrl_reg_109;
  output [0:0]hold_ctrl_reg_110;
  output [0:0]hold_ctrl_reg_111;
  output [0:0]hold_ctrl_reg_112;
  output [0:0]hold_ctrl_reg_113;
  output [0:0]hold_ctrl_reg_114;
  output [0:0]hold_ctrl_reg_115;
  output [0:0]hold_ctrl_reg_116;
  output [0:0]hold_ctrl_reg_117;
  input [0:0]DI;
  input [3:0]S;
  input rst_pi_IBUF;
  input hold_ctrl_reg_118;
  input CLK_10MHZ;
  input selec_out;
  input we_reg_control;
  input \reg_shift_mosi_reg[7] ;
  input \reg_shift_mosi_reg[7]_0 ;
  input \reg_shift_mosi_reg[6] ;
  input \reg_shift_mosi_reg[6]_0 ;
  input \reg_shift_mosi_reg[5] ;
  input \reg_shift_mosi_reg[5]_0 ;
  input \reg_shift_mosi_reg[4] ;
  input \reg_shift_mosi_reg[4]_0 ;
  input \reg_shift_mosi_reg[3] ;
  input \reg_shift_mosi_reg[3]_0 ;
  input \reg_shift_mosi_reg[2] ;
  input \reg_shift_mosi_reg[2]_0 ;
  input \reg_shift_mosi_reg[1] ;
  input \reg_shift_mosi_reg[1]_0 ;
  input [0:0]addr_pmod;
  input [1:0]Q;
  input en_conta_reg_0;
  input \contador_reg[0]_1 ;
  input [0:0]en_conta_reg_1;
  input \contador_reg[1]_0 ;
  input clk_fp;
  input [6:0]\memoria_reg[1][7] ;
  input [0:0]\addr2_reg[6]_7 ;
  input [0:0]\contador_reg[0]_2 ;

  wire CLK_10MHZ;
  wire [0:0]CO;
  wire [6:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [6:0]addr2;
  wire addr20_carry_n_1;
  wire addr20_carry_n_2;
  wire addr20_carry_n_3;
  wire \addr2[0]_i_1_n_0 ;
  wire \addr2[1]_i_1_n_0 ;
  wire \addr2[2]_i_1_n_0 ;
  wire \addr2[3]_i_1_n_0 ;
  wire \addr2[4]_i_1_n_0 ;
  wire \addr2[4]_i_2_n_0 ;
  wire \addr2[5]_i_1_n_0 ;
  wire \addr2[5]_i_2_n_0 ;
  wire \addr2[6]_i_2_n_0 ;
  wire \addr2[6]_i_3_n_0 ;
  wire \addr2_reg[0]_0 ;
  wire [0:0]\addr2_reg[6]_0 ;
  wire [0:0]\addr2_reg[6]_1 ;
  wire [0:0]\addr2_reg[6]_2 ;
  wire [0:0]\addr2_reg[6]_3 ;
  wire [0:0]\addr2_reg[6]_4 ;
  wire [0:0]\addr2_reg[6]_5 ;
  wire [0:0]\addr2_reg[6]_6 ;
  wire [0:0]\addr2_reg[6]_7 ;
  wire [0:0]addr_pmod;
  wire [4:0]addr_ram;
  wire clk_fp;
  wire [3:1]contador;
  wire \contador[1]_i_1_n_0 ;
  wire \contador[2]_i_1_n_0 ;
  wire \contador[3]_i_1_n_0 ;
  wire \contador[3]_i_2_n_0 ;
  wire \contador[3]_i_5_n_0 ;
  wire \contador[3]_i_6_n_0 ;
  wire contador_0;
  wire [0:0]\contador_reg[0]_0 ;
  wire \contador_reg[0]_1 ;
  wire [0:0]\contador_reg[0]_2 ;
  wire \contador_reg[1]_0 ;
  wire en_conta_i_1_n_0;
  wire en_conta_reg_0;
  wire [0:0]en_conta_reg_1;
  wire hold_ctrl;
  wire hold_ctrl_reg_0;
  wire hold_ctrl_reg_1;
  wire [0:0]hold_ctrl_reg_10;
  wire [0:0]hold_ctrl_reg_100;
  wire [0:0]hold_ctrl_reg_101;
  wire [0:0]hold_ctrl_reg_102;
  wire [0:0]hold_ctrl_reg_103;
  wire [0:0]hold_ctrl_reg_104;
  wire [0:0]hold_ctrl_reg_105;
  wire [0:0]hold_ctrl_reg_106;
  wire [0:0]hold_ctrl_reg_107;
  wire [0:0]hold_ctrl_reg_108;
  wire [0:0]hold_ctrl_reg_109;
  wire [0:0]hold_ctrl_reg_11;
  wire [0:0]hold_ctrl_reg_110;
  wire [0:0]hold_ctrl_reg_111;
  wire [0:0]hold_ctrl_reg_112;
  wire [0:0]hold_ctrl_reg_113;
  wire [0:0]hold_ctrl_reg_114;
  wire [0:0]hold_ctrl_reg_115;
  wire [0:0]hold_ctrl_reg_116;
  wire [0:0]hold_ctrl_reg_117;
  wire hold_ctrl_reg_118;
  wire [0:0]hold_ctrl_reg_12;
  wire [0:0]hold_ctrl_reg_13;
  wire [0:0]hold_ctrl_reg_14;
  wire [0:0]hold_ctrl_reg_15;
  wire [0:0]hold_ctrl_reg_16;
  wire [0:0]hold_ctrl_reg_17;
  wire [0:0]hold_ctrl_reg_18;
  wire [0:0]hold_ctrl_reg_19;
  wire [0:0]hold_ctrl_reg_2;
  wire [0:0]hold_ctrl_reg_20;
  wire [0:0]hold_ctrl_reg_21;
  wire [0:0]hold_ctrl_reg_22;
  wire [0:0]hold_ctrl_reg_23;
  wire [0:0]hold_ctrl_reg_24;
  wire [0:0]hold_ctrl_reg_25;
  wire [0:0]hold_ctrl_reg_26;
  wire [0:0]hold_ctrl_reg_27;
  wire [0:0]hold_ctrl_reg_28;
  wire [0:0]hold_ctrl_reg_29;
  wire hold_ctrl_reg_3;
  wire [0:0]hold_ctrl_reg_30;
  wire [0:0]hold_ctrl_reg_31;
  wire [0:0]hold_ctrl_reg_32;
  wire [0:0]hold_ctrl_reg_33;
  wire [0:0]hold_ctrl_reg_34;
  wire [0:0]hold_ctrl_reg_35;
  wire [0:0]hold_ctrl_reg_36;
  wire [0:0]hold_ctrl_reg_37;
  wire [0:0]hold_ctrl_reg_38;
  wire [0:0]hold_ctrl_reg_39;
  wire [0:0]hold_ctrl_reg_4;
  wire [0:0]hold_ctrl_reg_40;
  wire [0:0]hold_ctrl_reg_41;
  wire [0:0]hold_ctrl_reg_42;
  wire [0:0]hold_ctrl_reg_43;
  wire [0:0]hold_ctrl_reg_44;
  wire [0:0]hold_ctrl_reg_45;
  wire [0:0]hold_ctrl_reg_46;
  wire [0:0]hold_ctrl_reg_47;
  wire [0:0]hold_ctrl_reg_48;
  wire [0:0]hold_ctrl_reg_49;
  wire [0:0]hold_ctrl_reg_5;
  wire [0:0]hold_ctrl_reg_50;
  wire [0:0]hold_ctrl_reg_51;
  wire [0:0]hold_ctrl_reg_52;
  wire [0:0]hold_ctrl_reg_53;
  wire [0:0]hold_ctrl_reg_54;
  wire [0:0]hold_ctrl_reg_55;
  wire [0:0]hold_ctrl_reg_56;
  wire [0:0]hold_ctrl_reg_57;
  wire [0:0]hold_ctrl_reg_58;
  wire [0:0]hold_ctrl_reg_59;
  wire [0:0]hold_ctrl_reg_6;
  wire [0:0]hold_ctrl_reg_60;
  wire [0:0]hold_ctrl_reg_61;
  wire [0:0]hold_ctrl_reg_62;
  wire [0:0]hold_ctrl_reg_63;
  wire [0:0]hold_ctrl_reg_64;
  wire [0:0]hold_ctrl_reg_65;
  wire [0:0]hold_ctrl_reg_66;
  wire [0:0]hold_ctrl_reg_67;
  wire [0:0]hold_ctrl_reg_68;
  wire [0:0]hold_ctrl_reg_69;
  wire [0:0]hold_ctrl_reg_7;
  wire [0:0]hold_ctrl_reg_70;
  wire [0:0]hold_ctrl_reg_71;
  wire [0:0]hold_ctrl_reg_72;
  wire [0:0]hold_ctrl_reg_73;
  wire [0:0]hold_ctrl_reg_74;
  wire [0:0]hold_ctrl_reg_75;
  wire [0:0]hold_ctrl_reg_76;
  wire [0:0]hold_ctrl_reg_77;
  wire [0:0]hold_ctrl_reg_78;
  wire [0:0]hold_ctrl_reg_79;
  wire [0:0]hold_ctrl_reg_8;
  wire [0:0]hold_ctrl_reg_80;
  wire [0:0]hold_ctrl_reg_81;
  wire [0:0]hold_ctrl_reg_82;
  wire [0:0]hold_ctrl_reg_83;
  wire [0:0]hold_ctrl_reg_84;
  wire [0:0]hold_ctrl_reg_85;
  wire [0:0]hold_ctrl_reg_86;
  wire [0:0]hold_ctrl_reg_87;
  wire [0:0]hold_ctrl_reg_88;
  wire [0:0]hold_ctrl_reg_89;
  wire [0:0]hold_ctrl_reg_9;
  wire [0:0]hold_ctrl_reg_90;
  wire [0:0]hold_ctrl_reg_91;
  wire [0:0]hold_ctrl_reg_92;
  wire [0:0]hold_ctrl_reg_93;
  wire [0:0]hold_ctrl_reg_94;
  wire [0:0]hold_ctrl_reg_95;
  wire [0:0]hold_ctrl_reg_96;
  wire [0:0]hold_ctrl_reg_97;
  wire [0:0]hold_ctrl_reg_98;
  wire [0:0]hold_ctrl_reg_99;
  wire \memoria[124][7]_i_2_n_0 ;
  wire \memoria[125][7]_i_2_n_0 ;
  wire \memoria[126][7]_i_2_n_0 ;
  wire \memoria[127][7]_i_2_n_0 ;
  wire \memoria[12][7]_i_2_n_0 ;
  wire \memoria[16][7]_i_2_n_0 ;
  wire \memoria[18][7]_i_2_n_0 ;
  wire \memoria[21][7]_i_2_n_0 ;
  wire \memoria[21][7]_i_3_n_0 ;
  wire \memoria[23][7]_i_2_n_0 ;
  wire \memoria[26][7]_i_6_n_0 ;
  wire \memoria[28][7]_i_2_n_0 ;
  wire \memoria[32][7]_i_2_n_0 ;
  wire \memoria[60][7]_i_2_n_0 ;
  wire \memoria[61][7]_i_2_n_0 ;
  wire \memoria[62][7]_i_2_n_0 ;
  wire \memoria[63][7]_i_2_n_0 ;
  wire \memoria[78][7]_i_2_n_0 ;
  wire \memoria[7][7]_i_2_n_0 ;
  wire \memoria[92][7]_i_2_n_0 ;
  wire \memoria[93][7]_i_2_n_0 ;
  wire \memoria[94][7]_i_2_n_0 ;
  wire \memoria[95][7]_i_2_n_0 ;
  wire \memoria_ram/enable_ram ;
  wire [6:0]\memoria_reg[1][7] ;
  wire [6:0]p_1_in;
  wire progress_i_1_n_0;
  wire progress_reg_0;
  wire progress_reg_1;
  wire progress_reg_2;
  wire progress_reg_3;
  wire [0:0]reg_shift_mosi;
  wire \reg_shift_mosi_reg[1] ;
  wire \reg_shift_mosi_reg[1]_0 ;
  wire \reg_shift_mosi_reg[2] ;
  wire \reg_shift_mosi_reg[2]_0 ;
  wire \reg_shift_mosi_reg[3] ;
  wire \reg_shift_mosi_reg[3]_0 ;
  wire \reg_shift_mosi_reg[4] ;
  wire \reg_shift_mosi_reg[4]_0 ;
  wire \reg_shift_mosi_reg[5] ;
  wire \reg_shift_mosi_reg[5]_0 ;
  wire \reg_shift_mosi_reg[6] ;
  wire \reg_shift_mosi_reg[6]_0 ;
  wire \reg_shift_mosi_reg[7] ;
  wire \reg_shift_mosi_reg[7]_0 ;
  wire rst_pi_IBUF;
  wire [6:0]rx;
  wire \rx[0]_i_1_n_0 ;
  wire \rx[1]_i_1_n_0 ;
  wire \rx[2]_i_1_n_0 ;
  wire \rx[3]_i_1_n_0 ;
  wire \rx[4]_i_1_n_0 ;
  wire \rx[5]_i_1_n_0 ;
  wire \rx[6]_i_1_n_0 ;
  wire \rx[6]_i_2_n_0 ;
  wire \rx[6]_i_3_n_0 ;
  wire \rx[6]_i_4_n_0 ;
  wire \rx_reg[0]_0 ;
  wire \rx_reg[1]_0 ;
  wire \rx_reg[5]_0 ;
  wire \rx_reg[6]_0 ;
  wire selec_out;
  wire we_ram2;
  wire we_ram2_i_1_n_0;
  wire [0:0]we_ram2_reg_0;
  wire [0:0]we_ram2_reg_1;
  wire [0:0]we_ram2_reg_2;
  wire [0:0]we_ram2_reg_3;
  wire [0:0]we_ram2_reg_4;
  wire we_reg;
  wire we_reg_control;
  wire we_reg_i_1_n_0;
  wire we_rx;
  wire we_rx_i_1_n_0;
  wire [3:0]NLW_addr20_carry_O_UNCONNECTED;

  CARRY4 addr20_carry
       (.CI(1'b0),
        .CO({CO,addr20_carry_n_1,addr20_carry_n_2,addr20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O(NLW_addr20_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr2[0]_i_1 
       (.I0(Q[1]),
        .I1(contador_0),
        .I2(addr2[0]),
        .O(\addr2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0880)) 
    \addr2[1]_i_1 
       (.I0(Q[1]),
        .I1(contador_0),
        .I2(addr2[0]),
        .I3(addr2[1]),
        .O(\addr2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \addr2[2]_i_1 
       (.I0(\addr2[4]_i_2_n_0 ),
        .I1(addr2[1]),
        .I2(addr2[0]),
        .I3(addr2[2]),
        .O(\addr2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \addr2[3]_i_1 
       (.I0(\addr2[4]_i_2_n_0 ),
        .I1(addr2[0]),
        .I2(addr2[1]),
        .I3(addr2[2]),
        .I4(addr2[3]),
        .O(\addr2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \addr2[4]_i_1 
       (.I0(\addr2[4]_i_2_n_0 ),
        .I1(addr2[2]),
        .I2(addr2[1]),
        .I3(addr2[0]),
        .I4(addr2[3]),
        .I5(addr2[4]),
        .O(\addr2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h50C0)) 
    \addr2[4]_i_2 
       (.I0(progress_reg_0),
        .I1(contador_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\addr2[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \addr2[5]_i_1 
       (.I0(contador_0),
        .I1(Q[1]),
        .I2(addr2[5]),
        .I3(\addr2[5]_i_2_n_0 ),
        .O(\addr2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr2[5]_i_2 
       (.I0(addr2[4]),
        .I1(addr2[3]),
        .I2(addr2[0]),
        .I3(addr2[1]),
        .I4(addr2[2]),
        .O(\addr2[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \addr2[6]_i_2 
       (.I0(addr2[6]),
        .I1(\addr2[6]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(contador_0),
        .O(\addr2[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr2[6]_i_3 
       (.I0(addr2[2]),
        .I1(addr2[1]),
        .I2(addr2[0]),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .I5(addr2[5]),
        .O(\addr2[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr2_reg[0] 
       (.C(CLK_10MHZ),
        .CE(\addr2_reg[6]_7 ),
        .D(\addr2[0]_i_1_n_0 ),
        .Q(addr2[0]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr2_reg[1] 
       (.C(CLK_10MHZ),
        .CE(\addr2_reg[6]_7 ),
        .D(\addr2[1]_i_1_n_0 ),
        .Q(addr2[1]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr2_reg[2] 
       (.C(CLK_10MHZ),
        .CE(\addr2_reg[6]_7 ),
        .D(\addr2[2]_i_1_n_0 ),
        .Q(addr2[2]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr2_reg[3] 
       (.C(CLK_10MHZ),
        .CE(\addr2_reg[6]_7 ),
        .D(\addr2[3]_i_1_n_0 ),
        .Q(addr2[3]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr2_reg[4] 
       (.C(CLK_10MHZ),
        .CE(\addr2_reg[6]_7 ),
        .D(\addr2[4]_i_1_n_0 ),
        .Q(addr2[4]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr2_reg[5] 
       (.C(CLK_10MHZ),
        .CE(\addr2_reg[6]_7 ),
        .D(\addr2[5]_i_1_n_0 ),
        .Q(addr2[5]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addr2_reg[6] 
       (.C(CLK_10MHZ),
        .CE(\addr2_reg[6]_7 ),
        .D(\addr2[6]_i_2_n_0 ),
        .Q(addr2[6]),
        .R(rst_pi_IBUF));
  LUT6 #(
    .INIT(64'h0000045404540000)) 
    \contador[1]_i_1 
       (.I0(Q[0]),
        .I1(\contador_reg[1]_0 ),
        .I2(Q[1]),
        .I3(contador_0),
        .I4(contador[1]),
        .I5(\contador_reg[0]_0 ),
        .O(\contador[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \contador[2]_i_1 
       (.I0(\contador_reg[0]_1 ),
        .I1(contador[1]),
        .I2(\contador_reg[0]_0 ),
        .I3(contador[2]),
        .O(\contador[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08880808)) 
    \contador[3]_i_1 
       (.I0(\rx[6]_i_3_n_0 ),
        .I1(en_conta_reg_0),
        .I2(\contador_reg[0]_1 ),
        .I3(\contador[3]_i_5_n_0 ),
        .I4(en_conta_reg_1),
        .O(\contador[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \contador[3]_i_2 
       (.I0(contador[3]),
        .I1(contador[2]),
        .I2(contador[1]),
        .I3(\contador_reg[0]_0 ),
        .I4(\contador[3]_i_6_n_0 ),
        .O(\contador[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \contador[3]_i_5 
       (.I0(\contador_reg[0]_0 ),
        .I1(contador[1]),
        .I2(contador[3]),
        .I3(contador[2]),
        .O(\contador[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hBBCF88CF)) 
    \contador[3]_i_6 
       (.I0(progress_reg_0),
        .I1(Q[0]),
        .I2(\contador_reg[1]_0 ),
        .I3(Q[1]),
        .I4(contador_0),
        .O(\contador[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(CLK_10MHZ),
        .CE(\contador[3]_i_1_n_0 ),
        .D(\contador_reg[0]_2 ),
        .Q(\contador_reg[0]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(CLK_10MHZ),
        .CE(\contador[3]_i_1_n_0 ),
        .D(\contador[1]_i_1_n_0 ),
        .Q(contador[1]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(CLK_10MHZ),
        .CE(\contador[3]_i_1_n_0 ),
        .D(\contador[2]_i_1_n_0 ),
        .Q(contador[2]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(CLK_10MHZ),
        .CE(\contador[3]_i_1_n_0 ),
        .D(\contador[3]_i_2_n_0 ),
        .Q(contador[3]),
        .R(rst_pi_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \counter[31]_i_1 
       (.I0(rst_pi_IBUF),
        .I1(hold_ctrl),
        .O(SR));
  LUT6 #(
    .INIT(64'hEFEFE7EF08080000)) 
    en_conta_i_1
       (.I0(\rx[6]_i_3_n_0 ),
        .I1(en_conta_reg_0),
        .I2(\contador[3]_i_6_n_0 ),
        .I3(en_conta_reg_1),
        .I4(\contador[3]_i_5_n_0 ),
        .I5(contador_0),
        .O(en_conta_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_conta_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(en_conta_i_1_n_0),
        .Q(contador_0),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    hold_ctrl_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(hold_ctrl_reg_118),
        .Q(hold_ctrl),
        .R(rst_pi_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000507)) 
    \memoria[0][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr_ram[1]),
        .I3(addr2[3]),
        .I4(\memoria[12][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_113));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[100][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_26));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[101][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_49));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[102][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_8));
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[103][0]_i_1 
       (.I0(hold_ctrl),
        .I1(\memoria_reg[1][7] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[103][1]_i_1 
       (.I0(hold_ctrl),
        .I1(\memoria_reg[1][7] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[103][3]_i_1 
       (.I0(hold_ctrl),
        .I1(\memoria_reg[1][7] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[103][4]_i_1 
       (.I0(hold_ctrl),
        .I1(\memoria_reg[1][7] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[103][5]_i_1 
       (.I0(hold_ctrl),
        .I1(\memoria_reg[1][7] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[103][6]_i_1 
       (.I0(hold_ctrl),
        .I1(\memoria_reg[1][7] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[103][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_43));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[103][7]_i_2 
       (.I0(hold_ctrl),
        .I1(\memoria_reg[1][7] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[104][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_25));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[105][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_48));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[106][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[107][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_42));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[108][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_24));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[109][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_47));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \memoria[10][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[12][7]_i_2_n_0 ),
        .I3(addr_ram[1]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_116));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[110][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[111][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_41));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[112][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_23));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[113][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_46));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[114][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[115][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_40));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[116][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_22));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[117][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_45));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[118][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[119][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_39));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \memoria[11][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[7][7]_i_2_n_0 ),
        .I3(addr_ram[1]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_109));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[120][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_62));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[121][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_61));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[122][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_60));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[123][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_59));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[124][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_54));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \memoria[124][7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(addr2[5]),
        .I2(\memoria_ram/enable_ram ),
        .I3(addr_ram[0]),
        .I4(hold_ctrl),
        .I5(addr2[6]),
        .O(\memoria[124][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[125][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_53));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \memoria[125][7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(addr2[5]),
        .I2(\memoria_ram/enable_ram ),
        .I3(hold_ctrl),
        .I4(addr2[6]),
        .I5(addr_ram[0]),
        .O(\memoria[125][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[126][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_52));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \memoria[126][7]_i_2 
       (.I0(addr_ram[0]),
        .I1(addr2[6]),
        .I2(hold_ctrl_reg_3),
        .I3(addr2[5]),
        .I4(hold_ctrl),
        .I5(\memoria_ram/enable_ram ),
        .O(\memoria[126][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[127][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_51));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \memoria[127][7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(addr2[5]),
        .I2(\memoria_ram/enable_ram ),
        .I3(hold_ctrl),
        .I4(addr2[6]),
        .I5(addr_ram[0]),
        .O(\memoria[127][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[127][7]_i_3 
       (.I0(hold_ctrl),
        .I1(addr2[1]),
        .O(hold_ctrl_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \memoria[12][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[12][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr_ram[1]),
        .O(hold_ctrl_reg_117));
  LUT6 #(
    .INIT(64'hFFAAFFFFFEAAFFFF)) 
    \memoria[12][7]_i_2 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[4]),
        .I2(addr2[5]),
        .I3(hold_ctrl),
        .I4(\memoria_ram/enable_ram ),
        .I5(addr2[6]),
        .O(\memoria[12][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \memoria[13][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[7][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr_ram[1]),
        .O(hold_ctrl_reg_101));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[14][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr_ram[1]),
        .I3(addr2[3]),
        .I4(\memoria[12][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_110));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[15][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr_ram[1]),
        .I3(addr2[3]),
        .I4(\memoria[7][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_108));
  LUT6 #(
    .INIT(64'h0000000000500070)) 
    \memoria[16][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[16][7]_i_2_n_0 ),
        .I3(addr_ram[1]),
        .I4(addr2[3]),
        .I5(\addr2_reg[0]_0 ),
        .O(hold_ctrl_reg_107));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[16][7]_i_2 
       (.I0(addr2[4]),
        .I1(addr2[5]),
        .I2(hold_ctrl),
        .I3(\memoria_ram/enable_ram ),
        .I4(addr2[6]),
        .O(\memoria[16][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000500000007000)) 
    \memoria[17][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[16][7]_i_2_n_0 ),
        .I3(\addr2_reg[0]_0 ),
        .I4(addr_ram[1]),
        .I5(addr2[3]),
        .O(hold_ctrl_reg_106));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \memoria[18][7]_i_1 
       (.I0(\memoria_ram/enable_ram ),
        .I1(hold_ctrl_reg_0),
        .I2(\addr2_reg[0]_0 ),
        .I3(hold_ctrl_reg_1),
        .I4(\memoria[18][7]_i_2_n_0 ),
        .I5(addr_ram[1]),
        .O(we_ram2_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \memoria[18][7]_i_2 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[3]),
        .I3(addr2[4]),
        .O(\memoria[18][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5000700000000000)) 
    \memoria[19][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[16][7]_i_2_n_0 ),
        .I3(addr_ram[1]),
        .I4(addr2[3]),
        .I5(\addr2_reg[0]_0 ),
        .O(hold_ctrl_reg_67));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00000507)) 
    \memoria[1][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr_ram[1]),
        .I3(addr2[3]),
        .I4(\memoria[7][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_105));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \memoria[20][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[16][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr_ram[1]),
        .I5(\addr2_reg[0]_0 ),
        .O(hold_ctrl_reg_103));
  LUT5 #(
    .INIT(32'h2A000000)) 
    \memoria[21][7]_i_1 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[6]),
        .I2(hold_ctrl),
        .I3(\memoria[21][7]_i_2_n_0 ),
        .I4(\memoria[21][7]_i_3_n_0 ),
        .O(\addr2_reg[6]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \memoria[21][7]_i_2 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[3]),
        .I3(addr2[4]),
        .O(\memoria[21][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055C000C0)) 
    \memoria[21][7]_i_3 
       (.I0(addr2[5]),
        .I1(selec_out),
        .I2(we_reg_control),
        .I3(hold_ctrl),
        .I4(we_ram2),
        .I5(addr_ram[1]),
        .O(\memoria[21][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \memoria[22][7]_i_1 
       (.I0(\memoria_ram/enable_ram ),
        .I1(hold_ctrl_reg_0),
        .I2(\addr2_reg[0]_0 ),
        .I3(hold_ctrl_reg_1),
        .I4(\memoria[21][7]_i_2_n_0 ),
        .I5(addr_ram[1]),
        .O(we_ram2_reg_3));
  LUT5 #(
    .INIT(32'h2A000000)) 
    \memoria[23][7]_i_1 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[6]),
        .I2(hold_ctrl),
        .I3(\memoria[21][7]_i_2_n_0 ),
        .I4(\memoria[23][7]_i_2_n_0 ),
        .O(\addr2_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h55C000C000000000)) 
    \memoria[23][7]_i_2 
       (.I0(addr2[5]),
        .I1(selec_out),
        .I2(we_reg_control),
        .I3(hold_ctrl),
        .I4(we_ram2),
        .I5(addr_ram[1]),
        .O(\memoria[23][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \memoria[24][7]_i_1 
       (.I0(\memoria_ram/enable_ram ),
        .I1(hold_ctrl_reg_0),
        .I2(\addr2_reg[0]_0 ),
        .I3(hold_ctrl_reg_1),
        .I4(\memoria[26][7]_i_6_n_0 ),
        .I5(addr_ram[1]),
        .O(we_ram2_reg_1));
  LUT5 #(
    .INIT(32'h2A000000)) 
    \memoria[25][7]_i_1 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[6]),
        .I2(hold_ctrl),
        .I3(\memoria[26][7]_i_6_n_0 ),
        .I4(\memoria[21][7]_i_3_n_0 ),
        .O(\addr2_reg[6]_5 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \memoria[26][7]_i_1 
       (.I0(\memoria_ram/enable_ram ),
        .I1(hold_ctrl_reg_0),
        .I2(\addr2_reg[0]_0 ),
        .I3(hold_ctrl_reg_1),
        .I4(\memoria[26][7]_i_6_n_0 ),
        .I5(addr_ram[1]),
        .O(we_ram2_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \memoria[26][7]_i_2 
       (.I0(we_ram2),
        .I1(hold_ctrl),
        .I2(we_reg_control),
        .I3(selec_out),
        .O(\memoria_ram/enable_ram ));
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[26][7]_i_3 
       (.I0(hold_ctrl),
        .I1(addr2[6]),
        .O(hold_ctrl_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \memoria[26][7]_i_4 
       (.I0(addr2[0]),
        .I1(hold_ctrl),
        .I2(addr_pmod),
        .O(\addr2_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[26][7]_i_5 
       (.I0(hold_ctrl),
        .I1(addr2[5]),
        .O(hold_ctrl_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \memoria[26][7]_i_6 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[4]),
        .I3(addr2[3]),
        .O(\memoria[26][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[26][7]_i_7 
       (.I0(hold_ctrl),
        .I1(addr2[1]),
        .O(addr_ram[1]));
  LUT5 #(
    .INIT(32'h2A000000)) 
    \memoria[27][7]_i_1 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[6]),
        .I2(hold_ctrl),
        .I3(\memoria[26][7]_i_6_n_0 ),
        .I4(\memoria[23][7]_i_2_n_0 ),
        .O(\addr2_reg[6]_1 ));
  LUT5 #(
    .INIT(32'h15000000)) 
    \memoria[28][7]_i_1 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[6]),
        .I2(hold_ctrl),
        .I3(\memoria[28][7]_i_2_n_0 ),
        .I4(\memoria[21][7]_i_3_n_0 ),
        .O(\addr2_reg[6]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \memoria[28][7]_i_2 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[4]),
        .I3(addr2[3]),
        .O(\memoria[28][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \memoria[29][7]_i_1 
       (.I0(\memoria_ram/enable_ram ),
        .I1(\memoria[28][7]_i_2_n_0 ),
        .I2(hold_ctrl_reg_1),
        .I3(addr_ram[1]),
        .I4(hold_ctrl_reg_0),
        .I5(\addr2_reg[0]_0 ),
        .O(we_ram2_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00005700)) 
    \memoria[2][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[3]),
        .I3(addr_ram[1]),
        .I4(\memoria[12][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_112));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h15000000)) 
    \memoria[30][7]_i_1 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[6]),
        .I2(hold_ctrl),
        .I3(\memoria[28][7]_i_2_n_0 ),
        .I4(\memoria[23][7]_i_2_n_0 ),
        .O(\addr2_reg[6]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h2A000000)) 
    \memoria[31][7]_i_1 
       (.I0(\addr2_reg[0]_0 ),
        .I1(addr2[6]),
        .I2(hold_ctrl),
        .I3(\memoria[28][7]_i_2_n_0 ),
        .I4(\memoria[23][7]_i_2_n_0 ),
        .O(\addr2_reg[6]_3 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \memoria[32][7]_i_1 
       (.I0(\memoria[32][7]_i_2_n_0 ),
        .I1(hold_ctrl_reg_0),
        .I2(hold_ctrl_reg_1),
        .I3(\addr2_reg[0]_0 ),
        .I4(addr_ram[4]),
        .I5(\memoria_ram/enable_ram ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \memoria[32][7]_i_2 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[3]),
        .I3(addr_ram[1]),
        .O(\memoria[32][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \memoria[32][7]_i_3 
       (.I0(hold_ctrl),
        .I1(addr2[4]),
        .O(addr_ram[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[33][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_33));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[34][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_21));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[35][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_15));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[36][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[60][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_38));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[37][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_32));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[38][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_20));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[39][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_14));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00005700)) 
    \memoria[3][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[3]),
        .I3(addr_ram[1]),
        .I4(\memoria[7][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_68));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[40][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[60][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_37));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[41][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_31));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[42][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_19));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[43][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_13));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[44][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[60][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_36));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[45][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_30));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[46][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_18));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[47][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[48][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[60][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_35));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[49][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_29));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \memoria[4][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr_ram[1]),
        .I3(addr2[3]),
        .I4(\memoria[12][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_111));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[50][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[51][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[52][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[60][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_34));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[53][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_28));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[54][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[55][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[56][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[60][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_66));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[57][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_65));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[58][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_64));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[59][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_63));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \memoria[5][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr_ram[1]),
        .I3(addr2[3]),
        .I4(\memoria[7][7]_i_2_n_0 ),
        .O(hold_ctrl_reg_102));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[60][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[60][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_58));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \memoria[60][7]_i_2 
       (.I0(addr2[6]),
        .I1(\addr2_reg[0]_0 ),
        .I2(addr_ram[1]),
        .I3(addr2[5]),
        .I4(hold_ctrl),
        .I5(\memoria_ram/enable_ram ),
        .O(\memoria[60][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[61][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[61][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_57));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \memoria[61][7]_i_2 
       (.I0(addr2[6]),
        .I1(\addr2_reg[0]_0 ),
        .I2(addr_ram[1]),
        .I3(addr2[5]),
        .I4(hold_ctrl),
        .I5(\memoria_ram/enable_ram ),
        .O(\memoria[61][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[62][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[62][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_56));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \memoria[62][7]_i_2 
       (.I0(addr2[6]),
        .I1(\addr2_reg[0]_0 ),
        .I2(addr_ram[1]),
        .I3(addr2[5]),
        .I4(hold_ctrl),
        .I5(\memoria_ram/enable_ram ),
        .O(\memoria[62][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[63][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[63][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_55));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \memoria[63][7]_i_2 
       (.I0(addr2[6]),
        .I1(\addr2_reg[0]_0 ),
        .I2(addr_ram[1]),
        .I3(addr2[5]),
        .I4(hold_ctrl),
        .I5(\memoria_ram/enable_ram ),
        .O(\memoria[63][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[64][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_85));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[65][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_77));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[66][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[94][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_100));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[67][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_93));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[68][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_84));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[69][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_76));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \memoria[6][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[12][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr_ram[1]),
        .O(hold_ctrl_reg_114));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[70][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[94][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_99));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \memoria[71][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_92));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[72][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_83));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[73][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_75));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[74][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[94][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_98));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[75][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_91));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[76][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_82));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[77][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_74));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \memoria[78][7]_i_1 
       (.I0(hold_ctrl_reg_0),
        .I1(hold_ctrl_reg_1),
        .I2(\memoria[78][7]_i_2_n_0 ),
        .I3(\memoria_ram/enable_ram ),
        .I4(addr_ram[4]),
        .I5(addr_ram[0]),
        .O(hold_ctrl_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \memoria[78][7]_i_2 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(addr2[3]),
        .I3(hold_ctrl_reg_3),
        .O(\memoria[78][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \memoria[78][7]_i_3 
       (.I0(addr2[0]),
        .I1(hold_ctrl),
        .I2(addr_pmod),
        .O(addr_ram[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[79][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_90));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \memoria[7][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[7][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr_ram[1]),
        .O(hold_ctrl_reg_69));
  LUT6 #(
    .INIT(64'hFFFF33FFFBFF33FF)) 
    \memoria[7][7]_i_2 
       (.I0(addr2[5]),
        .I1(\memoria_ram/enable_ram ),
        .I2(addr2[6]),
        .I3(\addr2_reg[0]_0 ),
        .I4(hold_ctrl),
        .I5(addr2[4]),
        .O(\memoria[7][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[80][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_81));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[81][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_73));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[82][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[94][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_97));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \memoria[83][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_89));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[84][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_80));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[85][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_72));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[86][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[94][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_96));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \memoria[87][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[4]),
        .I4(addr2[3]),
        .O(hold_ctrl_reg_88));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[88][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_79));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[89][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_71));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \memoria[8][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[12][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr_ram[1]),
        .O(hold_ctrl_reg_115));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[90][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[94][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_95));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \memoria[91][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_87));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[92][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[92][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_78));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \memoria[92][7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(\memoria_ram/enable_ram ),
        .I2(addr2[5]),
        .I3(addr_ram[0]),
        .I4(hold_ctrl),
        .I5(addr2[6]),
        .O(\memoria[92][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[93][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[93][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_70));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \memoria[93][7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(\memoria_ram/enable_ram ),
        .I2(addr2[5]),
        .I3(hold_ctrl),
        .I4(addr2[6]),
        .I5(addr_ram[0]),
        .O(\memoria[93][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[94][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[94][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_94));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \memoria[94][7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(\memoria_ram/enable_ram ),
        .I2(addr2[5]),
        .I3(addr_ram[0]),
        .I4(hold_ctrl),
        .I5(addr2[6]),
        .O(\memoria[94][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \memoria[95][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[95][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_86));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \memoria[95][7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(\memoria_ram/enable_ram ),
        .I2(addr2[5]),
        .I3(hold_ctrl),
        .I4(addr2[6]),
        .I5(addr_ram[0]),
        .O(\memoria[95][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[96][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[124][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_27));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[97][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[125][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_50));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[98][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[126][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h50505070)) 
    \memoria[99][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[127][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr2[4]),
        .O(hold_ctrl_reg_44));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \memoria[9][7]_i_1 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .I2(\memoria[7][7]_i_2_n_0 ),
        .I3(addr2[3]),
        .I4(addr_ram[1]),
        .O(hold_ctrl_reg_104));
  LUT5 #(
    .INIT(32'h00CC5CCC)) 
    progress_i_1
       (.I0(CO),
        .I1(progress_reg_0),
        .I2(contador_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(progress_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    progress_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(progress_i_1_n_0),
        .Q(progress_reg_0),
        .R(rst_pi_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_shift_mosi[1]_i_1 
       (.I0(\reg_shift_mosi_reg[1] ),
        .I1(we_reg),
        .I2(\reg_shift_mosi_reg[1]_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_shift_mosi[2]_i_1 
       (.I0(\reg_shift_mosi_reg[2] ),
        .I1(we_reg),
        .I2(\reg_shift_mosi_reg[2]_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_shift_mosi[3]_i_1 
       (.I0(\reg_shift_mosi_reg[3] ),
        .I1(we_reg),
        .I2(\reg_shift_mosi_reg[3]_0 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_shift_mosi[4]_i_1 
       (.I0(\reg_shift_mosi_reg[4] ),
        .I1(we_reg),
        .I2(\reg_shift_mosi_reg[4]_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_shift_mosi[5]_i_1 
       (.I0(\reg_shift_mosi_reg[5] ),
        .I1(we_reg),
        .I2(\reg_shift_mosi_reg[5]_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_shift_mosi[6]_i_1 
       (.I0(\reg_shift_mosi_reg[6] ),
        .I1(we_reg),
        .I2(\reg_shift_mosi_reg[6]_0 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_shift_mosi[7]_i_1 
       (.I0(we_reg),
        .I1(clk_fp),
        .O(reg_shift_mosi));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_shift_mosi[7]_i_14 
       (.I0(hold_ctrl),
        .I1(addr2[3]),
        .O(addr_ram[3]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_shift_mosi[7]_i_2 
       (.I0(\reg_shift_mosi_reg[7] ),
        .I1(we_reg),
        .I2(\reg_shift_mosi_reg[7]_0 ),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_shift_mosi[7]_i_31 
       (.I0(hold_ctrl),
        .I1(addr2[2]),
        .O(addr_ram[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h1504)) 
    \rx[0]_i_1 
       (.I0(rx[0]),
        .I1(Q[0]),
        .I2(progress_reg_0),
        .I3(contador_0),
        .O(\rx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h06660060)) 
    \rx[1]_i_1 
       (.I0(rx[1]),
        .I1(rx[0]),
        .I2(Q[0]),
        .I3(progress_reg_0),
        .I4(contador_0),
        .O(\rx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \rx[2]_i_1 
       (.I0(rx[0]),
        .I1(rx[1]),
        .I2(rx[2]),
        .I3(\rx[6]_i_3_n_0 ),
        .O(\rx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \rx[3]_i_1 
       (.I0(rx[1]),
        .I1(rx[0]),
        .I2(rx[2]),
        .I3(rx[3]),
        .I4(\rx[6]_i_3_n_0 ),
        .O(\rx[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \rx[4]_i_1 
       (.I0(\rx[6]_i_3_n_0 ),
        .I1(rx[2]),
        .I2(rx[0]),
        .I3(rx[1]),
        .I4(rx[3]),
        .I5(rx[4]),
        .O(\rx[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06660060)) 
    \rx[5]_i_1 
       (.I0(\rx[6]_i_4_n_0 ),
        .I1(rx[5]),
        .I2(Q[0]),
        .I3(progress_reg_0),
        .I4(contador_0),
        .O(\rx[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC0A0C000)) 
    \rx[6]_i_1 
       (.I0(contador_0),
        .I1(progress_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(CO),
        .O(\rx[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1540)) 
    \rx[6]_i_2 
       (.I0(\rx[6]_i_3_n_0 ),
        .I1(rx[5]),
        .I2(\rx[6]_i_4_n_0 ),
        .I3(rx[6]),
        .O(\rx[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hCF50)) 
    \rx[6]_i_3 
       (.I0(contador_0),
        .I1(progress_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\rx[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rx[6]_i_4 
       (.I0(rx[3]),
        .I1(rx[1]),
        .I2(rx[0]),
        .I3(rx[2]),
        .I4(rx[4]),
        .O(\rx[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_reg[0] 
       (.C(CLK_10MHZ),
        .CE(\rx[6]_i_1_n_0 ),
        .D(\rx[0]_i_1_n_0 ),
        .Q(rx[0]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_reg[1] 
       (.C(CLK_10MHZ),
        .CE(\rx[6]_i_1_n_0 ),
        .D(\rx[1]_i_1_n_0 ),
        .Q(rx[1]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_reg[2] 
       (.C(CLK_10MHZ),
        .CE(\rx[6]_i_1_n_0 ),
        .D(\rx[2]_i_1_n_0 ),
        .Q(rx[2]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_reg[3] 
       (.C(CLK_10MHZ),
        .CE(\rx[6]_i_1_n_0 ),
        .D(\rx[3]_i_1_n_0 ),
        .Q(rx[3]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_reg[4] 
       (.C(CLK_10MHZ),
        .CE(\rx[6]_i_1_n_0 ),
        .D(\rx[4]_i_1_n_0 ),
        .Q(rx[4]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_reg[5] 
       (.C(CLK_10MHZ),
        .CE(\rx[6]_i_1_n_0 ),
        .D(\rx[5]_i_1_n_0 ),
        .Q(rx[5]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_reg[6] 
       (.C(CLK_10MHZ),
        .CE(\rx[6]_i_1_n_0 ),
        .D(\rx[6]_i_2_n_0 ),
        .Q(rx[6]),
        .R(rst_pi_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \state[16]_i_1 
       (.I0(rx[0]),
        .I1(progress_reg_0),
        .I2(\contador_reg[1]_0 ),
        .O(\rx_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \state[17]_i_1 
       (.I0(rx[1]),
        .I1(progress_reg_0),
        .I2(\contador_reg[1]_0 ),
        .O(\rx_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[18]_i_1 
       (.I0(progress_reg_0),
        .I1(\contador_reg[1]_0 ),
        .I2(rx[2]),
        .O(progress_reg_1));
  LUT3 #(
    .INIT(8'h40)) 
    \state[19]_i_1 
       (.I0(progress_reg_0),
        .I1(\contador_reg[1]_0 ),
        .I2(rx[3]),
        .O(progress_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[20]_i_1 
       (.I0(progress_reg_0),
        .I1(\contador_reg[1]_0 ),
        .I2(rx[4]),
        .O(progress_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \state[21]_i_2 
       (.I0(rx[5]),
        .I1(progress_reg_0),
        .I2(\contador_reg[1]_0 ),
        .O(\rx_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \state[22]_inv_i_1 
       (.I0(rx[6]),
        .I1(progress_reg_0),
        .I2(\contador_reg[1]_0 ),
        .O(\rx_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hFF5D0040)) 
    we_ram2_i_1
       (.I0(\contador[3]_i_6_n_0 ),
        .I1(\rx[6]_i_3_n_0 ),
        .I2(en_conta_reg_0),
        .I3(rst_pi_IBUF),
        .I4(we_ram2),
        .O(we_ram2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    we_ram2_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(we_ram2_i_1_n_0),
        .Q(we_ram2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h74FF44CC)) 
    we_reg_i_1
       (.I0(progress_reg_0),
        .I1(Q[0]),
        .I2(contador_0),
        .I3(Q[1]),
        .I4(we_reg),
        .O(we_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    we_reg_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(we_reg_i_1_n_0),
        .Q(we_reg),
        .R(rst_pi_IBUF));
  LUT4 #(
    .INIT(16'hF580)) 
    we_rx_i_1
       (.I0(\addr2[4]_i_2_n_0 ),
        .I1(CO),
        .I2(\contador[3]_i_6_n_0 ),
        .I3(we_rx),
        .O(we_rx_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    we_rx_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(we_rx_i_1_n_0),
        .Q(we_rx),
        .R(rst_pi_IBUF));
endmodule

module module_memoria
   (D,
    dato_ram,
    hold_ctrl_reg,
    hold_ctrl_reg_0,
    hold_ctrl_reg_1,
    hold_ctrl_reg_2,
    hold_ctrl_reg_3,
    hold_ctrl_reg_4,
    hold_ctrl_reg_5,
    selec_out,
    \state_reg[4] ,
    addr_ram,
    \state_reg[0] ,
    \reg_shift_mosi_reg[7]_i_19_0 ,
    \reg_shift_mosi_reg[7]_i_27_0 ,
    rst_pi_IBUF,
    E,
    \memoria_reg[15][7]_0 ,
    CLK_10MHZ,
    \memoria_reg[126][7]_0 ,
    \memoria_reg[125][7]_0 ,
    \memoria_reg[124][7]_0 ,
    \memoria_reg[123][7]_0 ,
    \memoria_reg[122][7]_0 ,
    \memoria_reg[121][7]_0 ,
    \memoria_reg[120][7]_0 ,
    \memoria_reg[119][7]_0 ,
    \memoria_reg[118][7]_0 ,
    \memoria_reg[117][7]_0 ,
    \memoria_reg[116][7]_0 ,
    \memoria_reg[115][7]_0 ,
    \memoria_reg[114][7]_0 ,
    \memoria_reg[113][7]_0 ,
    \memoria_reg[112][7]_0 ,
    \memoria_reg[111][7]_0 ,
    \memoria_reg[110][7]_0 ,
    \memoria_reg[109][7]_0 ,
    \memoria_reg[108][7]_0 ,
    \memoria_reg[107][7]_0 ,
    \memoria_reg[106][7]_0 ,
    \memoria_reg[105][7]_0 ,
    \memoria_reg[104][7]_0 ,
    \memoria_reg[103][7]_0 ,
    \memoria_reg[1][7]_0 ,
    \memoria_reg[102][7]_0 ,
    \memoria_reg[101][7]_0 ,
    \memoria_reg[100][7]_0 ,
    \memoria_reg[99][7]_0 ,
    \memoria_reg[98][7]_0 ,
    \memoria_reg[97][7]_0 ,
    \memoria_reg[96][7]_0 ,
    \memoria_reg[95][7]_0 ,
    \memoria_reg[94][7]_0 ,
    \memoria_reg[93][7]_0 ,
    \memoria_reg[92][7]_0 ,
    \memoria_reg[91][7]_0 ,
    \memoria_reg[90][7]_0 ,
    \memoria_reg[89][7]_0 ,
    \memoria_reg[88][7]_0 ,
    \memoria_reg[87][7]_0 ,
    \memoria_reg[86][7]_0 ,
    \memoria_reg[85][7]_0 ,
    \memoria_reg[84][7]_0 ,
    \memoria_reg[83][7]_0 ,
    \memoria_reg[82][7]_0 ,
    \memoria_reg[81][7]_0 ,
    \memoria_reg[80][7]_0 ,
    \memoria_reg[79][7]_0 ,
    \memoria_reg[77][7]_0 ,
    \memoria_reg[76][7]_0 ,
    \memoria_reg[75][7]_0 ,
    \memoria_reg[74][7]_0 ,
    \memoria_reg[73][7]_0 ,
    \memoria_reg[72][7]_0 ,
    \memoria_reg[71][7]_0 ,
    \memoria_reg[70][7]_0 ,
    \memoria_reg[69][7]_0 ,
    \memoria_reg[68][7]_0 ,
    \memoria_reg[67][7]_0 ,
    \memoria_reg[66][7]_0 ,
    \memoria_reg[65][7]_0 ,
    \memoria_reg[64][7]_0 ,
    \memoria_reg[63][7]_0 ,
    \memoria_reg[62][7]_0 ,
    \memoria_reg[61][7]_0 ,
    \memoria_reg[60][7]_0 ,
    \memoria_reg[59][7]_0 ,
    \memoria_reg[58][7]_0 ,
    \memoria_reg[57][7]_0 ,
    \memoria_reg[56][7]_0 ,
    \memoria_reg[55][7]_0 ,
    \memoria_reg[54][7]_0 ,
    \memoria_reg[53][7]_0 ,
    \memoria_reg[52][7]_0 ,
    \memoria_reg[51][7]_0 ,
    \memoria_reg[50][7]_0 ,
    \memoria_reg[49][7]_0 ,
    \memoria_reg[48][7]_0 ,
    \memoria_reg[47][7]_0 ,
    \memoria_reg[46][7]_0 ,
    \memoria_reg[45][7]_0 ,
    \memoria_reg[44][7]_0 ,
    \memoria_reg[43][7]_0 ,
    \memoria_reg[42][7]_0 ,
    \memoria_reg[41][7]_0 ,
    \memoria_reg[40][7]_0 ,
    \memoria_reg[39][7]_0 ,
    \memoria_reg[38][7]_0 ,
    \memoria_reg[37][7]_0 ,
    \memoria_reg[36][7]_0 ,
    \memoria_reg[35][7]_0 ,
    \memoria_reg[26][0]_0 ,
    \memoria_reg[24][0]_0 ,
    \memoria_reg[12][0]_0 ,
    \memoria_reg[7][0]_0 ,
    \memoria_reg[5][7]_0 ,
    \memoria_reg[6][7]_0 ,
    \memoria_reg[8][7]_0 ,
    \memoria_reg[9][7]_0 ,
    \memoria_reg[10][7]_0 ,
    \memoria_reg[11][7]_0 ,
    \memoria_reg[13][7]_0 ,
    \memoria_reg[14][7]_0 ,
    \memoria_reg[15][7]_1 ,
    \memoria_reg[16][7]_0 ,
    \memoria_reg[17][7]_0 ,
    \memoria_reg[19][7]_0 ,
    \memoria_reg[20][7]_0 ,
    \memoria_reg[21][7]_0 ,
    \memoria_reg[23][7]_0 ,
    \memoria_reg[25][7]_0 ,
    \memoria_reg[27][7]_0 ,
    \memoria_reg[28][7]_0 ,
    \memoria_reg[30][7]_0 ,
    \memoria_reg[31][7]_0 ,
    \memoria_reg[32][7]_0 ,
    \memoria_reg[33][7]_0 ,
    \memoria_reg[34][7]_0 ,
    \memoria_reg[4][7]_0 ,
    \memoria_reg[3][7]_0 ,
    \memoria_reg[78][7]_0 ,
    \memoria_reg[29][0]_0 ,
    \memoria_reg[22][0]_0 ,
    \memoria_reg[18][0]_0 ,
    \memoria_reg[2][7]_0 ,
    \memoria_reg[1][7]_1 ,
    \memoria_reg[0][7]_0 );
  output [7:0]D;
  output [0:0]dato_ram;
  output hold_ctrl_reg;
  output hold_ctrl_reg_0;
  output hold_ctrl_reg_1;
  output hold_ctrl_reg_2;
  output hold_ctrl_reg_3;
  output hold_ctrl_reg_4;
  output hold_ctrl_reg_5;
  input selec_out;
  input \state_reg[4] ;
  input [6:0]addr_ram;
  input \state_reg[0] ;
  input \reg_shift_mosi_reg[7]_i_19_0 ;
  input \reg_shift_mosi_reg[7]_i_27_0 ;
  input rst_pi_IBUF;
  input [0:0]E;
  input [7:0]\memoria_reg[15][7]_0 ;
  input CLK_10MHZ;
  input [0:0]\memoria_reg[126][7]_0 ;
  input [0:0]\memoria_reg[125][7]_0 ;
  input [0:0]\memoria_reg[124][7]_0 ;
  input [0:0]\memoria_reg[123][7]_0 ;
  input [0:0]\memoria_reg[122][7]_0 ;
  input [0:0]\memoria_reg[121][7]_0 ;
  input [0:0]\memoria_reg[120][7]_0 ;
  input [0:0]\memoria_reg[119][7]_0 ;
  input [0:0]\memoria_reg[118][7]_0 ;
  input [0:0]\memoria_reg[117][7]_0 ;
  input [0:0]\memoria_reg[116][7]_0 ;
  input [0:0]\memoria_reg[115][7]_0 ;
  input [0:0]\memoria_reg[114][7]_0 ;
  input [0:0]\memoria_reg[113][7]_0 ;
  input [0:0]\memoria_reg[112][7]_0 ;
  input [0:0]\memoria_reg[111][7]_0 ;
  input [0:0]\memoria_reg[110][7]_0 ;
  input [0:0]\memoria_reg[109][7]_0 ;
  input [0:0]\memoria_reg[108][7]_0 ;
  input [0:0]\memoria_reg[107][7]_0 ;
  input [0:0]\memoria_reg[106][7]_0 ;
  input [0:0]\memoria_reg[105][7]_0 ;
  input [0:0]\memoria_reg[104][7]_0 ;
  input [0:0]\memoria_reg[103][7]_0 ;
  input [7:0]\memoria_reg[1][7]_0 ;
  input [0:0]\memoria_reg[102][7]_0 ;
  input [0:0]\memoria_reg[101][7]_0 ;
  input [0:0]\memoria_reg[100][7]_0 ;
  input [0:0]\memoria_reg[99][7]_0 ;
  input [0:0]\memoria_reg[98][7]_0 ;
  input [0:0]\memoria_reg[97][7]_0 ;
  input [0:0]\memoria_reg[96][7]_0 ;
  input [0:0]\memoria_reg[95][7]_0 ;
  input [0:0]\memoria_reg[94][7]_0 ;
  input [0:0]\memoria_reg[93][7]_0 ;
  input [0:0]\memoria_reg[92][7]_0 ;
  input [0:0]\memoria_reg[91][7]_0 ;
  input [0:0]\memoria_reg[90][7]_0 ;
  input [0:0]\memoria_reg[89][7]_0 ;
  input [0:0]\memoria_reg[88][7]_0 ;
  input [0:0]\memoria_reg[87][7]_0 ;
  input [0:0]\memoria_reg[86][7]_0 ;
  input [0:0]\memoria_reg[85][7]_0 ;
  input [0:0]\memoria_reg[84][7]_0 ;
  input [0:0]\memoria_reg[83][7]_0 ;
  input [0:0]\memoria_reg[82][7]_0 ;
  input [0:0]\memoria_reg[81][7]_0 ;
  input [0:0]\memoria_reg[80][7]_0 ;
  input [0:0]\memoria_reg[79][7]_0 ;
  input [0:0]\memoria_reg[77][7]_0 ;
  input [0:0]\memoria_reg[76][7]_0 ;
  input [0:0]\memoria_reg[75][7]_0 ;
  input [0:0]\memoria_reg[74][7]_0 ;
  input [0:0]\memoria_reg[73][7]_0 ;
  input [0:0]\memoria_reg[72][7]_0 ;
  input [0:0]\memoria_reg[71][7]_0 ;
  input [0:0]\memoria_reg[70][7]_0 ;
  input [0:0]\memoria_reg[69][7]_0 ;
  input [0:0]\memoria_reg[68][7]_0 ;
  input [0:0]\memoria_reg[67][7]_0 ;
  input [0:0]\memoria_reg[66][7]_0 ;
  input [0:0]\memoria_reg[65][7]_0 ;
  input [0:0]\memoria_reg[64][7]_0 ;
  input [0:0]\memoria_reg[63][7]_0 ;
  input [0:0]\memoria_reg[62][7]_0 ;
  input [0:0]\memoria_reg[61][7]_0 ;
  input [0:0]\memoria_reg[60][7]_0 ;
  input [0:0]\memoria_reg[59][7]_0 ;
  input [0:0]\memoria_reg[58][7]_0 ;
  input [0:0]\memoria_reg[57][7]_0 ;
  input [0:0]\memoria_reg[56][7]_0 ;
  input [0:0]\memoria_reg[55][7]_0 ;
  input [0:0]\memoria_reg[54][7]_0 ;
  input [0:0]\memoria_reg[53][7]_0 ;
  input [0:0]\memoria_reg[52][7]_0 ;
  input [0:0]\memoria_reg[51][7]_0 ;
  input [0:0]\memoria_reg[50][7]_0 ;
  input [0:0]\memoria_reg[49][7]_0 ;
  input [0:0]\memoria_reg[48][7]_0 ;
  input [0:0]\memoria_reg[47][7]_0 ;
  input [0:0]\memoria_reg[46][7]_0 ;
  input [0:0]\memoria_reg[45][7]_0 ;
  input [0:0]\memoria_reg[44][7]_0 ;
  input [0:0]\memoria_reg[43][7]_0 ;
  input [0:0]\memoria_reg[42][7]_0 ;
  input [0:0]\memoria_reg[41][7]_0 ;
  input [0:0]\memoria_reg[40][7]_0 ;
  input [0:0]\memoria_reg[39][7]_0 ;
  input [0:0]\memoria_reg[38][7]_0 ;
  input [0:0]\memoria_reg[37][7]_0 ;
  input [0:0]\memoria_reg[36][7]_0 ;
  input [0:0]\memoria_reg[35][7]_0 ;
  input [0:0]\memoria_reg[26][0]_0 ;
  input [0:0]\memoria_reg[24][0]_0 ;
  input [0:0]\memoria_reg[12][0]_0 ;
  input [0:0]\memoria_reg[7][0]_0 ;
  input [0:0]\memoria_reg[5][7]_0 ;
  input [0:0]\memoria_reg[6][7]_0 ;
  input [0:0]\memoria_reg[8][7]_0 ;
  input [0:0]\memoria_reg[9][7]_0 ;
  input [0:0]\memoria_reg[10][7]_0 ;
  input [0:0]\memoria_reg[11][7]_0 ;
  input [0:0]\memoria_reg[13][7]_0 ;
  input [0:0]\memoria_reg[14][7]_0 ;
  input [0:0]\memoria_reg[15][7]_1 ;
  input [0:0]\memoria_reg[16][7]_0 ;
  input [0:0]\memoria_reg[17][7]_0 ;
  input [0:0]\memoria_reg[19][7]_0 ;
  input [0:0]\memoria_reg[20][7]_0 ;
  input [0:0]\memoria_reg[21][7]_0 ;
  input [0:0]\memoria_reg[23][7]_0 ;
  input [0:0]\memoria_reg[25][7]_0 ;
  input [0:0]\memoria_reg[27][7]_0 ;
  input [0:0]\memoria_reg[28][7]_0 ;
  input [0:0]\memoria_reg[30][7]_0 ;
  input [0:0]\memoria_reg[31][7]_0 ;
  input [0:0]\memoria_reg[32][7]_0 ;
  input [0:0]\memoria_reg[33][7]_0 ;
  input [0:0]\memoria_reg[34][7]_0 ;
  input [0:0]\memoria_reg[4][7]_0 ;
  input [0:0]\memoria_reg[3][7]_0 ;
  input [0:0]\memoria_reg[78][7]_0 ;
  input [0:0]\memoria_reg[29][0]_0 ;
  input [0:0]\memoria_reg[22][0]_0 ;
  input [0:0]\memoria_reg[18][0]_0 ;
  input [0:0]\memoria_reg[2][7]_0 ;
  input [0:0]\memoria_reg[1][7]_1 ;
  input [0:0]\memoria_reg[0][7]_0 ;

  wire CLK_10MHZ;
  wire [7:0]D;
  wire [0:0]E;
  wire [6:0]addr_ram;
  wire [0:0]dato_ram;
  wire hold_ctrl_reg;
  wire hold_ctrl_reg_0;
  wire hold_ctrl_reg_1;
  wire hold_ctrl_reg_2;
  wire hold_ctrl_reg_3;
  wire hold_ctrl_reg_4;
  wire hold_ctrl_reg_5;
  wire [0:0]\memoria_reg[0][7]_0 ;
  wire [0:0]\memoria_reg[100][7]_0 ;
  wire [0:0]\memoria_reg[101][7]_0 ;
  wire [0:0]\memoria_reg[102][7]_0 ;
  wire [0:0]\memoria_reg[103][7]_0 ;
  wire [0:0]\memoria_reg[104][7]_0 ;
  wire [0:0]\memoria_reg[105][7]_0 ;
  wire [0:0]\memoria_reg[106][7]_0 ;
  wire [0:0]\memoria_reg[107][7]_0 ;
  wire [0:0]\memoria_reg[108][7]_0 ;
  wire [0:0]\memoria_reg[109][7]_0 ;
  wire [0:0]\memoria_reg[10][7]_0 ;
  wire [0:0]\memoria_reg[110][7]_0 ;
  wire [0:0]\memoria_reg[111][7]_0 ;
  wire [0:0]\memoria_reg[112][7]_0 ;
  wire [0:0]\memoria_reg[113][7]_0 ;
  wire [0:0]\memoria_reg[114][7]_0 ;
  wire [0:0]\memoria_reg[115][7]_0 ;
  wire [0:0]\memoria_reg[116][7]_0 ;
  wire [0:0]\memoria_reg[117][7]_0 ;
  wire [0:0]\memoria_reg[118][7]_0 ;
  wire [0:0]\memoria_reg[119][7]_0 ;
  wire [0:0]\memoria_reg[11][7]_0 ;
  wire [0:0]\memoria_reg[120][7]_0 ;
  wire [0:0]\memoria_reg[121][7]_0 ;
  wire [0:0]\memoria_reg[122][7]_0 ;
  wire [0:0]\memoria_reg[123][7]_0 ;
  wire [0:0]\memoria_reg[124][7]_0 ;
  wire [0:0]\memoria_reg[125][7]_0 ;
  wire [0:0]\memoria_reg[126][7]_0 ;
  wire [0:0]\memoria_reg[12][0]_0 ;
  wire [0:0]\memoria_reg[13][7]_0 ;
  wire [0:0]\memoria_reg[14][7]_0 ;
  wire [7:0]\memoria_reg[15][7]_0 ;
  wire [0:0]\memoria_reg[15][7]_1 ;
  wire [0:0]\memoria_reg[16][7]_0 ;
  wire [0:0]\memoria_reg[17][7]_0 ;
  wire [0:0]\memoria_reg[18][0]_0 ;
  wire [0:0]\memoria_reg[19][7]_0 ;
  wire [7:0]\memoria_reg[1][7]_0 ;
  wire [0:0]\memoria_reg[1][7]_1 ;
  wire [0:0]\memoria_reg[20][7]_0 ;
  wire [0:0]\memoria_reg[21][7]_0 ;
  wire [0:0]\memoria_reg[22][0]_0 ;
  wire [0:0]\memoria_reg[23][7]_0 ;
  wire [0:0]\memoria_reg[24][0]_0 ;
  wire [0:0]\memoria_reg[25][7]_0 ;
  wire [0:0]\memoria_reg[26][0]_0 ;
  wire [0:0]\memoria_reg[27][7]_0 ;
  wire [0:0]\memoria_reg[28][7]_0 ;
  wire [0:0]\memoria_reg[29][0]_0 ;
  wire [0:0]\memoria_reg[2][7]_0 ;
  wire [0:0]\memoria_reg[30][7]_0 ;
  wire [0:0]\memoria_reg[31][7]_0 ;
  wire [0:0]\memoria_reg[32][7]_0 ;
  wire [0:0]\memoria_reg[33][7]_0 ;
  wire [0:0]\memoria_reg[34][7]_0 ;
  wire [0:0]\memoria_reg[35][7]_0 ;
  wire [0:0]\memoria_reg[36][7]_0 ;
  wire [0:0]\memoria_reg[37][7]_0 ;
  wire [0:0]\memoria_reg[38][7]_0 ;
  wire [0:0]\memoria_reg[39][7]_0 ;
  wire [0:0]\memoria_reg[3][7]_0 ;
  wire [0:0]\memoria_reg[40][7]_0 ;
  wire [0:0]\memoria_reg[41][7]_0 ;
  wire [0:0]\memoria_reg[42][7]_0 ;
  wire [0:0]\memoria_reg[43][7]_0 ;
  wire [0:0]\memoria_reg[44][7]_0 ;
  wire [0:0]\memoria_reg[45][7]_0 ;
  wire [0:0]\memoria_reg[46][7]_0 ;
  wire [0:0]\memoria_reg[47][7]_0 ;
  wire [0:0]\memoria_reg[48][7]_0 ;
  wire [0:0]\memoria_reg[49][7]_0 ;
  wire [0:0]\memoria_reg[4][7]_0 ;
  wire [0:0]\memoria_reg[50][7]_0 ;
  wire [0:0]\memoria_reg[51][7]_0 ;
  wire [0:0]\memoria_reg[52][7]_0 ;
  wire [0:0]\memoria_reg[53][7]_0 ;
  wire [0:0]\memoria_reg[54][7]_0 ;
  wire [0:0]\memoria_reg[55][7]_0 ;
  wire [0:0]\memoria_reg[56][7]_0 ;
  wire [0:0]\memoria_reg[57][7]_0 ;
  wire [0:0]\memoria_reg[58][7]_0 ;
  wire [0:0]\memoria_reg[59][7]_0 ;
  wire [0:0]\memoria_reg[5][7]_0 ;
  wire [0:0]\memoria_reg[60][7]_0 ;
  wire [0:0]\memoria_reg[61][7]_0 ;
  wire [0:0]\memoria_reg[62][7]_0 ;
  wire [0:0]\memoria_reg[63][7]_0 ;
  wire [0:0]\memoria_reg[64][7]_0 ;
  wire [0:0]\memoria_reg[65][7]_0 ;
  wire [0:0]\memoria_reg[66][7]_0 ;
  wire [0:0]\memoria_reg[67][7]_0 ;
  wire [0:0]\memoria_reg[68][7]_0 ;
  wire [0:0]\memoria_reg[69][7]_0 ;
  wire [0:0]\memoria_reg[6][7]_0 ;
  wire [0:0]\memoria_reg[70][7]_0 ;
  wire [0:0]\memoria_reg[71][7]_0 ;
  wire [0:0]\memoria_reg[72][7]_0 ;
  wire [0:0]\memoria_reg[73][7]_0 ;
  wire [0:0]\memoria_reg[74][7]_0 ;
  wire [0:0]\memoria_reg[75][7]_0 ;
  wire [0:0]\memoria_reg[76][7]_0 ;
  wire [0:0]\memoria_reg[77][7]_0 ;
  wire [0:0]\memoria_reg[78][7]_0 ;
  wire [0:0]\memoria_reg[79][7]_0 ;
  wire [0:0]\memoria_reg[7][0]_0 ;
  wire [0:0]\memoria_reg[80][7]_0 ;
  wire [0:0]\memoria_reg[81][7]_0 ;
  wire [0:0]\memoria_reg[82][7]_0 ;
  wire [0:0]\memoria_reg[83][7]_0 ;
  wire [0:0]\memoria_reg[84][7]_0 ;
  wire [0:0]\memoria_reg[85][7]_0 ;
  wire [0:0]\memoria_reg[86][7]_0 ;
  wire [0:0]\memoria_reg[87][7]_0 ;
  wire [0:0]\memoria_reg[88][7]_0 ;
  wire [0:0]\memoria_reg[89][7]_0 ;
  wire [0:0]\memoria_reg[8][7]_0 ;
  wire [0:0]\memoria_reg[90][7]_0 ;
  wire [0:0]\memoria_reg[91][7]_0 ;
  wire [0:0]\memoria_reg[92][7]_0 ;
  wire [0:0]\memoria_reg[93][7]_0 ;
  wire [0:0]\memoria_reg[94][7]_0 ;
  wire [0:0]\memoria_reg[95][7]_0 ;
  wire [0:0]\memoria_reg[96][7]_0 ;
  wire [0:0]\memoria_reg[97][7]_0 ;
  wire [0:0]\memoria_reg[98][7]_0 ;
  wire [0:0]\memoria_reg[99][7]_0 ;
  wire [0:0]\memoria_reg[9][7]_0 ;
  wire \memoria_reg_n_0_[0][0] ;
  wire \memoria_reg_n_0_[0][1] ;
  wire \memoria_reg_n_0_[0][2] ;
  wire \memoria_reg_n_0_[0][3] ;
  wire \memoria_reg_n_0_[0][4] ;
  wire \memoria_reg_n_0_[0][5] ;
  wire \memoria_reg_n_0_[0][6] ;
  wire \memoria_reg_n_0_[0][7] ;
  wire \memoria_reg_n_0_[100][0] ;
  wire \memoria_reg_n_0_[100][1] ;
  wire \memoria_reg_n_0_[100][2] ;
  wire \memoria_reg_n_0_[100][3] ;
  wire \memoria_reg_n_0_[100][4] ;
  wire \memoria_reg_n_0_[100][5] ;
  wire \memoria_reg_n_0_[100][6] ;
  wire \memoria_reg_n_0_[100][7] ;
  wire \memoria_reg_n_0_[101][0] ;
  wire \memoria_reg_n_0_[101][1] ;
  wire \memoria_reg_n_0_[101][2] ;
  wire \memoria_reg_n_0_[101][3] ;
  wire \memoria_reg_n_0_[101][4] ;
  wire \memoria_reg_n_0_[101][5] ;
  wire \memoria_reg_n_0_[101][6] ;
  wire \memoria_reg_n_0_[101][7] ;
  wire \memoria_reg_n_0_[102][0] ;
  wire \memoria_reg_n_0_[102][1] ;
  wire \memoria_reg_n_0_[102][2] ;
  wire \memoria_reg_n_0_[102][3] ;
  wire \memoria_reg_n_0_[102][4] ;
  wire \memoria_reg_n_0_[102][5] ;
  wire \memoria_reg_n_0_[102][6] ;
  wire \memoria_reg_n_0_[102][7] ;
  wire \memoria_reg_n_0_[103][0] ;
  wire \memoria_reg_n_0_[103][1] ;
  wire \memoria_reg_n_0_[103][2] ;
  wire \memoria_reg_n_0_[103][3] ;
  wire \memoria_reg_n_0_[103][4] ;
  wire \memoria_reg_n_0_[103][5] ;
  wire \memoria_reg_n_0_[103][6] ;
  wire \memoria_reg_n_0_[103][7] ;
  wire \memoria_reg_n_0_[104][0] ;
  wire \memoria_reg_n_0_[104][1] ;
  wire \memoria_reg_n_0_[104][2] ;
  wire \memoria_reg_n_0_[104][3] ;
  wire \memoria_reg_n_0_[104][4] ;
  wire \memoria_reg_n_0_[104][5] ;
  wire \memoria_reg_n_0_[104][6] ;
  wire \memoria_reg_n_0_[104][7] ;
  wire \memoria_reg_n_0_[105][0] ;
  wire \memoria_reg_n_0_[105][1] ;
  wire \memoria_reg_n_0_[105][2] ;
  wire \memoria_reg_n_0_[105][3] ;
  wire \memoria_reg_n_0_[105][4] ;
  wire \memoria_reg_n_0_[105][5] ;
  wire \memoria_reg_n_0_[105][6] ;
  wire \memoria_reg_n_0_[105][7] ;
  wire \memoria_reg_n_0_[106][0] ;
  wire \memoria_reg_n_0_[106][1] ;
  wire \memoria_reg_n_0_[106][2] ;
  wire \memoria_reg_n_0_[106][3] ;
  wire \memoria_reg_n_0_[106][4] ;
  wire \memoria_reg_n_0_[106][5] ;
  wire \memoria_reg_n_0_[106][6] ;
  wire \memoria_reg_n_0_[106][7] ;
  wire \memoria_reg_n_0_[107][0] ;
  wire \memoria_reg_n_0_[107][1] ;
  wire \memoria_reg_n_0_[107][2] ;
  wire \memoria_reg_n_0_[107][3] ;
  wire \memoria_reg_n_0_[107][4] ;
  wire \memoria_reg_n_0_[107][5] ;
  wire \memoria_reg_n_0_[107][6] ;
  wire \memoria_reg_n_0_[107][7] ;
  wire \memoria_reg_n_0_[108][0] ;
  wire \memoria_reg_n_0_[108][1] ;
  wire \memoria_reg_n_0_[108][2] ;
  wire \memoria_reg_n_0_[108][3] ;
  wire \memoria_reg_n_0_[108][4] ;
  wire \memoria_reg_n_0_[108][5] ;
  wire \memoria_reg_n_0_[108][6] ;
  wire \memoria_reg_n_0_[108][7] ;
  wire \memoria_reg_n_0_[109][0] ;
  wire \memoria_reg_n_0_[109][1] ;
  wire \memoria_reg_n_0_[109][2] ;
  wire \memoria_reg_n_0_[109][3] ;
  wire \memoria_reg_n_0_[109][4] ;
  wire \memoria_reg_n_0_[109][5] ;
  wire \memoria_reg_n_0_[109][6] ;
  wire \memoria_reg_n_0_[109][7] ;
  wire \memoria_reg_n_0_[10][0] ;
  wire \memoria_reg_n_0_[10][1] ;
  wire \memoria_reg_n_0_[10][2] ;
  wire \memoria_reg_n_0_[10][3] ;
  wire \memoria_reg_n_0_[10][4] ;
  wire \memoria_reg_n_0_[10][5] ;
  wire \memoria_reg_n_0_[10][6] ;
  wire \memoria_reg_n_0_[10][7] ;
  wire \memoria_reg_n_0_[110][0] ;
  wire \memoria_reg_n_0_[110][1] ;
  wire \memoria_reg_n_0_[110][2] ;
  wire \memoria_reg_n_0_[110][3] ;
  wire \memoria_reg_n_0_[110][4] ;
  wire \memoria_reg_n_0_[110][5] ;
  wire \memoria_reg_n_0_[110][6] ;
  wire \memoria_reg_n_0_[110][7] ;
  wire \memoria_reg_n_0_[111][0] ;
  wire \memoria_reg_n_0_[111][1] ;
  wire \memoria_reg_n_0_[111][2] ;
  wire \memoria_reg_n_0_[111][3] ;
  wire \memoria_reg_n_0_[111][4] ;
  wire \memoria_reg_n_0_[111][5] ;
  wire \memoria_reg_n_0_[111][6] ;
  wire \memoria_reg_n_0_[111][7] ;
  wire \memoria_reg_n_0_[112][0] ;
  wire \memoria_reg_n_0_[112][1] ;
  wire \memoria_reg_n_0_[112][2] ;
  wire \memoria_reg_n_0_[112][3] ;
  wire \memoria_reg_n_0_[112][4] ;
  wire \memoria_reg_n_0_[112][5] ;
  wire \memoria_reg_n_0_[112][6] ;
  wire \memoria_reg_n_0_[112][7] ;
  wire \memoria_reg_n_0_[113][0] ;
  wire \memoria_reg_n_0_[113][1] ;
  wire \memoria_reg_n_0_[113][2] ;
  wire \memoria_reg_n_0_[113][3] ;
  wire \memoria_reg_n_0_[113][4] ;
  wire \memoria_reg_n_0_[113][5] ;
  wire \memoria_reg_n_0_[113][6] ;
  wire \memoria_reg_n_0_[113][7] ;
  wire \memoria_reg_n_0_[114][0] ;
  wire \memoria_reg_n_0_[114][1] ;
  wire \memoria_reg_n_0_[114][2] ;
  wire \memoria_reg_n_0_[114][3] ;
  wire \memoria_reg_n_0_[114][4] ;
  wire \memoria_reg_n_0_[114][5] ;
  wire \memoria_reg_n_0_[114][6] ;
  wire \memoria_reg_n_0_[114][7] ;
  wire \memoria_reg_n_0_[115][0] ;
  wire \memoria_reg_n_0_[115][1] ;
  wire \memoria_reg_n_0_[115][2] ;
  wire \memoria_reg_n_0_[115][3] ;
  wire \memoria_reg_n_0_[115][4] ;
  wire \memoria_reg_n_0_[115][5] ;
  wire \memoria_reg_n_0_[115][6] ;
  wire \memoria_reg_n_0_[115][7] ;
  wire \memoria_reg_n_0_[116][0] ;
  wire \memoria_reg_n_0_[116][1] ;
  wire \memoria_reg_n_0_[116][2] ;
  wire \memoria_reg_n_0_[116][3] ;
  wire \memoria_reg_n_0_[116][4] ;
  wire \memoria_reg_n_0_[116][5] ;
  wire \memoria_reg_n_0_[116][6] ;
  wire \memoria_reg_n_0_[116][7] ;
  wire \memoria_reg_n_0_[117][0] ;
  wire \memoria_reg_n_0_[117][1] ;
  wire \memoria_reg_n_0_[117][2] ;
  wire \memoria_reg_n_0_[117][3] ;
  wire \memoria_reg_n_0_[117][4] ;
  wire \memoria_reg_n_0_[117][5] ;
  wire \memoria_reg_n_0_[117][6] ;
  wire \memoria_reg_n_0_[117][7] ;
  wire \memoria_reg_n_0_[118][0] ;
  wire \memoria_reg_n_0_[118][1] ;
  wire \memoria_reg_n_0_[118][2] ;
  wire \memoria_reg_n_0_[118][3] ;
  wire \memoria_reg_n_0_[118][4] ;
  wire \memoria_reg_n_0_[118][5] ;
  wire \memoria_reg_n_0_[118][6] ;
  wire \memoria_reg_n_0_[118][7] ;
  wire \memoria_reg_n_0_[119][0] ;
  wire \memoria_reg_n_0_[119][1] ;
  wire \memoria_reg_n_0_[119][2] ;
  wire \memoria_reg_n_0_[119][3] ;
  wire \memoria_reg_n_0_[119][4] ;
  wire \memoria_reg_n_0_[119][5] ;
  wire \memoria_reg_n_0_[119][6] ;
  wire \memoria_reg_n_0_[119][7] ;
  wire \memoria_reg_n_0_[11][0] ;
  wire \memoria_reg_n_0_[11][1] ;
  wire \memoria_reg_n_0_[11][2] ;
  wire \memoria_reg_n_0_[11][3] ;
  wire \memoria_reg_n_0_[11][4] ;
  wire \memoria_reg_n_0_[11][5] ;
  wire \memoria_reg_n_0_[11][6] ;
  wire \memoria_reg_n_0_[11][7] ;
  wire \memoria_reg_n_0_[120][0] ;
  wire \memoria_reg_n_0_[120][1] ;
  wire \memoria_reg_n_0_[120][2] ;
  wire \memoria_reg_n_0_[120][3] ;
  wire \memoria_reg_n_0_[120][4] ;
  wire \memoria_reg_n_0_[120][5] ;
  wire \memoria_reg_n_0_[120][6] ;
  wire \memoria_reg_n_0_[120][7] ;
  wire \memoria_reg_n_0_[121][0] ;
  wire \memoria_reg_n_0_[121][1] ;
  wire \memoria_reg_n_0_[121][2] ;
  wire \memoria_reg_n_0_[121][3] ;
  wire \memoria_reg_n_0_[121][4] ;
  wire \memoria_reg_n_0_[121][5] ;
  wire \memoria_reg_n_0_[121][6] ;
  wire \memoria_reg_n_0_[121][7] ;
  wire \memoria_reg_n_0_[122][0] ;
  wire \memoria_reg_n_0_[122][1] ;
  wire \memoria_reg_n_0_[122][2] ;
  wire \memoria_reg_n_0_[122][3] ;
  wire \memoria_reg_n_0_[122][4] ;
  wire \memoria_reg_n_0_[122][5] ;
  wire \memoria_reg_n_0_[122][6] ;
  wire \memoria_reg_n_0_[122][7] ;
  wire \memoria_reg_n_0_[123][0] ;
  wire \memoria_reg_n_0_[123][1] ;
  wire \memoria_reg_n_0_[123][2] ;
  wire \memoria_reg_n_0_[123][3] ;
  wire \memoria_reg_n_0_[123][4] ;
  wire \memoria_reg_n_0_[123][5] ;
  wire \memoria_reg_n_0_[123][6] ;
  wire \memoria_reg_n_0_[123][7] ;
  wire \memoria_reg_n_0_[124][0] ;
  wire \memoria_reg_n_0_[124][1] ;
  wire \memoria_reg_n_0_[124][2] ;
  wire \memoria_reg_n_0_[124][3] ;
  wire \memoria_reg_n_0_[124][4] ;
  wire \memoria_reg_n_0_[124][5] ;
  wire \memoria_reg_n_0_[124][6] ;
  wire \memoria_reg_n_0_[124][7] ;
  wire \memoria_reg_n_0_[125][0] ;
  wire \memoria_reg_n_0_[125][1] ;
  wire \memoria_reg_n_0_[125][2] ;
  wire \memoria_reg_n_0_[125][3] ;
  wire \memoria_reg_n_0_[125][4] ;
  wire \memoria_reg_n_0_[125][5] ;
  wire \memoria_reg_n_0_[125][6] ;
  wire \memoria_reg_n_0_[125][7] ;
  wire \memoria_reg_n_0_[126][0] ;
  wire \memoria_reg_n_0_[126][1] ;
  wire \memoria_reg_n_0_[126][2] ;
  wire \memoria_reg_n_0_[126][3] ;
  wire \memoria_reg_n_0_[126][4] ;
  wire \memoria_reg_n_0_[126][5] ;
  wire \memoria_reg_n_0_[126][6] ;
  wire \memoria_reg_n_0_[126][7] ;
  wire \memoria_reg_n_0_[127][0] ;
  wire \memoria_reg_n_0_[127][1] ;
  wire \memoria_reg_n_0_[127][2] ;
  wire \memoria_reg_n_0_[127][3] ;
  wire \memoria_reg_n_0_[127][4] ;
  wire \memoria_reg_n_0_[127][5] ;
  wire \memoria_reg_n_0_[127][6] ;
  wire \memoria_reg_n_0_[127][7] ;
  wire \memoria_reg_n_0_[12][0] ;
  wire \memoria_reg_n_0_[12][1] ;
  wire \memoria_reg_n_0_[12][2] ;
  wire \memoria_reg_n_0_[12][3] ;
  wire \memoria_reg_n_0_[12][4] ;
  wire \memoria_reg_n_0_[12][5] ;
  wire \memoria_reg_n_0_[12][6] ;
  wire \memoria_reg_n_0_[12][7] ;
  wire \memoria_reg_n_0_[13][0] ;
  wire \memoria_reg_n_0_[13][1] ;
  wire \memoria_reg_n_0_[13][2] ;
  wire \memoria_reg_n_0_[13][3] ;
  wire \memoria_reg_n_0_[13][4] ;
  wire \memoria_reg_n_0_[13][5] ;
  wire \memoria_reg_n_0_[13][6] ;
  wire \memoria_reg_n_0_[13][7] ;
  wire \memoria_reg_n_0_[14][0] ;
  wire \memoria_reg_n_0_[14][1] ;
  wire \memoria_reg_n_0_[14][2] ;
  wire \memoria_reg_n_0_[14][3] ;
  wire \memoria_reg_n_0_[14][4] ;
  wire \memoria_reg_n_0_[14][5] ;
  wire \memoria_reg_n_0_[14][6] ;
  wire \memoria_reg_n_0_[14][7] ;
  wire \memoria_reg_n_0_[15][0] ;
  wire \memoria_reg_n_0_[15][1] ;
  wire \memoria_reg_n_0_[15][2] ;
  wire \memoria_reg_n_0_[15][3] ;
  wire \memoria_reg_n_0_[15][4] ;
  wire \memoria_reg_n_0_[15][5] ;
  wire \memoria_reg_n_0_[15][6] ;
  wire \memoria_reg_n_0_[15][7] ;
  wire \memoria_reg_n_0_[16][0] ;
  wire \memoria_reg_n_0_[16][1] ;
  wire \memoria_reg_n_0_[16][2] ;
  wire \memoria_reg_n_0_[16][3] ;
  wire \memoria_reg_n_0_[16][4] ;
  wire \memoria_reg_n_0_[16][5] ;
  wire \memoria_reg_n_0_[16][6] ;
  wire \memoria_reg_n_0_[16][7] ;
  wire \memoria_reg_n_0_[17][0] ;
  wire \memoria_reg_n_0_[17][1] ;
  wire \memoria_reg_n_0_[17][2] ;
  wire \memoria_reg_n_0_[17][3] ;
  wire \memoria_reg_n_0_[17][4] ;
  wire \memoria_reg_n_0_[17][5] ;
  wire \memoria_reg_n_0_[17][6] ;
  wire \memoria_reg_n_0_[17][7] ;
  wire \memoria_reg_n_0_[18][0] ;
  wire \memoria_reg_n_0_[18][1] ;
  wire \memoria_reg_n_0_[18][2] ;
  wire \memoria_reg_n_0_[18][3] ;
  wire \memoria_reg_n_0_[18][4] ;
  wire \memoria_reg_n_0_[18][5] ;
  wire \memoria_reg_n_0_[18][6] ;
  wire \memoria_reg_n_0_[18][7] ;
  wire \memoria_reg_n_0_[19][0] ;
  wire \memoria_reg_n_0_[19][1] ;
  wire \memoria_reg_n_0_[19][2] ;
  wire \memoria_reg_n_0_[19][3] ;
  wire \memoria_reg_n_0_[19][4] ;
  wire \memoria_reg_n_0_[19][5] ;
  wire \memoria_reg_n_0_[19][6] ;
  wire \memoria_reg_n_0_[19][7] ;
  wire \memoria_reg_n_0_[1][0] ;
  wire \memoria_reg_n_0_[1][1] ;
  wire \memoria_reg_n_0_[1][2] ;
  wire \memoria_reg_n_0_[1][3] ;
  wire \memoria_reg_n_0_[1][4] ;
  wire \memoria_reg_n_0_[1][5] ;
  wire \memoria_reg_n_0_[1][6] ;
  wire \memoria_reg_n_0_[1][7] ;
  wire \memoria_reg_n_0_[20][0] ;
  wire \memoria_reg_n_0_[20][1] ;
  wire \memoria_reg_n_0_[20][2] ;
  wire \memoria_reg_n_0_[20][3] ;
  wire \memoria_reg_n_0_[20][4] ;
  wire \memoria_reg_n_0_[20][5] ;
  wire \memoria_reg_n_0_[20][6] ;
  wire \memoria_reg_n_0_[20][7] ;
  wire \memoria_reg_n_0_[21][0] ;
  wire \memoria_reg_n_0_[21][1] ;
  wire \memoria_reg_n_0_[21][2] ;
  wire \memoria_reg_n_0_[21][3] ;
  wire \memoria_reg_n_0_[21][4] ;
  wire \memoria_reg_n_0_[21][5] ;
  wire \memoria_reg_n_0_[21][6] ;
  wire \memoria_reg_n_0_[21][7] ;
  wire \memoria_reg_n_0_[22][0] ;
  wire \memoria_reg_n_0_[22][1] ;
  wire \memoria_reg_n_0_[22][2] ;
  wire \memoria_reg_n_0_[22][3] ;
  wire \memoria_reg_n_0_[22][4] ;
  wire \memoria_reg_n_0_[22][5] ;
  wire \memoria_reg_n_0_[22][6] ;
  wire \memoria_reg_n_0_[22][7] ;
  wire \memoria_reg_n_0_[23][0] ;
  wire \memoria_reg_n_0_[23][1] ;
  wire \memoria_reg_n_0_[23][2] ;
  wire \memoria_reg_n_0_[23][3] ;
  wire \memoria_reg_n_0_[23][4] ;
  wire \memoria_reg_n_0_[23][5] ;
  wire \memoria_reg_n_0_[23][6] ;
  wire \memoria_reg_n_0_[23][7] ;
  wire \memoria_reg_n_0_[24][0] ;
  wire \memoria_reg_n_0_[24][1] ;
  wire \memoria_reg_n_0_[24][2] ;
  wire \memoria_reg_n_0_[24][3] ;
  wire \memoria_reg_n_0_[24][4] ;
  wire \memoria_reg_n_0_[24][5] ;
  wire \memoria_reg_n_0_[24][6] ;
  wire \memoria_reg_n_0_[24][7] ;
  wire \memoria_reg_n_0_[25][0] ;
  wire \memoria_reg_n_0_[25][1] ;
  wire \memoria_reg_n_0_[25][2] ;
  wire \memoria_reg_n_0_[25][3] ;
  wire \memoria_reg_n_0_[25][4] ;
  wire \memoria_reg_n_0_[25][5] ;
  wire \memoria_reg_n_0_[25][6] ;
  wire \memoria_reg_n_0_[25][7] ;
  wire \memoria_reg_n_0_[26][0] ;
  wire \memoria_reg_n_0_[26][1] ;
  wire \memoria_reg_n_0_[26][2] ;
  wire \memoria_reg_n_0_[26][3] ;
  wire \memoria_reg_n_0_[26][4] ;
  wire \memoria_reg_n_0_[26][5] ;
  wire \memoria_reg_n_0_[26][6] ;
  wire \memoria_reg_n_0_[26][7] ;
  wire \memoria_reg_n_0_[27][0] ;
  wire \memoria_reg_n_0_[27][1] ;
  wire \memoria_reg_n_0_[27][2] ;
  wire \memoria_reg_n_0_[27][3] ;
  wire \memoria_reg_n_0_[27][4] ;
  wire \memoria_reg_n_0_[27][5] ;
  wire \memoria_reg_n_0_[27][6] ;
  wire \memoria_reg_n_0_[27][7] ;
  wire \memoria_reg_n_0_[28][0] ;
  wire \memoria_reg_n_0_[28][1] ;
  wire \memoria_reg_n_0_[28][2] ;
  wire \memoria_reg_n_0_[28][3] ;
  wire \memoria_reg_n_0_[28][4] ;
  wire \memoria_reg_n_0_[28][5] ;
  wire \memoria_reg_n_0_[28][6] ;
  wire \memoria_reg_n_0_[28][7] ;
  wire \memoria_reg_n_0_[29][0] ;
  wire \memoria_reg_n_0_[29][1] ;
  wire \memoria_reg_n_0_[29][2] ;
  wire \memoria_reg_n_0_[29][3] ;
  wire \memoria_reg_n_0_[29][4] ;
  wire \memoria_reg_n_0_[29][5] ;
  wire \memoria_reg_n_0_[29][6] ;
  wire \memoria_reg_n_0_[29][7] ;
  wire \memoria_reg_n_0_[2][0] ;
  wire \memoria_reg_n_0_[2][1] ;
  wire \memoria_reg_n_0_[2][2] ;
  wire \memoria_reg_n_0_[2][3] ;
  wire \memoria_reg_n_0_[2][4] ;
  wire \memoria_reg_n_0_[2][5] ;
  wire \memoria_reg_n_0_[2][6] ;
  wire \memoria_reg_n_0_[2][7] ;
  wire \memoria_reg_n_0_[30][0] ;
  wire \memoria_reg_n_0_[30][1] ;
  wire \memoria_reg_n_0_[30][2] ;
  wire \memoria_reg_n_0_[30][3] ;
  wire \memoria_reg_n_0_[30][4] ;
  wire \memoria_reg_n_0_[30][5] ;
  wire \memoria_reg_n_0_[30][6] ;
  wire \memoria_reg_n_0_[30][7] ;
  wire \memoria_reg_n_0_[31][0] ;
  wire \memoria_reg_n_0_[31][1] ;
  wire \memoria_reg_n_0_[31][2] ;
  wire \memoria_reg_n_0_[31][3] ;
  wire \memoria_reg_n_0_[31][4] ;
  wire \memoria_reg_n_0_[31][5] ;
  wire \memoria_reg_n_0_[31][6] ;
  wire \memoria_reg_n_0_[31][7] ;
  wire \memoria_reg_n_0_[32][0] ;
  wire \memoria_reg_n_0_[32][1] ;
  wire \memoria_reg_n_0_[32][2] ;
  wire \memoria_reg_n_0_[32][3] ;
  wire \memoria_reg_n_0_[32][4] ;
  wire \memoria_reg_n_0_[32][5] ;
  wire \memoria_reg_n_0_[32][6] ;
  wire \memoria_reg_n_0_[32][7] ;
  wire \memoria_reg_n_0_[33][0] ;
  wire \memoria_reg_n_0_[33][1] ;
  wire \memoria_reg_n_0_[33][2] ;
  wire \memoria_reg_n_0_[33][3] ;
  wire \memoria_reg_n_0_[33][4] ;
  wire \memoria_reg_n_0_[33][5] ;
  wire \memoria_reg_n_0_[33][6] ;
  wire \memoria_reg_n_0_[33][7] ;
  wire \memoria_reg_n_0_[34][0] ;
  wire \memoria_reg_n_0_[34][1] ;
  wire \memoria_reg_n_0_[34][2] ;
  wire \memoria_reg_n_0_[34][3] ;
  wire \memoria_reg_n_0_[34][4] ;
  wire \memoria_reg_n_0_[34][5] ;
  wire \memoria_reg_n_0_[34][6] ;
  wire \memoria_reg_n_0_[34][7] ;
  wire \memoria_reg_n_0_[35][0] ;
  wire \memoria_reg_n_0_[35][1] ;
  wire \memoria_reg_n_0_[35][2] ;
  wire \memoria_reg_n_0_[35][3] ;
  wire \memoria_reg_n_0_[35][4] ;
  wire \memoria_reg_n_0_[35][5] ;
  wire \memoria_reg_n_0_[35][6] ;
  wire \memoria_reg_n_0_[35][7] ;
  wire \memoria_reg_n_0_[36][0] ;
  wire \memoria_reg_n_0_[36][1] ;
  wire \memoria_reg_n_0_[36][2] ;
  wire \memoria_reg_n_0_[36][3] ;
  wire \memoria_reg_n_0_[36][4] ;
  wire \memoria_reg_n_0_[36][5] ;
  wire \memoria_reg_n_0_[36][6] ;
  wire \memoria_reg_n_0_[36][7] ;
  wire \memoria_reg_n_0_[37][0] ;
  wire \memoria_reg_n_0_[37][1] ;
  wire \memoria_reg_n_0_[37][2] ;
  wire \memoria_reg_n_0_[37][3] ;
  wire \memoria_reg_n_0_[37][4] ;
  wire \memoria_reg_n_0_[37][5] ;
  wire \memoria_reg_n_0_[37][6] ;
  wire \memoria_reg_n_0_[37][7] ;
  wire \memoria_reg_n_0_[38][0] ;
  wire \memoria_reg_n_0_[38][1] ;
  wire \memoria_reg_n_0_[38][2] ;
  wire \memoria_reg_n_0_[38][3] ;
  wire \memoria_reg_n_0_[38][4] ;
  wire \memoria_reg_n_0_[38][5] ;
  wire \memoria_reg_n_0_[38][6] ;
  wire \memoria_reg_n_0_[38][7] ;
  wire \memoria_reg_n_0_[39][0] ;
  wire \memoria_reg_n_0_[39][1] ;
  wire \memoria_reg_n_0_[39][2] ;
  wire \memoria_reg_n_0_[39][3] ;
  wire \memoria_reg_n_0_[39][4] ;
  wire \memoria_reg_n_0_[39][5] ;
  wire \memoria_reg_n_0_[39][6] ;
  wire \memoria_reg_n_0_[39][7] ;
  wire \memoria_reg_n_0_[3][0] ;
  wire \memoria_reg_n_0_[3][1] ;
  wire \memoria_reg_n_0_[3][2] ;
  wire \memoria_reg_n_0_[3][3] ;
  wire \memoria_reg_n_0_[3][4] ;
  wire \memoria_reg_n_0_[3][5] ;
  wire \memoria_reg_n_0_[3][6] ;
  wire \memoria_reg_n_0_[3][7] ;
  wire \memoria_reg_n_0_[40][0] ;
  wire \memoria_reg_n_0_[40][1] ;
  wire \memoria_reg_n_0_[40][2] ;
  wire \memoria_reg_n_0_[40][3] ;
  wire \memoria_reg_n_0_[40][4] ;
  wire \memoria_reg_n_0_[40][5] ;
  wire \memoria_reg_n_0_[40][6] ;
  wire \memoria_reg_n_0_[40][7] ;
  wire \memoria_reg_n_0_[41][0] ;
  wire \memoria_reg_n_0_[41][1] ;
  wire \memoria_reg_n_0_[41][2] ;
  wire \memoria_reg_n_0_[41][3] ;
  wire \memoria_reg_n_0_[41][4] ;
  wire \memoria_reg_n_0_[41][5] ;
  wire \memoria_reg_n_0_[41][6] ;
  wire \memoria_reg_n_0_[41][7] ;
  wire \memoria_reg_n_0_[42][0] ;
  wire \memoria_reg_n_0_[42][1] ;
  wire \memoria_reg_n_0_[42][2] ;
  wire \memoria_reg_n_0_[42][3] ;
  wire \memoria_reg_n_0_[42][4] ;
  wire \memoria_reg_n_0_[42][5] ;
  wire \memoria_reg_n_0_[42][6] ;
  wire \memoria_reg_n_0_[42][7] ;
  wire \memoria_reg_n_0_[43][0] ;
  wire \memoria_reg_n_0_[43][1] ;
  wire \memoria_reg_n_0_[43][2] ;
  wire \memoria_reg_n_0_[43][3] ;
  wire \memoria_reg_n_0_[43][4] ;
  wire \memoria_reg_n_0_[43][5] ;
  wire \memoria_reg_n_0_[43][6] ;
  wire \memoria_reg_n_0_[43][7] ;
  wire \memoria_reg_n_0_[44][0] ;
  wire \memoria_reg_n_0_[44][1] ;
  wire \memoria_reg_n_0_[44][2] ;
  wire \memoria_reg_n_0_[44][3] ;
  wire \memoria_reg_n_0_[44][4] ;
  wire \memoria_reg_n_0_[44][5] ;
  wire \memoria_reg_n_0_[44][6] ;
  wire \memoria_reg_n_0_[44][7] ;
  wire \memoria_reg_n_0_[45][0] ;
  wire \memoria_reg_n_0_[45][1] ;
  wire \memoria_reg_n_0_[45][2] ;
  wire \memoria_reg_n_0_[45][3] ;
  wire \memoria_reg_n_0_[45][4] ;
  wire \memoria_reg_n_0_[45][5] ;
  wire \memoria_reg_n_0_[45][6] ;
  wire \memoria_reg_n_0_[45][7] ;
  wire \memoria_reg_n_0_[46][0] ;
  wire \memoria_reg_n_0_[46][1] ;
  wire \memoria_reg_n_0_[46][2] ;
  wire \memoria_reg_n_0_[46][3] ;
  wire \memoria_reg_n_0_[46][4] ;
  wire \memoria_reg_n_0_[46][5] ;
  wire \memoria_reg_n_0_[46][6] ;
  wire \memoria_reg_n_0_[46][7] ;
  wire \memoria_reg_n_0_[47][0] ;
  wire \memoria_reg_n_0_[47][1] ;
  wire \memoria_reg_n_0_[47][2] ;
  wire \memoria_reg_n_0_[47][3] ;
  wire \memoria_reg_n_0_[47][4] ;
  wire \memoria_reg_n_0_[47][5] ;
  wire \memoria_reg_n_0_[47][6] ;
  wire \memoria_reg_n_0_[47][7] ;
  wire \memoria_reg_n_0_[48][0] ;
  wire \memoria_reg_n_0_[48][1] ;
  wire \memoria_reg_n_0_[48][2] ;
  wire \memoria_reg_n_0_[48][3] ;
  wire \memoria_reg_n_0_[48][4] ;
  wire \memoria_reg_n_0_[48][5] ;
  wire \memoria_reg_n_0_[48][6] ;
  wire \memoria_reg_n_0_[48][7] ;
  wire \memoria_reg_n_0_[49][0] ;
  wire \memoria_reg_n_0_[49][1] ;
  wire \memoria_reg_n_0_[49][2] ;
  wire \memoria_reg_n_0_[49][3] ;
  wire \memoria_reg_n_0_[49][4] ;
  wire \memoria_reg_n_0_[49][5] ;
  wire \memoria_reg_n_0_[49][6] ;
  wire \memoria_reg_n_0_[49][7] ;
  wire \memoria_reg_n_0_[4][0] ;
  wire \memoria_reg_n_0_[4][1] ;
  wire \memoria_reg_n_0_[4][2] ;
  wire \memoria_reg_n_0_[4][3] ;
  wire \memoria_reg_n_0_[4][4] ;
  wire \memoria_reg_n_0_[4][5] ;
  wire \memoria_reg_n_0_[4][6] ;
  wire \memoria_reg_n_0_[4][7] ;
  wire \memoria_reg_n_0_[50][0] ;
  wire \memoria_reg_n_0_[50][1] ;
  wire \memoria_reg_n_0_[50][2] ;
  wire \memoria_reg_n_0_[50][3] ;
  wire \memoria_reg_n_0_[50][4] ;
  wire \memoria_reg_n_0_[50][5] ;
  wire \memoria_reg_n_0_[50][6] ;
  wire \memoria_reg_n_0_[50][7] ;
  wire \memoria_reg_n_0_[51][0] ;
  wire \memoria_reg_n_0_[51][1] ;
  wire \memoria_reg_n_0_[51][2] ;
  wire \memoria_reg_n_0_[51][3] ;
  wire \memoria_reg_n_0_[51][4] ;
  wire \memoria_reg_n_0_[51][5] ;
  wire \memoria_reg_n_0_[51][6] ;
  wire \memoria_reg_n_0_[51][7] ;
  wire \memoria_reg_n_0_[52][0] ;
  wire \memoria_reg_n_0_[52][1] ;
  wire \memoria_reg_n_0_[52][2] ;
  wire \memoria_reg_n_0_[52][3] ;
  wire \memoria_reg_n_0_[52][4] ;
  wire \memoria_reg_n_0_[52][5] ;
  wire \memoria_reg_n_0_[52][6] ;
  wire \memoria_reg_n_0_[52][7] ;
  wire \memoria_reg_n_0_[53][0] ;
  wire \memoria_reg_n_0_[53][1] ;
  wire \memoria_reg_n_0_[53][2] ;
  wire \memoria_reg_n_0_[53][3] ;
  wire \memoria_reg_n_0_[53][4] ;
  wire \memoria_reg_n_0_[53][5] ;
  wire \memoria_reg_n_0_[53][6] ;
  wire \memoria_reg_n_0_[53][7] ;
  wire \memoria_reg_n_0_[54][0] ;
  wire \memoria_reg_n_0_[54][1] ;
  wire \memoria_reg_n_0_[54][2] ;
  wire \memoria_reg_n_0_[54][3] ;
  wire \memoria_reg_n_0_[54][4] ;
  wire \memoria_reg_n_0_[54][5] ;
  wire \memoria_reg_n_0_[54][6] ;
  wire \memoria_reg_n_0_[54][7] ;
  wire \memoria_reg_n_0_[55][0] ;
  wire \memoria_reg_n_0_[55][1] ;
  wire \memoria_reg_n_0_[55][2] ;
  wire \memoria_reg_n_0_[55][3] ;
  wire \memoria_reg_n_0_[55][4] ;
  wire \memoria_reg_n_0_[55][5] ;
  wire \memoria_reg_n_0_[55][6] ;
  wire \memoria_reg_n_0_[55][7] ;
  wire \memoria_reg_n_0_[56][0] ;
  wire \memoria_reg_n_0_[56][1] ;
  wire \memoria_reg_n_0_[56][2] ;
  wire \memoria_reg_n_0_[56][3] ;
  wire \memoria_reg_n_0_[56][4] ;
  wire \memoria_reg_n_0_[56][5] ;
  wire \memoria_reg_n_0_[56][6] ;
  wire \memoria_reg_n_0_[56][7] ;
  wire \memoria_reg_n_0_[57][0] ;
  wire \memoria_reg_n_0_[57][1] ;
  wire \memoria_reg_n_0_[57][2] ;
  wire \memoria_reg_n_0_[57][3] ;
  wire \memoria_reg_n_0_[57][4] ;
  wire \memoria_reg_n_0_[57][5] ;
  wire \memoria_reg_n_0_[57][6] ;
  wire \memoria_reg_n_0_[57][7] ;
  wire \memoria_reg_n_0_[58][0] ;
  wire \memoria_reg_n_0_[58][1] ;
  wire \memoria_reg_n_0_[58][2] ;
  wire \memoria_reg_n_0_[58][3] ;
  wire \memoria_reg_n_0_[58][4] ;
  wire \memoria_reg_n_0_[58][5] ;
  wire \memoria_reg_n_0_[58][6] ;
  wire \memoria_reg_n_0_[58][7] ;
  wire \memoria_reg_n_0_[59][0] ;
  wire \memoria_reg_n_0_[59][1] ;
  wire \memoria_reg_n_0_[59][2] ;
  wire \memoria_reg_n_0_[59][3] ;
  wire \memoria_reg_n_0_[59][4] ;
  wire \memoria_reg_n_0_[59][5] ;
  wire \memoria_reg_n_0_[59][6] ;
  wire \memoria_reg_n_0_[59][7] ;
  wire \memoria_reg_n_0_[5][0] ;
  wire \memoria_reg_n_0_[5][1] ;
  wire \memoria_reg_n_0_[5][2] ;
  wire \memoria_reg_n_0_[5][3] ;
  wire \memoria_reg_n_0_[5][4] ;
  wire \memoria_reg_n_0_[5][5] ;
  wire \memoria_reg_n_0_[5][6] ;
  wire \memoria_reg_n_0_[5][7] ;
  wire \memoria_reg_n_0_[60][0] ;
  wire \memoria_reg_n_0_[60][1] ;
  wire \memoria_reg_n_0_[60][2] ;
  wire \memoria_reg_n_0_[60][3] ;
  wire \memoria_reg_n_0_[60][4] ;
  wire \memoria_reg_n_0_[60][5] ;
  wire \memoria_reg_n_0_[60][6] ;
  wire \memoria_reg_n_0_[60][7] ;
  wire \memoria_reg_n_0_[61][0] ;
  wire \memoria_reg_n_0_[61][1] ;
  wire \memoria_reg_n_0_[61][2] ;
  wire \memoria_reg_n_0_[61][3] ;
  wire \memoria_reg_n_0_[61][4] ;
  wire \memoria_reg_n_0_[61][5] ;
  wire \memoria_reg_n_0_[61][6] ;
  wire \memoria_reg_n_0_[61][7] ;
  wire \memoria_reg_n_0_[62][0] ;
  wire \memoria_reg_n_0_[62][1] ;
  wire \memoria_reg_n_0_[62][2] ;
  wire \memoria_reg_n_0_[62][3] ;
  wire \memoria_reg_n_0_[62][4] ;
  wire \memoria_reg_n_0_[62][5] ;
  wire \memoria_reg_n_0_[62][6] ;
  wire \memoria_reg_n_0_[62][7] ;
  wire \memoria_reg_n_0_[63][0] ;
  wire \memoria_reg_n_0_[63][1] ;
  wire \memoria_reg_n_0_[63][2] ;
  wire \memoria_reg_n_0_[63][3] ;
  wire \memoria_reg_n_0_[63][4] ;
  wire \memoria_reg_n_0_[63][5] ;
  wire \memoria_reg_n_0_[63][6] ;
  wire \memoria_reg_n_0_[63][7] ;
  wire \memoria_reg_n_0_[64][0] ;
  wire \memoria_reg_n_0_[64][1] ;
  wire \memoria_reg_n_0_[64][2] ;
  wire \memoria_reg_n_0_[64][3] ;
  wire \memoria_reg_n_0_[64][4] ;
  wire \memoria_reg_n_0_[64][5] ;
  wire \memoria_reg_n_0_[64][6] ;
  wire \memoria_reg_n_0_[64][7] ;
  wire \memoria_reg_n_0_[65][0] ;
  wire \memoria_reg_n_0_[65][1] ;
  wire \memoria_reg_n_0_[65][2] ;
  wire \memoria_reg_n_0_[65][3] ;
  wire \memoria_reg_n_0_[65][4] ;
  wire \memoria_reg_n_0_[65][5] ;
  wire \memoria_reg_n_0_[65][6] ;
  wire \memoria_reg_n_0_[65][7] ;
  wire \memoria_reg_n_0_[66][0] ;
  wire \memoria_reg_n_0_[66][1] ;
  wire \memoria_reg_n_0_[66][2] ;
  wire \memoria_reg_n_0_[66][3] ;
  wire \memoria_reg_n_0_[66][4] ;
  wire \memoria_reg_n_0_[66][5] ;
  wire \memoria_reg_n_0_[66][6] ;
  wire \memoria_reg_n_0_[66][7] ;
  wire \memoria_reg_n_0_[67][0] ;
  wire \memoria_reg_n_0_[67][1] ;
  wire \memoria_reg_n_0_[67][2] ;
  wire \memoria_reg_n_0_[67][3] ;
  wire \memoria_reg_n_0_[67][4] ;
  wire \memoria_reg_n_0_[67][5] ;
  wire \memoria_reg_n_0_[67][6] ;
  wire \memoria_reg_n_0_[67][7] ;
  wire \memoria_reg_n_0_[68][0] ;
  wire \memoria_reg_n_0_[68][1] ;
  wire \memoria_reg_n_0_[68][2] ;
  wire \memoria_reg_n_0_[68][3] ;
  wire \memoria_reg_n_0_[68][4] ;
  wire \memoria_reg_n_0_[68][5] ;
  wire \memoria_reg_n_0_[68][6] ;
  wire \memoria_reg_n_0_[68][7] ;
  wire \memoria_reg_n_0_[69][0] ;
  wire \memoria_reg_n_0_[69][1] ;
  wire \memoria_reg_n_0_[69][2] ;
  wire \memoria_reg_n_0_[69][3] ;
  wire \memoria_reg_n_0_[69][4] ;
  wire \memoria_reg_n_0_[69][5] ;
  wire \memoria_reg_n_0_[69][6] ;
  wire \memoria_reg_n_0_[69][7] ;
  wire \memoria_reg_n_0_[6][0] ;
  wire \memoria_reg_n_0_[6][1] ;
  wire \memoria_reg_n_0_[6][2] ;
  wire \memoria_reg_n_0_[6][3] ;
  wire \memoria_reg_n_0_[6][4] ;
  wire \memoria_reg_n_0_[6][5] ;
  wire \memoria_reg_n_0_[6][6] ;
  wire \memoria_reg_n_0_[6][7] ;
  wire \memoria_reg_n_0_[70][0] ;
  wire \memoria_reg_n_0_[70][1] ;
  wire \memoria_reg_n_0_[70][2] ;
  wire \memoria_reg_n_0_[70][3] ;
  wire \memoria_reg_n_0_[70][4] ;
  wire \memoria_reg_n_0_[70][5] ;
  wire \memoria_reg_n_0_[70][6] ;
  wire \memoria_reg_n_0_[70][7] ;
  wire \memoria_reg_n_0_[71][0] ;
  wire \memoria_reg_n_0_[71][1] ;
  wire \memoria_reg_n_0_[71][2] ;
  wire \memoria_reg_n_0_[71][3] ;
  wire \memoria_reg_n_0_[71][4] ;
  wire \memoria_reg_n_0_[71][5] ;
  wire \memoria_reg_n_0_[71][6] ;
  wire \memoria_reg_n_0_[71][7] ;
  wire \memoria_reg_n_0_[72][0] ;
  wire \memoria_reg_n_0_[72][1] ;
  wire \memoria_reg_n_0_[72][2] ;
  wire \memoria_reg_n_0_[72][3] ;
  wire \memoria_reg_n_0_[72][4] ;
  wire \memoria_reg_n_0_[72][5] ;
  wire \memoria_reg_n_0_[72][6] ;
  wire \memoria_reg_n_0_[72][7] ;
  wire \memoria_reg_n_0_[73][0] ;
  wire \memoria_reg_n_0_[73][1] ;
  wire \memoria_reg_n_0_[73][2] ;
  wire \memoria_reg_n_0_[73][3] ;
  wire \memoria_reg_n_0_[73][4] ;
  wire \memoria_reg_n_0_[73][5] ;
  wire \memoria_reg_n_0_[73][6] ;
  wire \memoria_reg_n_0_[73][7] ;
  wire \memoria_reg_n_0_[74][0] ;
  wire \memoria_reg_n_0_[74][1] ;
  wire \memoria_reg_n_0_[74][2] ;
  wire \memoria_reg_n_0_[74][3] ;
  wire \memoria_reg_n_0_[74][4] ;
  wire \memoria_reg_n_0_[74][5] ;
  wire \memoria_reg_n_0_[74][6] ;
  wire \memoria_reg_n_0_[74][7] ;
  wire \memoria_reg_n_0_[75][0] ;
  wire \memoria_reg_n_0_[75][1] ;
  wire \memoria_reg_n_0_[75][2] ;
  wire \memoria_reg_n_0_[75][3] ;
  wire \memoria_reg_n_0_[75][4] ;
  wire \memoria_reg_n_0_[75][5] ;
  wire \memoria_reg_n_0_[75][6] ;
  wire \memoria_reg_n_0_[75][7] ;
  wire \memoria_reg_n_0_[76][0] ;
  wire \memoria_reg_n_0_[76][1] ;
  wire \memoria_reg_n_0_[76][2] ;
  wire \memoria_reg_n_0_[76][3] ;
  wire \memoria_reg_n_0_[76][4] ;
  wire \memoria_reg_n_0_[76][5] ;
  wire \memoria_reg_n_0_[76][6] ;
  wire \memoria_reg_n_0_[76][7] ;
  wire \memoria_reg_n_0_[77][0] ;
  wire \memoria_reg_n_0_[77][1] ;
  wire \memoria_reg_n_0_[77][2] ;
  wire \memoria_reg_n_0_[77][3] ;
  wire \memoria_reg_n_0_[77][4] ;
  wire \memoria_reg_n_0_[77][5] ;
  wire \memoria_reg_n_0_[77][6] ;
  wire \memoria_reg_n_0_[77][7] ;
  wire \memoria_reg_n_0_[78][0] ;
  wire \memoria_reg_n_0_[78][1] ;
  wire \memoria_reg_n_0_[78][2] ;
  wire \memoria_reg_n_0_[78][3] ;
  wire \memoria_reg_n_0_[78][4] ;
  wire \memoria_reg_n_0_[78][5] ;
  wire \memoria_reg_n_0_[78][6] ;
  wire \memoria_reg_n_0_[78][7] ;
  wire \memoria_reg_n_0_[79][0] ;
  wire \memoria_reg_n_0_[79][1] ;
  wire \memoria_reg_n_0_[79][2] ;
  wire \memoria_reg_n_0_[79][3] ;
  wire \memoria_reg_n_0_[79][4] ;
  wire \memoria_reg_n_0_[79][5] ;
  wire \memoria_reg_n_0_[79][6] ;
  wire \memoria_reg_n_0_[79][7] ;
  wire \memoria_reg_n_0_[7][0] ;
  wire \memoria_reg_n_0_[7][1] ;
  wire \memoria_reg_n_0_[7][2] ;
  wire \memoria_reg_n_0_[7][3] ;
  wire \memoria_reg_n_0_[7][4] ;
  wire \memoria_reg_n_0_[7][5] ;
  wire \memoria_reg_n_0_[7][6] ;
  wire \memoria_reg_n_0_[7][7] ;
  wire \memoria_reg_n_0_[80][0] ;
  wire \memoria_reg_n_0_[80][1] ;
  wire \memoria_reg_n_0_[80][2] ;
  wire \memoria_reg_n_0_[80][3] ;
  wire \memoria_reg_n_0_[80][4] ;
  wire \memoria_reg_n_0_[80][5] ;
  wire \memoria_reg_n_0_[80][6] ;
  wire \memoria_reg_n_0_[80][7] ;
  wire \memoria_reg_n_0_[81][0] ;
  wire \memoria_reg_n_0_[81][1] ;
  wire \memoria_reg_n_0_[81][2] ;
  wire \memoria_reg_n_0_[81][3] ;
  wire \memoria_reg_n_0_[81][4] ;
  wire \memoria_reg_n_0_[81][5] ;
  wire \memoria_reg_n_0_[81][6] ;
  wire \memoria_reg_n_0_[81][7] ;
  wire \memoria_reg_n_0_[82][0] ;
  wire \memoria_reg_n_0_[82][1] ;
  wire \memoria_reg_n_0_[82][2] ;
  wire \memoria_reg_n_0_[82][3] ;
  wire \memoria_reg_n_0_[82][4] ;
  wire \memoria_reg_n_0_[82][5] ;
  wire \memoria_reg_n_0_[82][6] ;
  wire \memoria_reg_n_0_[82][7] ;
  wire \memoria_reg_n_0_[83][0] ;
  wire \memoria_reg_n_0_[83][1] ;
  wire \memoria_reg_n_0_[83][2] ;
  wire \memoria_reg_n_0_[83][3] ;
  wire \memoria_reg_n_0_[83][4] ;
  wire \memoria_reg_n_0_[83][5] ;
  wire \memoria_reg_n_0_[83][6] ;
  wire \memoria_reg_n_0_[83][7] ;
  wire \memoria_reg_n_0_[84][0] ;
  wire \memoria_reg_n_0_[84][1] ;
  wire \memoria_reg_n_0_[84][2] ;
  wire \memoria_reg_n_0_[84][3] ;
  wire \memoria_reg_n_0_[84][4] ;
  wire \memoria_reg_n_0_[84][5] ;
  wire \memoria_reg_n_0_[84][6] ;
  wire \memoria_reg_n_0_[84][7] ;
  wire \memoria_reg_n_0_[85][0] ;
  wire \memoria_reg_n_0_[85][1] ;
  wire \memoria_reg_n_0_[85][2] ;
  wire \memoria_reg_n_0_[85][3] ;
  wire \memoria_reg_n_0_[85][4] ;
  wire \memoria_reg_n_0_[85][5] ;
  wire \memoria_reg_n_0_[85][6] ;
  wire \memoria_reg_n_0_[85][7] ;
  wire \memoria_reg_n_0_[86][0] ;
  wire \memoria_reg_n_0_[86][1] ;
  wire \memoria_reg_n_0_[86][2] ;
  wire \memoria_reg_n_0_[86][3] ;
  wire \memoria_reg_n_0_[86][4] ;
  wire \memoria_reg_n_0_[86][5] ;
  wire \memoria_reg_n_0_[86][6] ;
  wire \memoria_reg_n_0_[86][7] ;
  wire \memoria_reg_n_0_[87][0] ;
  wire \memoria_reg_n_0_[87][1] ;
  wire \memoria_reg_n_0_[87][2] ;
  wire \memoria_reg_n_0_[87][3] ;
  wire \memoria_reg_n_0_[87][4] ;
  wire \memoria_reg_n_0_[87][5] ;
  wire \memoria_reg_n_0_[87][6] ;
  wire \memoria_reg_n_0_[87][7] ;
  wire \memoria_reg_n_0_[88][0] ;
  wire \memoria_reg_n_0_[88][1] ;
  wire \memoria_reg_n_0_[88][2] ;
  wire \memoria_reg_n_0_[88][3] ;
  wire \memoria_reg_n_0_[88][4] ;
  wire \memoria_reg_n_0_[88][5] ;
  wire \memoria_reg_n_0_[88][6] ;
  wire \memoria_reg_n_0_[88][7] ;
  wire \memoria_reg_n_0_[89][0] ;
  wire \memoria_reg_n_0_[89][1] ;
  wire \memoria_reg_n_0_[89][2] ;
  wire \memoria_reg_n_0_[89][3] ;
  wire \memoria_reg_n_0_[89][4] ;
  wire \memoria_reg_n_0_[89][5] ;
  wire \memoria_reg_n_0_[89][6] ;
  wire \memoria_reg_n_0_[89][7] ;
  wire \memoria_reg_n_0_[8][0] ;
  wire \memoria_reg_n_0_[8][1] ;
  wire \memoria_reg_n_0_[8][2] ;
  wire \memoria_reg_n_0_[8][3] ;
  wire \memoria_reg_n_0_[8][4] ;
  wire \memoria_reg_n_0_[8][5] ;
  wire \memoria_reg_n_0_[8][6] ;
  wire \memoria_reg_n_0_[8][7] ;
  wire \memoria_reg_n_0_[90][0] ;
  wire \memoria_reg_n_0_[90][1] ;
  wire \memoria_reg_n_0_[90][2] ;
  wire \memoria_reg_n_0_[90][3] ;
  wire \memoria_reg_n_0_[90][4] ;
  wire \memoria_reg_n_0_[90][5] ;
  wire \memoria_reg_n_0_[90][6] ;
  wire \memoria_reg_n_0_[90][7] ;
  wire \memoria_reg_n_0_[91][0] ;
  wire \memoria_reg_n_0_[91][1] ;
  wire \memoria_reg_n_0_[91][2] ;
  wire \memoria_reg_n_0_[91][3] ;
  wire \memoria_reg_n_0_[91][4] ;
  wire \memoria_reg_n_0_[91][5] ;
  wire \memoria_reg_n_0_[91][6] ;
  wire \memoria_reg_n_0_[91][7] ;
  wire \memoria_reg_n_0_[92][0] ;
  wire \memoria_reg_n_0_[92][1] ;
  wire \memoria_reg_n_0_[92][2] ;
  wire \memoria_reg_n_0_[92][3] ;
  wire \memoria_reg_n_0_[92][4] ;
  wire \memoria_reg_n_0_[92][5] ;
  wire \memoria_reg_n_0_[92][6] ;
  wire \memoria_reg_n_0_[92][7] ;
  wire \memoria_reg_n_0_[93][0] ;
  wire \memoria_reg_n_0_[93][1] ;
  wire \memoria_reg_n_0_[93][2] ;
  wire \memoria_reg_n_0_[93][3] ;
  wire \memoria_reg_n_0_[93][4] ;
  wire \memoria_reg_n_0_[93][5] ;
  wire \memoria_reg_n_0_[93][6] ;
  wire \memoria_reg_n_0_[93][7] ;
  wire \memoria_reg_n_0_[94][0] ;
  wire \memoria_reg_n_0_[94][1] ;
  wire \memoria_reg_n_0_[94][2] ;
  wire \memoria_reg_n_0_[94][3] ;
  wire \memoria_reg_n_0_[94][4] ;
  wire \memoria_reg_n_0_[94][5] ;
  wire \memoria_reg_n_0_[94][6] ;
  wire \memoria_reg_n_0_[94][7] ;
  wire \memoria_reg_n_0_[95][0] ;
  wire \memoria_reg_n_0_[95][1] ;
  wire \memoria_reg_n_0_[95][2] ;
  wire \memoria_reg_n_0_[95][3] ;
  wire \memoria_reg_n_0_[95][4] ;
  wire \memoria_reg_n_0_[95][5] ;
  wire \memoria_reg_n_0_[95][6] ;
  wire \memoria_reg_n_0_[95][7] ;
  wire \memoria_reg_n_0_[96][0] ;
  wire \memoria_reg_n_0_[96][1] ;
  wire \memoria_reg_n_0_[96][2] ;
  wire \memoria_reg_n_0_[96][3] ;
  wire \memoria_reg_n_0_[96][4] ;
  wire \memoria_reg_n_0_[96][5] ;
  wire \memoria_reg_n_0_[96][6] ;
  wire \memoria_reg_n_0_[96][7] ;
  wire \memoria_reg_n_0_[97][0] ;
  wire \memoria_reg_n_0_[97][1] ;
  wire \memoria_reg_n_0_[97][2] ;
  wire \memoria_reg_n_0_[97][3] ;
  wire \memoria_reg_n_0_[97][4] ;
  wire \memoria_reg_n_0_[97][5] ;
  wire \memoria_reg_n_0_[97][6] ;
  wire \memoria_reg_n_0_[97][7] ;
  wire \memoria_reg_n_0_[98][0] ;
  wire \memoria_reg_n_0_[98][1] ;
  wire \memoria_reg_n_0_[98][2] ;
  wire \memoria_reg_n_0_[98][3] ;
  wire \memoria_reg_n_0_[98][4] ;
  wire \memoria_reg_n_0_[98][5] ;
  wire \memoria_reg_n_0_[98][6] ;
  wire \memoria_reg_n_0_[98][7] ;
  wire \memoria_reg_n_0_[99][0] ;
  wire \memoria_reg_n_0_[99][1] ;
  wire \memoria_reg_n_0_[99][2] ;
  wire \memoria_reg_n_0_[99][3] ;
  wire \memoria_reg_n_0_[99][4] ;
  wire \memoria_reg_n_0_[99][5] ;
  wire \memoria_reg_n_0_[99][6] ;
  wire \memoria_reg_n_0_[99][7] ;
  wire \memoria_reg_n_0_[9][0] ;
  wire \memoria_reg_n_0_[9][1] ;
  wire \memoria_reg_n_0_[9][2] ;
  wire \memoria_reg_n_0_[9][3] ;
  wire \memoria_reg_n_0_[9][4] ;
  wire \memoria_reg_n_0_[9][5] ;
  wire \memoria_reg_n_0_[9][6] ;
  wire \memoria_reg_n_0_[9][7] ;
  wire \reg_shift_mosi[1]_i_29_n_0 ;
  wire \reg_shift_mosi[1]_i_30_n_0 ;
  wire \reg_shift_mosi[1]_i_31_n_0 ;
  wire \reg_shift_mosi[1]_i_32_n_0 ;
  wire \reg_shift_mosi[1]_i_33_n_0 ;
  wire \reg_shift_mosi[1]_i_34_n_0 ;
  wire \reg_shift_mosi[1]_i_35_n_0 ;
  wire \reg_shift_mosi[1]_i_36_n_0 ;
  wire \reg_shift_mosi[1]_i_37_n_0 ;
  wire \reg_shift_mosi[1]_i_38_n_0 ;
  wire \reg_shift_mosi[1]_i_39_n_0 ;
  wire \reg_shift_mosi[1]_i_3_n_0 ;
  wire \reg_shift_mosi[1]_i_40_n_0 ;
  wire \reg_shift_mosi[1]_i_41_n_0 ;
  wire \reg_shift_mosi[1]_i_42_n_0 ;
  wire \reg_shift_mosi[1]_i_43_n_0 ;
  wire \reg_shift_mosi[1]_i_44_n_0 ;
  wire \reg_shift_mosi[1]_i_45_n_0 ;
  wire \reg_shift_mosi[1]_i_46_n_0 ;
  wire \reg_shift_mosi[1]_i_47_n_0 ;
  wire \reg_shift_mosi[1]_i_48_n_0 ;
  wire \reg_shift_mosi[1]_i_49_n_0 ;
  wire \reg_shift_mosi[1]_i_4_n_0 ;
  wire \reg_shift_mosi[1]_i_50_n_0 ;
  wire \reg_shift_mosi[1]_i_51_n_0 ;
  wire \reg_shift_mosi[1]_i_52_n_0 ;
  wire \reg_shift_mosi[1]_i_53_n_0 ;
  wire \reg_shift_mosi[1]_i_54_n_0 ;
  wire \reg_shift_mosi[1]_i_55_n_0 ;
  wire \reg_shift_mosi[1]_i_56_n_0 ;
  wire \reg_shift_mosi[1]_i_57_n_0 ;
  wire \reg_shift_mosi[1]_i_58_n_0 ;
  wire \reg_shift_mosi[1]_i_59_n_0 ;
  wire \reg_shift_mosi[1]_i_60_n_0 ;
  wire \reg_shift_mosi[2]_i_29_n_0 ;
  wire \reg_shift_mosi[2]_i_30_n_0 ;
  wire \reg_shift_mosi[2]_i_31_n_0 ;
  wire \reg_shift_mosi[2]_i_32_n_0 ;
  wire \reg_shift_mosi[2]_i_33_n_0 ;
  wire \reg_shift_mosi[2]_i_34_n_0 ;
  wire \reg_shift_mosi[2]_i_35_n_0 ;
  wire \reg_shift_mosi[2]_i_36_n_0 ;
  wire \reg_shift_mosi[2]_i_37_n_0 ;
  wire \reg_shift_mosi[2]_i_38_n_0 ;
  wire \reg_shift_mosi[2]_i_39_n_0 ;
  wire \reg_shift_mosi[2]_i_3_n_0 ;
  wire \reg_shift_mosi[2]_i_40_n_0 ;
  wire \reg_shift_mosi[2]_i_41_n_0 ;
  wire \reg_shift_mosi[2]_i_42_n_0 ;
  wire \reg_shift_mosi[2]_i_43_n_0 ;
  wire \reg_shift_mosi[2]_i_44_n_0 ;
  wire \reg_shift_mosi[2]_i_45_n_0 ;
  wire \reg_shift_mosi[2]_i_46_n_0 ;
  wire \reg_shift_mosi[2]_i_47_n_0 ;
  wire \reg_shift_mosi[2]_i_48_n_0 ;
  wire \reg_shift_mosi[2]_i_49_n_0 ;
  wire \reg_shift_mosi[2]_i_4_n_0 ;
  wire \reg_shift_mosi[2]_i_50_n_0 ;
  wire \reg_shift_mosi[2]_i_51_n_0 ;
  wire \reg_shift_mosi[2]_i_52_n_0 ;
  wire \reg_shift_mosi[2]_i_53_n_0 ;
  wire \reg_shift_mosi[2]_i_54_n_0 ;
  wire \reg_shift_mosi[2]_i_55_n_0 ;
  wire \reg_shift_mosi[2]_i_56_n_0 ;
  wire \reg_shift_mosi[2]_i_57_n_0 ;
  wire \reg_shift_mosi[2]_i_58_n_0 ;
  wire \reg_shift_mosi[2]_i_59_n_0 ;
  wire \reg_shift_mosi[2]_i_60_n_0 ;
  wire \reg_shift_mosi[3]_i_29_n_0 ;
  wire \reg_shift_mosi[3]_i_30_n_0 ;
  wire \reg_shift_mosi[3]_i_31_n_0 ;
  wire \reg_shift_mosi[3]_i_32_n_0 ;
  wire \reg_shift_mosi[3]_i_33_n_0 ;
  wire \reg_shift_mosi[3]_i_34_n_0 ;
  wire \reg_shift_mosi[3]_i_35_n_0 ;
  wire \reg_shift_mosi[3]_i_36_n_0 ;
  wire \reg_shift_mosi[3]_i_37_n_0 ;
  wire \reg_shift_mosi[3]_i_38_n_0 ;
  wire \reg_shift_mosi[3]_i_39_n_0 ;
  wire \reg_shift_mosi[3]_i_3_n_0 ;
  wire \reg_shift_mosi[3]_i_40_n_0 ;
  wire \reg_shift_mosi[3]_i_41_n_0 ;
  wire \reg_shift_mosi[3]_i_42_n_0 ;
  wire \reg_shift_mosi[3]_i_43_n_0 ;
  wire \reg_shift_mosi[3]_i_44_n_0 ;
  wire \reg_shift_mosi[3]_i_45_n_0 ;
  wire \reg_shift_mosi[3]_i_46_n_0 ;
  wire \reg_shift_mosi[3]_i_47_n_0 ;
  wire \reg_shift_mosi[3]_i_48_n_0 ;
  wire \reg_shift_mosi[3]_i_49_n_0 ;
  wire \reg_shift_mosi[3]_i_4_n_0 ;
  wire \reg_shift_mosi[3]_i_50_n_0 ;
  wire \reg_shift_mosi[3]_i_51_n_0 ;
  wire \reg_shift_mosi[3]_i_52_n_0 ;
  wire \reg_shift_mosi[3]_i_53_n_0 ;
  wire \reg_shift_mosi[3]_i_54_n_0 ;
  wire \reg_shift_mosi[3]_i_55_n_0 ;
  wire \reg_shift_mosi[3]_i_56_n_0 ;
  wire \reg_shift_mosi[3]_i_57_n_0 ;
  wire \reg_shift_mosi[3]_i_58_n_0 ;
  wire \reg_shift_mosi[3]_i_59_n_0 ;
  wire \reg_shift_mosi[3]_i_60_n_0 ;
  wire \reg_shift_mosi[4]_i_29_n_0 ;
  wire \reg_shift_mosi[4]_i_30_n_0 ;
  wire \reg_shift_mosi[4]_i_31_n_0 ;
  wire \reg_shift_mosi[4]_i_32_n_0 ;
  wire \reg_shift_mosi[4]_i_33_n_0 ;
  wire \reg_shift_mosi[4]_i_34_n_0 ;
  wire \reg_shift_mosi[4]_i_35_n_0 ;
  wire \reg_shift_mosi[4]_i_36_n_0 ;
  wire \reg_shift_mosi[4]_i_37_n_0 ;
  wire \reg_shift_mosi[4]_i_38_n_0 ;
  wire \reg_shift_mosi[4]_i_39_n_0 ;
  wire \reg_shift_mosi[4]_i_3_n_0 ;
  wire \reg_shift_mosi[4]_i_40_n_0 ;
  wire \reg_shift_mosi[4]_i_41_n_0 ;
  wire \reg_shift_mosi[4]_i_42_n_0 ;
  wire \reg_shift_mosi[4]_i_43_n_0 ;
  wire \reg_shift_mosi[4]_i_44_n_0 ;
  wire \reg_shift_mosi[4]_i_45_n_0 ;
  wire \reg_shift_mosi[4]_i_46_n_0 ;
  wire \reg_shift_mosi[4]_i_47_n_0 ;
  wire \reg_shift_mosi[4]_i_48_n_0 ;
  wire \reg_shift_mosi[4]_i_49_n_0 ;
  wire \reg_shift_mosi[4]_i_4_n_0 ;
  wire \reg_shift_mosi[4]_i_50_n_0 ;
  wire \reg_shift_mosi[4]_i_51_n_0 ;
  wire \reg_shift_mosi[4]_i_52_n_0 ;
  wire \reg_shift_mosi[4]_i_53_n_0 ;
  wire \reg_shift_mosi[4]_i_54_n_0 ;
  wire \reg_shift_mosi[4]_i_55_n_0 ;
  wire \reg_shift_mosi[4]_i_56_n_0 ;
  wire \reg_shift_mosi[4]_i_57_n_0 ;
  wire \reg_shift_mosi[4]_i_58_n_0 ;
  wire \reg_shift_mosi[4]_i_59_n_0 ;
  wire \reg_shift_mosi[4]_i_60_n_0 ;
  wire \reg_shift_mosi[5]_i_29_n_0 ;
  wire \reg_shift_mosi[5]_i_30_n_0 ;
  wire \reg_shift_mosi[5]_i_31_n_0 ;
  wire \reg_shift_mosi[5]_i_32_n_0 ;
  wire \reg_shift_mosi[5]_i_33_n_0 ;
  wire \reg_shift_mosi[5]_i_34_n_0 ;
  wire \reg_shift_mosi[5]_i_35_n_0 ;
  wire \reg_shift_mosi[5]_i_36_n_0 ;
  wire \reg_shift_mosi[5]_i_37_n_0 ;
  wire \reg_shift_mosi[5]_i_38_n_0 ;
  wire \reg_shift_mosi[5]_i_39_n_0 ;
  wire \reg_shift_mosi[5]_i_3_n_0 ;
  wire \reg_shift_mosi[5]_i_40_n_0 ;
  wire \reg_shift_mosi[5]_i_41_n_0 ;
  wire \reg_shift_mosi[5]_i_42_n_0 ;
  wire \reg_shift_mosi[5]_i_43_n_0 ;
  wire \reg_shift_mosi[5]_i_44_n_0 ;
  wire \reg_shift_mosi[5]_i_45_n_0 ;
  wire \reg_shift_mosi[5]_i_46_n_0 ;
  wire \reg_shift_mosi[5]_i_47_n_0 ;
  wire \reg_shift_mosi[5]_i_48_n_0 ;
  wire \reg_shift_mosi[5]_i_49_n_0 ;
  wire \reg_shift_mosi[5]_i_4_n_0 ;
  wire \reg_shift_mosi[5]_i_50_n_0 ;
  wire \reg_shift_mosi[5]_i_51_n_0 ;
  wire \reg_shift_mosi[5]_i_52_n_0 ;
  wire \reg_shift_mosi[5]_i_53_n_0 ;
  wire \reg_shift_mosi[5]_i_54_n_0 ;
  wire \reg_shift_mosi[5]_i_55_n_0 ;
  wire \reg_shift_mosi[5]_i_56_n_0 ;
  wire \reg_shift_mosi[5]_i_57_n_0 ;
  wire \reg_shift_mosi[5]_i_58_n_0 ;
  wire \reg_shift_mosi[5]_i_59_n_0 ;
  wire \reg_shift_mosi[5]_i_60_n_0 ;
  wire \reg_shift_mosi[6]_i_29_n_0 ;
  wire \reg_shift_mosi[6]_i_30_n_0 ;
  wire \reg_shift_mosi[6]_i_31_n_0 ;
  wire \reg_shift_mosi[6]_i_32_n_0 ;
  wire \reg_shift_mosi[6]_i_33_n_0 ;
  wire \reg_shift_mosi[6]_i_34_n_0 ;
  wire \reg_shift_mosi[6]_i_35_n_0 ;
  wire \reg_shift_mosi[6]_i_36_n_0 ;
  wire \reg_shift_mosi[6]_i_37_n_0 ;
  wire \reg_shift_mosi[6]_i_38_n_0 ;
  wire \reg_shift_mosi[6]_i_39_n_0 ;
  wire \reg_shift_mosi[6]_i_3_n_0 ;
  wire \reg_shift_mosi[6]_i_40_n_0 ;
  wire \reg_shift_mosi[6]_i_41_n_0 ;
  wire \reg_shift_mosi[6]_i_42_n_0 ;
  wire \reg_shift_mosi[6]_i_43_n_0 ;
  wire \reg_shift_mosi[6]_i_44_n_0 ;
  wire \reg_shift_mosi[6]_i_45_n_0 ;
  wire \reg_shift_mosi[6]_i_46_n_0 ;
  wire \reg_shift_mosi[6]_i_47_n_0 ;
  wire \reg_shift_mosi[6]_i_48_n_0 ;
  wire \reg_shift_mosi[6]_i_49_n_0 ;
  wire \reg_shift_mosi[6]_i_4_n_0 ;
  wire \reg_shift_mosi[6]_i_50_n_0 ;
  wire \reg_shift_mosi[6]_i_51_n_0 ;
  wire \reg_shift_mosi[6]_i_52_n_0 ;
  wire \reg_shift_mosi[6]_i_53_n_0 ;
  wire \reg_shift_mosi[6]_i_54_n_0 ;
  wire \reg_shift_mosi[6]_i_55_n_0 ;
  wire \reg_shift_mosi[6]_i_56_n_0 ;
  wire \reg_shift_mosi[6]_i_57_n_0 ;
  wire \reg_shift_mosi[6]_i_58_n_0 ;
  wire \reg_shift_mosi[6]_i_59_n_0 ;
  wire \reg_shift_mosi[6]_i_60_n_0 ;
  wire \reg_shift_mosi[7]_i_32_n_0 ;
  wire \reg_shift_mosi[7]_i_33_n_0 ;
  wire \reg_shift_mosi[7]_i_34_n_0 ;
  wire \reg_shift_mosi[7]_i_35_n_0 ;
  wire \reg_shift_mosi[7]_i_36_n_0 ;
  wire \reg_shift_mosi[7]_i_37_n_0 ;
  wire \reg_shift_mosi[7]_i_38_n_0 ;
  wire \reg_shift_mosi[7]_i_39_n_0 ;
  wire \reg_shift_mosi[7]_i_40_n_0 ;
  wire \reg_shift_mosi[7]_i_41_n_0 ;
  wire \reg_shift_mosi[7]_i_42_n_0 ;
  wire \reg_shift_mosi[7]_i_43_n_0 ;
  wire \reg_shift_mosi[7]_i_44_n_0 ;
  wire \reg_shift_mosi[7]_i_45_n_0 ;
  wire \reg_shift_mosi[7]_i_46_n_0 ;
  wire \reg_shift_mosi[7]_i_47_n_0 ;
  wire \reg_shift_mosi[7]_i_48_n_0 ;
  wire \reg_shift_mosi[7]_i_49_n_0 ;
  wire \reg_shift_mosi[7]_i_4_n_0 ;
  wire \reg_shift_mosi[7]_i_50_n_0 ;
  wire \reg_shift_mosi[7]_i_51_n_0 ;
  wire \reg_shift_mosi[7]_i_52_n_0 ;
  wire \reg_shift_mosi[7]_i_53_n_0 ;
  wire \reg_shift_mosi[7]_i_54_n_0 ;
  wire \reg_shift_mosi[7]_i_55_n_0 ;
  wire \reg_shift_mosi[7]_i_56_n_0 ;
  wire \reg_shift_mosi[7]_i_57_n_0 ;
  wire \reg_shift_mosi[7]_i_58_n_0 ;
  wire \reg_shift_mosi[7]_i_59_n_0 ;
  wire \reg_shift_mosi[7]_i_5_n_0 ;
  wire \reg_shift_mosi[7]_i_60_n_0 ;
  wire \reg_shift_mosi[7]_i_61_n_0 ;
  wire \reg_shift_mosi[7]_i_62_n_0 ;
  wire \reg_shift_mosi[7]_i_63_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_10_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_11_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_12_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_13_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_14_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_15_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_16_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_17_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_18_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_19_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_20_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_21_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_22_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_23_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_24_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_25_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_26_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_27_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_28_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_5_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_6_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_7_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_8_n_0 ;
  wire \reg_shift_mosi_reg[1]_i_9_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_10_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_11_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_12_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_13_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_14_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_15_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_16_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_17_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_18_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_19_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_20_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_21_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_22_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_23_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_24_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_25_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_26_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_27_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_28_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_5_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_6_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_7_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_8_n_0 ;
  wire \reg_shift_mosi_reg[2]_i_9_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_10_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_11_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_12_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_13_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_14_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_15_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_16_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_17_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_18_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_19_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_20_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_21_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_22_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_23_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_24_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_25_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_26_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_27_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_28_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_5_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_6_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_7_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_8_n_0 ;
  wire \reg_shift_mosi_reg[3]_i_9_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_10_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_11_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_12_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_13_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_14_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_15_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_16_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_17_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_18_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_19_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_20_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_21_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_22_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_23_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_24_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_25_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_26_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_27_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_28_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_5_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_6_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_7_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_8_n_0 ;
  wire \reg_shift_mosi_reg[4]_i_9_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_10_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_11_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_12_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_13_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_14_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_15_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_16_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_17_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_18_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_19_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_20_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_21_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_22_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_23_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_24_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_25_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_26_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_27_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_28_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_5_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_6_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_7_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_8_n_0 ;
  wire \reg_shift_mosi_reg[5]_i_9_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_10_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_11_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_12_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_13_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_14_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_15_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_16_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_17_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_18_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_19_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_20_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_21_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_22_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_23_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_24_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_25_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_26_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_27_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_28_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_5_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_6_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_7_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_8_n_0 ;
  wire \reg_shift_mosi_reg[6]_i_9_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_10_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_11_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_12_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_13_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_15_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_16_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_17_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_18_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_19_0 ;
  wire \reg_shift_mosi_reg[7]_i_19_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_20_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_21_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_22_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_23_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_24_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_25_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_26_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_27_0 ;
  wire \reg_shift_mosi_reg[7]_i_27_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_28_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_29_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_30_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_6_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_7_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_8_n_0 ;
  wire \reg_shift_mosi_reg[7]_i_9_n_0 ;
  wire rst_pi_IBUF;
  wire selec_out;
  wire \state[4]_i_29_n_0 ;
  wire \state[4]_i_30_n_0 ;
  wire \state[4]_i_31_n_0 ;
  wire \state[4]_i_32_n_0 ;
  wire \state[4]_i_33_n_0 ;
  wire \state[4]_i_34_n_0 ;
  wire \state[4]_i_35_n_0 ;
  wire \state[4]_i_36_n_0 ;
  wire \state[4]_i_37_n_0 ;
  wire \state[4]_i_38_n_0 ;
  wire \state[4]_i_39_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_40_n_0 ;
  wire \state[4]_i_41_n_0 ;
  wire \state[4]_i_42_n_0 ;
  wire \state[4]_i_43_n_0 ;
  wire \state[4]_i_44_n_0 ;
  wire \state[4]_i_45_n_0 ;
  wire \state[4]_i_46_n_0 ;
  wire \state[4]_i_47_n_0 ;
  wire \state[4]_i_48_n_0 ;
  wire \state[4]_i_49_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_50_n_0 ;
  wire \state[4]_i_51_n_0 ;
  wire \state[4]_i_52_n_0 ;
  wire \state[4]_i_53_n_0 ;
  wire \state[4]_i_54_n_0 ;
  wire \state[4]_i_55_n_0 ;
  wire \state[4]_i_56_n_0 ;
  wire \state[4]_i_57_n_0 ;
  wire \state[4]_i_58_n_0 ;
  wire \state[4]_i_59_n_0 ;
  wire \state[4]_i_60_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[4] ;
  wire \state_reg[4]_i_10_n_0 ;
  wire \state_reg[4]_i_11_n_0 ;
  wire \state_reg[4]_i_12_n_0 ;
  wire \state_reg[4]_i_13_n_0 ;
  wire \state_reg[4]_i_14_n_0 ;
  wire \state_reg[4]_i_15_n_0 ;
  wire \state_reg[4]_i_16_n_0 ;
  wire \state_reg[4]_i_17_n_0 ;
  wire \state_reg[4]_i_18_n_0 ;
  wire \state_reg[4]_i_19_n_0 ;
  wire \state_reg[4]_i_20_n_0 ;
  wire \state_reg[4]_i_21_n_0 ;
  wire \state_reg[4]_i_22_n_0 ;
  wire \state_reg[4]_i_23_n_0 ;
  wire \state_reg[4]_i_24_n_0 ;
  wire \state_reg[4]_i_25_n_0 ;
  wire \state_reg[4]_i_26_n_0 ;
  wire \state_reg[4]_i_27_n_0 ;
  wire \state_reg[4]_i_28_n_0 ;
  wire \state_reg[4]_i_5_n_0 ;
  wire \state_reg[4]_i_6_n_0 ;
  wire \state_reg[4]_i_7_n_0 ;
  wire \state_reg[4]_i_8_n_0 ;
  wire \state_reg[4]_i_9_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[0][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[0][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[0][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[0][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[0][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[0][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[0][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[0][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[0][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[0][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[100][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[100][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[100][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[100][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[100][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[100][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[100][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[100][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[100][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[100][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[101][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[101][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[101][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[101][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[101][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[101][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[101][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[101][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[101][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[101][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[102][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[102][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[102][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[102][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[102][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[102][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[102][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[102][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[102][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[102][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[103][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[103][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[103][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[103][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[103][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[103][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[103][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[103][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[103][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[103][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[104][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[104][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[104][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[104][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[104][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[104][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[104][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[104][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[104][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[104][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[105][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[105][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[105][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[105][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[105][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[105][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[105][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[105][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[105][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[105][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[106][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[106][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[106][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[106][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[106][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[106][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[106][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[106][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[106][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[106][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[107][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[107][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[107][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[107][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[107][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[107][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[107][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[107][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[107][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[107][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[108][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[108][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[108][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[108][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[108][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[108][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[108][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[108][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[108][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[108][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[109][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[109][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[109][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[109][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[109][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[109][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[109][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[109][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[109][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[109][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[10][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[10][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[10][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[10][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[10][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[10][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[10][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[10][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[10][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[10][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[110][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[110][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[110][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[110][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[110][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[110][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[110][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[110][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[110][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[110][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[111][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[111][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[111][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[111][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[111][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[111][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[111][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[111][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[111][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[111][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[112][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[112][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[112][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[112][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[112][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[112][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[112][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[112][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[112][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[112][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[113][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[113][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[113][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[113][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[113][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[113][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[113][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[113][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[113][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[113][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[114][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[114][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[114][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[114][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[114][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[114][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[114][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[114][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[114][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[114][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[115][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[115][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[115][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[115][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[115][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[115][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[115][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[115][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[115][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[115][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[116][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[116][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[116][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[116][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[116][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[116][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[116][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[116][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[116][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[116][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[117][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[117][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[117][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[117][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[117][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[117][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[117][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[117][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[117][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[117][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[118][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[118][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[118][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[118][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[118][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[118][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[118][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[118][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[118][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[118][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[119][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[119][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[119][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[119][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[119][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[119][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[119][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[119][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[119][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[119][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[11][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[11][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[11][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[11][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[11][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[11][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[11][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[11][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[11][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[11][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[120][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[120][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[120][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[120][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[120][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[120][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[120][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[120][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[120][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[120][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[121][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[121][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[121][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[121][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[121][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[121][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[121][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[121][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[121][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[121][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[122][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[122][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[122][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[122][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[122][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[122][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[122][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[122][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[122][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[122][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[123][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[123][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[123][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[123][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[123][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[123][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[123][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[123][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[123][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[123][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[124][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[124][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[124][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[124][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[124][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[124][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[124][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[124][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[124][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[124][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[125][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[125][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[125][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[125][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[125][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[125][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[125][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[125][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[125][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[125][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[126][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[126][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[126][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[126][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[126][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[126][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[126][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[126][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[126][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[126][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][0] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[127][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][1] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[127][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][2] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[127][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][3] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[127][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][4] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[127][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][5] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[127][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][6] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[127][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[127][7] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[127][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[12][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[12][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[12][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[12][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[12][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[12][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[12][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[12][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[12][0]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[12][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[13][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[13][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[13][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[13][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[13][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[13][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[13][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[13][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[13][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[13][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[14][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[14][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[14][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[14][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[14][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[14][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[14][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[14][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[14][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[14][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[15][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[15][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[15][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[15][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[15][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[15][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[15][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[15][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[15][7]_1 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[15][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[16][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[16][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[16][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[16][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[16][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[16][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[16][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[16][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[16][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[16][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[17][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[17][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[17][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[17][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[17][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[17][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[17][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[17][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[17][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[17][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[18][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[18][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[18][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[18][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[18][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[18][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[18][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[18][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[18][0]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[18][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[19][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[19][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[19][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[19][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[19][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[19][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[19][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[19][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[19][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[19][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[1][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[1][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[1][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[1][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[1][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[1][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[1][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[1][7]_1 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[1][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[20][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[20][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[20][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[20][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[20][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[20][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[20][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[20][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[20][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[20][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[21][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[21][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[21][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[21][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[21][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[21][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[21][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[21][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[21][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[21][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[22][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[22][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[22][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[22][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[22][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[22][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[22][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[22][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[22][0]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[22][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[23][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[23][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[23][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[23][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[23][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[23][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[23][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[23][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[23][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[23][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[24][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[24][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[24][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[24][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[24][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[24][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[24][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[24][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[24][0]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[24][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[25][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[25][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[25][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[25][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[25][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[25][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[25][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[25][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[25][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[25][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[26][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[26][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[26][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[26][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[26][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[26][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[26][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[26][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[26][0]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[26][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[27][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[27][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[27][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[27][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[27][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[27][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[27][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[27][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[27][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[27][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[28][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[28][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[28][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[28][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[28][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[28][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[28][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[28][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[28][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[28][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[29][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[29][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[29][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[29][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[29][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[29][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[29][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[29][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[29][0]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[29][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[2][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[2][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[2][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[2][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[2][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[2][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[2][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[2][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[2][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[30][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[30][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[30][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[30][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[30][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[30][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[30][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[30][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[30][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[30][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[31][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[31][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[31][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[31][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[31][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[31][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[31][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[31][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[31][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[31][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[32][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[32][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[32][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[32][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[32][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[32][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[32][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[32][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[32][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[32][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[33][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[33][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[33][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[33][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[33][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[33][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[33][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[33][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[33][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[33][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[34][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[34][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[34][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[34][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[34][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[34][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[34][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[34][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[34][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[34][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[35][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[35][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[35][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[35][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[35][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[35][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[35][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[35][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[35][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[35][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[36][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[36][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[36][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[36][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[36][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[36][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[36][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[36][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[36][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[36][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[37][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[37][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[37][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[37][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[37][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[37][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[37][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[37][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[37][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[37][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[38][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[38][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[38][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[38][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[38][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[38][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[38][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[38][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[38][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[38][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[39][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[39][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[39][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[39][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[39][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[39][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[39][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[39][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[39][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[39][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[3][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[3][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[3][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[3][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[3][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[3][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[3][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[3][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[3][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[40][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[40][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[40][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[40][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[40][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[40][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[40][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[40][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[40][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[40][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[41][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[41][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[41][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[41][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[41][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[41][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[41][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[41][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[41][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[41][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[42][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[42][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[42][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[42][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[42][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[42][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[42][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[42][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[42][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[42][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[43][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[43][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[43][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[43][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[43][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[43][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[43][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[43][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[43][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[43][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[44][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[44][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[44][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[44][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[44][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[44][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[44][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[44][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[44][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[44][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[45][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[45][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[45][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[45][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[45][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[45][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[45][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[45][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[45][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[45][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[46][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[46][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[46][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[46][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[46][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[46][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[46][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[46][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[46][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[46][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[47][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[47][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[47][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[47][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[47][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[47][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[47][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[47][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[47][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[47][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[48][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[48][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[48][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[48][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[48][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[48][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[48][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[48][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[48][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[48][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[49][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[49][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[49][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[49][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[49][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[49][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[49][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[49][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[49][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[49][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[4][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[4][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[4][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[4][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[4][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[4][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[4][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[4][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[4][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[4][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[50][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[50][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[50][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[50][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[50][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[50][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[50][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[50][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[50][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[50][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[51][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[51][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[51][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[51][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[51][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[51][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[51][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[51][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[51][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[51][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[52][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[52][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[52][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[52][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[52][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[52][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[52][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[52][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[52][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[52][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[53][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[53][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[53][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[53][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[53][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[53][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[53][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[53][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[53][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[53][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[54][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[54][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[54][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[54][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[54][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[54][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[54][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[54][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[54][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[54][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[55][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[55][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[55][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[55][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[55][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[55][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[55][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[55][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[55][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[55][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[56][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[56][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[56][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[56][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[56][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[56][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[56][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[56][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[56][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[56][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[57][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[57][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[57][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[57][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[57][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[57][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[57][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[57][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[57][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[57][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[58][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[58][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[58][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[58][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[58][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[58][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[58][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[58][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[58][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[58][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[59][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[59][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[59][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[59][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[59][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[59][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[59][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[59][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[59][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[59][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[5][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[5][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[5][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[5][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[5][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[5][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[5][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[5][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[5][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[5][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[60][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[60][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[60][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[60][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[60][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[60][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[60][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[60][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[60][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[60][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[61][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[61][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[61][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[61][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[61][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[61][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[61][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[61][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[61][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[61][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[62][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[62][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[62][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[62][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[62][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[62][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[62][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[62][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[62][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[62][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[63][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[63][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[63][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[63][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[63][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[63][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[63][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[63][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[63][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[63][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[64][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[64][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[64][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[64][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[64][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[64][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[64][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[64][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[64][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[64][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[65][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[65][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[65][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[65][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[65][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[65][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[65][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[65][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[65][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[65][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[66][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[66][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[66][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[66][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[66][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[66][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[66][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[66][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[66][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[66][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[67][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[67][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[67][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[67][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[67][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[67][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[67][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[67][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[67][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[67][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[68][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[68][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[68][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[68][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[68][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[68][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[68][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[68][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[68][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[68][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[69][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[69][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[69][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[69][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[69][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[69][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[69][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[69][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[69][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[69][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[6][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[6][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[6][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[6][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[6][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[6][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[6][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[6][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[6][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[6][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[70][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[70][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[70][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[70][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[70][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[70][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[70][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[70][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[70][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[70][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[71][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[71][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[71][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[71][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[71][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[71][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[71][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[71][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[71][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[71][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[72][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[72][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[72][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[72][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[72][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[72][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[72][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[72][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[72][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[72][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[73][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[73][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[73][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[73][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[73][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[73][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[73][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[73][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[73][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[73][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[74][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[74][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[74][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[74][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[74][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[74][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[74][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[74][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[74][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[74][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[75][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[75][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[75][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[75][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[75][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[75][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[75][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[75][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[75][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[75][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[76][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[76][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[76][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[76][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[76][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[76][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[76][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[76][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[76][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[76][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[77][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[77][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[77][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[77][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[77][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[77][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[77][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[77][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[77][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[77][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[78][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[78][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[78][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[78][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[78][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[78][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[78][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[78][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[78][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[78][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[79][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[79][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[79][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[79][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[79][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[79][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[79][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[79][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[79][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[79][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[7][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[7][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[7][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[7][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[7][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[7][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[7][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[7][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[7][0]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[7][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[80][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[80][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[80][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[80][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[80][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[80][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[80][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[80][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[80][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[80][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[81][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[81][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[81][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[81][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[81][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[81][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[81][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[81][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[81][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[81][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[82][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[82][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[82][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[82][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[82][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[82][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[82][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[82][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[82][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[82][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[83][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[83][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[83][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[83][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[83][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[83][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[83][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[83][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[83][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[83][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[84][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[84][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[84][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[84][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[84][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[84][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[84][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[84][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[84][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[84][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[85][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[85][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[85][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[85][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[85][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[85][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[85][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[85][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[85][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[85][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[86][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[86][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[86][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[86][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[86][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[86][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[86][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[86][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[86][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[86][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[87][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[87][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[87][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[87][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[87][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[87][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[87][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[87][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[87][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[87][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[88][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[88][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[88][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[88][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[88][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[88][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[88][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[88][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[88][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[88][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[89][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[89][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[89][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[89][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[89][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[89][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[89][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[89][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[89][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[89][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[8][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[8][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[8][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[8][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[8][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[8][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[8][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[8][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[8][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[8][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[90][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[90][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[90][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[90][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[90][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[90][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[90][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[90][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[90][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[90][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[91][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[91][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[91][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[91][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[91][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[91][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[91][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[91][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[91][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[91][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[92][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[92][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[92][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[92][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[92][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[92][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[92][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[92][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[92][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[92][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[93][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[93][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[93][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[93][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[93][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[93][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[93][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[93][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[93][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[93][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[94][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[94][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[94][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[94][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[94][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[94][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[94][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[94][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[94][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[94][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[95][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[95][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[95][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[95][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[95][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[95][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[95][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[95][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[95][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[95][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[96][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[96][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[96][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[96][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[96][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[96][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[96][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[96][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[96][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[96][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[97][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[97][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[97][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[97][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[97][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[97][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[97][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[97][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[97][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[97][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[98][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[98][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[98][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[98][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[98][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[98][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[98][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[98][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[98][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[98][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [0]),
        .Q(\memoria_reg_n_0_[99][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [1]),
        .Q(\memoria_reg_n_0_[99][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [2]),
        .Q(\memoria_reg_n_0_[99][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [3]),
        .Q(\memoria_reg_n_0_[99][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [4]),
        .Q(\memoria_reg_n_0_[99][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [5]),
        .Q(\memoria_reg_n_0_[99][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [6]),
        .Q(\memoria_reg_n_0_[99][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[99][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[99][7]_0 ),
        .D(\memoria_reg[1][7]_0 [7]),
        .Q(\memoria_reg_n_0_[99][7] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][0] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [0]),
        .Q(\memoria_reg_n_0_[9][0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][1] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [1]),
        .Q(\memoria_reg_n_0_[9][1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][2] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [2]),
        .Q(\memoria_reg_n_0_[9][2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][3] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [3]),
        .Q(\memoria_reg_n_0_[9][3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][4] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [4]),
        .Q(\memoria_reg_n_0_[9][4] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][5] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [5]),
        .Q(\memoria_reg_n_0_[9][5] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][6] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [6]),
        .Q(\memoria_reg_n_0_[9][6] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[9][7] 
       (.C(CLK_10MHZ),
        .CE(\memoria_reg[9][7]_0 ),
        .D(\memoria_reg[15][7]_0 [7]),
        .Q(\memoria_reg_n_0_[9][7] ),
        .R(rst_pi_IBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_29 
       (.I0(\memoria_reg_n_0_[51][1] ),
        .I1(\memoria_reg_n_0_[50][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][1] ),
        .O(\reg_shift_mosi[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_3 
       (.I0(\reg_shift_mosi_reg[1]_i_5_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_6_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[1]_i_7_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[1]_i_8_n_0 ),
        .O(\reg_shift_mosi[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_30 
       (.I0(\memoria_reg_n_0_[55][1] ),
        .I1(\memoria_reg_n_0_[54][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][1] ),
        .O(\reg_shift_mosi[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_31 
       (.I0(\memoria_reg_n_0_[59][1] ),
        .I1(\memoria_reg_n_0_[58][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][1] ),
        .O(\reg_shift_mosi[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_32 
       (.I0(\memoria_reg_n_0_[63][1] ),
        .I1(\memoria_reg_n_0_[62][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][1] ),
        .O(\reg_shift_mosi[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_33 
       (.I0(\memoria_reg_n_0_[35][1] ),
        .I1(\memoria_reg_n_0_[34][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][1] ),
        .O(\reg_shift_mosi[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_34 
       (.I0(\memoria_reg_n_0_[39][1] ),
        .I1(\memoria_reg_n_0_[38][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][1] ),
        .O(\reg_shift_mosi[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_35 
       (.I0(\memoria_reg_n_0_[43][1] ),
        .I1(\memoria_reg_n_0_[42][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][1] ),
        .O(\reg_shift_mosi[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_36 
       (.I0(\memoria_reg_n_0_[47][1] ),
        .I1(\memoria_reg_n_0_[46][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][1] ),
        .O(\reg_shift_mosi[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_37 
       (.I0(\memoria_reg_n_0_[19][1] ),
        .I1(\memoria_reg_n_0_[18][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][1] ),
        .O(\reg_shift_mosi[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_38 
       (.I0(\memoria_reg_n_0_[23][1] ),
        .I1(\memoria_reg_n_0_[22][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][1] ),
        .O(\reg_shift_mosi[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_39 
       (.I0(\memoria_reg_n_0_[27][1] ),
        .I1(\memoria_reg_n_0_[26][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][1] ),
        .O(\reg_shift_mosi[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_4 
       (.I0(\reg_shift_mosi_reg[1]_i_9_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_10_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[1]_i_11_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[1]_i_12_n_0 ),
        .O(\reg_shift_mosi[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_40 
       (.I0(\memoria_reg_n_0_[31][1] ),
        .I1(\memoria_reg_n_0_[30][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][1] ),
        .O(\reg_shift_mosi[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_41 
       (.I0(\memoria_reg_n_0_[3][1] ),
        .I1(\memoria_reg_n_0_[2][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][1] ),
        .O(\reg_shift_mosi[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_42 
       (.I0(\memoria_reg_n_0_[7][1] ),
        .I1(\memoria_reg_n_0_[6][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][1] ),
        .O(\reg_shift_mosi[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_43 
       (.I0(\memoria_reg_n_0_[11][1] ),
        .I1(\memoria_reg_n_0_[10][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][1] ),
        .O(\reg_shift_mosi[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_44 
       (.I0(\memoria_reg_n_0_[15][1] ),
        .I1(\memoria_reg_n_0_[14][1] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][1] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][1] ),
        .O(\reg_shift_mosi[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_45 
       (.I0(\memoria_reg_n_0_[115][1] ),
        .I1(\memoria_reg_n_0_[114][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][1] ),
        .O(\reg_shift_mosi[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_46 
       (.I0(\memoria_reg_n_0_[119][1] ),
        .I1(\memoria_reg_n_0_[118][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][1] ),
        .O(\reg_shift_mosi[1]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_47 
       (.I0(\memoria_reg_n_0_[123][1] ),
        .I1(\memoria_reg_n_0_[122][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][1] ),
        .O(\reg_shift_mosi[1]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_48 
       (.I0(\memoria_reg_n_0_[127][1] ),
        .I1(\memoria_reg_n_0_[126][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][1] ),
        .O(\reg_shift_mosi[1]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_49 
       (.I0(\memoria_reg_n_0_[99][1] ),
        .I1(\memoria_reg_n_0_[98][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][1] ),
        .O(\reg_shift_mosi[1]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_50 
       (.I0(\memoria_reg_n_0_[103][1] ),
        .I1(\memoria_reg_n_0_[102][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][1] ),
        .O(\reg_shift_mosi[1]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_51 
       (.I0(\memoria_reg_n_0_[107][1] ),
        .I1(\memoria_reg_n_0_[106][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][1] ),
        .O(\reg_shift_mosi[1]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_52 
       (.I0(\memoria_reg_n_0_[111][1] ),
        .I1(\memoria_reg_n_0_[110][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][1] ),
        .O(\reg_shift_mosi[1]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_53 
       (.I0(\memoria_reg_n_0_[83][1] ),
        .I1(\memoria_reg_n_0_[82][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][1] ),
        .O(\reg_shift_mosi[1]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_54 
       (.I0(\memoria_reg_n_0_[87][1] ),
        .I1(\memoria_reg_n_0_[86][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][1] ),
        .O(\reg_shift_mosi[1]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_55 
       (.I0(\memoria_reg_n_0_[91][1] ),
        .I1(\memoria_reg_n_0_[90][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][1] ),
        .O(\reg_shift_mosi[1]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_56 
       (.I0(\memoria_reg_n_0_[95][1] ),
        .I1(\memoria_reg_n_0_[94][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][1] ),
        .O(\reg_shift_mosi[1]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_57 
       (.I0(\memoria_reg_n_0_[67][1] ),
        .I1(\memoria_reg_n_0_[66][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][1] ),
        .O(\reg_shift_mosi[1]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_58 
       (.I0(\memoria_reg_n_0_[71][1] ),
        .I1(\memoria_reg_n_0_[70][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][1] ),
        .O(\reg_shift_mosi[1]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_59 
       (.I0(\memoria_reg_n_0_[75][1] ),
        .I1(\memoria_reg_n_0_[74][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][1] ),
        .O(\reg_shift_mosi[1]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[1]_i_60 
       (.I0(\memoria_reg_n_0_[79][1] ),
        .I1(\memoria_reg_n_0_[78][1] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][1] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][1] ),
        .O(\reg_shift_mosi[1]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_29 
       (.I0(\memoria_reg_n_0_[51][2] ),
        .I1(\memoria_reg_n_0_[50][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][2] ),
        .O(\reg_shift_mosi[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_3 
       (.I0(\reg_shift_mosi_reg[2]_i_5_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_6_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[2]_i_7_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[2]_i_8_n_0 ),
        .O(\reg_shift_mosi[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_30 
       (.I0(\memoria_reg_n_0_[55][2] ),
        .I1(\memoria_reg_n_0_[54][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][2] ),
        .O(\reg_shift_mosi[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_31 
       (.I0(\memoria_reg_n_0_[59][2] ),
        .I1(\memoria_reg_n_0_[58][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][2] ),
        .O(\reg_shift_mosi[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_32 
       (.I0(\memoria_reg_n_0_[63][2] ),
        .I1(\memoria_reg_n_0_[62][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][2] ),
        .O(\reg_shift_mosi[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_33 
       (.I0(\memoria_reg_n_0_[35][2] ),
        .I1(\memoria_reg_n_0_[34][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][2] ),
        .O(\reg_shift_mosi[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_34 
       (.I0(\memoria_reg_n_0_[39][2] ),
        .I1(\memoria_reg_n_0_[38][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][2] ),
        .O(\reg_shift_mosi[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_35 
       (.I0(\memoria_reg_n_0_[43][2] ),
        .I1(\memoria_reg_n_0_[42][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][2] ),
        .O(\reg_shift_mosi[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_36 
       (.I0(\memoria_reg_n_0_[47][2] ),
        .I1(\memoria_reg_n_0_[46][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][2] ),
        .O(\reg_shift_mosi[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_37 
       (.I0(\memoria_reg_n_0_[19][2] ),
        .I1(\memoria_reg_n_0_[18][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][2] ),
        .O(\reg_shift_mosi[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_38 
       (.I0(\memoria_reg_n_0_[23][2] ),
        .I1(\memoria_reg_n_0_[22][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][2] ),
        .O(\reg_shift_mosi[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_39 
       (.I0(\memoria_reg_n_0_[27][2] ),
        .I1(\memoria_reg_n_0_[26][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][2] ),
        .O(\reg_shift_mosi[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_4 
       (.I0(\reg_shift_mosi_reg[2]_i_9_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_10_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[2]_i_11_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[2]_i_12_n_0 ),
        .O(\reg_shift_mosi[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_40 
       (.I0(\memoria_reg_n_0_[31][2] ),
        .I1(\memoria_reg_n_0_[30][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][2] ),
        .O(\reg_shift_mosi[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_41 
       (.I0(\memoria_reg_n_0_[3][2] ),
        .I1(\memoria_reg_n_0_[2][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][2] ),
        .O(\reg_shift_mosi[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_42 
       (.I0(\memoria_reg_n_0_[7][2] ),
        .I1(\memoria_reg_n_0_[6][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][2] ),
        .O(\reg_shift_mosi[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_43 
       (.I0(\memoria_reg_n_0_[11][2] ),
        .I1(\memoria_reg_n_0_[10][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][2] ),
        .O(\reg_shift_mosi[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_44 
       (.I0(\memoria_reg_n_0_[15][2] ),
        .I1(\memoria_reg_n_0_[14][2] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][2] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][2] ),
        .O(\reg_shift_mosi[2]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_45 
       (.I0(\memoria_reg_n_0_[115][2] ),
        .I1(\memoria_reg_n_0_[114][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][2] ),
        .O(\reg_shift_mosi[2]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_46 
       (.I0(\memoria_reg_n_0_[119][2] ),
        .I1(\memoria_reg_n_0_[118][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][2] ),
        .O(\reg_shift_mosi[2]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_47 
       (.I0(\memoria_reg_n_0_[123][2] ),
        .I1(\memoria_reg_n_0_[122][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][2] ),
        .O(\reg_shift_mosi[2]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_48 
       (.I0(\memoria_reg_n_0_[127][2] ),
        .I1(\memoria_reg_n_0_[126][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][2] ),
        .O(\reg_shift_mosi[2]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_49 
       (.I0(\memoria_reg_n_0_[99][2] ),
        .I1(\memoria_reg_n_0_[98][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][2] ),
        .O(\reg_shift_mosi[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_50 
       (.I0(\memoria_reg_n_0_[103][2] ),
        .I1(\memoria_reg_n_0_[102][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][2] ),
        .O(\reg_shift_mosi[2]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_51 
       (.I0(\memoria_reg_n_0_[107][2] ),
        .I1(\memoria_reg_n_0_[106][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][2] ),
        .O(\reg_shift_mosi[2]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_52 
       (.I0(\memoria_reg_n_0_[111][2] ),
        .I1(\memoria_reg_n_0_[110][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][2] ),
        .O(\reg_shift_mosi[2]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_53 
       (.I0(\memoria_reg_n_0_[83][2] ),
        .I1(\memoria_reg_n_0_[82][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][2] ),
        .O(\reg_shift_mosi[2]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_54 
       (.I0(\memoria_reg_n_0_[87][2] ),
        .I1(\memoria_reg_n_0_[86][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][2] ),
        .O(\reg_shift_mosi[2]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_55 
       (.I0(\memoria_reg_n_0_[91][2] ),
        .I1(\memoria_reg_n_0_[90][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][2] ),
        .O(\reg_shift_mosi[2]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_56 
       (.I0(\memoria_reg_n_0_[95][2] ),
        .I1(\memoria_reg_n_0_[94][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][2] ),
        .O(\reg_shift_mosi[2]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_57 
       (.I0(\memoria_reg_n_0_[67][2] ),
        .I1(\memoria_reg_n_0_[66][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][2] ),
        .O(\reg_shift_mosi[2]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_58 
       (.I0(\memoria_reg_n_0_[71][2] ),
        .I1(\memoria_reg_n_0_[70][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][2] ),
        .O(\reg_shift_mosi[2]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_59 
       (.I0(\memoria_reg_n_0_[75][2] ),
        .I1(\memoria_reg_n_0_[74][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][2] ),
        .O(\reg_shift_mosi[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[2]_i_60 
       (.I0(\memoria_reg_n_0_[79][2] ),
        .I1(\memoria_reg_n_0_[78][2] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][2] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][2] ),
        .O(\reg_shift_mosi[2]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_29 
       (.I0(\memoria_reg_n_0_[51][3] ),
        .I1(\memoria_reg_n_0_[50][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][3] ),
        .O(\reg_shift_mosi[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_3 
       (.I0(\reg_shift_mosi_reg[3]_i_5_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_6_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[3]_i_7_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[3]_i_8_n_0 ),
        .O(\reg_shift_mosi[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_30 
       (.I0(\memoria_reg_n_0_[55][3] ),
        .I1(\memoria_reg_n_0_[54][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][3] ),
        .O(\reg_shift_mosi[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_31 
       (.I0(\memoria_reg_n_0_[59][3] ),
        .I1(\memoria_reg_n_0_[58][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][3] ),
        .O(\reg_shift_mosi[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_32 
       (.I0(\memoria_reg_n_0_[63][3] ),
        .I1(\memoria_reg_n_0_[62][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][3] ),
        .O(\reg_shift_mosi[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_33 
       (.I0(\memoria_reg_n_0_[35][3] ),
        .I1(\memoria_reg_n_0_[34][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][3] ),
        .O(\reg_shift_mosi[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_34 
       (.I0(\memoria_reg_n_0_[39][3] ),
        .I1(\memoria_reg_n_0_[38][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][3] ),
        .O(\reg_shift_mosi[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_35 
       (.I0(\memoria_reg_n_0_[43][3] ),
        .I1(\memoria_reg_n_0_[42][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][3] ),
        .O(\reg_shift_mosi[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_36 
       (.I0(\memoria_reg_n_0_[47][3] ),
        .I1(\memoria_reg_n_0_[46][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][3] ),
        .O(\reg_shift_mosi[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_37 
       (.I0(\memoria_reg_n_0_[19][3] ),
        .I1(\memoria_reg_n_0_[18][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][3] ),
        .O(\reg_shift_mosi[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_38 
       (.I0(\memoria_reg_n_0_[23][3] ),
        .I1(\memoria_reg_n_0_[22][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][3] ),
        .O(\reg_shift_mosi[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_39 
       (.I0(\memoria_reg_n_0_[27][3] ),
        .I1(\memoria_reg_n_0_[26][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][3] ),
        .O(\reg_shift_mosi[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_4 
       (.I0(\reg_shift_mosi_reg[3]_i_9_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_10_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[3]_i_11_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[3]_i_12_n_0 ),
        .O(\reg_shift_mosi[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_40 
       (.I0(\memoria_reg_n_0_[31][3] ),
        .I1(\memoria_reg_n_0_[30][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][3] ),
        .O(\reg_shift_mosi[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_41 
       (.I0(\memoria_reg_n_0_[3][3] ),
        .I1(\memoria_reg_n_0_[2][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][3] ),
        .O(\reg_shift_mosi[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_42 
       (.I0(\memoria_reg_n_0_[7][3] ),
        .I1(\memoria_reg_n_0_[6][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][3] ),
        .O(\reg_shift_mosi[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_43 
       (.I0(\memoria_reg_n_0_[11][3] ),
        .I1(\memoria_reg_n_0_[10][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][3] ),
        .O(\reg_shift_mosi[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_44 
       (.I0(\memoria_reg_n_0_[15][3] ),
        .I1(\memoria_reg_n_0_[14][3] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][3] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][3] ),
        .O(\reg_shift_mosi[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_45 
       (.I0(\memoria_reg_n_0_[115][3] ),
        .I1(\memoria_reg_n_0_[114][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][3] ),
        .O(\reg_shift_mosi[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_46 
       (.I0(\memoria_reg_n_0_[119][3] ),
        .I1(\memoria_reg_n_0_[118][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][3] ),
        .O(\reg_shift_mosi[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_47 
       (.I0(\memoria_reg_n_0_[123][3] ),
        .I1(\memoria_reg_n_0_[122][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][3] ),
        .O(\reg_shift_mosi[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_48 
       (.I0(\memoria_reg_n_0_[127][3] ),
        .I1(\memoria_reg_n_0_[126][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][3] ),
        .O(\reg_shift_mosi[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_49 
       (.I0(\memoria_reg_n_0_[99][3] ),
        .I1(\memoria_reg_n_0_[98][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][3] ),
        .O(\reg_shift_mosi[3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_50 
       (.I0(\memoria_reg_n_0_[103][3] ),
        .I1(\memoria_reg_n_0_[102][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][3] ),
        .O(\reg_shift_mosi[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_51 
       (.I0(\memoria_reg_n_0_[107][3] ),
        .I1(\memoria_reg_n_0_[106][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][3] ),
        .O(\reg_shift_mosi[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_52 
       (.I0(\memoria_reg_n_0_[111][3] ),
        .I1(\memoria_reg_n_0_[110][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][3] ),
        .O(\reg_shift_mosi[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_53 
       (.I0(\memoria_reg_n_0_[83][3] ),
        .I1(\memoria_reg_n_0_[82][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][3] ),
        .O(\reg_shift_mosi[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_54 
       (.I0(\memoria_reg_n_0_[87][3] ),
        .I1(\memoria_reg_n_0_[86][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][3] ),
        .O(\reg_shift_mosi[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_55 
       (.I0(\memoria_reg_n_0_[91][3] ),
        .I1(\memoria_reg_n_0_[90][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][3] ),
        .O(\reg_shift_mosi[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_56 
       (.I0(\memoria_reg_n_0_[95][3] ),
        .I1(\memoria_reg_n_0_[94][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][3] ),
        .O(\reg_shift_mosi[3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_57 
       (.I0(\memoria_reg_n_0_[67][3] ),
        .I1(\memoria_reg_n_0_[66][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][3] ),
        .O(\reg_shift_mosi[3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_58 
       (.I0(\memoria_reg_n_0_[71][3] ),
        .I1(\memoria_reg_n_0_[70][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][3] ),
        .O(\reg_shift_mosi[3]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_59 
       (.I0(\memoria_reg_n_0_[75][3] ),
        .I1(\memoria_reg_n_0_[74][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][3] ),
        .O(\reg_shift_mosi[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[3]_i_60 
       (.I0(\memoria_reg_n_0_[79][3] ),
        .I1(\memoria_reg_n_0_[78][3] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][3] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][3] ),
        .O(\reg_shift_mosi[3]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_29 
       (.I0(\memoria_reg_n_0_[51][4] ),
        .I1(\memoria_reg_n_0_[50][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][4] ),
        .O(\reg_shift_mosi[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_3 
       (.I0(\reg_shift_mosi_reg[4]_i_5_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_6_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[4]_i_7_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[4]_i_8_n_0 ),
        .O(\reg_shift_mosi[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_30 
       (.I0(\memoria_reg_n_0_[55][4] ),
        .I1(\memoria_reg_n_0_[54][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][4] ),
        .O(\reg_shift_mosi[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_31 
       (.I0(\memoria_reg_n_0_[59][4] ),
        .I1(\memoria_reg_n_0_[58][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][4] ),
        .O(\reg_shift_mosi[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_32 
       (.I0(\memoria_reg_n_0_[63][4] ),
        .I1(\memoria_reg_n_0_[62][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][4] ),
        .O(\reg_shift_mosi[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_33 
       (.I0(\memoria_reg_n_0_[35][4] ),
        .I1(\memoria_reg_n_0_[34][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][4] ),
        .O(\reg_shift_mosi[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_34 
       (.I0(\memoria_reg_n_0_[39][4] ),
        .I1(\memoria_reg_n_0_[38][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][4] ),
        .O(\reg_shift_mosi[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_35 
       (.I0(\memoria_reg_n_0_[43][4] ),
        .I1(\memoria_reg_n_0_[42][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][4] ),
        .O(\reg_shift_mosi[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_36 
       (.I0(\memoria_reg_n_0_[47][4] ),
        .I1(\memoria_reg_n_0_[46][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][4] ),
        .O(\reg_shift_mosi[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_37 
       (.I0(\memoria_reg_n_0_[19][4] ),
        .I1(\memoria_reg_n_0_[18][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][4] ),
        .O(\reg_shift_mosi[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_38 
       (.I0(\memoria_reg_n_0_[23][4] ),
        .I1(\memoria_reg_n_0_[22][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][4] ),
        .O(\reg_shift_mosi[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_39 
       (.I0(\memoria_reg_n_0_[27][4] ),
        .I1(\memoria_reg_n_0_[26][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][4] ),
        .O(\reg_shift_mosi[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_4 
       (.I0(\reg_shift_mosi_reg[4]_i_9_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_10_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[4]_i_11_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[4]_i_12_n_0 ),
        .O(\reg_shift_mosi[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_40 
       (.I0(\memoria_reg_n_0_[31][4] ),
        .I1(\memoria_reg_n_0_[30][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][4] ),
        .O(\reg_shift_mosi[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_41 
       (.I0(\memoria_reg_n_0_[3][4] ),
        .I1(\memoria_reg_n_0_[2][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][4] ),
        .O(\reg_shift_mosi[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_42 
       (.I0(\memoria_reg_n_0_[7][4] ),
        .I1(\memoria_reg_n_0_[6][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][4] ),
        .O(\reg_shift_mosi[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_43 
       (.I0(\memoria_reg_n_0_[11][4] ),
        .I1(\memoria_reg_n_0_[10][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][4] ),
        .O(\reg_shift_mosi[4]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_44 
       (.I0(\memoria_reg_n_0_[15][4] ),
        .I1(\memoria_reg_n_0_[14][4] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][4] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][4] ),
        .O(\reg_shift_mosi[4]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_45 
       (.I0(\memoria_reg_n_0_[115][4] ),
        .I1(\memoria_reg_n_0_[114][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][4] ),
        .O(\reg_shift_mosi[4]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_46 
       (.I0(\memoria_reg_n_0_[119][4] ),
        .I1(\memoria_reg_n_0_[118][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][4] ),
        .O(\reg_shift_mosi[4]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_47 
       (.I0(\memoria_reg_n_0_[123][4] ),
        .I1(\memoria_reg_n_0_[122][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][4] ),
        .O(\reg_shift_mosi[4]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_48 
       (.I0(\memoria_reg_n_0_[127][4] ),
        .I1(\memoria_reg_n_0_[126][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][4] ),
        .O(\reg_shift_mosi[4]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_49 
       (.I0(\memoria_reg_n_0_[99][4] ),
        .I1(\memoria_reg_n_0_[98][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][4] ),
        .O(\reg_shift_mosi[4]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_50 
       (.I0(\memoria_reg_n_0_[103][4] ),
        .I1(\memoria_reg_n_0_[102][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][4] ),
        .O(\reg_shift_mosi[4]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_51 
       (.I0(\memoria_reg_n_0_[107][4] ),
        .I1(\memoria_reg_n_0_[106][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][4] ),
        .O(\reg_shift_mosi[4]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_52 
       (.I0(\memoria_reg_n_0_[111][4] ),
        .I1(\memoria_reg_n_0_[110][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][4] ),
        .O(\reg_shift_mosi[4]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_53 
       (.I0(\memoria_reg_n_0_[83][4] ),
        .I1(\memoria_reg_n_0_[82][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][4] ),
        .O(\reg_shift_mosi[4]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_54 
       (.I0(\memoria_reg_n_0_[87][4] ),
        .I1(\memoria_reg_n_0_[86][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][4] ),
        .O(\reg_shift_mosi[4]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_55 
       (.I0(\memoria_reg_n_0_[91][4] ),
        .I1(\memoria_reg_n_0_[90][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][4] ),
        .O(\reg_shift_mosi[4]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_56 
       (.I0(\memoria_reg_n_0_[95][4] ),
        .I1(\memoria_reg_n_0_[94][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][4] ),
        .O(\reg_shift_mosi[4]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_57 
       (.I0(\memoria_reg_n_0_[67][4] ),
        .I1(\memoria_reg_n_0_[66][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][4] ),
        .O(\reg_shift_mosi[4]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_58 
       (.I0(\memoria_reg_n_0_[71][4] ),
        .I1(\memoria_reg_n_0_[70][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][4] ),
        .O(\reg_shift_mosi[4]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_59 
       (.I0(\memoria_reg_n_0_[75][4] ),
        .I1(\memoria_reg_n_0_[74][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][4] ),
        .O(\reg_shift_mosi[4]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[4]_i_60 
       (.I0(\memoria_reg_n_0_[79][4] ),
        .I1(\memoria_reg_n_0_[78][4] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][4] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][4] ),
        .O(\reg_shift_mosi[4]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_29 
       (.I0(\memoria_reg_n_0_[51][5] ),
        .I1(\memoria_reg_n_0_[50][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][5] ),
        .O(\reg_shift_mosi[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_3 
       (.I0(\reg_shift_mosi_reg[5]_i_5_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_6_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[5]_i_7_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[5]_i_8_n_0 ),
        .O(\reg_shift_mosi[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_30 
       (.I0(\memoria_reg_n_0_[55][5] ),
        .I1(\memoria_reg_n_0_[54][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][5] ),
        .O(\reg_shift_mosi[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_31 
       (.I0(\memoria_reg_n_0_[59][5] ),
        .I1(\memoria_reg_n_0_[58][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][5] ),
        .O(\reg_shift_mosi[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_32 
       (.I0(\memoria_reg_n_0_[63][5] ),
        .I1(\memoria_reg_n_0_[62][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][5] ),
        .O(\reg_shift_mosi[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_33 
       (.I0(\memoria_reg_n_0_[35][5] ),
        .I1(\memoria_reg_n_0_[34][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][5] ),
        .O(\reg_shift_mosi[5]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_34 
       (.I0(\memoria_reg_n_0_[39][5] ),
        .I1(\memoria_reg_n_0_[38][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][5] ),
        .O(\reg_shift_mosi[5]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_35 
       (.I0(\memoria_reg_n_0_[43][5] ),
        .I1(\memoria_reg_n_0_[42][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][5] ),
        .O(\reg_shift_mosi[5]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_36 
       (.I0(\memoria_reg_n_0_[47][5] ),
        .I1(\memoria_reg_n_0_[46][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][5] ),
        .O(\reg_shift_mosi[5]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_37 
       (.I0(\memoria_reg_n_0_[19][5] ),
        .I1(\memoria_reg_n_0_[18][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][5] ),
        .O(\reg_shift_mosi[5]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_38 
       (.I0(\memoria_reg_n_0_[23][5] ),
        .I1(\memoria_reg_n_0_[22][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][5] ),
        .O(\reg_shift_mosi[5]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_39 
       (.I0(\memoria_reg_n_0_[27][5] ),
        .I1(\memoria_reg_n_0_[26][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][5] ),
        .O(\reg_shift_mosi[5]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_4 
       (.I0(\reg_shift_mosi_reg[5]_i_9_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_10_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[5]_i_11_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[5]_i_12_n_0 ),
        .O(\reg_shift_mosi[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_40 
       (.I0(\memoria_reg_n_0_[31][5] ),
        .I1(\memoria_reg_n_0_[30][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][5] ),
        .O(\reg_shift_mosi[5]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_41 
       (.I0(\memoria_reg_n_0_[3][5] ),
        .I1(\memoria_reg_n_0_[2][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][5] ),
        .O(\reg_shift_mosi[5]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_42 
       (.I0(\memoria_reg_n_0_[7][5] ),
        .I1(\memoria_reg_n_0_[6][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][5] ),
        .O(\reg_shift_mosi[5]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_43 
       (.I0(\memoria_reg_n_0_[11][5] ),
        .I1(\memoria_reg_n_0_[10][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][5] ),
        .O(\reg_shift_mosi[5]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_44 
       (.I0(\memoria_reg_n_0_[15][5] ),
        .I1(\memoria_reg_n_0_[14][5] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][5] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][5] ),
        .O(\reg_shift_mosi[5]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_45 
       (.I0(\memoria_reg_n_0_[115][5] ),
        .I1(\memoria_reg_n_0_[114][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][5] ),
        .O(\reg_shift_mosi[5]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_46 
       (.I0(\memoria_reg_n_0_[119][5] ),
        .I1(\memoria_reg_n_0_[118][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][5] ),
        .O(\reg_shift_mosi[5]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_47 
       (.I0(\memoria_reg_n_0_[123][5] ),
        .I1(\memoria_reg_n_0_[122][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][5] ),
        .O(\reg_shift_mosi[5]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_48 
       (.I0(\memoria_reg_n_0_[127][5] ),
        .I1(\memoria_reg_n_0_[126][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][5] ),
        .O(\reg_shift_mosi[5]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_49 
       (.I0(\memoria_reg_n_0_[99][5] ),
        .I1(\memoria_reg_n_0_[98][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][5] ),
        .O(\reg_shift_mosi[5]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_50 
       (.I0(\memoria_reg_n_0_[103][5] ),
        .I1(\memoria_reg_n_0_[102][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][5] ),
        .O(\reg_shift_mosi[5]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_51 
       (.I0(\memoria_reg_n_0_[107][5] ),
        .I1(\memoria_reg_n_0_[106][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][5] ),
        .O(\reg_shift_mosi[5]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_52 
       (.I0(\memoria_reg_n_0_[111][5] ),
        .I1(\memoria_reg_n_0_[110][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][5] ),
        .O(\reg_shift_mosi[5]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_53 
       (.I0(\memoria_reg_n_0_[83][5] ),
        .I1(\memoria_reg_n_0_[82][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][5] ),
        .O(\reg_shift_mosi[5]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_54 
       (.I0(\memoria_reg_n_0_[87][5] ),
        .I1(\memoria_reg_n_0_[86][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][5] ),
        .O(\reg_shift_mosi[5]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_55 
       (.I0(\memoria_reg_n_0_[91][5] ),
        .I1(\memoria_reg_n_0_[90][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][5] ),
        .O(\reg_shift_mosi[5]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_56 
       (.I0(\memoria_reg_n_0_[95][5] ),
        .I1(\memoria_reg_n_0_[94][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][5] ),
        .O(\reg_shift_mosi[5]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_57 
       (.I0(\memoria_reg_n_0_[67][5] ),
        .I1(\memoria_reg_n_0_[66][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][5] ),
        .O(\reg_shift_mosi[5]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_58 
       (.I0(\memoria_reg_n_0_[71][5] ),
        .I1(\memoria_reg_n_0_[70][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][5] ),
        .O(\reg_shift_mosi[5]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_59 
       (.I0(\memoria_reg_n_0_[75][5] ),
        .I1(\memoria_reg_n_0_[74][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][5] ),
        .O(\reg_shift_mosi[5]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[5]_i_60 
       (.I0(\memoria_reg_n_0_[79][5] ),
        .I1(\memoria_reg_n_0_[78][5] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][5] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][5] ),
        .O(\reg_shift_mosi[5]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_29 
       (.I0(\memoria_reg_n_0_[51][6] ),
        .I1(\memoria_reg_n_0_[50][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][6] ),
        .O(\reg_shift_mosi[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_3 
       (.I0(\reg_shift_mosi_reg[6]_i_5_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_6_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[6]_i_7_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[6]_i_8_n_0 ),
        .O(\reg_shift_mosi[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_30 
       (.I0(\memoria_reg_n_0_[55][6] ),
        .I1(\memoria_reg_n_0_[54][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][6] ),
        .O(\reg_shift_mosi[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_31 
       (.I0(\memoria_reg_n_0_[59][6] ),
        .I1(\memoria_reg_n_0_[58][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][6] ),
        .O(\reg_shift_mosi[6]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_32 
       (.I0(\memoria_reg_n_0_[63][6] ),
        .I1(\memoria_reg_n_0_[62][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][6] ),
        .O(\reg_shift_mosi[6]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_33 
       (.I0(\memoria_reg_n_0_[35][6] ),
        .I1(\memoria_reg_n_0_[34][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][6] ),
        .O(\reg_shift_mosi[6]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_34 
       (.I0(\memoria_reg_n_0_[39][6] ),
        .I1(\memoria_reg_n_0_[38][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][6] ),
        .O(\reg_shift_mosi[6]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_35 
       (.I0(\memoria_reg_n_0_[43][6] ),
        .I1(\memoria_reg_n_0_[42][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][6] ),
        .O(\reg_shift_mosi[6]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_36 
       (.I0(\memoria_reg_n_0_[47][6] ),
        .I1(\memoria_reg_n_0_[46][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][6] ),
        .O(\reg_shift_mosi[6]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_37 
       (.I0(\memoria_reg_n_0_[19][6] ),
        .I1(\memoria_reg_n_0_[18][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][6] ),
        .O(\reg_shift_mosi[6]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_38 
       (.I0(\memoria_reg_n_0_[23][6] ),
        .I1(\memoria_reg_n_0_[22][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][6] ),
        .O(\reg_shift_mosi[6]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_39 
       (.I0(\memoria_reg_n_0_[27][6] ),
        .I1(\memoria_reg_n_0_[26][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][6] ),
        .O(\reg_shift_mosi[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_4 
       (.I0(\reg_shift_mosi_reg[6]_i_9_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_10_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[6]_i_11_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[6]_i_12_n_0 ),
        .O(\reg_shift_mosi[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_40 
       (.I0(\memoria_reg_n_0_[31][6] ),
        .I1(\memoria_reg_n_0_[30][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][6] ),
        .O(\reg_shift_mosi[6]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_41 
       (.I0(\memoria_reg_n_0_[3][6] ),
        .I1(\memoria_reg_n_0_[2][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][6] ),
        .O(\reg_shift_mosi[6]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_42 
       (.I0(\memoria_reg_n_0_[7][6] ),
        .I1(\memoria_reg_n_0_[6][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][6] ),
        .O(\reg_shift_mosi[6]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_43 
       (.I0(\memoria_reg_n_0_[11][6] ),
        .I1(\memoria_reg_n_0_[10][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][6] ),
        .O(\reg_shift_mosi[6]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_44 
       (.I0(\memoria_reg_n_0_[15][6] ),
        .I1(\memoria_reg_n_0_[14][6] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][6] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][6] ),
        .O(\reg_shift_mosi[6]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_45 
       (.I0(\memoria_reg_n_0_[115][6] ),
        .I1(\memoria_reg_n_0_[114][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][6] ),
        .O(\reg_shift_mosi[6]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_46 
       (.I0(\memoria_reg_n_0_[119][6] ),
        .I1(\memoria_reg_n_0_[118][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][6] ),
        .O(\reg_shift_mosi[6]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_47 
       (.I0(\memoria_reg_n_0_[123][6] ),
        .I1(\memoria_reg_n_0_[122][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][6] ),
        .O(\reg_shift_mosi[6]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_48 
       (.I0(\memoria_reg_n_0_[127][6] ),
        .I1(\memoria_reg_n_0_[126][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][6] ),
        .O(\reg_shift_mosi[6]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_49 
       (.I0(\memoria_reg_n_0_[99][6] ),
        .I1(\memoria_reg_n_0_[98][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][6] ),
        .O(\reg_shift_mosi[6]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_50 
       (.I0(\memoria_reg_n_0_[103][6] ),
        .I1(\memoria_reg_n_0_[102][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][6] ),
        .O(\reg_shift_mosi[6]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_51 
       (.I0(\memoria_reg_n_0_[107][6] ),
        .I1(\memoria_reg_n_0_[106][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][6] ),
        .O(\reg_shift_mosi[6]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_52 
       (.I0(\memoria_reg_n_0_[111][6] ),
        .I1(\memoria_reg_n_0_[110][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][6] ),
        .O(\reg_shift_mosi[6]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_53 
       (.I0(\memoria_reg_n_0_[83][6] ),
        .I1(\memoria_reg_n_0_[82][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][6] ),
        .O(\reg_shift_mosi[6]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_54 
       (.I0(\memoria_reg_n_0_[87][6] ),
        .I1(\memoria_reg_n_0_[86][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][6] ),
        .O(\reg_shift_mosi[6]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_55 
       (.I0(\memoria_reg_n_0_[91][6] ),
        .I1(\memoria_reg_n_0_[90][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][6] ),
        .O(\reg_shift_mosi[6]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_56 
       (.I0(\memoria_reg_n_0_[95][6] ),
        .I1(\memoria_reg_n_0_[94][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][6] ),
        .O(\reg_shift_mosi[6]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_57 
       (.I0(\memoria_reg_n_0_[67][6] ),
        .I1(\memoria_reg_n_0_[66][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][6] ),
        .O(\reg_shift_mosi[6]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_58 
       (.I0(\memoria_reg_n_0_[71][6] ),
        .I1(\memoria_reg_n_0_[70][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][6] ),
        .O(\reg_shift_mosi[6]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_59 
       (.I0(\memoria_reg_n_0_[75][6] ),
        .I1(\memoria_reg_n_0_[74][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][6] ),
        .O(\reg_shift_mosi[6]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[6]_i_60 
       (.I0(\memoria_reg_n_0_[79][6] ),
        .I1(\memoria_reg_n_0_[78][6] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][6] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][6] ),
        .O(\reg_shift_mosi[6]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_32 
       (.I0(\memoria_reg_n_0_[51][7] ),
        .I1(\memoria_reg_n_0_[50][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][7] ),
        .O(\reg_shift_mosi[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_33 
       (.I0(\memoria_reg_n_0_[55][7] ),
        .I1(\memoria_reg_n_0_[54][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][7] ),
        .O(\reg_shift_mosi[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_34 
       (.I0(\memoria_reg_n_0_[59][7] ),
        .I1(\memoria_reg_n_0_[58][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][7] ),
        .O(\reg_shift_mosi[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_35 
       (.I0(\memoria_reg_n_0_[63][7] ),
        .I1(\memoria_reg_n_0_[62][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][7] ),
        .O(\reg_shift_mosi[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_36 
       (.I0(\memoria_reg_n_0_[35][7] ),
        .I1(\memoria_reg_n_0_[34][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][7] ),
        .O(\reg_shift_mosi[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_37 
       (.I0(\memoria_reg_n_0_[39][7] ),
        .I1(\memoria_reg_n_0_[38][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][7] ),
        .O(\reg_shift_mosi[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_38 
       (.I0(\memoria_reg_n_0_[43][7] ),
        .I1(\memoria_reg_n_0_[42][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][7] ),
        .O(\reg_shift_mosi[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_39 
       (.I0(\memoria_reg_n_0_[47][7] ),
        .I1(\memoria_reg_n_0_[46][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][7] ),
        .O(\reg_shift_mosi[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_4 
       (.I0(\reg_shift_mosi_reg[7]_i_6_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_7_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[7]_i_8_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[7]_i_9_n_0 ),
        .O(\reg_shift_mosi[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_40 
       (.I0(\memoria_reg_n_0_[19][7] ),
        .I1(\memoria_reg_n_0_[18][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][7] ),
        .O(\reg_shift_mosi[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_41 
       (.I0(\memoria_reg_n_0_[23][7] ),
        .I1(\memoria_reg_n_0_[22][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][7] ),
        .O(\reg_shift_mosi[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_42 
       (.I0(\memoria_reg_n_0_[27][7] ),
        .I1(\memoria_reg_n_0_[26][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][7] ),
        .O(\reg_shift_mosi[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_43 
       (.I0(\memoria_reg_n_0_[31][7] ),
        .I1(\memoria_reg_n_0_[30][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][7] ),
        .O(\reg_shift_mosi[7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_44 
       (.I0(\memoria_reg_n_0_[3][7] ),
        .I1(\memoria_reg_n_0_[2][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][7] ),
        .O(\reg_shift_mosi[7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_45 
       (.I0(\memoria_reg_n_0_[7][7] ),
        .I1(\memoria_reg_n_0_[6][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][7] ),
        .O(\reg_shift_mosi[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_46 
       (.I0(\memoria_reg_n_0_[11][7] ),
        .I1(\memoria_reg_n_0_[10][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][7] ),
        .O(\reg_shift_mosi[7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_47 
       (.I0(\memoria_reg_n_0_[15][7] ),
        .I1(\memoria_reg_n_0_[14][7] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][7] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][7] ),
        .O(\reg_shift_mosi[7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_48 
       (.I0(\memoria_reg_n_0_[115][7] ),
        .I1(\memoria_reg_n_0_[114][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][7] ),
        .O(\reg_shift_mosi[7]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_49 
       (.I0(\memoria_reg_n_0_[119][7] ),
        .I1(\memoria_reg_n_0_[118][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][7] ),
        .O(\reg_shift_mosi[7]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_5 
       (.I0(\reg_shift_mosi_reg[7]_i_10_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_11_n_0 ),
        .I2(addr_ram[5]),
        .I3(\reg_shift_mosi_reg[7]_i_12_n_0 ),
        .I4(addr_ram[4]),
        .I5(\reg_shift_mosi_reg[7]_i_13_n_0 ),
        .O(\reg_shift_mosi[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_50 
       (.I0(\memoria_reg_n_0_[123][7] ),
        .I1(\memoria_reg_n_0_[122][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][7] ),
        .O(\reg_shift_mosi[7]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_51 
       (.I0(\memoria_reg_n_0_[127][7] ),
        .I1(\memoria_reg_n_0_[126][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][7] ),
        .O(\reg_shift_mosi[7]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_52 
       (.I0(\memoria_reg_n_0_[99][7] ),
        .I1(\memoria_reg_n_0_[98][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][7] ),
        .O(\reg_shift_mosi[7]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_53 
       (.I0(\memoria_reg_n_0_[103][7] ),
        .I1(\memoria_reg_n_0_[102][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][7] ),
        .O(\reg_shift_mosi[7]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_54 
       (.I0(\memoria_reg_n_0_[107][7] ),
        .I1(\memoria_reg_n_0_[106][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][7] ),
        .O(\reg_shift_mosi[7]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_55 
       (.I0(\memoria_reg_n_0_[111][7] ),
        .I1(\memoria_reg_n_0_[110][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][7] ),
        .O(\reg_shift_mosi[7]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_56 
       (.I0(\memoria_reg_n_0_[83][7] ),
        .I1(\memoria_reg_n_0_[82][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][7] ),
        .O(\reg_shift_mosi[7]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_57 
       (.I0(\memoria_reg_n_0_[87][7] ),
        .I1(\memoria_reg_n_0_[86][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][7] ),
        .O(\reg_shift_mosi[7]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_58 
       (.I0(\memoria_reg_n_0_[91][7] ),
        .I1(\memoria_reg_n_0_[90][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][7] ),
        .O(\reg_shift_mosi[7]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_59 
       (.I0(\memoria_reg_n_0_[95][7] ),
        .I1(\memoria_reg_n_0_[94][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][7] ),
        .O(\reg_shift_mosi[7]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_60 
       (.I0(\memoria_reg_n_0_[67][7] ),
        .I1(\memoria_reg_n_0_[66][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][7] ),
        .O(\reg_shift_mosi[7]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_61 
       (.I0(\memoria_reg_n_0_[71][7] ),
        .I1(\memoria_reg_n_0_[70][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][7] ),
        .O(\reg_shift_mosi[7]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_62 
       (.I0(\memoria_reg_n_0_[75][7] ),
        .I1(\memoria_reg_n_0_[74][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][7] ),
        .O(\reg_shift_mosi[7]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_shift_mosi[7]_i_63 
       (.I0(\memoria_reg_n_0_[79][7] ),
        .I1(\memoria_reg_n_0_[78][7] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][7] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][7] ),
        .O(\reg_shift_mosi[7]_i_63_n_0 ));
  MUXF8 \reg_shift_mosi_reg[1]_i_10 
       (.I0(\reg_shift_mosi_reg[1]_i_23_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_24_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[1]_i_11 
       (.I0(\reg_shift_mosi_reg[1]_i_25_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_26_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[1]_i_12 
       (.I0(\reg_shift_mosi_reg[1]_i_27_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_28_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \reg_shift_mosi_reg[1]_i_13 
       (.I0(\reg_shift_mosi[1]_i_29_n_0 ),
        .I1(\reg_shift_mosi[1]_i_30_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_13_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_14 
       (.I0(\reg_shift_mosi[1]_i_31_n_0 ),
        .I1(\reg_shift_mosi[1]_i_32_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_14_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_15 
       (.I0(\reg_shift_mosi[1]_i_33_n_0 ),
        .I1(\reg_shift_mosi[1]_i_34_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_16 
       (.I0(\reg_shift_mosi[1]_i_35_n_0 ),
        .I1(\reg_shift_mosi[1]_i_36_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_17 
       (.I0(\reg_shift_mosi[1]_i_37_n_0 ),
        .I1(\reg_shift_mosi[1]_i_38_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_18 
       (.I0(\reg_shift_mosi[1]_i_39_n_0 ),
        .I1(\reg_shift_mosi[1]_i_40_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_19 
       (.I0(\reg_shift_mosi[1]_i_41_n_0 ),
        .I1(\reg_shift_mosi[1]_i_42_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_2 
       (.I0(\reg_shift_mosi[1]_i_3_n_0 ),
        .I1(\reg_shift_mosi[1]_i_4_n_0 ),
        .O(hold_ctrl_reg_5),
        .S(addr_ram[6]));
  MUXF7 \reg_shift_mosi_reg[1]_i_20 
       (.I0(\reg_shift_mosi[1]_i_43_n_0 ),
        .I1(\reg_shift_mosi[1]_i_44_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_21 
       (.I0(\reg_shift_mosi[1]_i_45_n_0 ),
        .I1(\reg_shift_mosi[1]_i_46_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_22 
       (.I0(\reg_shift_mosi[1]_i_47_n_0 ),
        .I1(\reg_shift_mosi[1]_i_48_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_23 
       (.I0(\reg_shift_mosi[1]_i_49_n_0 ),
        .I1(\reg_shift_mosi[1]_i_50_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_24 
       (.I0(\reg_shift_mosi[1]_i_51_n_0 ),
        .I1(\reg_shift_mosi[1]_i_52_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_25 
       (.I0(\reg_shift_mosi[1]_i_53_n_0 ),
        .I1(\reg_shift_mosi[1]_i_54_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_26 
       (.I0(\reg_shift_mosi[1]_i_55_n_0 ),
        .I1(\reg_shift_mosi[1]_i_56_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_27 
       (.I0(\reg_shift_mosi[1]_i_57_n_0 ),
        .I1(\reg_shift_mosi[1]_i_58_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[1]_i_28 
       (.I0(\reg_shift_mosi[1]_i_59_n_0 ),
        .I1(\reg_shift_mosi[1]_i_60_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \reg_shift_mosi_reg[1]_i_5 
       (.I0(\reg_shift_mosi_reg[1]_i_13_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_14_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_5_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[1]_i_6 
       (.I0(\reg_shift_mosi_reg[1]_i_15_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_16_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[1]_i_7 
       (.I0(\reg_shift_mosi_reg[1]_i_17_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_18_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[1]_i_8 
       (.I0(\reg_shift_mosi_reg[1]_i_19_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_20_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[1]_i_9 
       (.I0(\reg_shift_mosi_reg[1]_i_21_n_0 ),
        .I1(\reg_shift_mosi_reg[1]_i_22_n_0 ),
        .O(\reg_shift_mosi_reg[1]_i_9_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[2]_i_10 
       (.I0(\reg_shift_mosi_reg[2]_i_23_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_24_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[2]_i_11 
       (.I0(\reg_shift_mosi_reg[2]_i_25_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_26_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[2]_i_12 
       (.I0(\reg_shift_mosi_reg[2]_i_27_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_28_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \reg_shift_mosi_reg[2]_i_13 
       (.I0(\reg_shift_mosi[2]_i_29_n_0 ),
        .I1(\reg_shift_mosi[2]_i_30_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_13_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_14 
       (.I0(\reg_shift_mosi[2]_i_31_n_0 ),
        .I1(\reg_shift_mosi[2]_i_32_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_14_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_15 
       (.I0(\reg_shift_mosi[2]_i_33_n_0 ),
        .I1(\reg_shift_mosi[2]_i_34_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_16 
       (.I0(\reg_shift_mosi[2]_i_35_n_0 ),
        .I1(\reg_shift_mosi[2]_i_36_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_17 
       (.I0(\reg_shift_mosi[2]_i_37_n_0 ),
        .I1(\reg_shift_mosi[2]_i_38_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_18 
       (.I0(\reg_shift_mosi[2]_i_39_n_0 ),
        .I1(\reg_shift_mosi[2]_i_40_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_19 
       (.I0(\reg_shift_mosi[2]_i_41_n_0 ),
        .I1(\reg_shift_mosi[2]_i_42_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_2 
       (.I0(\reg_shift_mosi[2]_i_3_n_0 ),
        .I1(\reg_shift_mosi[2]_i_4_n_0 ),
        .O(hold_ctrl_reg_4),
        .S(addr_ram[6]));
  MUXF7 \reg_shift_mosi_reg[2]_i_20 
       (.I0(\reg_shift_mosi[2]_i_43_n_0 ),
        .I1(\reg_shift_mosi[2]_i_44_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_21 
       (.I0(\reg_shift_mosi[2]_i_45_n_0 ),
        .I1(\reg_shift_mosi[2]_i_46_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_22 
       (.I0(\reg_shift_mosi[2]_i_47_n_0 ),
        .I1(\reg_shift_mosi[2]_i_48_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_23 
       (.I0(\reg_shift_mosi[2]_i_49_n_0 ),
        .I1(\reg_shift_mosi[2]_i_50_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_24 
       (.I0(\reg_shift_mosi[2]_i_51_n_0 ),
        .I1(\reg_shift_mosi[2]_i_52_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_25 
       (.I0(\reg_shift_mosi[2]_i_53_n_0 ),
        .I1(\reg_shift_mosi[2]_i_54_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_26 
       (.I0(\reg_shift_mosi[2]_i_55_n_0 ),
        .I1(\reg_shift_mosi[2]_i_56_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_27 
       (.I0(\reg_shift_mosi[2]_i_57_n_0 ),
        .I1(\reg_shift_mosi[2]_i_58_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[2]_i_28 
       (.I0(\reg_shift_mosi[2]_i_59_n_0 ),
        .I1(\reg_shift_mosi[2]_i_60_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \reg_shift_mosi_reg[2]_i_5 
       (.I0(\reg_shift_mosi_reg[2]_i_13_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_14_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_5_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[2]_i_6 
       (.I0(\reg_shift_mosi_reg[2]_i_15_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_16_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[2]_i_7 
       (.I0(\reg_shift_mosi_reg[2]_i_17_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_18_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[2]_i_8 
       (.I0(\reg_shift_mosi_reg[2]_i_19_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_20_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[2]_i_9 
       (.I0(\reg_shift_mosi_reg[2]_i_21_n_0 ),
        .I1(\reg_shift_mosi_reg[2]_i_22_n_0 ),
        .O(\reg_shift_mosi_reg[2]_i_9_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[3]_i_10 
       (.I0(\reg_shift_mosi_reg[3]_i_23_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_24_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[3]_i_11 
       (.I0(\reg_shift_mosi_reg[3]_i_25_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_26_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[3]_i_12 
       (.I0(\reg_shift_mosi_reg[3]_i_27_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_28_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \reg_shift_mosi_reg[3]_i_13 
       (.I0(\reg_shift_mosi[3]_i_29_n_0 ),
        .I1(\reg_shift_mosi[3]_i_30_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_13_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_14 
       (.I0(\reg_shift_mosi[3]_i_31_n_0 ),
        .I1(\reg_shift_mosi[3]_i_32_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_14_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_15 
       (.I0(\reg_shift_mosi[3]_i_33_n_0 ),
        .I1(\reg_shift_mosi[3]_i_34_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_16 
       (.I0(\reg_shift_mosi[3]_i_35_n_0 ),
        .I1(\reg_shift_mosi[3]_i_36_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_17 
       (.I0(\reg_shift_mosi[3]_i_37_n_0 ),
        .I1(\reg_shift_mosi[3]_i_38_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_18 
       (.I0(\reg_shift_mosi[3]_i_39_n_0 ),
        .I1(\reg_shift_mosi[3]_i_40_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_19 
       (.I0(\reg_shift_mosi[3]_i_41_n_0 ),
        .I1(\reg_shift_mosi[3]_i_42_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_2 
       (.I0(\reg_shift_mosi[3]_i_3_n_0 ),
        .I1(\reg_shift_mosi[3]_i_4_n_0 ),
        .O(hold_ctrl_reg_3),
        .S(addr_ram[6]));
  MUXF7 \reg_shift_mosi_reg[3]_i_20 
       (.I0(\reg_shift_mosi[3]_i_43_n_0 ),
        .I1(\reg_shift_mosi[3]_i_44_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_21 
       (.I0(\reg_shift_mosi[3]_i_45_n_0 ),
        .I1(\reg_shift_mosi[3]_i_46_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_22 
       (.I0(\reg_shift_mosi[3]_i_47_n_0 ),
        .I1(\reg_shift_mosi[3]_i_48_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_23 
       (.I0(\reg_shift_mosi[3]_i_49_n_0 ),
        .I1(\reg_shift_mosi[3]_i_50_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_24 
       (.I0(\reg_shift_mosi[3]_i_51_n_0 ),
        .I1(\reg_shift_mosi[3]_i_52_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_25 
       (.I0(\reg_shift_mosi[3]_i_53_n_0 ),
        .I1(\reg_shift_mosi[3]_i_54_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_26 
       (.I0(\reg_shift_mosi[3]_i_55_n_0 ),
        .I1(\reg_shift_mosi[3]_i_56_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_27 
       (.I0(\reg_shift_mosi[3]_i_57_n_0 ),
        .I1(\reg_shift_mosi[3]_i_58_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[3]_i_28 
       (.I0(\reg_shift_mosi[3]_i_59_n_0 ),
        .I1(\reg_shift_mosi[3]_i_60_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \reg_shift_mosi_reg[3]_i_5 
       (.I0(\reg_shift_mosi_reg[3]_i_13_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_14_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_5_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[3]_i_6 
       (.I0(\reg_shift_mosi_reg[3]_i_15_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_16_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[3]_i_7 
       (.I0(\reg_shift_mosi_reg[3]_i_17_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_18_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[3]_i_8 
       (.I0(\reg_shift_mosi_reg[3]_i_19_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_20_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[3]_i_9 
       (.I0(\reg_shift_mosi_reg[3]_i_21_n_0 ),
        .I1(\reg_shift_mosi_reg[3]_i_22_n_0 ),
        .O(\reg_shift_mosi_reg[3]_i_9_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[4]_i_10 
       (.I0(\reg_shift_mosi_reg[4]_i_23_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_24_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[4]_i_11 
       (.I0(\reg_shift_mosi_reg[4]_i_25_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_26_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[4]_i_12 
       (.I0(\reg_shift_mosi_reg[4]_i_27_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_28_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \reg_shift_mosi_reg[4]_i_13 
       (.I0(\reg_shift_mosi[4]_i_29_n_0 ),
        .I1(\reg_shift_mosi[4]_i_30_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_13_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_14 
       (.I0(\reg_shift_mosi[4]_i_31_n_0 ),
        .I1(\reg_shift_mosi[4]_i_32_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_14_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_15 
       (.I0(\reg_shift_mosi[4]_i_33_n_0 ),
        .I1(\reg_shift_mosi[4]_i_34_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_16 
       (.I0(\reg_shift_mosi[4]_i_35_n_0 ),
        .I1(\reg_shift_mosi[4]_i_36_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_17 
       (.I0(\reg_shift_mosi[4]_i_37_n_0 ),
        .I1(\reg_shift_mosi[4]_i_38_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_18 
       (.I0(\reg_shift_mosi[4]_i_39_n_0 ),
        .I1(\reg_shift_mosi[4]_i_40_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_19 
       (.I0(\reg_shift_mosi[4]_i_41_n_0 ),
        .I1(\reg_shift_mosi[4]_i_42_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_2 
       (.I0(\reg_shift_mosi[4]_i_3_n_0 ),
        .I1(\reg_shift_mosi[4]_i_4_n_0 ),
        .O(hold_ctrl_reg_2),
        .S(addr_ram[6]));
  MUXF7 \reg_shift_mosi_reg[4]_i_20 
       (.I0(\reg_shift_mosi[4]_i_43_n_0 ),
        .I1(\reg_shift_mosi[4]_i_44_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_21 
       (.I0(\reg_shift_mosi[4]_i_45_n_0 ),
        .I1(\reg_shift_mosi[4]_i_46_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_22 
       (.I0(\reg_shift_mosi[4]_i_47_n_0 ),
        .I1(\reg_shift_mosi[4]_i_48_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_23 
       (.I0(\reg_shift_mosi[4]_i_49_n_0 ),
        .I1(\reg_shift_mosi[4]_i_50_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_24 
       (.I0(\reg_shift_mosi[4]_i_51_n_0 ),
        .I1(\reg_shift_mosi[4]_i_52_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_25 
       (.I0(\reg_shift_mosi[4]_i_53_n_0 ),
        .I1(\reg_shift_mosi[4]_i_54_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_26 
       (.I0(\reg_shift_mosi[4]_i_55_n_0 ),
        .I1(\reg_shift_mosi[4]_i_56_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_27 
       (.I0(\reg_shift_mosi[4]_i_57_n_0 ),
        .I1(\reg_shift_mosi[4]_i_58_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[4]_i_28 
       (.I0(\reg_shift_mosi[4]_i_59_n_0 ),
        .I1(\reg_shift_mosi[4]_i_60_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \reg_shift_mosi_reg[4]_i_5 
       (.I0(\reg_shift_mosi_reg[4]_i_13_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_14_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_5_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[4]_i_6 
       (.I0(\reg_shift_mosi_reg[4]_i_15_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_16_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[4]_i_7 
       (.I0(\reg_shift_mosi_reg[4]_i_17_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_18_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[4]_i_8 
       (.I0(\reg_shift_mosi_reg[4]_i_19_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_20_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[4]_i_9 
       (.I0(\reg_shift_mosi_reg[4]_i_21_n_0 ),
        .I1(\reg_shift_mosi_reg[4]_i_22_n_0 ),
        .O(\reg_shift_mosi_reg[4]_i_9_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[5]_i_10 
       (.I0(\reg_shift_mosi_reg[5]_i_23_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_24_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[5]_i_11 
       (.I0(\reg_shift_mosi_reg[5]_i_25_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_26_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[5]_i_12 
       (.I0(\reg_shift_mosi_reg[5]_i_27_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_28_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \reg_shift_mosi_reg[5]_i_13 
       (.I0(\reg_shift_mosi[5]_i_29_n_0 ),
        .I1(\reg_shift_mosi[5]_i_30_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_13_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_14 
       (.I0(\reg_shift_mosi[5]_i_31_n_0 ),
        .I1(\reg_shift_mosi[5]_i_32_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_14_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_15 
       (.I0(\reg_shift_mosi[5]_i_33_n_0 ),
        .I1(\reg_shift_mosi[5]_i_34_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_16 
       (.I0(\reg_shift_mosi[5]_i_35_n_0 ),
        .I1(\reg_shift_mosi[5]_i_36_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_17 
       (.I0(\reg_shift_mosi[5]_i_37_n_0 ),
        .I1(\reg_shift_mosi[5]_i_38_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_18 
       (.I0(\reg_shift_mosi[5]_i_39_n_0 ),
        .I1(\reg_shift_mosi[5]_i_40_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_19 
       (.I0(\reg_shift_mosi[5]_i_41_n_0 ),
        .I1(\reg_shift_mosi[5]_i_42_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_2 
       (.I0(\reg_shift_mosi[5]_i_3_n_0 ),
        .I1(\reg_shift_mosi[5]_i_4_n_0 ),
        .O(hold_ctrl_reg_1),
        .S(addr_ram[6]));
  MUXF7 \reg_shift_mosi_reg[5]_i_20 
       (.I0(\reg_shift_mosi[5]_i_43_n_0 ),
        .I1(\reg_shift_mosi[5]_i_44_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_21 
       (.I0(\reg_shift_mosi[5]_i_45_n_0 ),
        .I1(\reg_shift_mosi[5]_i_46_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_22 
       (.I0(\reg_shift_mosi[5]_i_47_n_0 ),
        .I1(\reg_shift_mosi[5]_i_48_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_23 
       (.I0(\reg_shift_mosi[5]_i_49_n_0 ),
        .I1(\reg_shift_mosi[5]_i_50_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_24 
       (.I0(\reg_shift_mosi[5]_i_51_n_0 ),
        .I1(\reg_shift_mosi[5]_i_52_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_25 
       (.I0(\reg_shift_mosi[5]_i_53_n_0 ),
        .I1(\reg_shift_mosi[5]_i_54_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_26 
       (.I0(\reg_shift_mosi[5]_i_55_n_0 ),
        .I1(\reg_shift_mosi[5]_i_56_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_27 
       (.I0(\reg_shift_mosi[5]_i_57_n_0 ),
        .I1(\reg_shift_mosi[5]_i_58_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[5]_i_28 
       (.I0(\reg_shift_mosi[5]_i_59_n_0 ),
        .I1(\reg_shift_mosi[5]_i_60_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \reg_shift_mosi_reg[5]_i_5 
       (.I0(\reg_shift_mosi_reg[5]_i_13_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_14_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_5_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[5]_i_6 
       (.I0(\reg_shift_mosi_reg[5]_i_15_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_16_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[5]_i_7 
       (.I0(\reg_shift_mosi_reg[5]_i_17_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_18_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[5]_i_8 
       (.I0(\reg_shift_mosi_reg[5]_i_19_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_20_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[5]_i_9 
       (.I0(\reg_shift_mosi_reg[5]_i_21_n_0 ),
        .I1(\reg_shift_mosi_reg[5]_i_22_n_0 ),
        .O(\reg_shift_mosi_reg[5]_i_9_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[6]_i_10 
       (.I0(\reg_shift_mosi_reg[6]_i_23_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_24_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[6]_i_11 
       (.I0(\reg_shift_mosi_reg[6]_i_25_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_26_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[6]_i_12 
       (.I0(\reg_shift_mosi_reg[6]_i_27_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_28_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \reg_shift_mosi_reg[6]_i_13 
       (.I0(\reg_shift_mosi[6]_i_29_n_0 ),
        .I1(\reg_shift_mosi[6]_i_30_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_13_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_14 
       (.I0(\reg_shift_mosi[6]_i_31_n_0 ),
        .I1(\reg_shift_mosi[6]_i_32_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_14_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_15 
       (.I0(\reg_shift_mosi[6]_i_33_n_0 ),
        .I1(\reg_shift_mosi[6]_i_34_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_16 
       (.I0(\reg_shift_mosi[6]_i_35_n_0 ),
        .I1(\reg_shift_mosi[6]_i_36_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_17 
       (.I0(\reg_shift_mosi[6]_i_37_n_0 ),
        .I1(\reg_shift_mosi[6]_i_38_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_18 
       (.I0(\reg_shift_mosi[6]_i_39_n_0 ),
        .I1(\reg_shift_mosi[6]_i_40_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_19 
       (.I0(\reg_shift_mosi[6]_i_41_n_0 ),
        .I1(\reg_shift_mosi[6]_i_42_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_2 
       (.I0(\reg_shift_mosi[6]_i_3_n_0 ),
        .I1(\reg_shift_mosi[6]_i_4_n_0 ),
        .O(hold_ctrl_reg_0),
        .S(addr_ram[6]));
  MUXF7 \reg_shift_mosi_reg[6]_i_20 
       (.I0(\reg_shift_mosi[6]_i_43_n_0 ),
        .I1(\reg_shift_mosi[6]_i_44_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_21 
       (.I0(\reg_shift_mosi[6]_i_45_n_0 ),
        .I1(\reg_shift_mosi[6]_i_46_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_22 
       (.I0(\reg_shift_mosi[6]_i_47_n_0 ),
        .I1(\reg_shift_mosi[6]_i_48_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_23 
       (.I0(\reg_shift_mosi[6]_i_49_n_0 ),
        .I1(\reg_shift_mosi[6]_i_50_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_24 
       (.I0(\reg_shift_mosi[6]_i_51_n_0 ),
        .I1(\reg_shift_mosi[6]_i_52_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_25 
       (.I0(\reg_shift_mosi[6]_i_53_n_0 ),
        .I1(\reg_shift_mosi[6]_i_54_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_26 
       (.I0(\reg_shift_mosi[6]_i_55_n_0 ),
        .I1(\reg_shift_mosi[6]_i_56_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_27 
       (.I0(\reg_shift_mosi[6]_i_57_n_0 ),
        .I1(\reg_shift_mosi[6]_i_58_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[6]_i_28 
       (.I0(\reg_shift_mosi[6]_i_59_n_0 ),
        .I1(\reg_shift_mosi[6]_i_60_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \reg_shift_mosi_reg[6]_i_5 
       (.I0(\reg_shift_mosi_reg[6]_i_13_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_14_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_5_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[6]_i_6 
       (.I0(\reg_shift_mosi_reg[6]_i_15_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_16_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[6]_i_7 
       (.I0(\reg_shift_mosi_reg[6]_i_17_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_18_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[6]_i_8 
       (.I0(\reg_shift_mosi_reg[6]_i_19_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_20_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[6]_i_9 
       (.I0(\reg_shift_mosi_reg[6]_i_21_n_0 ),
        .I1(\reg_shift_mosi_reg[6]_i_22_n_0 ),
        .O(\reg_shift_mosi_reg[6]_i_9_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[7]_i_10 
       (.I0(\reg_shift_mosi_reg[7]_i_23_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_24_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[7]_i_11 
       (.I0(\reg_shift_mosi_reg[7]_i_25_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_26_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[7]_i_12 
       (.I0(\reg_shift_mosi_reg[7]_i_27_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_28_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[7]_i_13 
       (.I0(\reg_shift_mosi_reg[7]_i_29_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_30_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_13_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \reg_shift_mosi_reg[7]_i_15 
       (.I0(\reg_shift_mosi[7]_i_32_n_0 ),
        .I1(\reg_shift_mosi[7]_i_33_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_16 
       (.I0(\reg_shift_mosi[7]_i_34_n_0 ),
        .I1(\reg_shift_mosi[7]_i_35_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_17 
       (.I0(\reg_shift_mosi[7]_i_36_n_0 ),
        .I1(\reg_shift_mosi[7]_i_37_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_18 
       (.I0(\reg_shift_mosi[7]_i_38_n_0 ),
        .I1(\reg_shift_mosi[7]_i_39_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_19 
       (.I0(\reg_shift_mosi[7]_i_40_n_0 ),
        .I1(\reg_shift_mosi[7]_i_41_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_20 
       (.I0(\reg_shift_mosi[7]_i_42_n_0 ),
        .I1(\reg_shift_mosi[7]_i_43_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_21 
       (.I0(\reg_shift_mosi[7]_i_44_n_0 ),
        .I1(\reg_shift_mosi[7]_i_45_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_22 
       (.I0(\reg_shift_mosi[7]_i_46_n_0 ),
        .I1(\reg_shift_mosi[7]_i_47_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_23 
       (.I0(\reg_shift_mosi[7]_i_48_n_0 ),
        .I1(\reg_shift_mosi[7]_i_49_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_24 
       (.I0(\reg_shift_mosi[7]_i_50_n_0 ),
        .I1(\reg_shift_mosi[7]_i_51_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_25 
       (.I0(\reg_shift_mosi[7]_i_52_n_0 ),
        .I1(\reg_shift_mosi[7]_i_53_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_26 
       (.I0(\reg_shift_mosi[7]_i_54_n_0 ),
        .I1(\reg_shift_mosi[7]_i_55_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_27 
       (.I0(\reg_shift_mosi[7]_i_56_n_0 ),
        .I1(\reg_shift_mosi[7]_i_57_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_28 
       (.I0(\reg_shift_mosi[7]_i_58_n_0 ),
        .I1(\reg_shift_mosi[7]_i_59_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_29 
       (.I0(\reg_shift_mosi[7]_i_60_n_0 ),
        .I1(\reg_shift_mosi[7]_i_61_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_29_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \reg_shift_mosi_reg[7]_i_3 
       (.I0(\reg_shift_mosi[7]_i_4_n_0 ),
        .I1(\reg_shift_mosi[7]_i_5_n_0 ),
        .O(hold_ctrl_reg),
        .S(addr_ram[6]));
  MUXF7 \reg_shift_mosi_reg[7]_i_30 
       (.I0(\reg_shift_mosi[7]_i_62_n_0 ),
        .I1(\reg_shift_mosi[7]_i_63_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_30_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \reg_shift_mosi_reg[7]_i_6 
       (.I0(\reg_shift_mosi_reg[7]_i_15_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_16_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[7]_i_7 
       (.I0(\reg_shift_mosi_reg[7]_i_17_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_18_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[7]_i_8 
       (.I0(\reg_shift_mosi_reg[7]_i_19_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_20_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \reg_shift_mosi_reg[7]_i_9 
       (.I0(\reg_shift_mosi_reg[7]_i_21_n_0 ),
        .I1(\reg_shift_mosi_reg[7]_i_22_n_0 ),
        .O(\reg_shift_mosi_reg[7]_i_9_n_0 ),
        .S(addr_ram[3]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[0]_i_1 
       (.I0(hold_ctrl_reg_2),
        .I1(selec_out),
        .I2(\state_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_1 
       (.I0(hold_ctrl_reg_1),
        .I1(selec_out),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_i_1 
       (.I0(hold_ctrl_reg_0),
        .I1(selec_out),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[3]_i_2 
       (.I0(hold_ctrl_reg),
        .I1(selec_out),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_1 
       (.I0(dato_ram),
        .I1(selec_out),
        .I2(\state_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_29 
       (.I0(\memoria_reg_n_0_[51][0] ),
        .I1(\memoria_reg_n_0_[50][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[49][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[48][0] ),
        .O(\state[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_3 
       (.I0(\state_reg[4]_i_5_n_0 ),
        .I1(\state_reg[4]_i_6_n_0 ),
        .I2(addr_ram[5]),
        .I3(\state_reg[4]_i_7_n_0 ),
        .I4(addr_ram[4]),
        .I5(\state_reg[4]_i_8_n_0 ),
        .O(\state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_30 
       (.I0(\memoria_reg_n_0_[55][0] ),
        .I1(\memoria_reg_n_0_[54][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[53][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[52][0] ),
        .O(\state[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_31 
       (.I0(\memoria_reg_n_0_[59][0] ),
        .I1(\memoria_reg_n_0_[58][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[57][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[56][0] ),
        .O(\state[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_32 
       (.I0(\memoria_reg_n_0_[63][0] ),
        .I1(\memoria_reg_n_0_[62][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[61][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[60][0] ),
        .O(\state[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_33 
       (.I0(\memoria_reg_n_0_[35][0] ),
        .I1(\memoria_reg_n_0_[34][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[33][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[32][0] ),
        .O(\state[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_34 
       (.I0(\memoria_reg_n_0_[39][0] ),
        .I1(\memoria_reg_n_0_[38][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[37][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[36][0] ),
        .O(\state[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_35 
       (.I0(\memoria_reg_n_0_[43][0] ),
        .I1(\memoria_reg_n_0_[42][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[41][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[40][0] ),
        .O(\state[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_36 
       (.I0(\memoria_reg_n_0_[47][0] ),
        .I1(\memoria_reg_n_0_[46][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[45][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[44][0] ),
        .O(\state[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_37 
       (.I0(\memoria_reg_n_0_[19][0] ),
        .I1(\memoria_reg_n_0_[18][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[17][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[16][0] ),
        .O(\state[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_38 
       (.I0(\memoria_reg_n_0_[23][0] ),
        .I1(\memoria_reg_n_0_[22][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[21][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[20][0] ),
        .O(\state[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_39 
       (.I0(\memoria_reg_n_0_[27][0] ),
        .I1(\memoria_reg_n_0_[26][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[25][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[24][0] ),
        .O(\state[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_4 
       (.I0(\state_reg[4]_i_9_n_0 ),
        .I1(\state_reg[4]_i_10_n_0 ),
        .I2(addr_ram[5]),
        .I3(\state_reg[4]_i_11_n_0 ),
        .I4(addr_ram[4]),
        .I5(\state_reg[4]_i_12_n_0 ),
        .O(\state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_40 
       (.I0(\memoria_reg_n_0_[31][0] ),
        .I1(\memoria_reg_n_0_[30][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[29][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[28][0] ),
        .O(\state[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_41 
       (.I0(\memoria_reg_n_0_[3][0] ),
        .I1(\memoria_reg_n_0_[2][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[1][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[0][0] ),
        .O(\state[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_42 
       (.I0(\memoria_reg_n_0_[7][0] ),
        .I1(\memoria_reg_n_0_[6][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[5][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[4][0] ),
        .O(\state[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_43 
       (.I0(\memoria_reg_n_0_[11][0] ),
        .I1(\memoria_reg_n_0_[10][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[9][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[8][0] ),
        .O(\state[4]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_44 
       (.I0(\memoria_reg_n_0_[15][0] ),
        .I1(\memoria_reg_n_0_[14][0] ),
        .I2(addr_ram[1]),
        .I3(\memoria_reg_n_0_[13][0] ),
        .I4(\reg_shift_mosi_reg[7]_i_19_0 ),
        .I5(\memoria_reg_n_0_[12][0] ),
        .O(\state[4]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_45 
       (.I0(\memoria_reg_n_0_[115][0] ),
        .I1(\memoria_reg_n_0_[114][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[113][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[112][0] ),
        .O(\state[4]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_46 
       (.I0(\memoria_reg_n_0_[119][0] ),
        .I1(\memoria_reg_n_0_[118][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[117][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[116][0] ),
        .O(\state[4]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_47 
       (.I0(\memoria_reg_n_0_[123][0] ),
        .I1(\memoria_reg_n_0_[122][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[121][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[120][0] ),
        .O(\state[4]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_48 
       (.I0(\memoria_reg_n_0_[127][0] ),
        .I1(\memoria_reg_n_0_[126][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[125][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[124][0] ),
        .O(\state[4]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_49 
       (.I0(\memoria_reg_n_0_[99][0] ),
        .I1(\memoria_reg_n_0_[98][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[97][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[96][0] ),
        .O(\state[4]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_50 
       (.I0(\memoria_reg_n_0_[103][0] ),
        .I1(\memoria_reg_n_0_[102][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[101][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[100][0] ),
        .O(\state[4]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_51 
       (.I0(\memoria_reg_n_0_[107][0] ),
        .I1(\memoria_reg_n_0_[106][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[105][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[104][0] ),
        .O(\state[4]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_52 
       (.I0(\memoria_reg_n_0_[111][0] ),
        .I1(\memoria_reg_n_0_[110][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[109][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[108][0] ),
        .O(\state[4]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_53 
       (.I0(\memoria_reg_n_0_[83][0] ),
        .I1(\memoria_reg_n_0_[82][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[81][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[80][0] ),
        .O(\state[4]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_54 
       (.I0(\memoria_reg_n_0_[87][0] ),
        .I1(\memoria_reg_n_0_[86][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[85][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[84][0] ),
        .O(\state[4]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_55 
       (.I0(\memoria_reg_n_0_[91][0] ),
        .I1(\memoria_reg_n_0_[90][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[89][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[88][0] ),
        .O(\state[4]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_56 
       (.I0(\memoria_reg_n_0_[95][0] ),
        .I1(\memoria_reg_n_0_[94][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[93][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[92][0] ),
        .O(\state[4]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_57 
       (.I0(\memoria_reg_n_0_[67][0] ),
        .I1(\memoria_reg_n_0_[66][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[65][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[64][0] ),
        .O(\state[4]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_58 
       (.I0(\memoria_reg_n_0_[71][0] ),
        .I1(\memoria_reg_n_0_[70][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[69][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[68][0] ),
        .O(\state[4]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_59 
       (.I0(\memoria_reg_n_0_[75][0] ),
        .I1(\memoria_reg_n_0_[74][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[73][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[72][0] ),
        .O(\state[4]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \state[4]_i_60 
       (.I0(\memoria_reg_n_0_[79][0] ),
        .I1(\memoria_reg_n_0_[78][0] ),
        .I2(\reg_shift_mosi_reg[7]_i_27_0 ),
        .I3(\memoria_reg_n_0_[77][0] ),
        .I4(addr_ram[0]),
        .I5(\memoria_reg_n_0_[76][0] ),
        .O(\state[4]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_1 
       (.I0(hold_ctrl_reg_5),
        .I1(selec_out),
        .I2(\state_reg[4] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[6]_i_1 
       (.I0(hold_ctrl_reg_4),
        .I1(selec_out),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[7]_i_2 
       (.I0(hold_ctrl_reg_3),
        .I1(selec_out),
        .O(D[7]));
  MUXF8 \state_reg[4]_i_10 
       (.I0(\state_reg[4]_i_23_n_0 ),
        .I1(\state_reg[4]_i_24_n_0 ),
        .O(\state_reg[4]_i_10_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \state_reg[4]_i_11 
       (.I0(\state_reg[4]_i_25_n_0 ),
        .I1(\state_reg[4]_i_26_n_0 ),
        .O(\state_reg[4]_i_11_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \state_reg[4]_i_12 
       (.I0(\state_reg[4]_i_27_n_0 ),
        .I1(\state_reg[4]_i_28_n_0 ),
        .O(\state_reg[4]_i_12_n_0 ),
        .S(addr_ram[3]));
  MUXF7 \state_reg[4]_i_13 
       (.I0(\state[4]_i_29_n_0 ),
        .I1(\state[4]_i_30_n_0 ),
        .O(\state_reg[4]_i_13_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_14 
       (.I0(\state[4]_i_31_n_0 ),
        .I1(\state[4]_i_32_n_0 ),
        .O(\state_reg[4]_i_14_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_15 
       (.I0(\state[4]_i_33_n_0 ),
        .I1(\state[4]_i_34_n_0 ),
        .O(\state_reg[4]_i_15_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_16 
       (.I0(\state[4]_i_35_n_0 ),
        .I1(\state[4]_i_36_n_0 ),
        .O(\state_reg[4]_i_16_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_17 
       (.I0(\state[4]_i_37_n_0 ),
        .I1(\state[4]_i_38_n_0 ),
        .O(\state_reg[4]_i_17_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_18 
       (.I0(\state[4]_i_39_n_0 ),
        .I1(\state[4]_i_40_n_0 ),
        .O(\state_reg[4]_i_18_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_19 
       (.I0(\state[4]_i_41_n_0 ),
        .I1(\state[4]_i_42_n_0 ),
        .O(\state_reg[4]_i_19_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_2 
       (.I0(\state[4]_i_3_n_0 ),
        .I1(\state[4]_i_4_n_0 ),
        .O(dato_ram),
        .S(addr_ram[6]));
  MUXF7 \state_reg[4]_i_20 
       (.I0(\state[4]_i_43_n_0 ),
        .I1(\state[4]_i_44_n_0 ),
        .O(\state_reg[4]_i_20_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_21 
       (.I0(\state[4]_i_45_n_0 ),
        .I1(\state[4]_i_46_n_0 ),
        .O(\state_reg[4]_i_21_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_22 
       (.I0(\state[4]_i_47_n_0 ),
        .I1(\state[4]_i_48_n_0 ),
        .O(\state_reg[4]_i_22_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_23 
       (.I0(\state[4]_i_49_n_0 ),
        .I1(\state[4]_i_50_n_0 ),
        .O(\state_reg[4]_i_23_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_24 
       (.I0(\state[4]_i_51_n_0 ),
        .I1(\state[4]_i_52_n_0 ),
        .O(\state_reg[4]_i_24_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_25 
       (.I0(\state[4]_i_53_n_0 ),
        .I1(\state[4]_i_54_n_0 ),
        .O(\state_reg[4]_i_25_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_26 
       (.I0(\state[4]_i_55_n_0 ),
        .I1(\state[4]_i_56_n_0 ),
        .O(\state_reg[4]_i_26_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_27 
       (.I0(\state[4]_i_57_n_0 ),
        .I1(\state[4]_i_58_n_0 ),
        .O(\state_reg[4]_i_27_n_0 ),
        .S(addr_ram[2]));
  MUXF7 \state_reg[4]_i_28 
       (.I0(\state[4]_i_59_n_0 ),
        .I1(\state[4]_i_60_n_0 ),
        .O(\state_reg[4]_i_28_n_0 ),
        .S(addr_ram[2]));
  MUXF8 \state_reg[4]_i_5 
       (.I0(\state_reg[4]_i_13_n_0 ),
        .I1(\state_reg[4]_i_14_n_0 ),
        .O(\state_reg[4]_i_5_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \state_reg[4]_i_6 
       (.I0(\state_reg[4]_i_15_n_0 ),
        .I1(\state_reg[4]_i_16_n_0 ),
        .O(\state_reg[4]_i_6_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \state_reg[4]_i_7 
       (.I0(\state_reg[4]_i_17_n_0 ),
        .I1(\state_reg[4]_i_18_n_0 ),
        .O(\state_reg[4]_i_7_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \state_reg[4]_i_8 
       (.I0(\state_reg[4]_i_19_n_0 ),
        .I1(\state_reg[4]_i_20_n_0 ),
        .O(\state_reg[4]_i_8_n_0 ),
        .S(addr_ram[3]));
  MUXF8 \state_reg[4]_i_9 
       (.I0(\state_reg[4]_i_21_n_0 ),
        .I1(\state_reg[4]_i_22_n_0 ),
        .O(\state_reg[4]_i_9_n_0 ),
        .S(addr_ram[3]));
endmodule

module module_pmodALS
   (\state_reg[3]_0 ,
    \state_reg[3]_1 ,
    \state_reg[3]_2 ,
    \state_reg[3]_3 ,
    \state_reg[3]_4 ,
    \state_reg[3]_5 ,
    \state_reg[3]_6 ,
    \state_reg[7]_0 ,
    \state_reg[7]_1 ,
    \state_reg[7]_2 ,
    \state_reg[7]_3 ,
    \state_reg[7]_4 ,
    \state_reg[7]_5 ,
    \state_reg[7]_6 ,
    rst_pi_IBUF,
    E,
    D,
    CLK_10MHZ);
  output \state_reg[3]_0 ;
  output \state_reg[3]_1 ;
  output \state_reg[3]_2 ;
  output \state_reg[3]_3 ;
  output \state_reg[3]_4 ;
  output \state_reg[3]_5 ;
  output \state_reg[3]_6 ;
  output \state_reg[7]_0 ;
  output \state_reg[7]_1 ;
  output \state_reg[7]_2 ;
  output \state_reg[7]_3 ;
  output \state_reg[7]_4 ;
  output \state_reg[7]_5 ;
  output \state_reg[7]_6 ;
  input rst_pi_IBUF;
  input [1:0]E;
  input [7:0]D;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [7:0]D;
  wire [1:0]E;
  wire rst_pi_IBUF;
  wire [3:0]sel0;
  wire \state_reg[3]_0 ;
  wire \state_reg[3]_1 ;
  wire \state_reg[3]_2 ;
  wire \state_reg[3]_3 ;
  wire \state_reg[3]_4 ;
  wire \state_reg[3]_5 ;
  wire \state_reg[3]_6 ;
  wire \state_reg[7]_0 ;
  wire \state_reg[7]_1 ;
  wire \state_reg[7]_2 ;
  wire \state_reg[7]_3 ;
  wire \state_reg[7]_4 ;
  wire \state_reg[7]_5 ;
  wire \state_reg[7]_6 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\state_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\state_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\state_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\state_reg[7]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(\state_reg[7]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\state_reg[7]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state_reg[3]_5 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(\state_reg[7]_6 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state_reg[3]_6 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK_10MHZ),
        .CE(E[0]),
        .D(D[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK_10MHZ),
        .CE(E[0]),
        .D(D[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK_10MHZ),
        .CE(E[0]),
        .D(D[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK_10MHZ),
        .CE(E[0]),
        .D(D[3]),
        .Q(\state_reg_n_0_[3] ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(CLK_10MHZ),
        .CE(E[1]),
        .D(D[4]),
        .Q(sel0[0]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(CLK_10MHZ),
        .CE(E[1]),
        .D(D[5]),
        .Q(sel0[1]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(CLK_10MHZ),
        .CE(E[1]),
        .D(D[6]),
        .Q(sel0[2]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(CLK_10MHZ),
        .CE(E[1]),
        .D(D[7]),
        .Q(sel0[3]),
        .R(rst_pi_IBUF));
endmodule

module module_reg_control
   (\state_reg[4]_0 ,
    \state_reg[1]_0 ,
    S,
    cs_ctrl_po_OBUF,
    DI,
    rst_pi_IBUF,
    \state_reg[22]_inv_0 ,
    \state_reg[21]_0 ,
    CLK_10MHZ,
    \state_reg[20]_0 ,
    \state_reg[19]_0 ,
    \state_reg[18]_0 ,
    \state_reg[17]_0 ,
    \state_reg[16]_0 ,
    \state_reg[4]_1 ,
    \state_reg[22]_inv_1 ,
    proccess,
    send);
  output \state_reg[4]_0 ;
  output \state_reg[1]_0 ;
  output [3:0]S;
  output cs_ctrl_po_OBUF;
  output [0:0]DI;
  input rst_pi_IBUF;
  input \state_reg[22]_inv_0 ;
  input \state_reg[21]_0 ;
  input CLK_10MHZ;
  input \state_reg[20]_0 ;
  input \state_reg[19]_0 ;
  input \state_reg[18]_0 ;
  input \state_reg[17]_0 ;
  input \state_reg[16]_0 ;
  input \state_reg[4]_1 ;
  input \state_reg[22]_inv_1 ;
  input proccess;
  input send;

  wire CLK_10MHZ;
  wire [0:0]DI;
  wire [3:0]S;
  wire [5:0]\cntr_str_i[n_rx_end] ;
  wire cs_ctrl_po_OBUF;
  wire proccess;
  wire rst_pi_IBUF;
  wire send;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[16]_0 ;
  wire \state_reg[17]_0 ;
  wire \state_reg[18]_0 ;
  wire \state_reg[19]_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[20]_0 ;
  wire \state_reg[21]_0 ;
  wire \state_reg[22]_inv_0 ;
  wire \state_reg[22]_inv_1 ;
  wire \state_reg[4]_0 ;
  wire \state_reg[4]_1 ;

  LUT3 #(
    .INIT(8'h04)) 
    addr20_carry_i_1
       (.I0(\cntr_str_i[n_rx_end] [1]),
        .I1(\state_reg[4]_0 ),
        .I2(\cntr_str_i[n_rx_end] [0]),
        .O(DI));
  LUT2 #(
    .INIT(4'h1)) 
    addr20_carry_i_2
       (.I0(\cntr_str_i[n_rx_end] [4]),
        .I1(\cntr_str_i[n_rx_end] [5]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h1)) 
    addr20_carry_i_3
       (.I0(\cntr_str_i[n_rx_end] [2]),
        .I1(\cntr_str_i[n_rx_end] [3]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h41)) 
    addr20_carry_i_4
       (.I0(\cntr_str_i[n_rx_end] [1]),
        .I1(\cntr_str_i[n_rx_end] [0]),
        .I2(\state_reg[4]_0 ),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cs_ctrl_po_OBUF_inst_i_1
       (.I0(\state_reg[1]_0 ),
        .O(cs_ctrl_po_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \state[1]_i_1 
       (.I0(proccess),
        .I1(\state_reg[1]_0 ),
        .I2(send),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(CLK_10MHZ),
        .CE(\state_reg[22]_inv_0 ),
        .D(\state_reg[16]_0 ),
        .Q(\cntr_str_i[n_rx_end] [0]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[17] 
       (.C(CLK_10MHZ),
        .CE(\state_reg[22]_inv_0 ),
        .D(\state_reg[17]_0 ),
        .Q(\cntr_str_i[n_rx_end] [1]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[18] 
       (.C(CLK_10MHZ),
        .CE(\state_reg[22]_inv_0 ),
        .D(\state_reg[18]_0 ),
        .Q(\cntr_str_i[n_rx_end] [2]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[19] 
       (.C(CLK_10MHZ),
        .CE(\state_reg[22]_inv_0 ),
        .D(\state_reg[19]_0 ),
        .Q(\cntr_str_i[n_rx_end] [3]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[20] 
       (.C(CLK_10MHZ),
        .CE(\state_reg[22]_inv_0 ),
        .D(\state_reg[20]_0 ),
        .Q(\cntr_str_i[n_rx_end] [4]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[21] 
       (.C(CLK_10MHZ),
        .CE(\state_reg[22]_inv_0 ),
        .D(\state_reg[21]_0 ),
        .Q(\cntr_str_i[n_rx_end] [5]),
        .R(rst_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[22]_inv 
       (.C(CLK_10MHZ),
        .CE(\state_reg[22]_inv_0 ),
        .D(\state_reg[22]_inv_1 ),
        .Q(S[3]),
        .S(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\state_reg[4]_1 ),
        .Q(\state_reg[4]_0 ),
        .R(rst_pi_IBUF));
endmodule

module module_reg_datos
   (D,
    dato_ram,
    hold_ctrl_reg,
    hold_ctrl_reg_0,
    hold_ctrl_reg_1,
    hold_ctrl_reg_2,
    hold_ctrl_reg_3,
    hold_ctrl_reg_4,
    hold_ctrl_reg_5,
    selec_out,
    \state_reg[4] ,
    addr_ram,
    \state_reg[0] ,
    \reg_shift_mosi_reg[7]_i_19 ,
    \reg_shift_mosi_reg[7]_i_27 ,
    rst_pi_IBUF,
    E,
    \memoria_reg[15][7] ,
    CLK_10MHZ,
    \memoria_reg[126][7] ,
    \memoria_reg[125][7] ,
    \memoria_reg[124][7] ,
    \memoria_reg[123][7] ,
    \memoria_reg[122][7] ,
    \memoria_reg[121][7] ,
    \memoria_reg[120][7] ,
    \memoria_reg[119][7] ,
    \memoria_reg[118][7] ,
    \memoria_reg[117][7] ,
    \memoria_reg[116][7] ,
    \memoria_reg[115][7] ,
    \memoria_reg[114][7] ,
    \memoria_reg[113][7] ,
    \memoria_reg[112][7] ,
    \memoria_reg[111][7] ,
    \memoria_reg[110][7] ,
    \memoria_reg[109][7] ,
    \memoria_reg[108][7] ,
    \memoria_reg[107][7] ,
    \memoria_reg[106][7] ,
    \memoria_reg[105][7] ,
    \memoria_reg[104][7] ,
    \memoria_reg[103][7] ,
    \memoria_reg[1][7] ,
    \memoria_reg[102][7] ,
    \memoria_reg[101][7] ,
    \memoria_reg[100][7] ,
    \memoria_reg[99][7] ,
    \memoria_reg[98][7] ,
    \memoria_reg[97][7] ,
    \memoria_reg[96][7] ,
    \memoria_reg[95][7] ,
    \memoria_reg[94][7] ,
    \memoria_reg[93][7] ,
    \memoria_reg[92][7] ,
    \memoria_reg[91][7] ,
    \memoria_reg[90][7] ,
    \memoria_reg[89][7] ,
    \memoria_reg[88][7] ,
    \memoria_reg[87][7] ,
    \memoria_reg[86][7] ,
    \memoria_reg[85][7] ,
    \memoria_reg[84][7] ,
    \memoria_reg[83][7] ,
    \memoria_reg[82][7] ,
    \memoria_reg[81][7] ,
    \memoria_reg[80][7] ,
    \memoria_reg[79][7] ,
    \memoria_reg[77][7] ,
    \memoria_reg[76][7] ,
    \memoria_reg[75][7] ,
    \memoria_reg[74][7] ,
    \memoria_reg[73][7] ,
    \memoria_reg[72][7] ,
    \memoria_reg[71][7] ,
    \memoria_reg[70][7] ,
    \memoria_reg[69][7] ,
    \memoria_reg[68][7] ,
    \memoria_reg[67][7] ,
    \memoria_reg[66][7] ,
    \memoria_reg[65][7] ,
    \memoria_reg[64][7] ,
    \memoria_reg[63][7] ,
    \memoria_reg[62][7] ,
    \memoria_reg[61][7] ,
    \memoria_reg[60][7] ,
    \memoria_reg[59][7] ,
    \memoria_reg[58][7] ,
    \memoria_reg[57][7] ,
    \memoria_reg[56][7] ,
    \memoria_reg[55][7] ,
    \memoria_reg[54][7] ,
    \memoria_reg[53][7] ,
    \memoria_reg[52][7] ,
    \memoria_reg[51][7] ,
    \memoria_reg[50][7] ,
    \memoria_reg[49][7] ,
    \memoria_reg[48][7] ,
    \memoria_reg[47][7] ,
    \memoria_reg[46][7] ,
    \memoria_reg[45][7] ,
    \memoria_reg[44][7] ,
    \memoria_reg[43][7] ,
    \memoria_reg[42][7] ,
    \memoria_reg[41][7] ,
    \memoria_reg[40][7] ,
    \memoria_reg[39][7] ,
    \memoria_reg[38][7] ,
    \memoria_reg[37][7] ,
    \memoria_reg[36][7] ,
    \memoria_reg[35][7] ,
    \memoria_reg[26][0] ,
    \memoria_reg[24][0] ,
    \memoria_reg[12][0] ,
    \memoria_reg[7][0] ,
    \memoria_reg[5][7] ,
    \memoria_reg[6][7] ,
    \memoria_reg[8][7] ,
    \memoria_reg[9][7] ,
    \memoria_reg[10][7] ,
    \memoria_reg[11][7] ,
    \memoria_reg[13][7] ,
    \memoria_reg[14][7] ,
    \memoria_reg[15][7]_0 ,
    \memoria_reg[16][7] ,
    \memoria_reg[17][7] ,
    \memoria_reg[19][7] ,
    \memoria_reg[20][7] ,
    \memoria_reg[21][7] ,
    \memoria_reg[23][7] ,
    \memoria_reg[25][7] ,
    \memoria_reg[27][7] ,
    \memoria_reg[28][7] ,
    \memoria_reg[30][7] ,
    \memoria_reg[31][7] ,
    \memoria_reg[32][7] ,
    \memoria_reg[33][7] ,
    \memoria_reg[34][7] ,
    \memoria_reg[4][7] ,
    \memoria_reg[3][7] ,
    \memoria_reg[78][7] ,
    \memoria_reg[29][0] ,
    \memoria_reg[22][0] ,
    \memoria_reg[18][0] ,
    \memoria_reg[2][7] ,
    \memoria_reg[1][7]_0 ,
    \memoria_reg[0][7] );
  output [7:0]D;
  output [0:0]dato_ram;
  output hold_ctrl_reg;
  output hold_ctrl_reg_0;
  output hold_ctrl_reg_1;
  output hold_ctrl_reg_2;
  output hold_ctrl_reg_3;
  output hold_ctrl_reg_4;
  output hold_ctrl_reg_5;
  input selec_out;
  input \state_reg[4] ;
  input [6:0]addr_ram;
  input \state_reg[0] ;
  input \reg_shift_mosi_reg[7]_i_19 ;
  input \reg_shift_mosi_reg[7]_i_27 ;
  input rst_pi_IBUF;
  input [0:0]E;
  input [7:0]\memoria_reg[15][7] ;
  input CLK_10MHZ;
  input [0:0]\memoria_reg[126][7] ;
  input [0:0]\memoria_reg[125][7] ;
  input [0:0]\memoria_reg[124][7] ;
  input [0:0]\memoria_reg[123][7] ;
  input [0:0]\memoria_reg[122][7] ;
  input [0:0]\memoria_reg[121][7] ;
  input [0:0]\memoria_reg[120][7] ;
  input [0:0]\memoria_reg[119][7] ;
  input [0:0]\memoria_reg[118][7] ;
  input [0:0]\memoria_reg[117][7] ;
  input [0:0]\memoria_reg[116][7] ;
  input [0:0]\memoria_reg[115][7] ;
  input [0:0]\memoria_reg[114][7] ;
  input [0:0]\memoria_reg[113][7] ;
  input [0:0]\memoria_reg[112][7] ;
  input [0:0]\memoria_reg[111][7] ;
  input [0:0]\memoria_reg[110][7] ;
  input [0:0]\memoria_reg[109][7] ;
  input [0:0]\memoria_reg[108][7] ;
  input [0:0]\memoria_reg[107][7] ;
  input [0:0]\memoria_reg[106][7] ;
  input [0:0]\memoria_reg[105][7] ;
  input [0:0]\memoria_reg[104][7] ;
  input [0:0]\memoria_reg[103][7] ;
  input [7:0]\memoria_reg[1][7] ;
  input [0:0]\memoria_reg[102][7] ;
  input [0:0]\memoria_reg[101][7] ;
  input [0:0]\memoria_reg[100][7] ;
  input [0:0]\memoria_reg[99][7] ;
  input [0:0]\memoria_reg[98][7] ;
  input [0:0]\memoria_reg[97][7] ;
  input [0:0]\memoria_reg[96][7] ;
  input [0:0]\memoria_reg[95][7] ;
  input [0:0]\memoria_reg[94][7] ;
  input [0:0]\memoria_reg[93][7] ;
  input [0:0]\memoria_reg[92][7] ;
  input [0:0]\memoria_reg[91][7] ;
  input [0:0]\memoria_reg[90][7] ;
  input [0:0]\memoria_reg[89][7] ;
  input [0:0]\memoria_reg[88][7] ;
  input [0:0]\memoria_reg[87][7] ;
  input [0:0]\memoria_reg[86][7] ;
  input [0:0]\memoria_reg[85][7] ;
  input [0:0]\memoria_reg[84][7] ;
  input [0:0]\memoria_reg[83][7] ;
  input [0:0]\memoria_reg[82][7] ;
  input [0:0]\memoria_reg[81][7] ;
  input [0:0]\memoria_reg[80][7] ;
  input [0:0]\memoria_reg[79][7] ;
  input [0:0]\memoria_reg[77][7] ;
  input [0:0]\memoria_reg[76][7] ;
  input [0:0]\memoria_reg[75][7] ;
  input [0:0]\memoria_reg[74][7] ;
  input [0:0]\memoria_reg[73][7] ;
  input [0:0]\memoria_reg[72][7] ;
  input [0:0]\memoria_reg[71][7] ;
  input [0:0]\memoria_reg[70][7] ;
  input [0:0]\memoria_reg[69][7] ;
  input [0:0]\memoria_reg[68][7] ;
  input [0:0]\memoria_reg[67][7] ;
  input [0:0]\memoria_reg[66][7] ;
  input [0:0]\memoria_reg[65][7] ;
  input [0:0]\memoria_reg[64][7] ;
  input [0:0]\memoria_reg[63][7] ;
  input [0:0]\memoria_reg[62][7] ;
  input [0:0]\memoria_reg[61][7] ;
  input [0:0]\memoria_reg[60][7] ;
  input [0:0]\memoria_reg[59][7] ;
  input [0:0]\memoria_reg[58][7] ;
  input [0:0]\memoria_reg[57][7] ;
  input [0:0]\memoria_reg[56][7] ;
  input [0:0]\memoria_reg[55][7] ;
  input [0:0]\memoria_reg[54][7] ;
  input [0:0]\memoria_reg[53][7] ;
  input [0:0]\memoria_reg[52][7] ;
  input [0:0]\memoria_reg[51][7] ;
  input [0:0]\memoria_reg[50][7] ;
  input [0:0]\memoria_reg[49][7] ;
  input [0:0]\memoria_reg[48][7] ;
  input [0:0]\memoria_reg[47][7] ;
  input [0:0]\memoria_reg[46][7] ;
  input [0:0]\memoria_reg[45][7] ;
  input [0:0]\memoria_reg[44][7] ;
  input [0:0]\memoria_reg[43][7] ;
  input [0:0]\memoria_reg[42][7] ;
  input [0:0]\memoria_reg[41][7] ;
  input [0:0]\memoria_reg[40][7] ;
  input [0:0]\memoria_reg[39][7] ;
  input [0:0]\memoria_reg[38][7] ;
  input [0:0]\memoria_reg[37][7] ;
  input [0:0]\memoria_reg[36][7] ;
  input [0:0]\memoria_reg[35][7] ;
  input [0:0]\memoria_reg[26][0] ;
  input [0:0]\memoria_reg[24][0] ;
  input [0:0]\memoria_reg[12][0] ;
  input [0:0]\memoria_reg[7][0] ;
  input [0:0]\memoria_reg[5][7] ;
  input [0:0]\memoria_reg[6][7] ;
  input [0:0]\memoria_reg[8][7] ;
  input [0:0]\memoria_reg[9][7] ;
  input [0:0]\memoria_reg[10][7] ;
  input [0:0]\memoria_reg[11][7] ;
  input [0:0]\memoria_reg[13][7] ;
  input [0:0]\memoria_reg[14][7] ;
  input [0:0]\memoria_reg[15][7]_0 ;
  input [0:0]\memoria_reg[16][7] ;
  input [0:0]\memoria_reg[17][7] ;
  input [0:0]\memoria_reg[19][7] ;
  input [0:0]\memoria_reg[20][7] ;
  input [0:0]\memoria_reg[21][7] ;
  input [0:0]\memoria_reg[23][7] ;
  input [0:0]\memoria_reg[25][7] ;
  input [0:0]\memoria_reg[27][7] ;
  input [0:0]\memoria_reg[28][7] ;
  input [0:0]\memoria_reg[30][7] ;
  input [0:0]\memoria_reg[31][7] ;
  input [0:0]\memoria_reg[32][7] ;
  input [0:0]\memoria_reg[33][7] ;
  input [0:0]\memoria_reg[34][7] ;
  input [0:0]\memoria_reg[4][7] ;
  input [0:0]\memoria_reg[3][7] ;
  input [0:0]\memoria_reg[78][7] ;
  input [0:0]\memoria_reg[29][0] ;
  input [0:0]\memoria_reg[22][0] ;
  input [0:0]\memoria_reg[18][0] ;
  input [0:0]\memoria_reg[2][7] ;
  input [0:0]\memoria_reg[1][7]_0 ;
  input [0:0]\memoria_reg[0][7] ;

  wire CLK_10MHZ;
  wire [7:0]D;
  wire [0:0]E;
  wire [6:0]addr_ram;
  wire [0:0]dato_ram;
  wire hold_ctrl_reg;
  wire hold_ctrl_reg_0;
  wire hold_ctrl_reg_1;
  wire hold_ctrl_reg_2;
  wire hold_ctrl_reg_3;
  wire hold_ctrl_reg_4;
  wire hold_ctrl_reg_5;
  wire [0:0]\memoria_reg[0][7] ;
  wire [0:0]\memoria_reg[100][7] ;
  wire [0:0]\memoria_reg[101][7] ;
  wire [0:0]\memoria_reg[102][7] ;
  wire [0:0]\memoria_reg[103][7] ;
  wire [0:0]\memoria_reg[104][7] ;
  wire [0:0]\memoria_reg[105][7] ;
  wire [0:0]\memoria_reg[106][7] ;
  wire [0:0]\memoria_reg[107][7] ;
  wire [0:0]\memoria_reg[108][7] ;
  wire [0:0]\memoria_reg[109][7] ;
  wire [0:0]\memoria_reg[10][7] ;
  wire [0:0]\memoria_reg[110][7] ;
  wire [0:0]\memoria_reg[111][7] ;
  wire [0:0]\memoria_reg[112][7] ;
  wire [0:0]\memoria_reg[113][7] ;
  wire [0:0]\memoria_reg[114][7] ;
  wire [0:0]\memoria_reg[115][7] ;
  wire [0:0]\memoria_reg[116][7] ;
  wire [0:0]\memoria_reg[117][7] ;
  wire [0:0]\memoria_reg[118][7] ;
  wire [0:0]\memoria_reg[119][7] ;
  wire [0:0]\memoria_reg[11][7] ;
  wire [0:0]\memoria_reg[120][7] ;
  wire [0:0]\memoria_reg[121][7] ;
  wire [0:0]\memoria_reg[122][7] ;
  wire [0:0]\memoria_reg[123][7] ;
  wire [0:0]\memoria_reg[124][7] ;
  wire [0:0]\memoria_reg[125][7] ;
  wire [0:0]\memoria_reg[126][7] ;
  wire [0:0]\memoria_reg[12][0] ;
  wire [0:0]\memoria_reg[13][7] ;
  wire [0:0]\memoria_reg[14][7] ;
  wire [7:0]\memoria_reg[15][7] ;
  wire [0:0]\memoria_reg[15][7]_0 ;
  wire [0:0]\memoria_reg[16][7] ;
  wire [0:0]\memoria_reg[17][7] ;
  wire [0:0]\memoria_reg[18][0] ;
  wire [0:0]\memoria_reg[19][7] ;
  wire [7:0]\memoria_reg[1][7] ;
  wire [0:0]\memoria_reg[1][7]_0 ;
  wire [0:0]\memoria_reg[20][7] ;
  wire [0:0]\memoria_reg[21][7] ;
  wire [0:0]\memoria_reg[22][0] ;
  wire [0:0]\memoria_reg[23][7] ;
  wire [0:0]\memoria_reg[24][0] ;
  wire [0:0]\memoria_reg[25][7] ;
  wire [0:0]\memoria_reg[26][0] ;
  wire [0:0]\memoria_reg[27][7] ;
  wire [0:0]\memoria_reg[28][7] ;
  wire [0:0]\memoria_reg[29][0] ;
  wire [0:0]\memoria_reg[2][7] ;
  wire [0:0]\memoria_reg[30][7] ;
  wire [0:0]\memoria_reg[31][7] ;
  wire [0:0]\memoria_reg[32][7] ;
  wire [0:0]\memoria_reg[33][7] ;
  wire [0:0]\memoria_reg[34][7] ;
  wire [0:0]\memoria_reg[35][7] ;
  wire [0:0]\memoria_reg[36][7] ;
  wire [0:0]\memoria_reg[37][7] ;
  wire [0:0]\memoria_reg[38][7] ;
  wire [0:0]\memoria_reg[39][7] ;
  wire [0:0]\memoria_reg[3][7] ;
  wire [0:0]\memoria_reg[40][7] ;
  wire [0:0]\memoria_reg[41][7] ;
  wire [0:0]\memoria_reg[42][7] ;
  wire [0:0]\memoria_reg[43][7] ;
  wire [0:0]\memoria_reg[44][7] ;
  wire [0:0]\memoria_reg[45][7] ;
  wire [0:0]\memoria_reg[46][7] ;
  wire [0:0]\memoria_reg[47][7] ;
  wire [0:0]\memoria_reg[48][7] ;
  wire [0:0]\memoria_reg[49][7] ;
  wire [0:0]\memoria_reg[4][7] ;
  wire [0:0]\memoria_reg[50][7] ;
  wire [0:0]\memoria_reg[51][7] ;
  wire [0:0]\memoria_reg[52][7] ;
  wire [0:0]\memoria_reg[53][7] ;
  wire [0:0]\memoria_reg[54][7] ;
  wire [0:0]\memoria_reg[55][7] ;
  wire [0:0]\memoria_reg[56][7] ;
  wire [0:0]\memoria_reg[57][7] ;
  wire [0:0]\memoria_reg[58][7] ;
  wire [0:0]\memoria_reg[59][7] ;
  wire [0:0]\memoria_reg[5][7] ;
  wire [0:0]\memoria_reg[60][7] ;
  wire [0:0]\memoria_reg[61][7] ;
  wire [0:0]\memoria_reg[62][7] ;
  wire [0:0]\memoria_reg[63][7] ;
  wire [0:0]\memoria_reg[64][7] ;
  wire [0:0]\memoria_reg[65][7] ;
  wire [0:0]\memoria_reg[66][7] ;
  wire [0:0]\memoria_reg[67][7] ;
  wire [0:0]\memoria_reg[68][7] ;
  wire [0:0]\memoria_reg[69][7] ;
  wire [0:0]\memoria_reg[6][7] ;
  wire [0:0]\memoria_reg[70][7] ;
  wire [0:0]\memoria_reg[71][7] ;
  wire [0:0]\memoria_reg[72][7] ;
  wire [0:0]\memoria_reg[73][7] ;
  wire [0:0]\memoria_reg[74][7] ;
  wire [0:0]\memoria_reg[75][7] ;
  wire [0:0]\memoria_reg[76][7] ;
  wire [0:0]\memoria_reg[77][7] ;
  wire [0:0]\memoria_reg[78][7] ;
  wire [0:0]\memoria_reg[79][7] ;
  wire [0:0]\memoria_reg[7][0] ;
  wire [0:0]\memoria_reg[80][7] ;
  wire [0:0]\memoria_reg[81][7] ;
  wire [0:0]\memoria_reg[82][7] ;
  wire [0:0]\memoria_reg[83][7] ;
  wire [0:0]\memoria_reg[84][7] ;
  wire [0:0]\memoria_reg[85][7] ;
  wire [0:0]\memoria_reg[86][7] ;
  wire [0:0]\memoria_reg[87][7] ;
  wire [0:0]\memoria_reg[88][7] ;
  wire [0:0]\memoria_reg[89][7] ;
  wire [0:0]\memoria_reg[8][7] ;
  wire [0:0]\memoria_reg[90][7] ;
  wire [0:0]\memoria_reg[91][7] ;
  wire [0:0]\memoria_reg[92][7] ;
  wire [0:0]\memoria_reg[93][7] ;
  wire [0:0]\memoria_reg[94][7] ;
  wire [0:0]\memoria_reg[95][7] ;
  wire [0:0]\memoria_reg[96][7] ;
  wire [0:0]\memoria_reg[97][7] ;
  wire [0:0]\memoria_reg[98][7] ;
  wire [0:0]\memoria_reg[99][7] ;
  wire [0:0]\memoria_reg[9][7] ;
  wire \reg_shift_mosi_reg[7]_i_19 ;
  wire \reg_shift_mosi_reg[7]_i_27 ;
  wire rst_pi_IBUF;
  wire selec_out;
  wire \state_reg[0] ;
  wire \state_reg[4] ;

  module_memoria memoria_1
       (.CLK_10MHZ(CLK_10MHZ),
        .D(D),
        .E(E),
        .addr_ram(addr_ram),
        .dato_ram(dato_ram),
        .hold_ctrl_reg(hold_ctrl_reg),
        .hold_ctrl_reg_0(hold_ctrl_reg_0),
        .hold_ctrl_reg_1(hold_ctrl_reg_1),
        .hold_ctrl_reg_2(hold_ctrl_reg_2),
        .hold_ctrl_reg_3(hold_ctrl_reg_3),
        .hold_ctrl_reg_4(hold_ctrl_reg_4),
        .hold_ctrl_reg_5(hold_ctrl_reg_5),
        .\memoria_reg[0][7]_0 (\memoria_reg[0][7] ),
        .\memoria_reg[100][7]_0 (\memoria_reg[100][7] ),
        .\memoria_reg[101][7]_0 (\memoria_reg[101][7] ),
        .\memoria_reg[102][7]_0 (\memoria_reg[102][7] ),
        .\memoria_reg[103][7]_0 (\memoria_reg[103][7] ),
        .\memoria_reg[104][7]_0 (\memoria_reg[104][7] ),
        .\memoria_reg[105][7]_0 (\memoria_reg[105][7] ),
        .\memoria_reg[106][7]_0 (\memoria_reg[106][7] ),
        .\memoria_reg[107][7]_0 (\memoria_reg[107][7] ),
        .\memoria_reg[108][7]_0 (\memoria_reg[108][7] ),
        .\memoria_reg[109][7]_0 (\memoria_reg[109][7] ),
        .\memoria_reg[10][7]_0 (\memoria_reg[10][7] ),
        .\memoria_reg[110][7]_0 (\memoria_reg[110][7] ),
        .\memoria_reg[111][7]_0 (\memoria_reg[111][7] ),
        .\memoria_reg[112][7]_0 (\memoria_reg[112][7] ),
        .\memoria_reg[113][7]_0 (\memoria_reg[113][7] ),
        .\memoria_reg[114][7]_0 (\memoria_reg[114][7] ),
        .\memoria_reg[115][7]_0 (\memoria_reg[115][7] ),
        .\memoria_reg[116][7]_0 (\memoria_reg[116][7] ),
        .\memoria_reg[117][7]_0 (\memoria_reg[117][7] ),
        .\memoria_reg[118][7]_0 (\memoria_reg[118][7] ),
        .\memoria_reg[119][7]_0 (\memoria_reg[119][7] ),
        .\memoria_reg[11][7]_0 (\memoria_reg[11][7] ),
        .\memoria_reg[120][7]_0 (\memoria_reg[120][7] ),
        .\memoria_reg[121][7]_0 (\memoria_reg[121][7] ),
        .\memoria_reg[122][7]_0 (\memoria_reg[122][7] ),
        .\memoria_reg[123][7]_0 (\memoria_reg[123][7] ),
        .\memoria_reg[124][7]_0 (\memoria_reg[124][7] ),
        .\memoria_reg[125][7]_0 (\memoria_reg[125][7] ),
        .\memoria_reg[126][7]_0 (\memoria_reg[126][7] ),
        .\memoria_reg[12][0]_0 (\memoria_reg[12][0] ),
        .\memoria_reg[13][7]_0 (\memoria_reg[13][7] ),
        .\memoria_reg[14][7]_0 (\memoria_reg[14][7] ),
        .\memoria_reg[15][7]_0 (\memoria_reg[15][7] ),
        .\memoria_reg[15][7]_1 (\memoria_reg[15][7]_0 ),
        .\memoria_reg[16][7]_0 (\memoria_reg[16][7] ),
        .\memoria_reg[17][7]_0 (\memoria_reg[17][7] ),
        .\memoria_reg[18][0]_0 (\memoria_reg[18][0] ),
        .\memoria_reg[19][7]_0 (\memoria_reg[19][7] ),
        .\memoria_reg[1][7]_0 (\memoria_reg[1][7] ),
        .\memoria_reg[1][7]_1 (\memoria_reg[1][7]_0 ),
        .\memoria_reg[20][7]_0 (\memoria_reg[20][7] ),
        .\memoria_reg[21][7]_0 (\memoria_reg[21][7] ),
        .\memoria_reg[22][0]_0 (\memoria_reg[22][0] ),
        .\memoria_reg[23][7]_0 (\memoria_reg[23][7] ),
        .\memoria_reg[24][0]_0 (\memoria_reg[24][0] ),
        .\memoria_reg[25][7]_0 (\memoria_reg[25][7] ),
        .\memoria_reg[26][0]_0 (\memoria_reg[26][0] ),
        .\memoria_reg[27][7]_0 (\memoria_reg[27][7] ),
        .\memoria_reg[28][7]_0 (\memoria_reg[28][7] ),
        .\memoria_reg[29][0]_0 (\memoria_reg[29][0] ),
        .\memoria_reg[2][7]_0 (\memoria_reg[2][7] ),
        .\memoria_reg[30][7]_0 (\memoria_reg[30][7] ),
        .\memoria_reg[31][7]_0 (\memoria_reg[31][7] ),
        .\memoria_reg[32][7]_0 (\memoria_reg[32][7] ),
        .\memoria_reg[33][7]_0 (\memoria_reg[33][7] ),
        .\memoria_reg[34][7]_0 (\memoria_reg[34][7] ),
        .\memoria_reg[35][7]_0 (\memoria_reg[35][7] ),
        .\memoria_reg[36][7]_0 (\memoria_reg[36][7] ),
        .\memoria_reg[37][7]_0 (\memoria_reg[37][7] ),
        .\memoria_reg[38][7]_0 (\memoria_reg[38][7] ),
        .\memoria_reg[39][7]_0 (\memoria_reg[39][7] ),
        .\memoria_reg[3][7]_0 (\memoria_reg[3][7] ),
        .\memoria_reg[40][7]_0 (\memoria_reg[40][7] ),
        .\memoria_reg[41][7]_0 (\memoria_reg[41][7] ),
        .\memoria_reg[42][7]_0 (\memoria_reg[42][7] ),
        .\memoria_reg[43][7]_0 (\memoria_reg[43][7] ),
        .\memoria_reg[44][7]_0 (\memoria_reg[44][7] ),
        .\memoria_reg[45][7]_0 (\memoria_reg[45][7] ),
        .\memoria_reg[46][7]_0 (\memoria_reg[46][7] ),
        .\memoria_reg[47][7]_0 (\memoria_reg[47][7] ),
        .\memoria_reg[48][7]_0 (\memoria_reg[48][7] ),
        .\memoria_reg[49][7]_0 (\memoria_reg[49][7] ),
        .\memoria_reg[4][7]_0 (\memoria_reg[4][7] ),
        .\memoria_reg[50][7]_0 (\memoria_reg[50][7] ),
        .\memoria_reg[51][7]_0 (\memoria_reg[51][7] ),
        .\memoria_reg[52][7]_0 (\memoria_reg[52][7] ),
        .\memoria_reg[53][7]_0 (\memoria_reg[53][7] ),
        .\memoria_reg[54][7]_0 (\memoria_reg[54][7] ),
        .\memoria_reg[55][7]_0 (\memoria_reg[55][7] ),
        .\memoria_reg[56][7]_0 (\memoria_reg[56][7] ),
        .\memoria_reg[57][7]_0 (\memoria_reg[57][7] ),
        .\memoria_reg[58][7]_0 (\memoria_reg[58][7] ),
        .\memoria_reg[59][7]_0 (\memoria_reg[59][7] ),
        .\memoria_reg[5][7]_0 (\memoria_reg[5][7] ),
        .\memoria_reg[60][7]_0 (\memoria_reg[60][7] ),
        .\memoria_reg[61][7]_0 (\memoria_reg[61][7] ),
        .\memoria_reg[62][7]_0 (\memoria_reg[62][7] ),
        .\memoria_reg[63][7]_0 (\memoria_reg[63][7] ),
        .\memoria_reg[64][7]_0 (\memoria_reg[64][7] ),
        .\memoria_reg[65][7]_0 (\memoria_reg[65][7] ),
        .\memoria_reg[66][7]_0 (\memoria_reg[66][7] ),
        .\memoria_reg[67][7]_0 (\memoria_reg[67][7] ),
        .\memoria_reg[68][7]_0 (\memoria_reg[68][7] ),
        .\memoria_reg[69][7]_0 (\memoria_reg[69][7] ),
        .\memoria_reg[6][7]_0 (\memoria_reg[6][7] ),
        .\memoria_reg[70][7]_0 (\memoria_reg[70][7] ),
        .\memoria_reg[71][7]_0 (\memoria_reg[71][7] ),
        .\memoria_reg[72][7]_0 (\memoria_reg[72][7] ),
        .\memoria_reg[73][7]_0 (\memoria_reg[73][7] ),
        .\memoria_reg[74][7]_0 (\memoria_reg[74][7] ),
        .\memoria_reg[75][7]_0 (\memoria_reg[75][7] ),
        .\memoria_reg[76][7]_0 (\memoria_reg[76][7] ),
        .\memoria_reg[77][7]_0 (\memoria_reg[77][7] ),
        .\memoria_reg[78][7]_0 (\memoria_reg[78][7] ),
        .\memoria_reg[79][7]_0 (\memoria_reg[79][7] ),
        .\memoria_reg[7][0]_0 (\memoria_reg[7][0] ),
        .\memoria_reg[80][7]_0 (\memoria_reg[80][7] ),
        .\memoria_reg[81][7]_0 (\memoria_reg[81][7] ),
        .\memoria_reg[82][7]_0 (\memoria_reg[82][7] ),
        .\memoria_reg[83][7]_0 (\memoria_reg[83][7] ),
        .\memoria_reg[84][7]_0 (\memoria_reg[84][7] ),
        .\memoria_reg[85][7]_0 (\memoria_reg[85][7] ),
        .\memoria_reg[86][7]_0 (\memoria_reg[86][7] ),
        .\memoria_reg[87][7]_0 (\memoria_reg[87][7] ),
        .\memoria_reg[88][7]_0 (\memoria_reg[88][7] ),
        .\memoria_reg[89][7]_0 (\memoria_reg[89][7] ),
        .\memoria_reg[8][7]_0 (\memoria_reg[8][7] ),
        .\memoria_reg[90][7]_0 (\memoria_reg[90][7] ),
        .\memoria_reg[91][7]_0 (\memoria_reg[91][7] ),
        .\memoria_reg[92][7]_0 (\memoria_reg[92][7] ),
        .\memoria_reg[93][7]_0 (\memoria_reg[93][7] ),
        .\memoria_reg[94][7]_0 (\memoria_reg[94][7] ),
        .\memoria_reg[95][7]_0 (\memoria_reg[95][7] ),
        .\memoria_reg[96][7]_0 (\memoria_reg[96][7] ),
        .\memoria_reg[97][7]_0 (\memoria_reg[97][7] ),
        .\memoria_reg[98][7]_0 (\memoria_reg[98][7] ),
        .\memoria_reg[99][7]_0 (\memoria_reg[99][7] ),
        .\memoria_reg[9][7]_0 (\memoria_reg[9][7] ),
        .\reg_shift_mosi_reg[7]_i_19_0 (\reg_shift_mosi_reg[7]_i_19 ),
        .\reg_shift_mosi_reg[7]_i_27_0 (\reg_shift_mosi_reg[7]_i_27 ),
        .rst_pi_IBUF(rst_pi_IBUF),
        .selec_out(selec_out),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[4] (\state_reg[4] ));
endmodule

module module_reg_miso
   (D,
    Q,
    hold_ctrl,
    rst_pi_IBUF,
    E,
    CLK_10MHZ,
    \reg_shift_miso_reg[0]_0 );
  output [0:0]D;
  output [7:0]Q;
  input hold_ctrl;
  input rst_pi_IBUF;
  input [0:0]E;
  input CLK_10MHZ;
  input [0:0]\reg_shift_miso_reg[0]_0 ;

  wire CLK_10MHZ;
  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire hold_ctrl;
  wire [0:0]\reg_shift_miso_reg[0]_0 ;
  wire rst_pi_IBUF;

  LUT2 #(
    .INIT(4'hB)) 
    \memoria[103][2]_i_1 
       (.I0(Q[2]),
        .I1(hold_ctrl),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[0] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\reg_shift_miso_reg[0]_0 ),
        .Q(Q[0]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[1] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[0]),
        .Q(Q[1]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[2] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[1]),
        .Q(Q[2]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[3] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[2]),
        .Q(Q[3]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[4] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[3]),
        .Q(Q[4]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[5] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[4]),
        .Q(Q[5]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[6] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[5]),
        .Q(Q[6]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_miso_reg[7] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[6]),
        .Q(Q[7]),
        .R(rst_pi_IBUF));
endmodule

module module_reg_mosi
   (\reg_shift_mosi_reg[6]_0 ,
    \reg_shift_mosi_reg[5]_0 ,
    \reg_shift_mosi_reg[4]_0 ,
    \reg_shift_mosi_reg[3]_0 ,
    \reg_shift_mosi_reg[2]_0 ,
    \reg_shift_mosi_reg[1]_0 ,
    mosi_po_OBUF,
    \reg_shift_mosi_reg[0]_0 ,
    rst_pi_IBUF,
    reg_shift_mosi,
    p_1_in,
    CLK_10MHZ,
    mosi,
    dato_ram,
    we_reg,
    clk_fp);
  output \reg_shift_mosi_reg[6]_0 ;
  output \reg_shift_mosi_reg[5]_0 ;
  output \reg_shift_mosi_reg[4]_0 ;
  output \reg_shift_mosi_reg[3]_0 ;
  output \reg_shift_mosi_reg[2]_0 ;
  output \reg_shift_mosi_reg[1]_0 ;
  output mosi_po_OBUF;
  output \reg_shift_mosi_reg[0]_0 ;
  input rst_pi_IBUF;
  input [0:0]reg_shift_mosi;
  input [6:0]p_1_in;
  input CLK_10MHZ;
  input mosi;
  input [0:0]dato_ram;
  input we_reg;
  input clk_fp;

  wire CLK_10MHZ;
  wire clk_fp;
  wire [0:0]dato_ram;
  wire mosi;
  wire mosi_po_OBUF;
  wire [6:0]p_1_in;
  wire [0:0]reg_shift_mosi;
  wire \reg_shift_mosi[0]_i_1_n_0 ;
  wire \reg_shift_mosi_reg[0]_0 ;
  wire \reg_shift_mosi_reg[1]_0 ;
  wire \reg_shift_mosi_reg[2]_0 ;
  wire \reg_shift_mosi_reg[3]_0 ;
  wire \reg_shift_mosi_reg[4]_0 ;
  wire \reg_shift_mosi_reg[5]_0 ;
  wire \reg_shift_mosi_reg[6]_0 ;
  wire \reg_shift_mosi_reg_n_0_[7] ;
  wire rst_pi_IBUF;
  wire we_reg;

  FDRE #(
    .INIT(1'b0)) 
    mosi_reg
       (.C(CLK_10MHZ),
        .CE(mosi),
        .D(\reg_shift_mosi_reg_n_0_[7] ),
        .Q(mosi_po_OBUF),
        .R(rst_pi_IBUF));
  LUT5 #(
    .INIT(32'h44004450)) 
    \reg_shift_mosi[0]_i_1 
       (.I0(rst_pi_IBUF),
        .I1(dato_ram),
        .I2(\reg_shift_mosi_reg[0]_0 ),
        .I3(we_reg),
        .I4(clk_fp),
        .O(\reg_shift_mosi[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\reg_shift_mosi[0]_i_1_n_0 ),
        .Q(\reg_shift_mosi_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[1] 
       (.C(CLK_10MHZ),
        .CE(reg_shift_mosi),
        .D(p_1_in[0]),
        .Q(\reg_shift_mosi_reg[1]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[2] 
       (.C(CLK_10MHZ),
        .CE(reg_shift_mosi),
        .D(p_1_in[1]),
        .Q(\reg_shift_mosi_reg[2]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[3] 
       (.C(CLK_10MHZ),
        .CE(reg_shift_mosi),
        .D(p_1_in[2]),
        .Q(\reg_shift_mosi_reg[3]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[4] 
       (.C(CLK_10MHZ),
        .CE(reg_shift_mosi),
        .D(p_1_in[3]),
        .Q(\reg_shift_mosi_reg[4]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[5] 
       (.C(CLK_10MHZ),
        .CE(reg_shift_mosi),
        .D(p_1_in[4]),
        .Q(\reg_shift_mosi_reg[5]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[6] 
       (.C(CLK_10MHZ),
        .CE(reg_shift_mosi),
        .D(p_1_in[5]),
        .Q(\reg_shift_mosi_reg[6]_0 ),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \reg_shift_mosi_reg[7] 
       (.C(CLK_10MHZ),
        .CE(reg_shift_mosi),
        .D(p_1_in[6]),
        .Q(\reg_shift_mosi_reg_n_0_[7] ),
        .R(rst_pi_IBUF));
endmodule

module module_seg7_control
   (display_po_OBUF,
    display_select_po_OBUF,
    CLK_10MHZ,
    \display_po[6] ,
    \display_po[6]_0 ,
    rst_pi_IBUF,
    \display_po[0] ,
    \display_po[0]_0 ,
    \display_po[1] ,
    \display_po[1]_0 ,
    \display_po[2] ,
    \display_po[2]_0 ,
    \display_po[3] ,
    \display_po[3]_0 ,
    \display_po[4] ,
    \display_po[4]_0 ,
    \display_po[5] ,
    \display_po[5]_0 );
  output [6:0]display_po_OBUF;
  output [7:0]display_select_po_OBUF;
  input CLK_10MHZ;
  input \display_po[6] ;
  input \display_po[6]_0 ;
  input rst_pi_IBUF;
  input \display_po[0] ;
  input \display_po[0]_0 ;
  input \display_po[1] ;
  input \display_po[1]_0 ;
  input \display_po[2] ;
  input \display_po[2]_0 ;
  input \display_po[3] ;
  input \display_po[3]_0 ;
  input \display_po[4] ;
  input \display_po[4]_0 ;
  input \display_po[5] ;
  input \display_po[5]_0 ;

  wire CLK_10MHZ;
  wire [2:0]digit_select;
  wire \digit_select[0]_i_1_n_0 ;
  wire \digit_select[1]_i_1_n_0 ;
  wire \digit_select[2]_i_10_n_0 ;
  wire \digit_select[2]_i_1_n_0 ;
  wire \digit_select[2]_i_2_n_0 ;
  wire \digit_select[2]_i_3_n_0 ;
  wire \digit_select[2]_i_4_n_0 ;
  wire \digit_select[2]_i_5_n_0 ;
  wire \digit_select[2]_i_6_n_0 ;
  wire \digit_select[2]_i_7_n_0 ;
  wire \digit_select[2]_i_8_n_0 ;
  wire \digit_select[2]_i_9_n_0 ;
  wire \digit_timer[0]_i_1_n_0 ;
  wire \digit_timer[0]_i_3_n_0 ;
  wire [31:0]digit_timer_reg;
  wire \digit_timer_reg[0]_i_2_n_0 ;
  wire \digit_timer_reg[0]_i_2_n_1 ;
  wire \digit_timer_reg[0]_i_2_n_2 ;
  wire \digit_timer_reg[0]_i_2_n_3 ;
  wire \digit_timer_reg[0]_i_2_n_4 ;
  wire \digit_timer_reg[0]_i_2_n_5 ;
  wire \digit_timer_reg[0]_i_2_n_6 ;
  wire \digit_timer_reg[0]_i_2_n_7 ;
  wire \digit_timer_reg[12]_i_1_n_0 ;
  wire \digit_timer_reg[12]_i_1_n_1 ;
  wire \digit_timer_reg[12]_i_1_n_2 ;
  wire \digit_timer_reg[12]_i_1_n_3 ;
  wire \digit_timer_reg[12]_i_1_n_4 ;
  wire \digit_timer_reg[12]_i_1_n_5 ;
  wire \digit_timer_reg[12]_i_1_n_6 ;
  wire \digit_timer_reg[12]_i_1_n_7 ;
  wire \digit_timer_reg[16]_i_1_n_0 ;
  wire \digit_timer_reg[16]_i_1_n_1 ;
  wire \digit_timer_reg[16]_i_1_n_2 ;
  wire \digit_timer_reg[16]_i_1_n_3 ;
  wire \digit_timer_reg[16]_i_1_n_4 ;
  wire \digit_timer_reg[16]_i_1_n_5 ;
  wire \digit_timer_reg[16]_i_1_n_6 ;
  wire \digit_timer_reg[16]_i_1_n_7 ;
  wire \digit_timer_reg[20]_i_1_n_0 ;
  wire \digit_timer_reg[20]_i_1_n_1 ;
  wire \digit_timer_reg[20]_i_1_n_2 ;
  wire \digit_timer_reg[20]_i_1_n_3 ;
  wire \digit_timer_reg[20]_i_1_n_4 ;
  wire \digit_timer_reg[20]_i_1_n_5 ;
  wire \digit_timer_reg[20]_i_1_n_6 ;
  wire \digit_timer_reg[20]_i_1_n_7 ;
  wire \digit_timer_reg[24]_i_1_n_0 ;
  wire \digit_timer_reg[24]_i_1_n_1 ;
  wire \digit_timer_reg[24]_i_1_n_2 ;
  wire \digit_timer_reg[24]_i_1_n_3 ;
  wire \digit_timer_reg[24]_i_1_n_4 ;
  wire \digit_timer_reg[24]_i_1_n_5 ;
  wire \digit_timer_reg[24]_i_1_n_6 ;
  wire \digit_timer_reg[24]_i_1_n_7 ;
  wire \digit_timer_reg[28]_i_1_n_1 ;
  wire \digit_timer_reg[28]_i_1_n_2 ;
  wire \digit_timer_reg[28]_i_1_n_3 ;
  wire \digit_timer_reg[28]_i_1_n_4 ;
  wire \digit_timer_reg[28]_i_1_n_5 ;
  wire \digit_timer_reg[28]_i_1_n_6 ;
  wire \digit_timer_reg[28]_i_1_n_7 ;
  wire \digit_timer_reg[4]_i_1_n_0 ;
  wire \digit_timer_reg[4]_i_1_n_1 ;
  wire \digit_timer_reg[4]_i_1_n_2 ;
  wire \digit_timer_reg[4]_i_1_n_3 ;
  wire \digit_timer_reg[4]_i_1_n_4 ;
  wire \digit_timer_reg[4]_i_1_n_5 ;
  wire \digit_timer_reg[4]_i_1_n_6 ;
  wire \digit_timer_reg[4]_i_1_n_7 ;
  wire \digit_timer_reg[8]_i_1_n_0 ;
  wire \digit_timer_reg[8]_i_1_n_1 ;
  wire \digit_timer_reg[8]_i_1_n_2 ;
  wire \digit_timer_reg[8]_i_1_n_3 ;
  wire \digit_timer_reg[8]_i_1_n_4 ;
  wire \digit_timer_reg[8]_i_1_n_5 ;
  wire \digit_timer_reg[8]_i_1_n_6 ;
  wire \digit_timer_reg[8]_i_1_n_7 ;
  wire \display_po[0] ;
  wire \display_po[0]_0 ;
  wire \display_po[1] ;
  wire \display_po[1]_0 ;
  wire \display_po[2] ;
  wire \display_po[2]_0 ;
  wire \display_po[3] ;
  wire \display_po[3]_0 ;
  wire \display_po[4] ;
  wire \display_po[4]_0 ;
  wire \display_po[5] ;
  wire \display_po[5]_0 ;
  wire \display_po[6] ;
  wire \display_po[6]_0 ;
  wire [6:0]display_po_OBUF;
  wire [7:0]display_select_po_OBUF;
  wire rst_pi_IBUF;
  wire [3:3]\NLW_digit_timer_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit_select[0]_i_1 
       (.I0(\digit_select[2]_i_2_n_0 ),
        .I1(digit_select[0]),
        .O(\digit_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit_select[1]_i_1 
       (.I0(digit_select[0]),
        .I1(\digit_select[2]_i_2_n_0 ),
        .I2(digit_select[1]),
        .O(\digit_select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \digit_select[2]_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(\digit_select[2]_i_2_n_0 ),
        .I3(digit_select[2]),
        .O(\digit_select[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \digit_select[2]_i_10 
       (.I0(digit_timer_reg[0]),
        .I1(digit_timer_reg[17]),
        .I2(digit_timer_reg[10]),
        .I3(digit_timer_reg[3]),
        .O(\digit_select[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \digit_select[2]_i_2 
       (.I0(\digit_select[2]_i_3_n_0 ),
        .I1(\digit_select[2]_i_4_n_0 ),
        .I2(\digit_select[2]_i_5_n_0 ),
        .I3(\digit_select[2]_i_6_n_0 ),
        .O(\digit_select[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \digit_select[2]_i_3 
       (.I0(digit_timer_reg[4]),
        .I1(digit_timer_reg[28]),
        .I2(digit_timer_reg[7]),
        .I3(digit_timer_reg[24]),
        .I4(\digit_select[2]_i_7_n_0 ),
        .O(\digit_select[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \digit_select[2]_i_4 
       (.I0(digit_timer_reg[22]),
        .I1(digit_timer_reg[16]),
        .I2(digit_timer_reg[6]),
        .I3(digit_timer_reg[31]),
        .I4(\digit_select[2]_i_8_n_0 ),
        .O(\digit_select[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \digit_select[2]_i_5 
       (.I0(digit_timer_reg[11]),
        .I1(digit_timer_reg[2]),
        .I2(digit_timer_reg[21]),
        .I3(digit_timer_reg[19]),
        .I4(\digit_select[2]_i_9_n_0 ),
        .O(\digit_select[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \digit_select[2]_i_6 
       (.I0(digit_timer_reg[20]),
        .I1(digit_timer_reg[18]),
        .I2(digit_timer_reg[5]),
        .I3(digit_timer_reg[29]),
        .I4(\digit_select[2]_i_10_n_0 ),
        .O(\digit_select[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \digit_select[2]_i_7 
       (.I0(digit_timer_reg[26]),
        .I1(digit_timer_reg[14]),
        .I2(digit_timer_reg[30]),
        .I3(digit_timer_reg[27]),
        .O(\digit_select[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \digit_select[2]_i_8 
       (.I0(digit_timer_reg[8]),
        .I1(digit_timer_reg[13]),
        .I2(digit_timer_reg[1]),
        .I3(digit_timer_reg[15]),
        .O(\digit_select[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \digit_select[2]_i_9 
       (.I0(digit_timer_reg[9]),
        .I1(digit_timer_reg[23]),
        .I2(digit_timer_reg[25]),
        .I3(digit_timer_reg[12]),
        .O(\digit_select[2]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[0]_i_1_n_0 ),
        .Q(digit_select[0]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[1]_i_1_n_0 ),
        .Q(digit_select[1]),
        .R(rst_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[2]_i_1_n_0 ),
        .Q(digit_select[2]),
        .R(rst_pi_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    \digit_timer[0]_i_1 
       (.I0(rst_pi_IBUF),
        .I1(\digit_select[2]_i_2_n_0 ),
        .O(\digit_timer[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit_timer[0]_i_3 
       (.I0(digit_timer_reg[0]),
        .O(\digit_timer[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[0]_i_2_n_7 ),
        .Q(digit_timer_reg[0]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\digit_timer_reg[0]_i_2_n_0 ,\digit_timer_reg[0]_i_2_n_1 ,\digit_timer_reg[0]_i_2_n_2 ,\digit_timer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\digit_timer_reg[0]_i_2_n_4 ,\digit_timer_reg[0]_i_2_n_5 ,\digit_timer_reg[0]_i_2_n_6 ,\digit_timer_reg[0]_i_2_n_7 }),
        .S({digit_timer_reg[3:1],\digit_timer[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[10] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[8]_i_1_n_5 ),
        .Q(digit_timer_reg[10]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[11] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[8]_i_1_n_4 ),
        .Q(digit_timer_reg[11]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[12] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[12]_i_1_n_7 ),
        .Q(digit_timer_reg[12]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[12]_i_1 
       (.CI(\digit_timer_reg[8]_i_1_n_0 ),
        .CO({\digit_timer_reg[12]_i_1_n_0 ,\digit_timer_reg[12]_i_1_n_1 ,\digit_timer_reg[12]_i_1_n_2 ,\digit_timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\digit_timer_reg[12]_i_1_n_4 ,\digit_timer_reg[12]_i_1_n_5 ,\digit_timer_reg[12]_i_1_n_6 ,\digit_timer_reg[12]_i_1_n_7 }),
        .S(digit_timer_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[13] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[12]_i_1_n_6 ),
        .Q(digit_timer_reg[13]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[14] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[12]_i_1_n_5 ),
        .Q(digit_timer_reg[14]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[15] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[12]_i_1_n_4 ),
        .Q(digit_timer_reg[15]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[16] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[16]_i_1_n_7 ),
        .Q(digit_timer_reg[16]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[16]_i_1 
       (.CI(\digit_timer_reg[12]_i_1_n_0 ),
        .CO({\digit_timer_reg[16]_i_1_n_0 ,\digit_timer_reg[16]_i_1_n_1 ,\digit_timer_reg[16]_i_1_n_2 ,\digit_timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\digit_timer_reg[16]_i_1_n_4 ,\digit_timer_reg[16]_i_1_n_5 ,\digit_timer_reg[16]_i_1_n_6 ,\digit_timer_reg[16]_i_1_n_7 }),
        .S(digit_timer_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[17] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[16]_i_1_n_6 ),
        .Q(digit_timer_reg[17]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[18] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[16]_i_1_n_5 ),
        .Q(digit_timer_reg[18]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[19] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[16]_i_1_n_4 ),
        .Q(digit_timer_reg[19]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[0]_i_2_n_6 ),
        .Q(digit_timer_reg[1]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[20] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[20]_i_1_n_7 ),
        .Q(digit_timer_reg[20]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[20]_i_1 
       (.CI(\digit_timer_reg[16]_i_1_n_0 ),
        .CO({\digit_timer_reg[20]_i_1_n_0 ,\digit_timer_reg[20]_i_1_n_1 ,\digit_timer_reg[20]_i_1_n_2 ,\digit_timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\digit_timer_reg[20]_i_1_n_4 ,\digit_timer_reg[20]_i_1_n_5 ,\digit_timer_reg[20]_i_1_n_6 ,\digit_timer_reg[20]_i_1_n_7 }),
        .S(digit_timer_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[21] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[20]_i_1_n_6 ),
        .Q(digit_timer_reg[21]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[22] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[20]_i_1_n_5 ),
        .Q(digit_timer_reg[22]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[23] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[20]_i_1_n_4 ),
        .Q(digit_timer_reg[23]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[24] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[24]_i_1_n_7 ),
        .Q(digit_timer_reg[24]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[24]_i_1 
       (.CI(\digit_timer_reg[20]_i_1_n_0 ),
        .CO({\digit_timer_reg[24]_i_1_n_0 ,\digit_timer_reg[24]_i_1_n_1 ,\digit_timer_reg[24]_i_1_n_2 ,\digit_timer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\digit_timer_reg[24]_i_1_n_4 ,\digit_timer_reg[24]_i_1_n_5 ,\digit_timer_reg[24]_i_1_n_6 ,\digit_timer_reg[24]_i_1_n_7 }),
        .S(digit_timer_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[25] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[24]_i_1_n_6 ),
        .Q(digit_timer_reg[25]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[26] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[24]_i_1_n_5 ),
        .Q(digit_timer_reg[26]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[27] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[24]_i_1_n_4 ),
        .Q(digit_timer_reg[27]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[28] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[28]_i_1_n_7 ),
        .Q(digit_timer_reg[28]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[28]_i_1 
       (.CI(\digit_timer_reg[24]_i_1_n_0 ),
        .CO({\NLW_digit_timer_reg[28]_i_1_CO_UNCONNECTED [3],\digit_timer_reg[28]_i_1_n_1 ,\digit_timer_reg[28]_i_1_n_2 ,\digit_timer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\digit_timer_reg[28]_i_1_n_4 ,\digit_timer_reg[28]_i_1_n_5 ,\digit_timer_reg[28]_i_1_n_6 ,\digit_timer_reg[28]_i_1_n_7 }),
        .S(digit_timer_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[29] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[28]_i_1_n_6 ),
        .Q(digit_timer_reg[29]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[0]_i_2_n_5 ),
        .Q(digit_timer_reg[2]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[30] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[28]_i_1_n_5 ),
        .Q(digit_timer_reg[30]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[31] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[28]_i_1_n_4 ),
        .Q(digit_timer_reg[31]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[3] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[0]_i_2_n_4 ),
        .Q(digit_timer_reg[3]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[4] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[4]_i_1_n_7 ),
        .Q(digit_timer_reg[4]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[4]_i_1 
       (.CI(\digit_timer_reg[0]_i_2_n_0 ),
        .CO({\digit_timer_reg[4]_i_1_n_0 ,\digit_timer_reg[4]_i_1_n_1 ,\digit_timer_reg[4]_i_1_n_2 ,\digit_timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\digit_timer_reg[4]_i_1_n_4 ,\digit_timer_reg[4]_i_1_n_5 ,\digit_timer_reg[4]_i_1_n_6 ,\digit_timer_reg[4]_i_1_n_7 }),
        .S(digit_timer_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[5] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[4]_i_1_n_6 ),
        .Q(digit_timer_reg[5]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[6] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[4]_i_1_n_5 ),
        .Q(digit_timer_reg[6]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[7] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[4]_i_1_n_4 ),
        .Q(digit_timer_reg[7]),
        .R(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[8] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[8]_i_1_n_7 ),
        .Q(digit_timer_reg[8]),
        .R(\digit_timer[0]_i_1_n_0 ));
  CARRY4 \digit_timer_reg[8]_i_1 
       (.CI(\digit_timer_reg[4]_i_1_n_0 ),
        .CO({\digit_timer_reg[8]_i_1_n_0 ,\digit_timer_reg[8]_i_1_n_1 ,\digit_timer_reg[8]_i_1_n_2 ,\digit_timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\digit_timer_reg[8]_i_1_n_4 ,\digit_timer_reg[8]_i_1_n_5 ,\digit_timer_reg[8]_i_1_n_6 ,\digit_timer_reg[8]_i_1_n_7 }),
        .S(digit_timer_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[9] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer_reg[8]_i_1_n_6 ),
        .Q(digit_timer_reg[9]),
        .R(\digit_timer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \display_po_OBUF[0]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(\display_po[0] ),
        .I2(digit_select[0]),
        .I3(\display_po[0]_0 ),
        .I4(digit_select[2]),
        .O(display_po_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \display_po_OBUF[1]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(\display_po[1] ),
        .I2(digit_select[0]),
        .I3(\display_po[1]_0 ),
        .I4(digit_select[2]),
        .O(display_po_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \display_po_OBUF[2]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(\display_po[2] ),
        .I2(digit_select[0]),
        .I3(\display_po[2]_0 ),
        .I4(digit_select[2]),
        .O(display_po_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \display_po_OBUF[3]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(\display_po[3] ),
        .I2(digit_select[0]),
        .I3(\display_po[3]_0 ),
        .I4(digit_select[2]),
        .O(display_po_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \display_po_OBUF[4]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(\display_po[4] ),
        .I2(digit_select[0]),
        .I3(\display_po[4]_0 ),
        .I4(digit_select[2]),
        .O(display_po_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \display_po_OBUF[5]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(\display_po[5] ),
        .I2(digit_select[0]),
        .I3(\display_po[5]_0 ),
        .I4(digit_select[2]),
        .O(display_po_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hFFFFEFEA)) 
    \display_po_OBUF[6]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(\display_po[6] ),
        .I2(digit_select[0]),
        .I3(\display_po[6]_0 ),
        .I4(digit_select[1]),
        .O(display_po_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \display_select_po_OBUF[0]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[1]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[2]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[3]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[4]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[5]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[6]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \display_select_po_OBUF[7]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[7]));
endmodule

module module_state_machine_pmodALS
   (Q,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    progress_reg,
    \FSM_onehot_state_reg[0]_0 ,
    clk1s,
    proccess,
    we_addr_reg,
    send,
    we_addr_reg_0,
    we_addr,
    we_reg_control,
    rst_pi_IBUF,
    CLK_10MHZ);
  output [2:0]Q;
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[2]_0 ;
  output progress_reg;
  output \FSM_onehot_state_reg[0]_0 ;
  input clk1s;
  input proccess;
  input we_addr_reg;
  input send;
  input we_addr_reg_0;
  input we_addr;
  input we_reg_control;
  input rst_pi_IBUF;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire \FSM_onehot_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [2:0]Q;
  wire clk1s;
  wire next_state;
  wire proccess;
  wire progress_reg;
  wire rst_pi_IBUF;
  wire send;
  wire we_addr;
  wire we_addr_reg;
  wire we_addr_reg_0;
  wire we_reg_control;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[0]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(we_addr_reg),
        .I2(clk1s),
        .I3(Q[0]),
        .O(\FSM_onehot_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(clk1s),
        .I2(proccess),
        .I3(Q[1]),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[2]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(proccess),
        .I2(we_addr_reg),
        .I3(Q[2]),
        .O(\FSM_onehot_next_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_next_state_reg[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(next_state));
  (* FSM_ENCODED_STATES = "WAIT_SEND:010,WAIT_PULSO:001,PMODALS:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(Q[0]),
        .S(rst_pi_IBUF));
  (* FSM_ENCODED_STATES = "WAIT_SEND:010,WAIT_PULSO:001,PMODALS:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(rst_pi_IBUF));
  (* FSM_ENCODED_STATES = "WAIT_SEND:010,WAIT_PULSO:001,PMODALS:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(rst_pi_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h00FF1500)) 
    \addr_pmod[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(clk1s),
        .I3(Q[2]),
        .I4(we_addr_reg),
        .O(\FSM_onehot_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5573737311000000)) 
    send_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(proccess),
        .I3(clk1s),
        .I4(Q[0]),
        .I5(send),
        .O(\FSM_onehot_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00FF05FF00E000E0)) 
    we_addr_i_1
       (.I0(we_addr_reg_0),
        .I1(proccess),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(we_addr_reg),
        .I5(we_addr),
        .O(progress_reg));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h07F70007)) 
    we_reg_control_i_1
       (.I0(Q[0]),
        .I1(clk1s),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(we_reg_control),
        .O(\FSM_onehot_state_reg[0]_0 ));
endmodule

module module_state_machine_spi
   (\FSM_sequential_state_reg[0]_0 ,
    Q,
    \FSM_sequential_state_reg[0]_1 ,
    en_conta_reg,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    contador_0,
    \FSM_sequential_state_reg[0]_2 ,
    \FSM_sequential_state_reg[0]_3 ,
    \contador_reg[0] ,
    CO,
    hold_ctrl,
    rst_pi_IBUF,
    CLK_10MHZ);
  output \FSM_sequential_state_reg[0]_0 ;
  output [1:0]Q;
  output [0:0]\FSM_sequential_state_reg[0]_1 ;
  output en_conta_reg;
  output [0:0]\state_reg[1] ;
  output \state_reg[1]_0 ;
  input contador_0;
  input \FSM_sequential_state_reg[0]_2 ;
  input \FSM_sequential_state_reg[0]_3 ;
  input [0:0]\contador_reg[0] ;
  input [0:0]CO;
  input hold_ctrl;
  input rst_pi_IBUF;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [0:0]CO;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire \FSM_sequential_state_reg[0]_3 ;
  wire [1:0]Q;
  wire contador_0;
  wire [0:0]\contador_reg[0] ;
  wire en_conta_reg;
  wire hold_ctrl;
  wire [1:0]next_state;
  wire rst_pi_IBUF;
  wire [0:0]\state_reg[1] ;
  wire \state_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h72725500)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg[0]_2 ),
        .I2(contador_0),
        .I3(\FSM_sequential_state_reg[0]_3 ),
        .I4(Q[1]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "DOWNLOAD:11,TRANSMISSION:10,WAIT_SEND:00,LOAD:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q[0]),
        .R(rst_pi_IBUF));
  (* FSM_ENCODED_STATES = "DOWNLOAD:11,TRANSMISSION:10,WAIT_SEND:00,LOAD:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(Q[1]),
        .R(rst_pi_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h0000CA0A)) 
    \addr2[6]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_3 ),
        .I1(CO),
        .I2(Q[1]),
        .I3(contador_0),
        .I4(Q[0]),
        .O(\state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h00000454)) 
    \contador[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg[0]_3 ),
        .I2(Q[1]),
        .I3(contador_0),
        .I4(\contador_reg[0] ),
        .O(\FSM_sequential_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \contador[3]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(contador_0),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h0074)) 
    \contador[3]_i_4 
       (.I0(contador_0),
        .I1(Q[1]),
        .I2(\FSM_sequential_state_reg[0]_3 ),
        .I3(Q[0]),
        .O(en_conta_reg));
  LUT4 #(
    .INIT(16'hFE02)) 
    hold_ctrl_i_1
       (.I0(\FSM_sequential_state_reg[0]_3 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(hold_ctrl),
        .O(\state_reg[1]_0 ));
endmodule

module top_interface_spi
   (mosi_po_OBUF,
    \cntr_str_i[n_tx_end] ,
    \state_reg[1] ,
    sck_po_OBUF,
    proccess,
    we_rx,
    D,
    cs_ctrl_po_OBUF,
    rst_pi_IBUF,
    CLK_10MHZ,
    \state_reg[22]_inv ,
    \state_reg[4] ,
    selec_out,
    we_reg_control,
    addr_pmod,
    send,
    \reg_shift_miso_reg[0] );
  output mosi_po_OBUF;
  output [0:0]\cntr_str_i[n_tx_end] ;
  output \state_reg[1] ;
  output sck_po_OBUF;
  output proccess;
  output we_rx;
  output [7:0]D;
  output cs_ctrl_po_OBUF;
  input rst_pi_IBUF;
  input CLK_10MHZ;
  input \state_reg[22]_inv ;
  input \state_reg[4] ;
  input selec_out;
  input we_reg_control;
  input [0:0]addr_pmod;
  input send;
  input [0:0]\reg_shift_miso_reg[0] ;

  wire CLK_10MHZ;
  wire [7:0]D;
  wire [0:0]addr_pmod;
  wire [6:0]addr_ram;
  wire [0:0]\cntr_str_i[n_tx_end] ;
  wire cs_ctrl_po_OBUF;
  wire [7:0]datain_ram;
  wire [0:0]dato_ram;
  wire [7:0]dato_recibido;
  wire master_race_spi_n_100;
  wire master_race_spi_n_101;
  wire master_race_spi_n_102;
  wire master_race_spi_n_103;
  wire master_race_spi_n_104;
  wire master_race_spi_n_105;
  wire master_race_spi_n_106;
  wire master_race_spi_n_107;
  wire master_race_spi_n_108;
  wire master_race_spi_n_109;
  wire master_race_spi_n_110;
  wire master_race_spi_n_111;
  wire master_race_spi_n_112;
  wire master_race_spi_n_113;
  wire master_race_spi_n_114;
  wire master_race_spi_n_115;
  wire master_race_spi_n_116;
  wire master_race_spi_n_117;
  wire master_race_spi_n_118;
  wire master_race_spi_n_119;
  wire master_race_spi_n_120;
  wire master_race_spi_n_121;
  wire master_race_spi_n_122;
  wire master_race_spi_n_123;
  wire master_race_spi_n_124;
  wire master_race_spi_n_125;
  wire master_race_spi_n_126;
  wire master_race_spi_n_127;
  wire master_race_spi_n_128;
  wire master_race_spi_n_129;
  wire master_race_spi_n_13;
  wire master_race_spi_n_130;
  wire master_race_spi_n_131;
  wire master_race_spi_n_132;
  wire master_race_spi_n_133;
  wire master_race_spi_n_134;
  wire master_race_spi_n_135;
  wire master_race_spi_n_136;
  wire master_race_spi_n_137;
  wire master_race_spi_n_138;
  wire master_race_spi_n_139;
  wire master_race_spi_n_14;
  wire master_race_spi_n_140;
  wire master_race_spi_n_141;
  wire master_race_spi_n_142;
  wire master_race_spi_n_143;
  wire master_race_spi_n_144;
  wire master_race_spi_n_145;
  wire master_race_spi_n_146;
  wire master_race_spi_n_147;
  wire master_race_spi_n_148;
  wire master_race_spi_n_149;
  wire master_race_spi_n_15;
  wire master_race_spi_n_150;
  wire master_race_spi_n_151;
  wire master_race_spi_n_152;
  wire master_race_spi_n_153;
  wire master_race_spi_n_154;
  wire master_race_spi_n_155;
  wire master_race_spi_n_156;
  wire master_race_spi_n_157;
  wire master_race_spi_n_158;
  wire master_race_spi_n_159;
  wire master_race_spi_n_16;
  wire master_race_spi_n_160;
  wire master_race_spi_n_161;
  wire master_race_spi_n_162;
  wire master_race_spi_n_163;
  wire master_race_spi_n_17;
  wire master_race_spi_n_18;
  wire master_race_spi_n_19;
  wire master_race_spi_n_20;
  wire master_race_spi_n_21;
  wire master_race_spi_n_22;
  wire master_race_spi_n_23;
  wire master_race_spi_n_24;
  wire master_race_spi_n_25;
  wire master_race_spi_n_26;
  wire master_race_spi_n_27;
  wire master_race_spi_n_28;
  wire master_race_spi_n_29;
  wire master_race_spi_n_30;
  wire master_race_spi_n_4;
  wire master_race_spi_n_47;
  wire master_race_spi_n_48;
  wire master_race_spi_n_49;
  wire master_race_spi_n_5;
  wire master_race_spi_n_50;
  wire master_race_spi_n_51;
  wire master_race_spi_n_52;
  wire master_race_spi_n_53;
  wire master_race_spi_n_54;
  wire master_race_spi_n_55;
  wire master_race_spi_n_56;
  wire master_race_spi_n_57;
  wire master_race_spi_n_58;
  wire master_race_spi_n_59;
  wire master_race_spi_n_60;
  wire master_race_spi_n_61;
  wire master_race_spi_n_62;
  wire master_race_spi_n_63;
  wire master_race_spi_n_64;
  wire master_race_spi_n_65;
  wire master_race_spi_n_66;
  wire master_race_spi_n_67;
  wire master_race_spi_n_68;
  wire master_race_spi_n_69;
  wire master_race_spi_n_70;
  wire master_race_spi_n_71;
  wire master_race_spi_n_72;
  wire master_race_spi_n_73;
  wire master_race_spi_n_74;
  wire master_race_spi_n_75;
  wire master_race_spi_n_76;
  wire master_race_spi_n_77;
  wire master_race_spi_n_78;
  wire master_race_spi_n_79;
  wire master_race_spi_n_80;
  wire master_race_spi_n_81;
  wire master_race_spi_n_82;
  wire master_race_spi_n_83;
  wire master_race_spi_n_84;
  wire master_race_spi_n_85;
  wire master_race_spi_n_86;
  wire master_race_spi_n_87;
  wire master_race_spi_n_88;
  wire master_race_spi_n_89;
  wire master_race_spi_n_90;
  wire master_race_spi_n_91;
  wire master_race_spi_n_92;
  wire master_race_spi_n_93;
  wire master_race_spi_n_94;
  wire master_race_spi_n_95;
  wire master_race_spi_n_96;
  wire master_race_spi_n_97;
  wire master_race_spi_n_98;
  wire master_race_spi_n_99;
  wire memoria_ram_n_10;
  wire memoria_ram_n_11;
  wire memoria_ram_n_12;
  wire memoria_ram_n_13;
  wire memoria_ram_n_14;
  wire memoria_ram_n_15;
  wire memoria_ram_n_9;
  wire mosi_po_OBUF;
  wire proccess;
  wire [0:0]\reg_shift_miso_reg[0] ;
  wire registro_control_n_2;
  wire registro_control_n_3;
  wire registro_control_n_4;
  wire registro_control_n_5;
  wire registro_control_n_7;
  wire rst_pi_IBUF;
  wire sck_po_OBUF;
  wire selec_out;
  wire send;
  wire \state_reg[1] ;
  wire \state_reg[22]_inv ;
  wire \state_reg[4] ;
  wire we_reg_control;
  wire we_rx;

  top_master_race_spi master_race_spi
       (.CLK_10MHZ(CLK_10MHZ),
        .D(datain_ram),
        .DI(registro_control_n_7),
        .E(master_race_spi_n_5),
        .\FSM_sequential_state_reg[0] (\state_reg[1] ),
        .Q(dato_recibido),
        .S({registro_control_n_2,registro_control_n_3,registro_control_n_4,registro_control_n_5}),
        .\addr2_reg[0] (master_race_spi_n_4),
        .\addr2_reg[6] (master_race_spi_n_16),
        .\addr2_reg[6]_0 (master_race_spi_n_17),
        .\addr2_reg[6]_1 (master_race_spi_n_18),
        .\addr2_reg[6]_2 (master_race_spi_n_19),
        .\addr2_reg[6]_3 (master_race_spi_n_21),
        .\addr2_reg[6]_4 (master_race_spi_n_22),
        .\addr2_reg[6]_5 (master_race_spi_n_23),
        .addr_pmod(addr_pmod),
        .addr_ram(addr_ram),
        .clk_out_reg(sck_po_OBUF),
        .dato_ram(dato_ram),
        .hold_ctrl_reg(master_race_spi_n_13),
        .hold_ctrl_reg_0(master_race_spi_n_20),
        .hold_ctrl_reg_1(master_race_spi_n_50),
        .hold_ctrl_reg_10(master_race_spi_n_59),
        .hold_ctrl_reg_100(master_race_spi_n_149),
        .hold_ctrl_reg_101(master_race_spi_n_150),
        .hold_ctrl_reg_102(master_race_spi_n_151),
        .hold_ctrl_reg_103(master_race_spi_n_152),
        .hold_ctrl_reg_104(master_race_spi_n_153),
        .hold_ctrl_reg_105(master_race_spi_n_154),
        .hold_ctrl_reg_106(master_race_spi_n_155),
        .hold_ctrl_reg_107(master_race_spi_n_156),
        .hold_ctrl_reg_108(master_race_spi_n_157),
        .hold_ctrl_reg_109(master_race_spi_n_158),
        .hold_ctrl_reg_11(master_race_spi_n_60),
        .hold_ctrl_reg_110(master_race_spi_n_159),
        .hold_ctrl_reg_111(master_race_spi_n_160),
        .hold_ctrl_reg_112(master_race_spi_n_161),
        .hold_ctrl_reg_113(master_race_spi_n_162),
        .hold_ctrl_reg_114(master_race_spi_n_163),
        .hold_ctrl_reg_12(master_race_spi_n_61),
        .hold_ctrl_reg_13(master_race_spi_n_62),
        .hold_ctrl_reg_14(master_race_spi_n_63),
        .hold_ctrl_reg_15(master_race_spi_n_64),
        .hold_ctrl_reg_16(master_race_spi_n_65),
        .hold_ctrl_reg_17(master_race_spi_n_66),
        .hold_ctrl_reg_18(master_race_spi_n_67),
        .hold_ctrl_reg_19(master_race_spi_n_68),
        .hold_ctrl_reg_2(master_race_spi_n_51),
        .hold_ctrl_reg_20(master_race_spi_n_69),
        .hold_ctrl_reg_21(master_race_spi_n_70),
        .hold_ctrl_reg_22(master_race_spi_n_71),
        .hold_ctrl_reg_23(master_race_spi_n_72),
        .hold_ctrl_reg_24(master_race_spi_n_73),
        .hold_ctrl_reg_25(master_race_spi_n_74),
        .hold_ctrl_reg_26(master_race_spi_n_75),
        .hold_ctrl_reg_27(master_race_spi_n_76),
        .hold_ctrl_reg_28(master_race_spi_n_77),
        .hold_ctrl_reg_29(master_race_spi_n_78),
        .hold_ctrl_reg_3(master_race_spi_n_52),
        .hold_ctrl_reg_30(master_race_spi_n_79),
        .hold_ctrl_reg_31(master_race_spi_n_80),
        .hold_ctrl_reg_32(master_race_spi_n_81),
        .hold_ctrl_reg_33(master_race_spi_n_82),
        .hold_ctrl_reg_34(master_race_spi_n_83),
        .hold_ctrl_reg_35(master_race_spi_n_84),
        .hold_ctrl_reg_36(master_race_spi_n_85),
        .hold_ctrl_reg_37(master_race_spi_n_86),
        .hold_ctrl_reg_38(master_race_spi_n_87),
        .hold_ctrl_reg_39(master_race_spi_n_88),
        .hold_ctrl_reg_4(master_race_spi_n_53),
        .hold_ctrl_reg_40(master_race_spi_n_89),
        .hold_ctrl_reg_41(master_race_spi_n_90),
        .hold_ctrl_reg_42(master_race_spi_n_91),
        .hold_ctrl_reg_43(master_race_spi_n_92),
        .hold_ctrl_reg_44(master_race_spi_n_93),
        .hold_ctrl_reg_45(master_race_spi_n_94),
        .hold_ctrl_reg_46(master_race_spi_n_95),
        .hold_ctrl_reg_47(master_race_spi_n_96),
        .hold_ctrl_reg_48(master_race_spi_n_97),
        .hold_ctrl_reg_49(master_race_spi_n_98),
        .hold_ctrl_reg_5(master_race_spi_n_54),
        .hold_ctrl_reg_50(master_race_spi_n_99),
        .hold_ctrl_reg_51(master_race_spi_n_100),
        .hold_ctrl_reg_52(master_race_spi_n_101),
        .hold_ctrl_reg_53(master_race_spi_n_102),
        .hold_ctrl_reg_54(master_race_spi_n_103),
        .hold_ctrl_reg_55(master_race_spi_n_104),
        .hold_ctrl_reg_56(master_race_spi_n_105),
        .hold_ctrl_reg_57(master_race_spi_n_106),
        .hold_ctrl_reg_58(master_race_spi_n_107),
        .hold_ctrl_reg_59(master_race_spi_n_108),
        .hold_ctrl_reg_6(master_race_spi_n_55),
        .hold_ctrl_reg_60(master_race_spi_n_109),
        .hold_ctrl_reg_61(master_race_spi_n_110),
        .hold_ctrl_reg_62(master_race_spi_n_111),
        .hold_ctrl_reg_63(master_race_spi_n_112),
        .hold_ctrl_reg_64(master_race_spi_n_113),
        .hold_ctrl_reg_65(master_race_spi_n_114),
        .hold_ctrl_reg_66(master_race_spi_n_115),
        .hold_ctrl_reg_67(master_race_spi_n_116),
        .hold_ctrl_reg_68(master_race_spi_n_117),
        .hold_ctrl_reg_69(master_race_spi_n_118),
        .hold_ctrl_reg_7(master_race_spi_n_56),
        .hold_ctrl_reg_70(master_race_spi_n_119),
        .hold_ctrl_reg_71(master_race_spi_n_120),
        .hold_ctrl_reg_72(master_race_spi_n_121),
        .hold_ctrl_reg_73(master_race_spi_n_122),
        .hold_ctrl_reg_74(master_race_spi_n_123),
        .hold_ctrl_reg_75(master_race_spi_n_124),
        .hold_ctrl_reg_76(master_race_spi_n_125),
        .hold_ctrl_reg_77(master_race_spi_n_126),
        .hold_ctrl_reg_78(master_race_spi_n_127),
        .hold_ctrl_reg_79(master_race_spi_n_128),
        .hold_ctrl_reg_8(master_race_spi_n_57),
        .hold_ctrl_reg_80(master_race_spi_n_129),
        .hold_ctrl_reg_81(master_race_spi_n_130),
        .hold_ctrl_reg_82(master_race_spi_n_131),
        .hold_ctrl_reg_83(master_race_spi_n_132),
        .hold_ctrl_reg_84(master_race_spi_n_133),
        .hold_ctrl_reg_85(master_race_spi_n_134),
        .hold_ctrl_reg_86(master_race_spi_n_135),
        .hold_ctrl_reg_87(master_race_spi_n_136),
        .hold_ctrl_reg_88(master_race_spi_n_137),
        .hold_ctrl_reg_89(master_race_spi_n_138),
        .hold_ctrl_reg_9(master_race_spi_n_58),
        .hold_ctrl_reg_90(master_race_spi_n_139),
        .hold_ctrl_reg_91(master_race_spi_n_140),
        .hold_ctrl_reg_92(master_race_spi_n_141),
        .hold_ctrl_reg_93(master_race_spi_n_142),
        .hold_ctrl_reg_94(master_race_spi_n_143),
        .hold_ctrl_reg_95(master_race_spi_n_144),
        .hold_ctrl_reg_96(master_race_spi_n_145),
        .hold_ctrl_reg_97(master_race_spi_n_146),
        .hold_ctrl_reg_98(master_race_spi_n_147),
        .hold_ctrl_reg_99(master_race_spi_n_148),
        .mosi_po_OBUF(mosi_po_OBUF),
        .progress_reg(proccess),
        .progress_reg_0(master_race_spi_n_47),
        .progress_reg_1(master_race_spi_n_48),
        .progress_reg_2(master_race_spi_n_49),
        .\reg_shift_miso_reg[0] (\reg_shift_miso_reg[0] ),
        .\reg_shift_mosi_reg[1] (memoria_ram_n_15),
        .\reg_shift_mosi_reg[2] (memoria_ram_n_14),
        .\reg_shift_mosi_reg[3] (memoria_ram_n_13),
        .\reg_shift_mosi_reg[4] (memoria_ram_n_12),
        .\reg_shift_mosi_reg[5] (memoria_ram_n_11),
        .\reg_shift_mosi_reg[6] (memoria_ram_n_10),
        .\reg_shift_mosi_reg[7] (memoria_ram_n_9),
        .rst_pi_IBUF(rst_pi_IBUF),
        .\rx_reg[0] (master_race_spi_n_27),
        .\rx_reg[1] (master_race_spi_n_28),
        .\rx_reg[5] (master_race_spi_n_29),
        .\rx_reg[6] (master_race_spi_n_30),
        .selec_out(selec_out),
        .we_ram2_reg(master_race_spi_n_14),
        .we_ram2_reg_0(master_race_spi_n_15),
        .we_ram2_reg_1(master_race_spi_n_24),
        .we_ram2_reg_2(master_race_spi_n_25),
        .we_ram2_reg_3(master_race_spi_n_26),
        .we_reg_control(we_reg_control),
        .we_rx(we_rx));
  module_reg_datos memoria_ram
       (.CLK_10MHZ(CLK_10MHZ),
        .D(D),
        .E(master_race_spi_n_97),
        .addr_ram(addr_ram),
        .dato_ram(dato_ram),
        .hold_ctrl_reg(memoria_ram_n_9),
        .hold_ctrl_reg_0(memoria_ram_n_10),
        .hold_ctrl_reg_1(memoria_ram_n_11),
        .hold_ctrl_reg_2(memoria_ram_n_12),
        .hold_ctrl_reg_3(memoria_ram_n_13),
        .hold_ctrl_reg_4(memoria_ram_n_14),
        .hold_ctrl_reg_5(memoria_ram_n_15),
        .\memoria_reg[0][7] (master_race_spi_n_159),
        .\memoria_reg[100][7] (master_race_spi_n_72),
        .\memoria_reg[101][7] (master_race_spi_n_95),
        .\memoria_reg[102][7] (master_race_spi_n_54),
        .\memoria_reg[103][7] (master_race_spi_n_89),
        .\memoria_reg[104][7] (master_race_spi_n_71),
        .\memoria_reg[105][7] (master_race_spi_n_94),
        .\memoria_reg[106][7] (master_race_spi_n_53),
        .\memoria_reg[107][7] (master_race_spi_n_88),
        .\memoria_reg[108][7] (master_race_spi_n_70),
        .\memoria_reg[109][7] (master_race_spi_n_93),
        .\memoria_reg[10][7] (master_race_spi_n_162),
        .\memoria_reg[110][7] (master_race_spi_n_52),
        .\memoria_reg[111][7] (master_race_spi_n_87),
        .\memoria_reg[112][7] (master_race_spi_n_69),
        .\memoria_reg[113][7] (master_race_spi_n_92),
        .\memoria_reg[114][7] (master_race_spi_n_51),
        .\memoria_reg[115][7] (master_race_spi_n_86),
        .\memoria_reg[116][7] (master_race_spi_n_68),
        .\memoria_reg[117][7] (master_race_spi_n_91),
        .\memoria_reg[118][7] (master_race_spi_n_50),
        .\memoria_reg[119][7] (master_race_spi_n_85),
        .\memoria_reg[11][7] (master_race_spi_n_155),
        .\memoria_reg[120][7] (master_race_spi_n_108),
        .\memoria_reg[121][7] (master_race_spi_n_107),
        .\memoria_reg[122][7] (master_race_spi_n_106),
        .\memoria_reg[123][7] (master_race_spi_n_105),
        .\memoria_reg[124][7] (master_race_spi_n_100),
        .\memoria_reg[125][7] (master_race_spi_n_99),
        .\memoria_reg[126][7] (master_race_spi_n_98),
        .\memoria_reg[12][0] (master_race_spi_n_163),
        .\memoria_reg[13][7] (master_race_spi_n_147),
        .\memoria_reg[14][7] (master_race_spi_n_156),
        .\memoria_reg[15][7] (dato_recibido),
        .\memoria_reg[15][7]_0 (master_race_spi_n_154),
        .\memoria_reg[16][7] (master_race_spi_n_153),
        .\memoria_reg[17][7] (master_race_spi_n_152),
        .\memoria_reg[18][0] (master_race_spi_n_26),
        .\memoria_reg[19][7] (master_race_spi_n_113),
        .\memoria_reg[1][7] (datain_ram),
        .\memoria_reg[1][7]_0 (master_race_spi_n_151),
        .\memoria_reg[20][7] (master_race_spi_n_149),
        .\memoria_reg[21][7] (master_race_spi_n_21),
        .\memoria_reg[22][0] (master_race_spi_n_25),
        .\memoria_reg[23][7] (master_race_spi_n_16),
        .\memoria_reg[24][0] (master_race_spi_n_15),
        .\memoria_reg[25][7] (master_race_spi_n_22),
        .\memoria_reg[26][0] (master_race_spi_n_14),
        .\memoria_reg[27][7] (master_race_spi_n_17),
        .\memoria_reg[28][7] (master_race_spi_n_23),
        .\memoria_reg[29][0] (master_race_spi_n_24),
        .\memoria_reg[2][7] (master_race_spi_n_158),
        .\memoria_reg[30][7] (master_race_spi_n_18),
        .\memoria_reg[31][7] (master_race_spi_n_19),
        .\memoria_reg[32][7] (master_race_spi_n_5),
        .\memoria_reg[33][7] (master_race_spi_n_79),
        .\memoria_reg[34][7] (master_race_spi_n_67),
        .\memoria_reg[35][7] (master_race_spi_n_61),
        .\memoria_reg[36][7] (master_race_spi_n_84),
        .\memoria_reg[37][7] (master_race_spi_n_78),
        .\memoria_reg[38][7] (master_race_spi_n_66),
        .\memoria_reg[39][7] (master_race_spi_n_60),
        .\memoria_reg[3][7] (master_race_spi_n_114),
        .\memoria_reg[40][7] (master_race_spi_n_83),
        .\memoria_reg[41][7] (master_race_spi_n_77),
        .\memoria_reg[42][7] (master_race_spi_n_65),
        .\memoria_reg[43][7] (master_race_spi_n_59),
        .\memoria_reg[44][7] (master_race_spi_n_82),
        .\memoria_reg[45][7] (master_race_spi_n_76),
        .\memoria_reg[46][7] (master_race_spi_n_64),
        .\memoria_reg[47][7] (master_race_spi_n_58),
        .\memoria_reg[48][7] (master_race_spi_n_81),
        .\memoria_reg[49][7] (master_race_spi_n_75),
        .\memoria_reg[4][7] (master_race_spi_n_157),
        .\memoria_reg[50][7] (master_race_spi_n_63),
        .\memoria_reg[51][7] (master_race_spi_n_57),
        .\memoria_reg[52][7] (master_race_spi_n_80),
        .\memoria_reg[53][7] (master_race_spi_n_74),
        .\memoria_reg[54][7] (master_race_spi_n_62),
        .\memoria_reg[55][7] (master_race_spi_n_56),
        .\memoria_reg[56][7] (master_race_spi_n_112),
        .\memoria_reg[57][7] (master_race_spi_n_111),
        .\memoria_reg[58][7] (master_race_spi_n_110),
        .\memoria_reg[59][7] (master_race_spi_n_109),
        .\memoria_reg[5][7] (master_race_spi_n_148),
        .\memoria_reg[60][7] (master_race_spi_n_104),
        .\memoria_reg[61][7] (master_race_spi_n_103),
        .\memoria_reg[62][7] (master_race_spi_n_102),
        .\memoria_reg[63][7] (master_race_spi_n_101),
        .\memoria_reg[64][7] (master_race_spi_n_131),
        .\memoria_reg[65][7] (master_race_spi_n_123),
        .\memoria_reg[66][7] (master_race_spi_n_146),
        .\memoria_reg[67][7] (master_race_spi_n_139),
        .\memoria_reg[68][7] (master_race_spi_n_130),
        .\memoria_reg[69][7] (master_race_spi_n_122),
        .\memoria_reg[6][7] (master_race_spi_n_160),
        .\memoria_reg[70][7] (master_race_spi_n_145),
        .\memoria_reg[71][7] (master_race_spi_n_138),
        .\memoria_reg[72][7] (master_race_spi_n_129),
        .\memoria_reg[73][7] (master_race_spi_n_121),
        .\memoria_reg[74][7] (master_race_spi_n_144),
        .\memoria_reg[75][7] (master_race_spi_n_137),
        .\memoria_reg[76][7] (master_race_spi_n_128),
        .\memoria_reg[77][7] (master_race_spi_n_120),
        .\memoria_reg[78][7] (master_race_spi_n_13),
        .\memoria_reg[79][7] (master_race_spi_n_136),
        .\memoria_reg[7][0] (master_race_spi_n_115),
        .\memoria_reg[80][7] (master_race_spi_n_127),
        .\memoria_reg[81][7] (master_race_spi_n_119),
        .\memoria_reg[82][7] (master_race_spi_n_143),
        .\memoria_reg[83][7] (master_race_spi_n_135),
        .\memoria_reg[84][7] (master_race_spi_n_126),
        .\memoria_reg[85][7] (master_race_spi_n_118),
        .\memoria_reg[86][7] (master_race_spi_n_142),
        .\memoria_reg[87][7] (master_race_spi_n_134),
        .\memoria_reg[88][7] (master_race_spi_n_125),
        .\memoria_reg[89][7] (master_race_spi_n_117),
        .\memoria_reg[8][7] (master_race_spi_n_161),
        .\memoria_reg[90][7] (master_race_spi_n_141),
        .\memoria_reg[91][7] (master_race_spi_n_133),
        .\memoria_reg[92][7] (master_race_spi_n_124),
        .\memoria_reg[93][7] (master_race_spi_n_116),
        .\memoria_reg[94][7] (master_race_spi_n_140),
        .\memoria_reg[95][7] (master_race_spi_n_132),
        .\memoria_reg[96][7] (master_race_spi_n_73),
        .\memoria_reg[97][7] (master_race_spi_n_96),
        .\memoria_reg[98][7] (master_race_spi_n_55),
        .\memoria_reg[99][7] (master_race_spi_n_90),
        .\memoria_reg[9][7] (master_race_spi_n_150),
        .\reg_shift_mosi_reg[7]_i_19 (master_race_spi_n_4),
        .\reg_shift_mosi_reg[7]_i_27 (master_race_spi_n_20),
        .rst_pi_IBUF(rst_pi_IBUF),
        .selec_out(selec_out),
        .\state_reg[0] (\cntr_str_i[n_tx_end] ),
        .\state_reg[4] (\state_reg[1] ));
  module_reg_control registro_control
       (.CLK_10MHZ(CLK_10MHZ),
        .DI(registro_control_n_7),
        .S({registro_control_n_2,registro_control_n_3,registro_control_n_4,registro_control_n_5}),
        .cs_ctrl_po_OBUF(cs_ctrl_po_OBUF),
        .proccess(proccess),
        .rst_pi_IBUF(rst_pi_IBUF),
        .send(send),
        .\state_reg[16]_0 (master_race_spi_n_27),
        .\state_reg[17]_0 (master_race_spi_n_28),
        .\state_reg[18]_0 (master_race_spi_n_47),
        .\state_reg[19]_0 (master_race_spi_n_48),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[20]_0 (master_race_spi_n_49),
        .\state_reg[21]_0 (master_race_spi_n_29),
        .\state_reg[22]_inv_0 (\state_reg[22]_inv ),
        .\state_reg[22]_inv_1 (master_race_spi_n_30),
        .\state_reg[4]_0 (\cntr_str_i[n_tx_end] ),
        .\state_reg[4]_1 (\state_reg[4] ));
endmodule

module top_master_race_spi
   (mosi_po_OBUF,
    clk_out_reg,
    progress_reg,
    we_rx,
    \addr2_reg[0] ,
    E,
    addr_ram,
    hold_ctrl_reg,
    we_ram2_reg,
    we_ram2_reg_0,
    \addr2_reg[6] ,
    \addr2_reg[6]_0 ,
    \addr2_reg[6]_1 ,
    \addr2_reg[6]_2 ,
    hold_ctrl_reg_0,
    \addr2_reg[6]_3 ,
    \addr2_reg[6]_4 ,
    \addr2_reg[6]_5 ,
    we_ram2_reg_1,
    we_ram2_reg_2,
    we_ram2_reg_3,
    \rx_reg[0] ,
    \rx_reg[1] ,
    \rx_reg[5] ,
    \rx_reg[6] ,
    D,
    Q,
    progress_reg_0,
    progress_reg_1,
    progress_reg_2,
    hold_ctrl_reg_1,
    hold_ctrl_reg_2,
    hold_ctrl_reg_3,
    hold_ctrl_reg_4,
    hold_ctrl_reg_5,
    hold_ctrl_reg_6,
    hold_ctrl_reg_7,
    hold_ctrl_reg_8,
    hold_ctrl_reg_9,
    hold_ctrl_reg_10,
    hold_ctrl_reg_11,
    hold_ctrl_reg_12,
    hold_ctrl_reg_13,
    hold_ctrl_reg_14,
    hold_ctrl_reg_15,
    hold_ctrl_reg_16,
    hold_ctrl_reg_17,
    hold_ctrl_reg_18,
    hold_ctrl_reg_19,
    hold_ctrl_reg_20,
    hold_ctrl_reg_21,
    hold_ctrl_reg_22,
    hold_ctrl_reg_23,
    hold_ctrl_reg_24,
    hold_ctrl_reg_25,
    hold_ctrl_reg_26,
    hold_ctrl_reg_27,
    hold_ctrl_reg_28,
    hold_ctrl_reg_29,
    hold_ctrl_reg_30,
    hold_ctrl_reg_31,
    hold_ctrl_reg_32,
    hold_ctrl_reg_33,
    hold_ctrl_reg_34,
    hold_ctrl_reg_35,
    hold_ctrl_reg_36,
    hold_ctrl_reg_37,
    hold_ctrl_reg_38,
    hold_ctrl_reg_39,
    hold_ctrl_reg_40,
    hold_ctrl_reg_41,
    hold_ctrl_reg_42,
    hold_ctrl_reg_43,
    hold_ctrl_reg_44,
    hold_ctrl_reg_45,
    hold_ctrl_reg_46,
    hold_ctrl_reg_47,
    hold_ctrl_reg_48,
    hold_ctrl_reg_49,
    hold_ctrl_reg_50,
    hold_ctrl_reg_51,
    hold_ctrl_reg_52,
    hold_ctrl_reg_53,
    hold_ctrl_reg_54,
    hold_ctrl_reg_55,
    hold_ctrl_reg_56,
    hold_ctrl_reg_57,
    hold_ctrl_reg_58,
    hold_ctrl_reg_59,
    hold_ctrl_reg_60,
    hold_ctrl_reg_61,
    hold_ctrl_reg_62,
    hold_ctrl_reg_63,
    hold_ctrl_reg_64,
    hold_ctrl_reg_65,
    hold_ctrl_reg_66,
    hold_ctrl_reg_67,
    hold_ctrl_reg_68,
    hold_ctrl_reg_69,
    hold_ctrl_reg_70,
    hold_ctrl_reg_71,
    hold_ctrl_reg_72,
    hold_ctrl_reg_73,
    hold_ctrl_reg_74,
    hold_ctrl_reg_75,
    hold_ctrl_reg_76,
    hold_ctrl_reg_77,
    hold_ctrl_reg_78,
    hold_ctrl_reg_79,
    hold_ctrl_reg_80,
    hold_ctrl_reg_81,
    hold_ctrl_reg_82,
    hold_ctrl_reg_83,
    hold_ctrl_reg_84,
    hold_ctrl_reg_85,
    hold_ctrl_reg_86,
    hold_ctrl_reg_87,
    hold_ctrl_reg_88,
    hold_ctrl_reg_89,
    hold_ctrl_reg_90,
    hold_ctrl_reg_91,
    hold_ctrl_reg_92,
    hold_ctrl_reg_93,
    hold_ctrl_reg_94,
    hold_ctrl_reg_95,
    hold_ctrl_reg_96,
    hold_ctrl_reg_97,
    hold_ctrl_reg_98,
    hold_ctrl_reg_99,
    hold_ctrl_reg_100,
    hold_ctrl_reg_101,
    hold_ctrl_reg_102,
    hold_ctrl_reg_103,
    hold_ctrl_reg_104,
    hold_ctrl_reg_105,
    hold_ctrl_reg_106,
    hold_ctrl_reg_107,
    hold_ctrl_reg_108,
    hold_ctrl_reg_109,
    hold_ctrl_reg_110,
    hold_ctrl_reg_111,
    hold_ctrl_reg_112,
    hold_ctrl_reg_113,
    hold_ctrl_reg_114,
    rst_pi_IBUF,
    CLK_10MHZ,
    DI,
    S,
    dato_ram,
    selec_out,
    we_reg_control,
    \reg_shift_mosi_reg[7] ,
    \reg_shift_mosi_reg[6] ,
    \reg_shift_mosi_reg[5] ,
    \reg_shift_mosi_reg[4] ,
    \reg_shift_mosi_reg[3] ,
    \reg_shift_mosi_reg[2] ,
    \reg_shift_mosi_reg[1] ,
    addr_pmod,
    \FSM_sequential_state_reg[0] ,
    \reg_shift_miso_reg[0] );
  output mosi_po_OBUF;
  output clk_out_reg;
  output progress_reg;
  output we_rx;
  output \addr2_reg[0] ;
  output [0:0]E;
  output [6:0]addr_ram;
  output [0:0]hold_ctrl_reg;
  output [0:0]we_ram2_reg;
  output [0:0]we_ram2_reg_0;
  output [0:0]\addr2_reg[6] ;
  output [0:0]\addr2_reg[6]_0 ;
  output [0:0]\addr2_reg[6]_1 ;
  output [0:0]\addr2_reg[6]_2 ;
  output hold_ctrl_reg_0;
  output [0:0]\addr2_reg[6]_3 ;
  output [0:0]\addr2_reg[6]_4 ;
  output [0:0]\addr2_reg[6]_5 ;
  output [0:0]we_ram2_reg_1;
  output [0:0]we_ram2_reg_2;
  output [0:0]we_ram2_reg_3;
  output \rx_reg[0] ;
  output \rx_reg[1] ;
  output \rx_reg[5] ;
  output \rx_reg[6] ;
  output [7:0]D;
  output [7:0]Q;
  output progress_reg_0;
  output progress_reg_1;
  output progress_reg_2;
  output [0:0]hold_ctrl_reg_1;
  output [0:0]hold_ctrl_reg_2;
  output [0:0]hold_ctrl_reg_3;
  output [0:0]hold_ctrl_reg_4;
  output [0:0]hold_ctrl_reg_5;
  output [0:0]hold_ctrl_reg_6;
  output [0:0]hold_ctrl_reg_7;
  output [0:0]hold_ctrl_reg_8;
  output [0:0]hold_ctrl_reg_9;
  output [0:0]hold_ctrl_reg_10;
  output [0:0]hold_ctrl_reg_11;
  output [0:0]hold_ctrl_reg_12;
  output [0:0]hold_ctrl_reg_13;
  output [0:0]hold_ctrl_reg_14;
  output [0:0]hold_ctrl_reg_15;
  output [0:0]hold_ctrl_reg_16;
  output [0:0]hold_ctrl_reg_17;
  output [0:0]hold_ctrl_reg_18;
  output [0:0]hold_ctrl_reg_19;
  output [0:0]hold_ctrl_reg_20;
  output [0:0]hold_ctrl_reg_21;
  output [0:0]hold_ctrl_reg_22;
  output [0:0]hold_ctrl_reg_23;
  output [0:0]hold_ctrl_reg_24;
  output [0:0]hold_ctrl_reg_25;
  output [0:0]hold_ctrl_reg_26;
  output [0:0]hold_ctrl_reg_27;
  output [0:0]hold_ctrl_reg_28;
  output [0:0]hold_ctrl_reg_29;
  output [0:0]hold_ctrl_reg_30;
  output [0:0]hold_ctrl_reg_31;
  output [0:0]hold_ctrl_reg_32;
  output [0:0]hold_ctrl_reg_33;
  output [0:0]hold_ctrl_reg_34;
  output [0:0]hold_ctrl_reg_35;
  output [0:0]hold_ctrl_reg_36;
  output [0:0]hold_ctrl_reg_37;
  output [0:0]hold_ctrl_reg_38;
  output [0:0]hold_ctrl_reg_39;
  output [0:0]hold_ctrl_reg_40;
  output [0:0]hold_ctrl_reg_41;
  output [0:0]hold_ctrl_reg_42;
  output [0:0]hold_ctrl_reg_43;
  output [0:0]hold_ctrl_reg_44;
  output [0:0]hold_ctrl_reg_45;
  output [0:0]hold_ctrl_reg_46;
  output [0:0]hold_ctrl_reg_47;
  output [0:0]hold_ctrl_reg_48;
  output [0:0]hold_ctrl_reg_49;
  output [0:0]hold_ctrl_reg_50;
  output [0:0]hold_ctrl_reg_51;
  output [0:0]hold_ctrl_reg_52;
  output [0:0]hold_ctrl_reg_53;
  output [0:0]hold_ctrl_reg_54;
  output [0:0]hold_ctrl_reg_55;
  output [0:0]hold_ctrl_reg_56;
  output [0:0]hold_ctrl_reg_57;
  output [0:0]hold_ctrl_reg_58;
  output [0:0]hold_ctrl_reg_59;
  output [0:0]hold_ctrl_reg_60;
  output [0:0]hold_ctrl_reg_61;
  output [0:0]hold_ctrl_reg_62;
  output [0:0]hold_ctrl_reg_63;
  output [0:0]hold_ctrl_reg_64;
  output [0:0]hold_ctrl_reg_65;
  output [0:0]hold_ctrl_reg_66;
  output [0:0]hold_ctrl_reg_67;
  output [0:0]hold_ctrl_reg_68;
  output [0:0]hold_ctrl_reg_69;
  output [0:0]hold_ctrl_reg_70;
  output [0:0]hold_ctrl_reg_71;
  output [0:0]hold_ctrl_reg_72;
  output [0:0]hold_ctrl_reg_73;
  output [0:0]hold_ctrl_reg_74;
  output [0:0]hold_ctrl_reg_75;
  output [0:0]hold_ctrl_reg_76;
  output [0:0]hold_ctrl_reg_77;
  output [0:0]hold_ctrl_reg_78;
  output [0:0]hold_ctrl_reg_79;
  output [0:0]hold_ctrl_reg_80;
  output [0:0]hold_ctrl_reg_81;
  output [0:0]hold_ctrl_reg_82;
  output [0:0]hold_ctrl_reg_83;
  output [0:0]hold_ctrl_reg_84;
  output [0:0]hold_ctrl_reg_85;
  output [0:0]hold_ctrl_reg_86;
  output [0:0]hold_ctrl_reg_87;
  output [0:0]hold_ctrl_reg_88;
  output [0:0]hold_ctrl_reg_89;
  output [0:0]hold_ctrl_reg_90;
  output [0:0]hold_ctrl_reg_91;
  output [0:0]hold_ctrl_reg_92;
  output [0:0]hold_ctrl_reg_93;
  output [0:0]hold_ctrl_reg_94;
  output [0:0]hold_ctrl_reg_95;
  output [0:0]hold_ctrl_reg_96;
  output [0:0]hold_ctrl_reg_97;
  output [0:0]hold_ctrl_reg_98;
  output [0:0]hold_ctrl_reg_99;
  output [0:0]hold_ctrl_reg_100;
  output [0:0]hold_ctrl_reg_101;
  output [0:0]hold_ctrl_reg_102;
  output [0:0]hold_ctrl_reg_103;
  output [0:0]hold_ctrl_reg_104;
  output [0:0]hold_ctrl_reg_105;
  output [0:0]hold_ctrl_reg_106;
  output [0:0]hold_ctrl_reg_107;
  output [0:0]hold_ctrl_reg_108;
  output [0:0]hold_ctrl_reg_109;
  output [0:0]hold_ctrl_reg_110;
  output [0:0]hold_ctrl_reg_111;
  output [0:0]hold_ctrl_reg_112;
  output [0:0]hold_ctrl_reg_113;
  output [0:0]hold_ctrl_reg_114;
  input rst_pi_IBUF;
  input CLK_10MHZ;
  input [0:0]DI;
  input [3:0]S;
  input [0:0]dato_ram;
  input selec_out;
  input we_reg_control;
  input \reg_shift_mosi_reg[7] ;
  input \reg_shift_mosi_reg[6] ;
  input \reg_shift_mosi_reg[5] ;
  input \reg_shift_mosi_reg[4] ;
  input \reg_shift_mosi_reg[3] ;
  input \reg_shift_mosi_reg[2] ;
  input \reg_shift_mosi_reg[1] ;
  input [0:0]addr_pmod;
  input \FSM_sequential_state_reg[0] ;
  input [0:0]\reg_shift_miso_reg[0] ;

  wire CLK_10MHZ;
  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire [7:0]Q;
  wire [3:0]S;
  wire \addr2_reg[0] ;
  wire [0:0]\addr2_reg[6] ;
  wire [0:0]\addr2_reg[6]_0 ;
  wire [0:0]\addr2_reg[6]_1 ;
  wire [0:0]\addr2_reg[6]_2 ;
  wire [0:0]\addr2_reg[6]_3 ;
  wire [0:0]\addr2_reg[6]_4 ;
  wire [0:0]\addr2_reg[6]_5 ;
  wire [0:0]addr_pmod;
  wire [6:0]addr_ram;
  wire clk_fn;
  wire clk_fp;
  wire clk_out_reg;
  wire [0:0]contador;
  wire contador_0;
  wire control_spi_n_0;
  wire control_spi_n_36;
  wire [0:0]dato_ram;
  wire hold_ctrl;
  wire [0:0]hold_ctrl_reg;
  wire hold_ctrl_reg_0;
  wire [0:0]hold_ctrl_reg_1;
  wire [0:0]hold_ctrl_reg_10;
  wire [0:0]hold_ctrl_reg_100;
  wire [0:0]hold_ctrl_reg_101;
  wire [0:0]hold_ctrl_reg_102;
  wire [0:0]hold_ctrl_reg_103;
  wire [0:0]hold_ctrl_reg_104;
  wire [0:0]hold_ctrl_reg_105;
  wire [0:0]hold_ctrl_reg_106;
  wire [0:0]hold_ctrl_reg_107;
  wire [0:0]hold_ctrl_reg_108;
  wire [0:0]hold_ctrl_reg_109;
  wire [0:0]hold_ctrl_reg_11;
  wire [0:0]hold_ctrl_reg_110;
  wire [0:0]hold_ctrl_reg_111;
  wire [0:0]hold_ctrl_reg_112;
  wire [0:0]hold_ctrl_reg_113;
  wire [0:0]hold_ctrl_reg_114;
  wire [0:0]hold_ctrl_reg_12;
  wire [0:0]hold_ctrl_reg_13;
  wire [0:0]hold_ctrl_reg_14;
  wire [0:0]hold_ctrl_reg_15;
  wire [0:0]hold_ctrl_reg_16;
  wire [0:0]hold_ctrl_reg_17;
  wire [0:0]hold_ctrl_reg_18;
  wire [0:0]hold_ctrl_reg_19;
  wire [0:0]hold_ctrl_reg_2;
  wire [0:0]hold_ctrl_reg_20;
  wire [0:0]hold_ctrl_reg_21;
  wire [0:0]hold_ctrl_reg_22;
  wire [0:0]hold_ctrl_reg_23;
  wire [0:0]hold_ctrl_reg_24;
  wire [0:0]hold_ctrl_reg_25;
  wire [0:0]hold_ctrl_reg_26;
  wire [0:0]hold_ctrl_reg_27;
  wire [0:0]hold_ctrl_reg_28;
  wire [0:0]hold_ctrl_reg_29;
  wire [0:0]hold_ctrl_reg_3;
  wire [0:0]hold_ctrl_reg_30;
  wire [0:0]hold_ctrl_reg_31;
  wire [0:0]hold_ctrl_reg_32;
  wire [0:0]hold_ctrl_reg_33;
  wire [0:0]hold_ctrl_reg_34;
  wire [0:0]hold_ctrl_reg_35;
  wire [0:0]hold_ctrl_reg_36;
  wire [0:0]hold_ctrl_reg_37;
  wire [0:0]hold_ctrl_reg_38;
  wire [0:0]hold_ctrl_reg_39;
  wire [0:0]hold_ctrl_reg_4;
  wire [0:0]hold_ctrl_reg_40;
  wire [0:0]hold_ctrl_reg_41;
  wire [0:0]hold_ctrl_reg_42;
  wire [0:0]hold_ctrl_reg_43;
  wire [0:0]hold_ctrl_reg_44;
  wire [0:0]hold_ctrl_reg_45;
  wire [0:0]hold_ctrl_reg_46;
  wire [0:0]hold_ctrl_reg_47;
  wire [0:0]hold_ctrl_reg_48;
  wire [0:0]hold_ctrl_reg_49;
  wire [0:0]hold_ctrl_reg_5;
  wire [0:0]hold_ctrl_reg_50;
  wire [0:0]hold_ctrl_reg_51;
  wire [0:0]hold_ctrl_reg_52;
  wire [0:0]hold_ctrl_reg_53;
  wire [0:0]hold_ctrl_reg_54;
  wire [0:0]hold_ctrl_reg_55;
  wire [0:0]hold_ctrl_reg_56;
  wire [0:0]hold_ctrl_reg_57;
  wire [0:0]hold_ctrl_reg_58;
  wire [0:0]hold_ctrl_reg_59;
  wire [0:0]hold_ctrl_reg_6;
  wire [0:0]hold_ctrl_reg_60;
  wire [0:0]hold_ctrl_reg_61;
  wire [0:0]hold_ctrl_reg_62;
  wire [0:0]hold_ctrl_reg_63;
  wire [0:0]hold_ctrl_reg_64;
  wire [0:0]hold_ctrl_reg_65;
  wire [0:0]hold_ctrl_reg_66;
  wire [0:0]hold_ctrl_reg_67;
  wire [0:0]hold_ctrl_reg_68;
  wire [0:0]hold_ctrl_reg_69;
  wire [0:0]hold_ctrl_reg_7;
  wire [0:0]hold_ctrl_reg_70;
  wire [0:0]hold_ctrl_reg_71;
  wire [0:0]hold_ctrl_reg_72;
  wire [0:0]hold_ctrl_reg_73;
  wire [0:0]hold_ctrl_reg_74;
  wire [0:0]hold_ctrl_reg_75;
  wire [0:0]hold_ctrl_reg_76;
  wire [0:0]hold_ctrl_reg_77;
  wire [0:0]hold_ctrl_reg_78;
  wire [0:0]hold_ctrl_reg_79;
  wire [0:0]hold_ctrl_reg_8;
  wire [0:0]hold_ctrl_reg_80;
  wire [0:0]hold_ctrl_reg_81;
  wire [0:0]hold_ctrl_reg_82;
  wire [0:0]hold_ctrl_reg_83;
  wire [0:0]hold_ctrl_reg_84;
  wire [0:0]hold_ctrl_reg_85;
  wire [0:0]hold_ctrl_reg_86;
  wire [0:0]hold_ctrl_reg_87;
  wire [0:0]hold_ctrl_reg_88;
  wire [0:0]hold_ctrl_reg_89;
  wire [0:0]hold_ctrl_reg_9;
  wire [0:0]hold_ctrl_reg_90;
  wire [0:0]hold_ctrl_reg_91;
  wire [0:0]hold_ctrl_reg_92;
  wire [0:0]hold_ctrl_reg_93;
  wire [0:0]hold_ctrl_reg_94;
  wire [0:0]hold_ctrl_reg_95;
  wire [0:0]hold_ctrl_reg_96;
  wire [0:0]hold_ctrl_reg_97;
  wire [0:0]hold_ctrl_reg_98;
  wire [0:0]hold_ctrl_reg_99;
  wire mosi;
  wire mosi_po_OBUF;
  wire [7:1]p_1_in;
  wire progress_reg;
  wire progress_reg_0;
  wire progress_reg_1;
  wire progress_reg_2;
  wire reg_mosi_n_0;
  wire reg_mosi_n_1;
  wire reg_mosi_n_2;
  wire reg_mosi_n_3;
  wire reg_mosi_n_4;
  wire reg_mosi_n_5;
  wire reg_mosi_n_7;
  wire [0:0]\reg_shift_miso_reg[0] ;
  wire [7:7]reg_shift_mosi;
  wire \reg_shift_mosi_reg[1] ;
  wire \reg_shift_mosi_reg[2] ;
  wire \reg_shift_mosi_reg[3] ;
  wire \reg_shift_mosi_reg[4] ;
  wire \reg_shift_mosi_reg[5] ;
  wire \reg_shift_mosi_reg[6] ;
  wire \reg_shift_mosi_reg[7] ;
  wire rst_pi_IBUF;
  wire \rx_reg[0] ;
  wire \rx_reg[1] ;
  wire \rx_reg[5] ;
  wire \rx_reg[6] ;
  wire selec_out;
  wire [1:0]state;
  wire state_machine_n_0;
  wire state_machine_n_3;
  wire state_machine_n_4;
  wire state_machine_n_5;
  wire state_machine_n_6;
  wire [0:0]we_ram2_reg;
  wire [0:0]we_ram2_reg_0;
  wire [0:0]we_ram2_reg_1;
  wire [0:0]we_ram2_reg_2;
  wire [0:0]we_ram2_reg_3;
  wire we_reg;
  wire we_reg_control;
  wire we_rx;

  module_clk_divider_spi clk_divider_spi
       (.CLK_10MHZ(CLK_10MHZ),
        .SR(control_spi_n_36),
        .clk_fn(clk_fn),
        .clk_fp(clk_fp),
        .clk_out_reg_0(clk_out_reg),
        .hold_ctrl(hold_ctrl),
        .mosi(mosi),
        .rst_pi_IBUF(rst_pi_IBUF),
        .we_reg(we_reg));
  module_control_spi control_spi
       (.CLK_10MHZ(CLK_10MHZ),
        .CO(control_spi_n_0),
        .D({D[7:3],D[1:0]}),
        .DI(DI),
        .E(E),
        .Q(state),
        .S(S),
        .SR(control_spi_n_36),
        .\addr2_reg[0]_0 (\addr2_reg[0] ),
        .\addr2_reg[6]_0 (\addr2_reg[6] ),
        .\addr2_reg[6]_1 (\addr2_reg[6]_0 ),
        .\addr2_reg[6]_2 (\addr2_reg[6]_1 ),
        .\addr2_reg[6]_3 (\addr2_reg[6]_2 ),
        .\addr2_reg[6]_4 (\addr2_reg[6]_3 ),
        .\addr2_reg[6]_5 (\addr2_reg[6]_4 ),
        .\addr2_reg[6]_6 (\addr2_reg[6]_5 ),
        .\addr2_reg[6]_7 (state_machine_n_5),
        .addr_pmod(addr_pmod),
        .addr_ram(addr_ram[4:0]),
        .clk_fp(clk_fp),
        .contador_0(contador_0),
        .\contador_reg[0]_0 (contador),
        .\contador_reg[0]_1 (state_machine_n_4),
        .\contador_reg[0]_2 (state_machine_n_3),
        .\contador_reg[1]_0 (\FSM_sequential_state_reg[0] ),
        .en_conta_reg_0(state_machine_n_0),
        .en_conta_reg_1(clk_fn),
        .hold_ctrl(hold_ctrl),
        .hold_ctrl_reg_0(addr_ram[6]),
        .hold_ctrl_reg_1(addr_ram[5]),
        .hold_ctrl_reg_10(hold_ctrl_reg_7),
        .hold_ctrl_reg_100(hold_ctrl_reg_97),
        .hold_ctrl_reg_101(hold_ctrl_reg_98),
        .hold_ctrl_reg_102(hold_ctrl_reg_99),
        .hold_ctrl_reg_103(hold_ctrl_reg_100),
        .hold_ctrl_reg_104(hold_ctrl_reg_101),
        .hold_ctrl_reg_105(hold_ctrl_reg_102),
        .hold_ctrl_reg_106(hold_ctrl_reg_103),
        .hold_ctrl_reg_107(hold_ctrl_reg_104),
        .hold_ctrl_reg_108(hold_ctrl_reg_105),
        .hold_ctrl_reg_109(hold_ctrl_reg_106),
        .hold_ctrl_reg_11(hold_ctrl_reg_8),
        .hold_ctrl_reg_110(hold_ctrl_reg_107),
        .hold_ctrl_reg_111(hold_ctrl_reg_108),
        .hold_ctrl_reg_112(hold_ctrl_reg_109),
        .hold_ctrl_reg_113(hold_ctrl_reg_110),
        .hold_ctrl_reg_114(hold_ctrl_reg_111),
        .hold_ctrl_reg_115(hold_ctrl_reg_112),
        .hold_ctrl_reg_116(hold_ctrl_reg_113),
        .hold_ctrl_reg_117(hold_ctrl_reg_114),
        .hold_ctrl_reg_118(state_machine_n_6),
        .hold_ctrl_reg_12(hold_ctrl_reg_9),
        .hold_ctrl_reg_13(hold_ctrl_reg_10),
        .hold_ctrl_reg_14(hold_ctrl_reg_11),
        .hold_ctrl_reg_15(hold_ctrl_reg_12),
        .hold_ctrl_reg_16(hold_ctrl_reg_13),
        .hold_ctrl_reg_17(hold_ctrl_reg_14),
        .hold_ctrl_reg_18(hold_ctrl_reg_15),
        .hold_ctrl_reg_19(hold_ctrl_reg_16),
        .hold_ctrl_reg_2(hold_ctrl_reg),
        .hold_ctrl_reg_20(hold_ctrl_reg_17),
        .hold_ctrl_reg_21(hold_ctrl_reg_18),
        .hold_ctrl_reg_22(hold_ctrl_reg_19),
        .hold_ctrl_reg_23(hold_ctrl_reg_20),
        .hold_ctrl_reg_24(hold_ctrl_reg_21),
        .hold_ctrl_reg_25(hold_ctrl_reg_22),
        .hold_ctrl_reg_26(hold_ctrl_reg_23),
        .hold_ctrl_reg_27(hold_ctrl_reg_24),
        .hold_ctrl_reg_28(hold_ctrl_reg_25),
        .hold_ctrl_reg_29(hold_ctrl_reg_26),
        .hold_ctrl_reg_3(hold_ctrl_reg_0),
        .hold_ctrl_reg_30(hold_ctrl_reg_27),
        .hold_ctrl_reg_31(hold_ctrl_reg_28),
        .hold_ctrl_reg_32(hold_ctrl_reg_29),
        .hold_ctrl_reg_33(hold_ctrl_reg_30),
        .hold_ctrl_reg_34(hold_ctrl_reg_31),
        .hold_ctrl_reg_35(hold_ctrl_reg_32),
        .hold_ctrl_reg_36(hold_ctrl_reg_33),
        .hold_ctrl_reg_37(hold_ctrl_reg_34),
        .hold_ctrl_reg_38(hold_ctrl_reg_35),
        .hold_ctrl_reg_39(hold_ctrl_reg_36),
        .hold_ctrl_reg_4(hold_ctrl_reg_1),
        .hold_ctrl_reg_40(hold_ctrl_reg_37),
        .hold_ctrl_reg_41(hold_ctrl_reg_38),
        .hold_ctrl_reg_42(hold_ctrl_reg_39),
        .hold_ctrl_reg_43(hold_ctrl_reg_40),
        .hold_ctrl_reg_44(hold_ctrl_reg_41),
        .hold_ctrl_reg_45(hold_ctrl_reg_42),
        .hold_ctrl_reg_46(hold_ctrl_reg_43),
        .hold_ctrl_reg_47(hold_ctrl_reg_44),
        .hold_ctrl_reg_48(hold_ctrl_reg_45),
        .hold_ctrl_reg_49(hold_ctrl_reg_46),
        .hold_ctrl_reg_5(hold_ctrl_reg_2),
        .hold_ctrl_reg_50(hold_ctrl_reg_47),
        .hold_ctrl_reg_51(hold_ctrl_reg_48),
        .hold_ctrl_reg_52(hold_ctrl_reg_49),
        .hold_ctrl_reg_53(hold_ctrl_reg_50),
        .hold_ctrl_reg_54(hold_ctrl_reg_51),
        .hold_ctrl_reg_55(hold_ctrl_reg_52),
        .hold_ctrl_reg_56(hold_ctrl_reg_53),
        .hold_ctrl_reg_57(hold_ctrl_reg_54),
        .hold_ctrl_reg_58(hold_ctrl_reg_55),
        .hold_ctrl_reg_59(hold_ctrl_reg_56),
        .hold_ctrl_reg_6(hold_ctrl_reg_3),
        .hold_ctrl_reg_60(hold_ctrl_reg_57),
        .hold_ctrl_reg_61(hold_ctrl_reg_58),
        .hold_ctrl_reg_62(hold_ctrl_reg_59),
        .hold_ctrl_reg_63(hold_ctrl_reg_60),
        .hold_ctrl_reg_64(hold_ctrl_reg_61),
        .hold_ctrl_reg_65(hold_ctrl_reg_62),
        .hold_ctrl_reg_66(hold_ctrl_reg_63),
        .hold_ctrl_reg_67(hold_ctrl_reg_64),
        .hold_ctrl_reg_68(hold_ctrl_reg_65),
        .hold_ctrl_reg_69(hold_ctrl_reg_66),
        .hold_ctrl_reg_7(hold_ctrl_reg_4),
        .hold_ctrl_reg_70(hold_ctrl_reg_67),
        .hold_ctrl_reg_71(hold_ctrl_reg_68),
        .hold_ctrl_reg_72(hold_ctrl_reg_69),
        .hold_ctrl_reg_73(hold_ctrl_reg_70),
        .hold_ctrl_reg_74(hold_ctrl_reg_71),
        .hold_ctrl_reg_75(hold_ctrl_reg_72),
        .hold_ctrl_reg_76(hold_ctrl_reg_73),
        .hold_ctrl_reg_77(hold_ctrl_reg_74),
        .hold_ctrl_reg_78(hold_ctrl_reg_75),
        .hold_ctrl_reg_79(hold_ctrl_reg_76),
        .hold_ctrl_reg_8(hold_ctrl_reg_5),
        .hold_ctrl_reg_80(hold_ctrl_reg_77),
        .hold_ctrl_reg_81(hold_ctrl_reg_78),
        .hold_ctrl_reg_82(hold_ctrl_reg_79),
        .hold_ctrl_reg_83(hold_ctrl_reg_80),
        .hold_ctrl_reg_84(hold_ctrl_reg_81),
        .hold_ctrl_reg_85(hold_ctrl_reg_82),
        .hold_ctrl_reg_86(hold_ctrl_reg_83),
        .hold_ctrl_reg_87(hold_ctrl_reg_84),
        .hold_ctrl_reg_88(hold_ctrl_reg_85),
        .hold_ctrl_reg_89(hold_ctrl_reg_86),
        .hold_ctrl_reg_9(hold_ctrl_reg_6),
        .hold_ctrl_reg_90(hold_ctrl_reg_87),
        .hold_ctrl_reg_91(hold_ctrl_reg_88),
        .hold_ctrl_reg_92(hold_ctrl_reg_89),
        .hold_ctrl_reg_93(hold_ctrl_reg_90),
        .hold_ctrl_reg_94(hold_ctrl_reg_91),
        .hold_ctrl_reg_95(hold_ctrl_reg_92),
        .hold_ctrl_reg_96(hold_ctrl_reg_93),
        .hold_ctrl_reg_97(hold_ctrl_reg_94),
        .hold_ctrl_reg_98(hold_ctrl_reg_95),
        .hold_ctrl_reg_99(hold_ctrl_reg_96),
        .\memoria_reg[1][7] ({Q[7:3],Q[1:0]}),
        .p_1_in(p_1_in),
        .progress_reg_0(progress_reg),
        .progress_reg_1(progress_reg_0),
        .progress_reg_2(progress_reg_1),
        .progress_reg_3(progress_reg_2),
        .reg_shift_mosi(reg_shift_mosi),
        .\reg_shift_mosi_reg[1] (\reg_shift_mosi_reg[1] ),
        .\reg_shift_mosi_reg[1]_0 (reg_mosi_n_7),
        .\reg_shift_mosi_reg[2] (\reg_shift_mosi_reg[2] ),
        .\reg_shift_mosi_reg[2]_0 (reg_mosi_n_5),
        .\reg_shift_mosi_reg[3] (\reg_shift_mosi_reg[3] ),
        .\reg_shift_mosi_reg[3]_0 (reg_mosi_n_4),
        .\reg_shift_mosi_reg[4] (\reg_shift_mosi_reg[4] ),
        .\reg_shift_mosi_reg[4]_0 (reg_mosi_n_3),
        .\reg_shift_mosi_reg[5] (\reg_shift_mosi_reg[5] ),
        .\reg_shift_mosi_reg[5]_0 (reg_mosi_n_2),
        .\reg_shift_mosi_reg[6] (\reg_shift_mosi_reg[6] ),
        .\reg_shift_mosi_reg[6]_0 (reg_mosi_n_1),
        .\reg_shift_mosi_reg[7] (\reg_shift_mosi_reg[7] ),
        .\reg_shift_mosi_reg[7]_0 (reg_mosi_n_0),
        .rst_pi_IBUF(rst_pi_IBUF),
        .\rx_reg[0]_0 (\rx_reg[0] ),
        .\rx_reg[1]_0 (\rx_reg[1] ),
        .\rx_reg[5]_0 (\rx_reg[5] ),
        .\rx_reg[6]_0 (\rx_reg[6] ),
        .selec_out(selec_out),
        .we_ram2_reg_0(we_ram2_reg),
        .we_ram2_reg_1(we_ram2_reg_0),
        .we_ram2_reg_2(we_ram2_reg_1),
        .we_ram2_reg_3(we_ram2_reg_2),
        .we_ram2_reg_4(we_ram2_reg_3),
        .we_reg(we_reg),
        .we_reg_control(we_reg_control),
        .we_rx(we_rx));
  module_reg_miso reg_miso
       (.CLK_10MHZ(CLK_10MHZ),
        .D(D[2]),
        .E(clk_fn),
        .Q(Q),
        .hold_ctrl(hold_ctrl),
        .\reg_shift_miso_reg[0]_0 (\reg_shift_miso_reg[0] ),
        .rst_pi_IBUF(rst_pi_IBUF));
  module_reg_mosi reg_mosi
       (.CLK_10MHZ(CLK_10MHZ),
        .clk_fp(clk_fp),
        .dato_ram(dato_ram),
        .mosi(mosi),
        .mosi_po_OBUF(mosi_po_OBUF),
        .p_1_in(p_1_in),
        .reg_shift_mosi(reg_shift_mosi),
        .\reg_shift_mosi_reg[0]_0 (reg_mosi_n_7),
        .\reg_shift_mosi_reg[1]_0 (reg_mosi_n_5),
        .\reg_shift_mosi_reg[2]_0 (reg_mosi_n_4),
        .\reg_shift_mosi_reg[3]_0 (reg_mosi_n_3),
        .\reg_shift_mosi_reg[4]_0 (reg_mosi_n_2),
        .\reg_shift_mosi_reg[5]_0 (reg_mosi_n_1),
        .\reg_shift_mosi_reg[6]_0 (reg_mosi_n_0),
        .rst_pi_IBUF(rst_pi_IBUF),
        .we_reg(we_reg));
  module_state_machine_spi state_machine
       (.CLK_10MHZ(CLK_10MHZ),
        .CO(control_spi_n_0),
        .\FSM_sequential_state_reg[0]_0 (state_machine_n_0),
        .\FSM_sequential_state_reg[0]_1 (state_machine_n_3),
        .\FSM_sequential_state_reg[0]_2 (progress_reg),
        .\FSM_sequential_state_reg[0]_3 (\FSM_sequential_state_reg[0] ),
        .Q(state),
        .contador_0(contador_0),
        .\contador_reg[0] (contador),
        .en_conta_reg(state_machine_n_4),
        .hold_ctrl(hold_ctrl),
        .rst_pi_IBUF(rst_pi_IBUF),
        .\state_reg[1] (state_machine_n_5),
        .\state_reg[1]_0 (state_machine_n_6));
endmodule

module top_pmodALS
   (addr_pmod,
    we_reg_control,
    selec_out,
    send,
    \state_reg[3] ,
    \state_reg[3]_0 ,
    \state_reg[3]_1 ,
    \state_reg[3]_2 ,
    \state_reg[3]_3 ,
    \state_reg[3]_4 ,
    \state_reg[3]_5 ,
    \state_reg[7] ,
    \state_reg[7]_0 ,
    \state_reg[7]_1 ,
    \state_reg[7]_2 ,
    \state_reg[7]_3 ,
    \state_reg[7]_4 ,
    \state_reg[7]_5 ,
    send_reg,
    \state_reg[1] ,
    rst_pi_IBUF,
    CLK_10MHZ,
    proccess,
    we_rx,
    \state_reg[22]_inv ,
    \cntr_str_i[n_tx_end] ,
    D);
  output [0:0]addr_pmod;
  output we_reg_control;
  output selec_out;
  output send;
  output \state_reg[3] ;
  output \state_reg[3]_0 ;
  output \state_reg[3]_1 ;
  output \state_reg[3]_2 ;
  output \state_reg[3]_3 ;
  output \state_reg[3]_4 ;
  output \state_reg[3]_5 ;
  output \state_reg[7] ;
  output \state_reg[7]_0 ;
  output \state_reg[7]_1 ;
  output \state_reg[7]_2 ;
  output \state_reg[7]_3 ;
  output \state_reg[7]_4 ;
  output \state_reg[7]_5 ;
  output send_reg;
  output \state_reg[1] ;
  input rst_pi_IBUF;
  input CLK_10MHZ;
  input proccess;
  input we_rx;
  input \state_reg[22]_inv ;
  input [0:0]\cntr_str_i[n_tx_end] ;
  input [7:0]D;

  wire CLK_10MHZ;
  wire [7:0]D;
  wire [0:0]addr_pmod;
  wire clk1s;
  wire [0:0]\cntr_str_i[n_tx_end] ;
  wire machine_pmodALS_n_0;
  wire machine_pmodALS_n_1;
  wire machine_pmodALS_n_2;
  wire machine_pmodALS_n_3;
  wire machine_pmodALS_n_4;
  wire machine_pmodALS_n_5;
  wire machine_pmodALS_n_6;
  wire module_clk1s_n_1;
  wire [7:3]next_state;
  wire proccess;
  wire rst_pi_IBUF;
  wire selec_out;
  wire send;
  wire send_reg;
  wire \state_reg[1] ;
  wire \state_reg[22]_inv ;
  wire \state_reg[3] ;
  wire \state_reg[3]_0 ;
  wire \state_reg[3]_1 ;
  wire \state_reg[3]_2 ;
  wire \state_reg[3]_3 ;
  wire \state_reg[3]_4 ;
  wire \state_reg[3]_5 ;
  wire \state_reg[7] ;
  wire \state_reg[7]_0 ;
  wire \state_reg[7]_1 ;
  wire \state_reg[7]_2 ;
  wire \state_reg[7]_3 ;
  wire \state_reg[7]_4 ;
  wire \state_reg[7]_5 ;
  wire we_addr;
  wire we_reg_control;
  wire we_rx;

  module_control_pmodALS control_pmodALS
       (.CLK_10MHZ(CLK_10MHZ),
        .E({next_state[7],next_state[3]}),
        .Q({machine_pmodALS_n_0,machine_pmodALS_n_1}),
        .\addr_pmod_reg[0]_0 (addr_pmod),
        .\addr_pmod_reg[0]_1 (machine_pmodALS_n_3),
        .\cntr_str_i[n_tx_end] (\cntr_str_i[n_tx_end] ),
        .proccess(proccess),
        .rst_pi_IBUF(rst_pi_IBUF),
        .selec_out_reg_0(selec_out),
        .selec_out_reg_1(module_clk1s_n_1),
        .send_reg_0(send),
        .send_reg_1(send_reg),
        .send_reg_2(machine_pmodALS_n_4),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[22]_inv (\state_reg[22]_inv ),
        .we_addr(we_addr),
        .we_addr_reg_0(machine_pmodALS_n_5),
        .we_reg_control_reg_0(we_reg_control),
        .we_reg_control_reg_1(machine_pmodALS_n_6),
        .we_rx(we_rx));
  module_state_machine_pmodALS machine_pmodALS
       (.CLK_10MHZ(CLK_10MHZ),
        .\FSM_onehot_state_reg[0]_0 (machine_pmodALS_n_6),
        .\FSM_onehot_state_reg[1]_0 (machine_pmodALS_n_3),
        .\FSM_onehot_state_reg[2]_0 (machine_pmodALS_n_4),
        .Q({machine_pmodALS_n_0,machine_pmodALS_n_1,machine_pmodALS_n_2}),
        .clk1s(clk1s),
        .proccess(proccess),
        .progress_reg(machine_pmodALS_n_5),
        .rst_pi_IBUF(rst_pi_IBUF),
        .send(send),
        .we_addr(we_addr),
        .we_addr_reg(addr_pmod),
        .we_addr_reg_0(module_clk1s_n_1),
        .we_reg_control(we_reg_control));
  module_clk1s module_clk1s
       (.CLK_10MHZ(CLK_10MHZ),
        .Q(machine_pmodALS_n_2),
        .clk1s(clk1s),
        .clk_out_reg_0(module_clk1s_n_1),
        .rst_pi_IBUF(rst_pi_IBUF));
  module_pmodALS module_pmodALS1
       (.CLK_10MHZ(CLK_10MHZ),
        .D(D),
        .E({next_state[7],next_state[3]}),
        .rst_pi_IBUF(rst_pi_IBUF),
        .\state_reg[3]_0 (\state_reg[3] ),
        .\state_reg[3]_1 (\state_reg[3]_0 ),
        .\state_reg[3]_2 (\state_reg[3]_1 ),
        .\state_reg[3]_3 (\state_reg[3]_2 ),
        .\state_reg[3]_4 (\state_reg[3]_3 ),
        .\state_reg[3]_5 (\state_reg[3]_4 ),
        .\state_reg[3]_6 (\state_reg[3]_5 ),
        .\state_reg[7]_0 (\state_reg[7] ),
        .\state_reg[7]_1 (\state_reg[7]_0 ),
        .\state_reg[7]_2 (\state_reg[7]_1 ),
        .\state_reg[7]_3 (\state_reg[7]_2 ),
        .\state_reg[7]_4 (\state_reg[7]_3 ),
        .\state_reg[7]_5 (\state_reg[7]_4 ),
        .\state_reg[7]_6 (\state_reg[7]_5 ));
endmodule

(* IN_CONTROL_PMODALS = "11'b00000000100" *) (* PERIODO = "0.001000" *) 
(* NotValidForBitStream *)
module top_tactico
   (clk_100Mhz_pi,
    rst_pi,
    miso_pi,
    mosi_po,
    locked_po,
    cs_ctrl_po,
    sck_po,
    display_po,
    display_select_po);
  input clk_100Mhz_pi;
  input rst_pi;
  input miso_pi;
  output mosi_po;
  output locked_po;
  output cs_ctrl_po;
  output sck_po;
  output [6:0]display_po;
  output [7:0]display_select_po;

  wire [0:0]addr_pmod;
  wire clk;
  (* IBUF_LOW_PWR *) wire clk_100Mhz_pi;
  wire [0:0]\cntr_str_i[n_tx_end] ;
  wire cs_ctrl_po;
  wire cs_ctrl_po_OBUF;
  wire [6:0]display_po;
  wire [6:0]display_po_OBUF;
  wire [7:0]display_select_po;
  wire [7:0]display_select_po_OBUF;
  wire interface_spi_n_10;
  wire interface_spi_n_11;
  wire interface_spi_n_12;
  wire interface_spi_n_2;
  wire interface_spi_n_6;
  wire interface_spi_n_7;
  wire locked_po;
  wire locked_po_OBUF;
  wire miso_pi;
  wire miso_pi_IBUF;
  wire mosi_po;
  wire mosi_po_OBUF;
  wire pmodALS_n_10;
  wire pmodALS_n_11;
  wire pmodALS_n_12;
  wire pmodALS_n_13;
  wire pmodALS_n_14;
  wire pmodALS_n_15;
  wire pmodALS_n_16;
  wire pmodALS_n_17;
  wire pmodALS_n_18;
  wire pmodALS_n_19;
  wire pmodALS_n_4;
  wire pmodALS_n_5;
  wire pmodALS_n_6;
  wire pmodALS_n_7;
  wire pmodALS_n_8;
  wire pmodALS_n_9;
  wire proccess;
  wire rst_pi;
  wire rst_pi_IBUF;
  wire [4:0]salida;
  wire sck_po;
  wire sck_po_OBUF;
  wire selec_out;
  wire send;
  wire we_reg_control;
  wire we_rx;

  OBUF cs_ctrl_po_OBUF_inst
       (.I(cs_ctrl_po_OBUF),
        .O(cs_ctrl_po));
  OBUF \display_po_OBUF[0]_inst 
       (.I(display_po_OBUF[0]),
        .O(display_po[0]));
  OBUF \display_po_OBUF[1]_inst 
       (.I(display_po_OBUF[1]),
        .O(display_po[1]));
  OBUF \display_po_OBUF[2]_inst 
       (.I(display_po_OBUF[2]),
        .O(display_po[2]));
  OBUF \display_po_OBUF[3]_inst 
       (.I(display_po_OBUF[3]),
        .O(display_po[3]));
  OBUF \display_po_OBUF[4]_inst 
       (.I(display_po_OBUF[4]),
        .O(display_po[4]));
  OBUF \display_po_OBUF[5]_inst 
       (.I(display_po_OBUF[5]),
        .O(display_po[5]));
  OBUF \display_po_OBUF[6]_inst 
       (.I(display_po_OBUF[6]),
        .O(display_po[6]));
  OBUF \display_select_po_OBUF[0]_inst 
       (.I(display_select_po_OBUF[0]),
        .O(display_select_po[0]));
  OBUF \display_select_po_OBUF[1]_inst 
       (.I(display_select_po_OBUF[1]),
        .O(display_select_po[1]));
  OBUF \display_select_po_OBUF[2]_inst 
       (.I(display_select_po_OBUF[2]),
        .O(display_select_po[2]));
  OBUF \display_select_po_OBUF[3]_inst 
       (.I(display_select_po_OBUF[3]),
        .O(display_select_po[3]));
  OBUF \display_select_po_OBUF[4]_inst 
       (.I(display_select_po_OBUF[4]),
        .O(display_select_po[4]));
  OBUF \display_select_po_OBUF[5]_inst 
       (.I(display_select_po_OBUF[5]),
        .O(display_select_po[5]));
  OBUF \display_select_po_OBUF[6]_inst 
       (.I(display_select_po_OBUF[6]),
        .O(display_select_po[6]));
  OBUF \display_select_po_OBUF[7]_inst 
       (.I(display_select_po_OBUF[7]),
        .O(display_select_po[7]));
  WCLK generate_clock_10Mhz
       (.CLK_100MHZ(clk_100Mhz_pi),
        .CLK_10MHZ(clk),
        .locked(locked_po_OBUF));
  top_interface_spi interface_spi
       (.CLK_10MHZ(clk),
        .D({interface_spi_n_6,interface_spi_n_7,salida[1:0],interface_spi_n_10,interface_spi_n_11,interface_spi_n_12,salida[4]}),
        .addr_pmod(addr_pmod),
        .\cntr_str_i[n_tx_end] (\cntr_str_i[n_tx_end] ),
        .cs_ctrl_po_OBUF(cs_ctrl_po_OBUF),
        .mosi_po_OBUF(mosi_po_OBUF),
        .proccess(proccess),
        .\reg_shift_miso_reg[0] (miso_pi_IBUF),
        .rst_pi_IBUF(rst_pi_IBUF),
        .sck_po_OBUF(sck_po_OBUF),
        .selec_out(selec_out),
        .send(send),
        .\state_reg[1] (interface_spi_n_2),
        .\state_reg[22]_inv (pmodALS_n_18),
        .\state_reg[4] (pmodALS_n_19),
        .we_reg_control(we_reg_control),
        .we_rx(we_rx));
  OBUF locked_po_OBUF_inst
       (.I(locked_po_OBUF),
        .O(locked_po));
  IBUF miso_pi_IBUF_inst
       (.I(miso_pi),
        .O(miso_pi_IBUF));
  OBUF mosi_po_OBUF_inst
       (.I(mosi_po_OBUF),
        .O(mosi_po));
  top_pmodALS pmodALS
       (.CLK_10MHZ(clk),
        .D({interface_spi_n_6,interface_spi_n_7,salida[1:0],interface_spi_n_10,interface_spi_n_11,interface_spi_n_12,salida[4]}),
        .addr_pmod(addr_pmod),
        .\cntr_str_i[n_tx_end] (\cntr_str_i[n_tx_end] ),
        .proccess(proccess),
        .rst_pi_IBUF(rst_pi_IBUF),
        .selec_out(selec_out),
        .send(send),
        .send_reg(pmodALS_n_18),
        .\state_reg[1] (pmodALS_n_19),
        .\state_reg[22]_inv (interface_spi_n_2),
        .\state_reg[3] (pmodALS_n_4),
        .\state_reg[3]_0 (pmodALS_n_5),
        .\state_reg[3]_1 (pmodALS_n_6),
        .\state_reg[3]_2 (pmodALS_n_7),
        .\state_reg[3]_3 (pmodALS_n_8),
        .\state_reg[3]_4 (pmodALS_n_9),
        .\state_reg[3]_5 (pmodALS_n_10),
        .\state_reg[7] (pmodALS_n_11),
        .\state_reg[7]_0 (pmodALS_n_12),
        .\state_reg[7]_1 (pmodALS_n_13),
        .\state_reg[7]_2 (pmodALS_n_14),
        .\state_reg[7]_3 (pmodALS_n_15),
        .\state_reg[7]_4 (pmodALS_n_16),
        .\state_reg[7]_5 (pmodALS_n_17),
        .we_reg_control(we_reg_control),
        .we_rx(we_rx));
  IBUF rst_pi_IBUF_inst
       (.I(rst_pi),
        .O(rst_pi_IBUF));
  OBUF sck_po_OBUF_inst
       (.I(sck_po_OBUF),
        .O(sck_po));
  module_seg7_control seg7_control
       (.CLK_10MHZ(clk),
        .\display_po[0] (pmodALS_n_11),
        .\display_po[0]_0 (pmodALS_n_4),
        .\display_po[1] (pmodALS_n_12),
        .\display_po[1]_0 (pmodALS_n_5),
        .\display_po[2] (pmodALS_n_13),
        .\display_po[2]_0 (pmodALS_n_6),
        .\display_po[3] (pmodALS_n_14),
        .\display_po[3]_0 (pmodALS_n_7),
        .\display_po[4] (pmodALS_n_15),
        .\display_po[4]_0 (pmodALS_n_8),
        .\display_po[5] (pmodALS_n_16),
        .\display_po[5]_0 (pmodALS_n_9),
        .\display_po[6] (pmodALS_n_17),
        .\display_po[6]_0 (pmodALS_n_10),
        .display_po_OBUF(display_po_OBUF),
        .display_select_po_OBUF(display_select_po_OBUF),
        .rst_pi_IBUF(rst_pi_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
