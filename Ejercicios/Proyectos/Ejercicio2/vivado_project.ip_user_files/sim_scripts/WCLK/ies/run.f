-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../../../scr/xci/WCLK/WCLK_clk_wiz.v" \
  "../../../../../../scr/xci/WCLK/WCLK.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

