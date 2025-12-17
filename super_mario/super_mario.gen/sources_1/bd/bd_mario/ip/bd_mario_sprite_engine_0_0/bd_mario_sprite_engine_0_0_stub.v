// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 20 00:23:50 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Super_Mario/super_mario/super_mario.gen/sources_1/bd/bd_mario/ip/bd_mario_sprite_engine_0_0/bd_mario_sprite_engine_0_0_stub.v
// Design      : bd_mario_sprite_engine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sprite_engine,Vivado 2022.2" *)
module bd_mario_sprite_engine_0_0(clk, vga_clk, reset_n, h_count, v_count, 
  video_active, s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, 
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, red, green, 
  blue)
/* synthesis syn_black_box black_box_pad_pin="clk,vga_clk,reset_n,h_count[9:0],v_count[9:0],video_active,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,red[7:0],green[7:0],blue[7:0]" */;
  input clk;
  input vga_clk;
  input reset_n;
  input [9:0]h_count;
  input [9:0]v_count;
  input video_active;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [7:0]red;
  output [7:0]green;
  output [7:0]blue;
endmodule
