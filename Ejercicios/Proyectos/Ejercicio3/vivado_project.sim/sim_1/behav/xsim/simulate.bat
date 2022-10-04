@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sat Sep 24 15:49:08 -0600 2022
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim tb_spi_pmodALS_behav -key {Behavioral:sim_1:Functional:tb_spi_pmodALS} -tclbatch tb_spi_pmodALS.tcl -view C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Lab3/Respaldo/Ejercicios_v7/Ejercicio3/tb_spi_pmodALS_behav.wcfg -log simulate.log"
call xsim  tb_spi_pmodALS_behav -key {Behavioral:sim_1:Functional:tb_spi_pmodALS} -tclbatch tb_spi_pmodALS.tcl -view C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Lab3/Respaldo/Ejercicios_v7/Ejercicio3/tb_spi_pmodALS_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
