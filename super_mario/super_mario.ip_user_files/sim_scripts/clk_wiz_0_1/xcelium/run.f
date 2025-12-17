-makelib xcelium_lib/xpm -sv \
  "D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../Lab6_1/Lab6_1.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0_1_clk_wiz.v" \
  "../../../../../../Lab6_1/Lab6_1.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

