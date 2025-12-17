// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 21 01:40:57 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_mario_dvi_encoder_0_0_stub.v
// Design      : bd_mario_dvi_encoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "simple_dvi_encoder,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pix_clk, pix_clkx5, reset_n, red, green, blue, hsync, 
  vsync, vde, tmds_data_p, tmds_data_n, tmds_clk_p, tmds_clk_n)
/* synthesis syn_black_box black_box_pad_pin="pix_clk,pix_clkx5,reset_n,red[7:0],green[7:0],blue[7:0],hsync,vsync,vde,tmds_data_p[2:0],tmds_data_n[2:0],tmds_clk_p,tmds_clk_n" */;
  input pix_clk;
  input pix_clkx5;
  input reset_n;
  input [7:0]red;
  input [7:0]green;
  input [7:0]blue;
  input hsync;
  input vsync;
  input vde;
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  output tmds_clk_p;
  output tmds_clk_n;
endmodule
