-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../../../Repo/lab03spi-g03/Ejercicios/scr/xci/WCLK/WCLK_clk_wiz.v" \
  "../../../../../../../../Repo/lab03spi-g03/Ejercicios/scr/xci/WCLK/WCLK.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

