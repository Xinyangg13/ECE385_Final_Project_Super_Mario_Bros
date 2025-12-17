// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 20 17:11:56 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_mario_sprite_engine_0_0_sim_netlist.v
// Design      : bd_mario_sprite_engine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_mario_sprite_engine_0_0,sprite_engine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sprite_engine,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    vga_clk,
    reset_n,
    h_count,
    v_count,
    video_active,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    red,
    green,
    blue);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 83333333, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_mario_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vga_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vga_clk, FREQ_HZ 25179755, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input vga_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input [9:0]h_count;
  input [9:0]v_count;
  input video_active;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 83333333, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN bd_mario_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  output [7:0]red;
  output [7:0]green;
  output [7:0]blue;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:1]\^blue ;
  wire clk;
  wire [6:2]\^green ;
  wire [9:0]h_count;
  wire [7:0]\^red ;
  wire reset_n;
  wire [31:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [9:0]v_count;
  wire vga_clk;
  wire video_active;

  assign blue[7] = \^blue [7];
  assign blue[6] = \^blue [7];
  assign blue[5] = \^blue [3];
  assign blue[4:3] = \^blue [4:3];
  assign blue[2] = \^blue [7];
  assign blue[1] = \^blue [1];
  assign blue[0] = \^blue [1];
  assign green[7] = \^blue [7];
  assign green[6] = \^green [6];
  assign green[5] = \^green [3];
  assign green[4] = \^blue [7];
  assign green[3:2] = \^green [3:2];
  assign green[1] = \<const0> ;
  assign green[0] = \^blue [1];
  assign red[7] = \^red [7];
  assign red[6] = \^red [2];
  assign red[5:2] = \^red [5:2];
  assign red[1] = \^red [0];
  assign red[0] = \^red [0];
  assign s_axi_arready = \<const1> ;
  assign s_axi_awready = \<const1> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [30];
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \^s_axi_rdata [30];
  assign s_axi_rdata[27] = \^s_axi_rdata [30];
  assign s_axi_rdata[26] = \^s_axi_rdata [30];
  assign s_axi_rdata[25] = \^s_axi_rdata [30];
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \^s_axi_rdata [30];
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \^s_axi_rdata [30];
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \^s_axi_rdata [30];
  assign s_axi_rdata[18] = \^s_axi_rdata [30];
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \^s_axi_rdata [30];
  assign s_axi_rdata[15:0] = \^s_axi_rdata [15:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine inst
       (.blue({\^blue [3],\^blue [4]}),
        .clk(clk),
        .green({\^blue [7],\^green [6],\^green [3:2],\^blue [1]}),
        .h_count(h_count),
        .red({\^red [7],\^red [2],\^red [5:3],\^red [0]}),
        .reset_n(reset_n),
        .s_axi_araddr(s_axi_araddr[7:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[7:0]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [30],\^s_axi_rdata [15:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[15:0]),
        .s_axi_wvalid(s_axi_wvalid),
        .v_count(v_count),
        .vga_clk(vga_clk),
        .video_active(video_active));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine
   (s_axi_rdata,
    red,
    green,
    blue,
    s_axi_bvalid,
    s_axi_rvalid,
    v_count,
    h_count,
    s_axi_wdata,
    clk,
    s_axi_arvalid,
    vga_clk,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wvalid,
    video_active,
    reset_n,
    s_axi_araddr,
    s_axi_bready,
    s_axi_rready);
  output [16:0]s_axi_rdata;
  output [5:0]red;
  output [4:0]green;
  output [1:0]blue;
  output s_axi_bvalid;
  output s_axi_rvalid;
  input [9:0]v_count;
  input [9:0]h_count;
  input [15:0]s_axi_wdata;
  input clk;
  input s_axi_arvalid;
  input vga_clk;
  input [7:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input video_active;
  input reset_n;
  input [7:0]s_axi_araddr;
  input s_axi_bready;
  input s_axi_rready;

  wire \_inferred__6/i__carry__0_n_0 ;
  wire \_inferred__6/i__carry__0_n_1 ;
  wire \_inferred__6/i__carry__0_n_2 ;
  wire \_inferred__6/i__carry__0_n_3 ;
  wire \_inferred__6/i__carry__1_n_0 ;
  wire \_inferred__6/i__carry__1_n_1 ;
  wire \_inferred__6/i__carry__1_n_2 ;
  wire \_inferred__6/i__carry__1_n_3 ;
  wire \_inferred__6/i__carry__2_n_0 ;
  wire \_inferred__6/i__carry__2_n_1 ;
  wire \_inferred__6/i__carry__2_n_2 ;
  wire \_inferred__6/i__carry__2_n_3 ;
  wire \_inferred__6/i__carry__3_n_0 ;
  wire \_inferred__6/i__carry__3_n_1 ;
  wire \_inferred__6/i__carry__3_n_2 ;
  wire \_inferred__6/i__carry__3_n_3 ;
  wire \_inferred__6/i__carry__4_n_0 ;
  wire \_inferred__6/i__carry__4_n_1 ;
  wire \_inferred__6/i__carry__4_n_2 ;
  wire \_inferred__6/i__carry__4_n_3 ;
  wire \_inferred__6/i__carry__5_n_0 ;
  wire \_inferred__6/i__carry__5_n_1 ;
  wire \_inferred__6/i__carry__5_n_2 ;
  wire \_inferred__6/i__carry__5_n_3 ;
  wire \_inferred__6/i__carry__6_n_0 ;
  wire \_inferred__6/i__carry__6_n_1 ;
  wire \_inferred__6/i__carry__6_n_2 ;
  wire \_inferred__6/i__carry__6_n_3 ;
  wire \_inferred__6/i__carry_n_0 ;
  wire \_inferred__6/i__carry_n_1 ;
  wire \_inferred__6/i__carry_n_2 ;
  wire \_inferred__6/i__carry_n_3 ;
  wire \_inferred__7/i__carry__0_n_0 ;
  wire \_inferred__7/i__carry__0_n_1 ;
  wire \_inferred__7/i__carry__0_n_2 ;
  wire \_inferred__7/i__carry__0_n_3 ;
  wire \_inferred__7/i__carry__1_n_0 ;
  wire \_inferred__7/i__carry__1_n_1 ;
  wire \_inferred__7/i__carry__1_n_2 ;
  wire \_inferred__7/i__carry__1_n_3 ;
  wire \_inferred__7/i__carry__2_n_0 ;
  wire \_inferred__7/i__carry__2_n_1 ;
  wire \_inferred__7/i__carry__2_n_2 ;
  wire \_inferred__7/i__carry__2_n_3 ;
  wire \_inferred__7/i__carry__3_n_3 ;
  wire \_inferred__7/i__carry_n_0 ;
  wire \_inferred__7/i__carry_n_1 ;
  wire \_inferred__7/i__carry_n_2 ;
  wire \_inferred__7/i__carry_n_3 ;
  wire [1:0]blue;
  wire \blue[5]_i_1_n_0 ;
  wire clk;
  wire [4:0]green;
  wire \green[0]_i_1_n_0 ;
  wire \green[2]_i_1_n_0 ;
  wire \green[6]_i_1_n_0 ;
  wire \green[7]_i_1_n_0 ;
  wire \green[7]_i_2_n_0 ;
  wire \green[7]_i_3_n_0 ;
  wire [9:0]h_count;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire in_mario1;
  wire in_mario1_carry__0_i_1_n_0;
  wire in_mario1_carry__0_i_2_n_0;
  wire in_mario1_carry__0_i_3_n_0;
  wire in_mario1_carry__0_i_4_n_0;
  wire in_mario1_carry__0_i_5_n_0;
  wire in_mario1_carry__0_n_1;
  wire in_mario1_carry__0_n_2;
  wire in_mario1_carry__0_n_3;
  wire in_mario1_carry_i_1_n_0;
  wire in_mario1_carry_i_2_n_0;
  wire in_mario1_carry_i_3_n_0;
  wire in_mario1_carry_i_4_n_0;
  wire in_mario1_carry_i_5_n_0;
  wire in_mario1_carry_i_6_n_0;
  wire in_mario1_carry_i_7_n_0;
  wire in_mario1_carry_i_8_n_0;
  wire in_mario1_carry_n_0;
  wire in_mario1_carry_n_1;
  wire in_mario1_carry_n_2;
  wire in_mario1_carry_n_3;
  wire in_mario22_in;
  wire in_mario2_carry__0_i_1_n_0;
  wire in_mario2_carry__0_i_2_n_0;
  wire in_mario2_carry__0_i_3_n_0;
  wire in_mario2_carry__0_i_4_n_0;
  wire in_mario2_carry__0_i_5_n_0;
  wire in_mario2_carry__0_n_1;
  wire in_mario2_carry__0_n_2;
  wire in_mario2_carry__0_n_3;
  wire in_mario2_carry_i_1_n_0;
  wire in_mario2_carry_i_2_n_0;
  wire in_mario2_carry_i_3_n_0;
  wire in_mario2_carry_i_4_n_0;
  wire in_mario2_carry_i_5_n_0;
  wire in_mario2_carry_i_6_n_0;
  wire in_mario2_carry_i_7_n_0;
  wire in_mario2_carry_i_8_n_0;
  wire in_mario2_carry_n_0;
  wire in_mario2_carry_n_1;
  wire in_mario2_carry_n_2;
  wire in_mario2_carry_n_3;
  wire [15:1]in_mario3;
  wire in_mario3__0_carry__0_i_1_n_0;
  wire in_mario3__0_carry__0_i_2_n_0;
  wire in_mario3__0_carry__0_i_3_n_0;
  wire in_mario3__0_carry__0_i_4_n_0;
  wire in_mario3__0_carry__0_n_0;
  wire in_mario3__0_carry__0_n_1;
  wire in_mario3__0_carry__0_n_2;
  wire in_mario3__0_carry__0_n_3;
  wire in_mario3__0_carry__1_i_1_n_0;
  wire in_mario3__0_carry__1_i_2_n_0;
  wire in_mario3__0_carry__1_i_3_n_0;
  wire in_mario3__0_carry__1_i_4_n_0;
  wire in_mario3__0_carry__1_n_0;
  wire in_mario3__0_carry__1_n_1;
  wire in_mario3__0_carry__1_n_2;
  wire in_mario3__0_carry__1_n_3;
  wire in_mario3__0_carry__2_i_1_n_0;
  wire in_mario3__0_carry__2_i_2_n_0;
  wire in_mario3__0_carry__2_i_3_n_0;
  wire in_mario3__0_carry__2_i_4_n_0;
  wire in_mario3__0_carry__2_n_1;
  wire in_mario3__0_carry__2_n_2;
  wire in_mario3__0_carry__2_n_3;
  wire in_mario3__0_carry_i_1_n_0;
  wire in_mario3__0_carry_i_2_n_0;
  wire in_mario3__0_carry_i_3_n_0;
  wire in_mario3__0_carry_i_4_n_0;
  wire in_mario3__0_carry_n_0;
  wire in_mario3__0_carry_n_1;
  wire in_mario3__0_carry_n_2;
  wire in_mario3__0_carry_n_3;
  wire in_mario3_carry__0_i_1_n_0;
  wire in_mario3_carry__0_i_2_n_0;
  wire in_mario3_carry__0_i_3_n_0;
  wire in_mario3_carry__0_i_4_n_0;
  wire in_mario3_carry__0_i_5_n_0;
  wire in_mario3_carry__0_i_6_n_0;
  wire in_mario3_carry__0_i_7_n_0;
  wire in_mario3_carry__0_n_0;
  wire in_mario3_carry__0_n_1;
  wire in_mario3_carry__0_n_2;
  wire in_mario3_carry__0_n_3;
  wire in_mario3_carry__0_n_4;
  wire in_mario3_carry__0_n_5;
  wire in_mario3_carry__0_n_6;
  wire in_mario3_carry__0_n_7;
  wire in_mario3_carry__1_i_1_n_0;
  wire in_mario3_carry__1_i_2_n_0;
  wire in_mario3_carry__1_i_3_n_0;
  wire in_mario3_carry__1_i_4_n_0;
  wire in_mario3_carry__1_i_5_n_0;
  wire in_mario3_carry__1_i_6_n_0;
  wire in_mario3_carry__1_i_7_n_0;
  wire in_mario3_carry__1_i_8_n_0;
  wire in_mario3_carry__1_n_0;
  wire in_mario3_carry__1_n_1;
  wire in_mario3_carry__1_n_2;
  wire in_mario3_carry__1_n_3;
  wire in_mario3_carry__1_n_4;
  wire in_mario3_carry__1_n_5;
  wire in_mario3_carry__1_n_6;
  wire in_mario3_carry__1_n_7;
  wire in_mario3_carry__2_i_1_n_0;
  wire in_mario3_carry__2_i_2_n_0;
  wire in_mario3_carry__2_i_3_n_0;
  wire in_mario3_carry__2_i_4_n_0;
  wire in_mario3_carry__2_i_5_n_0;
  wire in_mario3_carry__2_i_6_n_0;
  wire in_mario3_carry__2_i_7_n_0;
  wire in_mario3_carry__2_i_8_n_0;
  wire in_mario3_carry__2_n_0;
  wire in_mario3_carry__2_n_1;
  wire in_mario3_carry__2_n_2;
  wire in_mario3_carry__2_n_3;
  wire in_mario3_carry__2_n_4;
  wire in_mario3_carry__2_n_5;
  wire in_mario3_carry__2_n_6;
  wire in_mario3_carry__2_n_7;
  wire in_mario3_carry__3_i_1_n_0;
  wire in_mario3_carry__3_i_2_n_0;
  wire in_mario3_carry__3_n_2;
  wire in_mario3_carry__3_n_7;
  wire in_mario3_carry_i_1_n_0;
  wire in_mario3_carry_i_2_n_0;
  wire in_mario3_carry_i_3_n_0;
  wire in_mario3_carry_i_4_n_0;
  wire in_mario3_carry_n_0;
  wire in_mario3_carry_n_1;
  wire in_mario3_carry_n_2;
  wire in_mario3_carry_n_3;
  wire in_mario3_carry_n_4;
  wire in_mario3_carry_n_5;
  wire in_mario3_carry_n_6;
  wire in_mario3_carry_n_7;
  wire is_brick;
  wire is_brick1_carry__0_i_1_n_0;
  wire is_brick1_carry__0_i_2_n_0;
  wire is_brick1_carry__0_i_3_n_0;
  wire is_brick1_carry__0_n_2;
  wire is_brick1_carry__0_n_3;
  wire is_brick1_carry__0_n_5;
  wire is_brick1_carry_i_1_n_0;
  wire is_brick1_carry_i_2_n_0;
  wire is_brick1_carry_i_3_n_0;
  wire is_brick1_carry_i_4_n_0;
  wire is_brick1_carry_n_0;
  wire is_brick1_carry_n_1;
  wire is_brick1_carry_n_2;
  wire is_brick1_carry_n_3;
  wire [7:0]mario_state;
  wire mario_state_0;
  wire [15:0]mario_x;
  wire mario_x_2;
  wire [15:0]mario_y;
  wire mario_y_1;
  wire [31:0]p_1_in;
  wire [5:0]red;
  wire red1;
  wire \red[1]_i_1_n_0 ;
  wire \red[4]_i_1_n_0 ;
  wire \red[5]_i_1_n_0 ;
  wire \red[6]_i_1_n_0 ;
  wire \red[7]_i_10_n_0 ;
  wire \red[7]_i_11_n_0 ;
  wire \red[7]_i_12_n_0 ;
  wire \red[7]_i_13_n_0 ;
  wire \red[7]_i_14_n_0 ;
  wire \red[7]_i_15_n_0 ;
  wire \red[7]_i_16_n_0 ;
  wire \red[7]_i_17_n_0 ;
  wire \red[7]_i_2_n_0 ;
  wire \red[7]_i_3_n_0 ;
  wire \red[7]_i_4_n_0 ;
  wire \red[7]_i_5_n_0 ;
  wire \red[7]_i_6_n_0 ;
  wire \red[7]_i_7_n_0 ;
  wire \red[7]_i_8_n_0 ;
  wire \red[7]_i_9_n_0 ;
  wire reset_n;
  wire [7:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [7:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [16:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[3]_i_2_n_0 ;
  wire \s_axi_rdata[4]_i_2_n_0 ;
  wire \s_axi_rdata[5]_i_2_n_0 ;
  wire \s_axi_rdata[6]_i_2_n_0 ;
  wire \s_axi_rdata[7]_i_2_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [15:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [15:0]scroll_x;
  wire \scroll_x[15]_i_2_n_0 ;
  wire scroll_x_3;
  wire [9:0]v_count;
  wire vga_clk;
  wire video_active;
  wire [3:0]\NLW__inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__3_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__4_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__5_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__6_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__7/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__7/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__7/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__7/i__carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__7/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__7/i__carry__3_O_UNCONNECTED ;
  wire [3:0]NLW_in_mario1_carry_O_UNCONNECTED;
  wire [3:0]NLW_in_mario1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_in_mario2_carry_O_UNCONNECTED;
  wire [3:0]NLW_in_mario2_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_in_mario3__0_carry_O_UNCONNECTED;
  wire [3:3]NLW_in_mario3__0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_in_mario3_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_in_mario3_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_is_brick1_carry_O_UNCONNECTED;
  wire [3:2]NLW_is_brick1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_is_brick1_carry__0_O_UNCONNECTED;

  CARRY4 \_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__6/i__carry_n_0 ,\_inferred__6/i__carry_n_1 ,\_inferred__6/i__carry_n_2 ,\_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(h_count[3:0]),
        .O(\NLW__inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \_inferred__6/i__carry__0 
       (.CI(\_inferred__6/i__carry_n_0 ),
        .CO({\_inferred__6/i__carry__0_n_0 ,\_inferred__6/i__carry__0_n_1 ,\_inferred__6/i__carry__0_n_2 ,\_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(h_count[7:4]),
        .O(\NLW__inferred__6/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \_inferred__6/i__carry__1 
       (.CI(\_inferred__6/i__carry__0_n_0 ),
        .CO({\_inferred__6/i__carry__1_n_0 ,\_inferred__6/i__carry__1_n_1 ,\_inferred__6/i__carry__1_n_2 ,\_inferred__6/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,h_count[9:8]}),
        .O(\NLW__inferred__6/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \_inferred__6/i__carry__2 
       (.CI(\_inferred__6/i__carry__1_n_0 ),
        .CO({\_inferred__6/i__carry__2_n_0 ,\_inferred__6/i__carry__2_n_1 ,\_inferred__6/i__carry__2_n_2 ,\_inferred__6/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW__inferred__6/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \_inferred__6/i__carry__3 
       (.CI(\_inferred__6/i__carry__2_n_0 ),
        .CO({\_inferred__6/i__carry__3_n_0 ,\_inferred__6/i__carry__3_n_1 ,\_inferred__6/i__carry__3_n_2 ,\_inferred__6/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW__inferred__6/i__carry__3_O_UNCONNECTED [3:0]),
        .S({in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,i__carry__3_i_1__0_n_0}));
  CARRY4 \_inferred__6/i__carry__4 
       (.CI(\_inferred__6/i__carry__3_n_0 ),
        .CO({\_inferred__6/i__carry__4_n_0 ,\_inferred__6/i__carry__4_n_1 ,\_inferred__6/i__carry__4_n_2 ,\_inferred__6/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW__inferred__6/i__carry__4_O_UNCONNECTED [3:0]),
        .S({in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,in_mario3_carry__3_n_2}));
  CARRY4 \_inferred__6/i__carry__5 
       (.CI(\_inferred__6/i__carry__4_n_0 ),
        .CO({\_inferred__6/i__carry__5_n_0 ,\_inferred__6/i__carry__5_n_1 ,\_inferred__6/i__carry__5_n_2 ,\_inferred__6/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW__inferred__6/i__carry__5_O_UNCONNECTED [3:0]),
        .S({in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,in_mario3_carry__3_n_2}));
  CARRY4 \_inferred__6/i__carry__6 
       (.CI(\_inferred__6/i__carry__5_n_0 ),
        .CO({\_inferred__6/i__carry__6_n_0 ,\_inferred__6/i__carry__6_n_1 ,\_inferred__6/i__carry__6_n_2 ,\_inferred__6/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW__inferred__6/i__carry__6_O_UNCONNECTED [3:0]),
        .S({in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,in_mario3_carry__3_n_2,in_mario3_carry__3_n_2}));
  CARRY4 \_inferred__7/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__7/i__carry_n_0 ,\_inferred__7/i__carry_n_1 ,\_inferred__7/i__carry_n_2 ,\_inferred__7/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(v_count[3:0]),
        .O(\NLW__inferred__7/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \_inferred__7/i__carry__0 
       (.CI(\_inferred__7/i__carry_n_0 ),
        .CO({\_inferred__7/i__carry__0_n_0 ,\_inferred__7/i__carry__0_n_1 ,\_inferred__7/i__carry__0_n_2 ,\_inferred__7/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,mario_y[4]}),
        .O(\NLW__inferred__7/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0}));
  CARRY4 \_inferred__7/i__carry__1 
       (.CI(\_inferred__7/i__carry__0_n_0 ),
        .CO({\_inferred__7/i__carry__1_n_0 ,\_inferred__7/i__carry__1_n_1 ,\_inferred__7/i__carry__1_n_2 ,\_inferred__7/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mario_y[11],i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}),
        .O(\NLW__inferred__7/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0}));
  CARRY4 \_inferred__7/i__carry__2 
       (.CI(\_inferred__7/i__carry__1_n_0 ),
        .CO({\_inferred__7/i__carry__2_n_0 ,\_inferred__7/i__carry__2_n_1 ,\_inferred__7/i__carry__2_n_2 ,\_inferred__7/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(mario_y[15:12]),
        .O(\NLW__inferred__7/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  CARRY4 \_inferred__7/i__carry__3 
       (.CI(\_inferred__7/i__carry__2_n_0 ),
        .CO({\NLW__inferred__7/i__carry__3_CO_UNCONNECTED [3:1],\_inferred__7/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW__inferred__7/i__carry__3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__3_i_1_n_0}));
  LUT6 #(
    .INIT(64'h1515151515151555)) 
    \blue[5]_i_1 
       (.I0(v_count[9]),
        .I1(v_count[7]),
        .I2(v_count[8]),
        .I3(v_count[4]),
        .I4(v_count[6]),
        .I5(v_count[5]),
        .O(\blue[5]_i_1_n_0 ));
  FDRE \blue_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(blue[0]),
        .R(\green[7]_i_1_n_0 ));
  FDRE \blue_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\blue[5]_i_1_n_0 ),
        .Q(blue[1]),
        .R(\green[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    \green[0]_i_1 
       (.I0(v_count[5]),
        .I1(v_count[6]),
        .I2(v_count[4]),
        .I3(v_count[8]),
        .I4(v_count[7]),
        .I5(v_count[9]),
        .O(\green[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \green[2]_i_1 
       (.I0(is_brick),
        .O(\green[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \green[5]_i_1 
       (.I0(is_brick1_carry__0_n_5),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[8]),
        .I4(\green[7]_i_3_n_0 ),
        .O(is_brick));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \green[6]_i_1 
       (.I0(is_brick),
        .I1(\blue[5]_i_1_n_0 ),
        .O(\green[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \green[7]_i_1 
       (.I0(red1),
        .I1(in_mario22_in),
        .I2(in_mario1),
        .I3(\_inferred__7/i__carry__3_n_3 ),
        .I4(\_inferred__6/i__carry__6_n_0 ),
        .I5(\red[7]_i_3_n_0 ),
        .O(\green[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \green[7]_i_2 
       (.I0(\blue[5]_i_1_n_0 ),
        .I1(\green[7]_i_3_n_0 ),
        .I2(v_count[8]),
        .I3(v_count[5]),
        .I4(v_count[6]),
        .I5(is_brick1_carry__0_n_5),
        .O(\green[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBBF)) 
    \green[7]_i_3 
       (.I0(v_count[9]),
        .I1(v_count[7]),
        .I2(v_count[3]),
        .I3(v_count[4]),
        .O(\green[7]_i_3_n_0 ));
  FDRE \green_reg[0] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green[0]_i_1_n_0 ),
        .Q(green[0]),
        .R(\green[7]_i_1_n_0 ));
  FDRE \green_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green[2]_i_1_n_0 ),
        .Q(green[1]),
        .R(\green[7]_i_1_n_0 ));
  FDRE \green_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(is_brick),
        .Q(green[2]),
        .R(\green[7]_i_1_n_0 ));
  FDRE \green_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green[6]_i_1_n_0 ),
        .Q(green[3]),
        .R(\green[7]_i_1_n_0 ));
  FDRE \green_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green[7]_i_2_n_0 ),
        .Q(green[4]),
        .R(\green[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(v_count[7]),
        .I1(mario_y[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(h_count[7]),
        .I1(in_mario3_carry__0_n_4),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2
       (.I0(v_count[5]),
        .I1(mario_y[5]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(h_count[6]),
        .I1(in_mario3_carry__0_n_5),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(v_count[5]),
        .I1(mario_y[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(h_count[5]),
        .I1(in_mario3_carry__0_n_6),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_4
       (.I0(mario_y[6]),
        .I1(v_count[6]),
        .I2(mario_y[7]),
        .I3(v_count[7]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(h_count[4]),
        .I1(in_mario3_carry__0_n_7),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_5
       (.I0(mario_y[5]),
        .I1(v_count[5]),
        .I2(mario_y[6]),
        .I3(v_count[6]),
        .O(i__carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_6
       (.I0(mario_y[5]),
        .I1(v_count[5]),
        .I2(mario_y[4]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7
       (.I0(v_count[4]),
        .I1(mario_y[4]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_1
       (.I0(v_count[9]),
        .I1(mario_y[9]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(in_mario3_carry__1_n_4),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(v_count[9]),
        .I1(mario_y[9]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(in_mario3_carry__1_n_5),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_3
       (.I0(v_count[7]),
        .I1(mario_y[7]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(h_count[9]),
        .I1(in_mario3_carry__1_n_6),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(mario_y[10]),
        .I1(mario_y[11]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__0
       (.I0(h_count[8]),
        .I1(in_mario3_carry__1_n_7),
        .O(i__carry__1_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry__1_i_5
       (.I0(mario_y[9]),
        .I1(v_count[9]),
        .I2(mario_y[10]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_6
       (.I0(mario_y[8]),
        .I1(v_count[8]),
        .I2(mario_y[9]),
        .I3(v_count[9]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_7
       (.I0(mario_y[7]),
        .I1(v_count[7]),
        .I2(mario_y[8]),
        .I3(v_count[8]),
        .O(i__carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(in_mario3_carry__2_n_4),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__0
       (.I0(mario_y[14]),
        .I1(mario_y[15]),
        .O(i__carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(in_mario3_carry__2_n_5),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__0
       (.I0(mario_y[13]),
        .I1(mario_y[14]),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(in_mario3_carry__2_n_6),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__0
       (.I0(mario_y[12]),
        .I1(mario_y[13]),
        .O(i__carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(in_mario3_carry__2_n_7),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4__0
       (.I0(mario_y[11]),
        .I1(mario_y[12]),
        .O(i__carry__2_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(mario_y[15]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1__0
       (.I0(in_mario3_carry__3_n_7),
        .O(i__carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(h_count[3]),
        .I1(in_mario3_carry_n_4),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__0
       (.I0(v_count[3]),
        .I1(mario_y[3]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(v_count[2]),
        .I1(mario_y[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(h_count[2]),
        .I1(in_mario3_carry_n_5),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(v_count[1]),
        .I1(mario_y[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__0
       (.I0(h_count[1]),
        .I1(in_mario3_carry_n_6),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(v_count[0]),
        .I1(mario_y[0]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__0
       (.I0(h_count[0]),
        .I1(in_mario3_carry_n_7),
        .O(i__carry_i_4__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_mario1_carry
       (.CI(1'b0),
        .CO({in_mario1_carry_n_0,in_mario1_carry_n_1,in_mario1_carry_n_2,in_mario1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({in_mario1_carry_i_1_n_0,in_mario1_carry_i_2_n_0,in_mario1_carry_i_3_n_0,in_mario1_carry_i_4_n_0}),
        .O(NLW_in_mario1_carry_O_UNCONNECTED[3:0]),
        .S({in_mario1_carry_i_5_n_0,in_mario1_carry_i_6_n_0,in_mario1_carry_i_7_n_0,in_mario1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_mario1_carry__0
       (.CI(in_mario1_carry_n_0),
        .CO({in_mario1,in_mario1_carry__0_n_1,in_mario1_carry__0_n_2,in_mario1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in_mario1_carry__0_i_1_n_0}),
        .O(NLW_in_mario1_carry__0_O_UNCONNECTED[3:0]),
        .S({in_mario1_carry__0_i_2_n_0,in_mario1_carry__0_i_3_n_0,in_mario1_carry__0_i_4_n_0,in_mario1_carry__0_i_5_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    in_mario1_carry__0_i_1
       (.I0(v_count[8]),
        .I1(mario_y[8]),
        .I2(mario_y[9]),
        .I3(v_count[9]),
        .O(in_mario1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_mario1_carry__0_i_2
       (.I0(mario_y[15]),
        .I1(mario_y[14]),
        .O(in_mario1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_mario1_carry__0_i_3
       (.I0(mario_y[13]),
        .I1(mario_y[12]),
        .O(in_mario1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_mario1_carry__0_i_4
       (.I0(mario_y[11]),
        .I1(mario_y[10]),
        .O(in_mario1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario1_carry__0_i_5
       (.I0(mario_y[9]),
        .I1(v_count[9]),
        .I2(mario_y[8]),
        .I3(v_count[8]),
        .O(in_mario1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    in_mario1_carry_i_1
       (.I0(v_count[6]),
        .I1(mario_y[6]),
        .I2(mario_y[7]),
        .I3(v_count[7]),
        .O(in_mario1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    in_mario1_carry_i_2
       (.I0(v_count[4]),
        .I1(mario_y[4]),
        .I2(mario_y[5]),
        .I3(v_count[5]),
        .O(in_mario1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    in_mario1_carry_i_3
       (.I0(mario_y[3]),
        .I1(v_count[3]),
        .I2(mario_y[2]),
        .I3(v_count[2]),
        .O(in_mario1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    in_mario1_carry_i_4
       (.I0(v_count[0]),
        .I1(mario_y[0]),
        .I2(mario_y[1]),
        .I3(v_count[1]),
        .O(in_mario1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario1_carry_i_5
       (.I0(mario_y[7]),
        .I1(v_count[7]),
        .I2(mario_y[6]),
        .I3(v_count[6]),
        .O(in_mario1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario1_carry_i_6
       (.I0(mario_y[5]),
        .I1(v_count[5]),
        .I2(mario_y[4]),
        .I3(v_count[4]),
        .O(in_mario1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario1_carry_i_7
       (.I0(v_count[3]),
        .I1(mario_y[3]),
        .I2(v_count[2]),
        .I3(mario_y[2]),
        .O(in_mario1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario1_carry_i_8
       (.I0(v_count[0]),
        .I1(mario_y[0]),
        .I2(mario_y[1]),
        .I3(v_count[1]),
        .O(in_mario1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_mario2_carry
       (.CI(1'b0),
        .CO({in_mario2_carry_n_0,in_mario2_carry_n_1,in_mario2_carry_n_2,in_mario2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({in_mario2_carry_i_1_n_0,in_mario2_carry_i_2_n_0,in_mario2_carry_i_3_n_0,in_mario2_carry_i_4_n_0}),
        .O(NLW_in_mario2_carry_O_UNCONNECTED[3:0]),
        .S({in_mario2_carry_i_5_n_0,in_mario2_carry_i_6_n_0,in_mario2_carry_i_7_n_0,in_mario2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_mario2_carry__0
       (.CI(in_mario2_carry_n_0),
        .CO({in_mario22_in,in_mario2_carry__0_n_1,in_mario2_carry__0_n_2,in_mario2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in_mario2_carry__0_i_1_n_0}),
        .O(NLW_in_mario2_carry__0_O_UNCONNECTED[3:0]),
        .S({in_mario2_carry__0_i_2_n_0,in_mario2_carry__0_i_3_n_0,in_mario2_carry__0_i_4_n_0,in_mario2_carry__0_i_5_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    in_mario2_carry__0_i_1
       (.I0(h_count[9]),
        .I1(in_mario3[9]),
        .I2(h_count[8]),
        .I3(in_mario3[8]),
        .O(in_mario2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_mario2_carry__0_i_2
       (.I0(in_mario3[15]),
        .I1(in_mario3[14]),
        .O(in_mario2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_mario2_carry__0_i_3
       (.I0(in_mario3[13]),
        .I1(in_mario3[12]),
        .O(in_mario2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_mario2_carry__0_i_4
       (.I0(in_mario3[11]),
        .I1(in_mario3[10]),
        .O(in_mario2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario2_carry__0_i_5
       (.I0(in_mario3[9]),
        .I1(h_count[9]),
        .I2(in_mario3[8]),
        .I3(h_count[8]),
        .O(in_mario2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    in_mario2_carry_i_1
       (.I0(h_count[7]),
        .I1(in_mario3[7]),
        .I2(h_count[6]),
        .I3(in_mario3[6]),
        .O(in_mario2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    in_mario2_carry_i_2
       (.I0(h_count[5]),
        .I1(in_mario3[5]),
        .I2(h_count[4]),
        .I3(in_mario3[4]),
        .O(in_mario2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    in_mario2_carry_i_3
       (.I0(h_count[3]),
        .I1(in_mario3[3]),
        .I2(h_count[2]),
        .I3(in_mario3[2]),
        .O(in_mario2_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hB22222B2)) 
    in_mario2_carry_i_4
       (.I0(h_count[1]),
        .I1(in_mario3[1]),
        .I2(h_count[0]),
        .I3(scroll_x[0]),
        .I4(mario_x[0]),
        .O(in_mario2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario2_carry_i_5
       (.I0(in_mario3[7]),
        .I1(h_count[7]),
        .I2(in_mario3[6]),
        .I3(h_count[6]),
        .O(in_mario2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario2_carry_i_6
       (.I0(in_mario3[5]),
        .I1(h_count[5]),
        .I2(in_mario3[4]),
        .I3(h_count[4]),
        .O(in_mario2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    in_mario2_carry_i_7
       (.I0(in_mario3[3]),
        .I1(h_count[3]),
        .I2(in_mario3[2]),
        .I3(h_count[2]),
        .O(in_mario2_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h09909009)) 
    in_mario2_carry_i_8
       (.I0(in_mario3[1]),
        .I1(h_count[1]),
        .I2(mario_x[0]),
        .I3(scroll_x[0]),
        .I4(h_count[0]),
        .O(in_mario2_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_mario3__0_carry
       (.CI(1'b0),
        .CO({in_mario3__0_carry_n_0,in_mario3__0_carry_n_1,in_mario3__0_carry_n_2,in_mario3__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(mario_x[3:0]),
        .O({in_mario3[3:1],NLW_in_mario3__0_carry_O_UNCONNECTED[0]}),
        .S({in_mario3__0_carry_i_1_n_0,in_mario3__0_carry_i_2_n_0,in_mario3__0_carry_i_3_n_0,in_mario3__0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_mario3__0_carry__0
       (.CI(in_mario3__0_carry_n_0),
        .CO({in_mario3__0_carry__0_n_0,in_mario3__0_carry__0_n_1,in_mario3__0_carry__0_n_2,in_mario3__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(mario_x[7:4]),
        .O(in_mario3[7:4]),
        .S({in_mario3__0_carry__0_i_1_n_0,in_mario3__0_carry__0_i_2_n_0,in_mario3__0_carry__0_i_3_n_0,in_mario3__0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__0_i_1
       (.I0(mario_x[7]),
        .I1(scroll_x[7]),
        .O(in_mario3__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__0_i_2
       (.I0(mario_x[6]),
        .I1(scroll_x[6]),
        .O(in_mario3__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__0_i_3
       (.I0(mario_x[5]),
        .I1(scroll_x[5]),
        .O(in_mario3__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__0_i_4
       (.I0(mario_x[4]),
        .I1(scroll_x[4]),
        .O(in_mario3__0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_mario3__0_carry__1
       (.CI(in_mario3__0_carry__0_n_0),
        .CO({in_mario3__0_carry__1_n_0,in_mario3__0_carry__1_n_1,in_mario3__0_carry__1_n_2,in_mario3__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(mario_x[11:8]),
        .O(in_mario3[11:8]),
        .S({in_mario3__0_carry__1_i_1_n_0,in_mario3__0_carry__1_i_2_n_0,in_mario3__0_carry__1_i_3_n_0,in_mario3__0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__1_i_1
       (.I0(mario_x[11]),
        .I1(scroll_x[11]),
        .O(in_mario3__0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__1_i_2
       (.I0(mario_x[10]),
        .I1(scroll_x[10]),
        .O(in_mario3__0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__1_i_3
       (.I0(mario_x[9]),
        .I1(scroll_x[9]),
        .O(in_mario3__0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__1_i_4
       (.I0(mario_x[8]),
        .I1(scroll_x[8]),
        .O(in_mario3__0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_mario3__0_carry__2
       (.CI(in_mario3__0_carry__1_n_0),
        .CO({NLW_in_mario3__0_carry__2_CO_UNCONNECTED[3],in_mario3__0_carry__2_n_1,in_mario3__0_carry__2_n_2,in_mario3__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,mario_x[14:12]}),
        .O(in_mario3[15:12]),
        .S({in_mario3__0_carry__2_i_1_n_0,in_mario3__0_carry__2_i_2_n_0,in_mario3__0_carry__2_i_3_n_0,in_mario3__0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__2_i_1
       (.I0(scroll_x[15]),
        .I1(mario_x[15]),
        .O(in_mario3__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__2_i_2
       (.I0(mario_x[14]),
        .I1(scroll_x[14]),
        .O(in_mario3__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__2_i_3
       (.I0(mario_x[13]),
        .I1(scroll_x[13]),
        .O(in_mario3__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry__2_i_4
       (.I0(mario_x[12]),
        .I1(scroll_x[12]),
        .O(in_mario3__0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry_i_1
       (.I0(mario_x[3]),
        .I1(scroll_x[3]),
        .O(in_mario3__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry_i_2
       (.I0(mario_x[2]),
        .I1(scroll_x[2]),
        .O(in_mario3__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry_i_3
       (.I0(mario_x[1]),
        .I1(scroll_x[1]),
        .O(in_mario3__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3__0_carry_i_4
       (.I0(mario_x[0]),
        .I1(scroll_x[0]),
        .O(in_mario3__0_carry_i_4_n_0));
  CARRY4 in_mario3_carry
       (.CI(1'b0),
        .CO({in_mario3_carry_n_0,in_mario3_carry_n_1,in_mario3_carry_n_2,in_mario3_carry_n_3}),
        .CYINIT(1'b1),
        .DI(mario_x[3:0]),
        .O({in_mario3_carry_n_4,in_mario3_carry_n_5,in_mario3_carry_n_6,in_mario3_carry_n_7}),
        .S({in_mario3_carry_i_1_n_0,in_mario3_carry_i_2_n_0,in_mario3_carry_i_3_n_0,in_mario3_carry_i_4_n_0}));
  CARRY4 in_mario3_carry__0
       (.CI(in_mario3_carry_n_0),
        .CO({in_mario3_carry__0_n_0,in_mario3_carry__0_n_1,in_mario3_carry__0_n_2,in_mario3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({in_mario3_carry__0_i_1_n_0,in_mario3_carry__0_i_2_n_0,in_mario3_carry__0_i_3_n_0,scroll_x[4]}),
        .O({in_mario3_carry__0_n_4,in_mario3_carry__0_n_5,in_mario3_carry__0_n_6,in_mario3_carry__0_n_7}),
        .S({in_mario3_carry__0_i_4_n_0,in_mario3_carry__0_i_5_n_0,in_mario3_carry__0_i_6_n_0,in_mario3_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__0_i_1
       (.I0(mario_x[6]),
        .I1(scroll_x[6]),
        .O(in_mario3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__0_i_2
       (.I0(mario_x[5]),
        .I1(scroll_x[5]),
        .O(in_mario3_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    in_mario3_carry__0_i_3
       (.I0(scroll_x[4]),
        .O(in_mario3_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__0_i_4
       (.I0(scroll_x[6]),
        .I1(mario_x[6]),
        .I2(scroll_x[7]),
        .I3(mario_x[7]),
        .O(in_mario3_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__0_i_5
       (.I0(scroll_x[5]),
        .I1(mario_x[5]),
        .I2(scroll_x[6]),
        .I3(mario_x[6]),
        .O(in_mario3_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    in_mario3_carry__0_i_6
       (.I0(scroll_x[4]),
        .I1(scroll_x[5]),
        .I2(mario_x[5]),
        .O(in_mario3_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_mario3_carry__0_i_7
       (.I0(scroll_x[4]),
        .I1(mario_x[4]),
        .O(in_mario3_carry__0_i_7_n_0));
  CARRY4 in_mario3_carry__1
       (.CI(in_mario3_carry__0_n_0),
        .CO({in_mario3_carry__1_n_0,in_mario3_carry__1_n_1,in_mario3_carry__1_n_2,in_mario3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({in_mario3_carry__1_i_1_n_0,in_mario3_carry__1_i_2_n_0,in_mario3_carry__1_i_3_n_0,in_mario3_carry__1_i_4_n_0}),
        .O({in_mario3_carry__1_n_4,in_mario3_carry__1_n_5,in_mario3_carry__1_n_6,in_mario3_carry__1_n_7}),
        .S({in_mario3_carry__1_i_5_n_0,in_mario3_carry__1_i_6_n_0,in_mario3_carry__1_i_7_n_0,in_mario3_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__1_i_1
       (.I0(mario_x[10]),
        .I1(scroll_x[10]),
        .O(in_mario3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__1_i_2
       (.I0(mario_x[9]),
        .I1(scroll_x[9]),
        .O(in_mario3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__1_i_3
       (.I0(mario_x[8]),
        .I1(scroll_x[8]),
        .O(in_mario3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__1_i_4
       (.I0(mario_x[7]),
        .I1(scroll_x[7]),
        .O(in_mario3_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__1_i_5
       (.I0(scroll_x[10]),
        .I1(mario_x[10]),
        .I2(scroll_x[11]),
        .I3(mario_x[11]),
        .O(in_mario3_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__1_i_6
       (.I0(scroll_x[9]),
        .I1(mario_x[9]),
        .I2(scroll_x[10]),
        .I3(mario_x[10]),
        .O(in_mario3_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__1_i_7
       (.I0(scroll_x[8]),
        .I1(mario_x[8]),
        .I2(scroll_x[9]),
        .I3(mario_x[9]),
        .O(in_mario3_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__1_i_8
       (.I0(scroll_x[7]),
        .I1(mario_x[7]),
        .I2(scroll_x[8]),
        .I3(mario_x[8]),
        .O(in_mario3_carry__1_i_8_n_0));
  CARRY4 in_mario3_carry__2
       (.CI(in_mario3_carry__1_n_0),
        .CO({in_mario3_carry__2_n_0,in_mario3_carry__2_n_1,in_mario3_carry__2_n_2,in_mario3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({in_mario3_carry__2_i_1_n_0,in_mario3_carry__2_i_2_n_0,in_mario3_carry__2_i_3_n_0,in_mario3_carry__2_i_4_n_0}),
        .O({in_mario3_carry__2_n_4,in_mario3_carry__2_n_5,in_mario3_carry__2_n_6,in_mario3_carry__2_n_7}),
        .S({in_mario3_carry__2_i_5_n_0,in_mario3_carry__2_i_6_n_0,in_mario3_carry__2_i_7_n_0,in_mario3_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__2_i_1
       (.I0(mario_x[14]),
        .I1(scroll_x[14]),
        .O(in_mario3_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__2_i_2
       (.I0(mario_x[13]),
        .I1(scroll_x[13]),
        .O(in_mario3_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__2_i_3
       (.I0(mario_x[12]),
        .I1(scroll_x[12]),
        .O(in_mario3_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__2_i_4
       (.I0(mario_x[11]),
        .I1(scroll_x[11]),
        .O(in_mario3_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__2_i_5
       (.I0(scroll_x[14]),
        .I1(mario_x[14]),
        .I2(mario_x[15]),
        .I3(scroll_x[15]),
        .O(in_mario3_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__2_i_6
       (.I0(scroll_x[13]),
        .I1(mario_x[13]),
        .I2(scroll_x[14]),
        .I3(mario_x[14]),
        .O(in_mario3_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__2_i_7
       (.I0(scroll_x[12]),
        .I1(mario_x[12]),
        .I2(scroll_x[13]),
        .I3(mario_x[13]),
        .O(in_mario3_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    in_mario3_carry__2_i_8
       (.I0(scroll_x[11]),
        .I1(mario_x[11]),
        .I2(scroll_x[12]),
        .I3(mario_x[12]),
        .O(in_mario3_carry__2_i_8_n_0));
  CARRY4 in_mario3_carry__3
       (.CI(in_mario3_carry__2_n_0),
        .CO({NLW_in_mario3_carry__3_CO_UNCONNECTED[3:2],in_mario3_carry__3_n_2,NLW_in_mario3_carry__3_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in_mario3_carry__3_i_1_n_0}),
        .O({NLW_in_mario3_carry__3_O_UNCONNECTED[3:1],in_mario3_carry__3_n_7}),
        .S({1'b0,1'b0,1'b1,in_mario3_carry__3_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    in_mario3_carry__3_i_1
       (.I0(mario_x[15]),
        .I1(scroll_x[15]),
        .O(in_mario3_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    in_mario3_carry__3_i_2
       (.I0(scroll_x[15]),
        .I1(mario_x[15]),
        .O(in_mario3_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3_carry_i_1
       (.I0(mario_x[3]),
        .I1(scroll_x[3]),
        .O(in_mario3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3_carry_i_2
       (.I0(mario_x[2]),
        .I1(scroll_x[2]),
        .O(in_mario3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3_carry_i_3
       (.I0(mario_x[1]),
        .I1(scroll_x[1]),
        .O(in_mario3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    in_mario3_carry_i_4
       (.I0(mario_x[0]),
        .I1(scroll_x[0]),
        .O(in_mario3_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_brick1_carry
       (.CI(1'b0),
        .CO({is_brick1_carry_n_0,is_brick1_carry_n_1,is_brick1_carry_n_2,is_brick1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(h_count[3:0]),
        .O(NLW_is_brick1_carry_O_UNCONNECTED[3:0]),
        .S({is_brick1_carry_i_1_n_0,is_brick1_carry_i_2_n_0,is_brick1_carry_i_3_n_0,is_brick1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_brick1_carry__0
       (.CI(is_brick1_carry_n_0),
        .CO({NLW_is_brick1_carry__0_CO_UNCONNECTED[3:2],is_brick1_carry__0_n_2,is_brick1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,h_count[5:4]}),
        .O({NLW_is_brick1_carry__0_O_UNCONNECTED[3],is_brick1_carry__0_n_5,NLW_is_brick1_carry__0_O_UNCONNECTED[1:0]}),
        .S({1'b0,is_brick1_carry__0_i_1_n_0,is_brick1_carry__0_i_2_n_0,is_brick1_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    is_brick1_carry__0_i_1
       (.I0(scroll_x[6]),
        .I1(h_count[6]),
        .O(is_brick1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    is_brick1_carry__0_i_2
       (.I0(h_count[5]),
        .I1(scroll_x[5]),
        .O(is_brick1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    is_brick1_carry__0_i_3
       (.I0(h_count[4]),
        .I1(scroll_x[4]),
        .O(is_brick1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    is_brick1_carry_i_1
       (.I0(scroll_x[3]),
        .I1(h_count[3]),
        .O(is_brick1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    is_brick1_carry_i_2
       (.I0(h_count[2]),
        .I1(scroll_x[2]),
        .O(is_brick1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    is_brick1_carry_i_3
       (.I0(h_count[1]),
        .I1(scroll_x[1]),
        .O(is_brick1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    is_brick1_carry_i_4
       (.I0(h_count[0]),
        .I1(scroll_x[0]),
        .O(is_brick1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mario_state[7]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awvalid),
        .I2(\scroll_x[15]_i_2_n_0 ),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[2]),
        .O(mario_state_0));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[0] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[0]),
        .Q(mario_state[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[1] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[1]),
        .Q(mario_state[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[2] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[2]),
        .Q(mario_state[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[3] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[3]),
        .Q(mario_state[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[4] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[4]),
        .Q(mario_state[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[5] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[5]),
        .Q(mario_state[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[6] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[6]),
        .Q(mario_state[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_state_reg[7] 
       (.C(clk),
        .CE(mario_state_0),
        .D(s_axi_wdata[7]),
        .Q(mario_state[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mario_x[15]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awvalid),
        .I2(\scroll_x[15]_i_2_n_0 ),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[2]),
        .O(mario_x_2));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[0] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[0]),
        .Q(mario_x[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[10] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[10]),
        .Q(mario_x[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[11] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[11]),
        .Q(mario_x[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[12] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[12]),
        .Q(mario_x[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[13] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[13]),
        .Q(mario_x[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[14] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[14]),
        .Q(mario_x[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[15] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[15]),
        .Q(mario_x[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[1] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[1]),
        .Q(mario_x[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mario_x_reg[2] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[2]),
        .Q(mario_x[2]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[3] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[3]),
        .Q(mario_x[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[4] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[4]),
        .Q(mario_x[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mario_x_reg[5] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[5]),
        .Q(mario_x[5]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mario_x_reg[6] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[6]),
        .Q(mario_x[6]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[7] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[7]),
        .Q(mario_x[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[8] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[8]),
        .Q(mario_x[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_x_reg[9] 
       (.C(clk),
        .CE(mario_x_2),
        .D(s_axi_wdata[9]),
        .Q(mario_x[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mario_y[15]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awvalid),
        .I2(\scroll_x[15]_i_2_n_0 ),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[2]),
        .O(mario_y_1));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[0] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[0]),
        .Q(mario_y[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[10] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[10]),
        .Q(mario_y[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[11] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[11]),
        .Q(mario_y[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[12] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[12]),
        .Q(mario_y[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[13] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[13]),
        .Q(mario_y[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[14] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[14]),
        .Q(mario_y[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[15] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[15]),
        .Q(mario_y[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[1] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[1]),
        .Q(mario_y[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[2] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[2]),
        .Q(mario_y[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[3] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[3]),
        .Q(mario_y[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mario_y_reg[4] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[4]),
        .Q(mario_y[4]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mario_y_reg[5] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[5]),
        .Q(mario_y[5]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[6] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[6]),
        .Q(mario_y[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mario_y_reg[7] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[7]),
        .Q(mario_y[7]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[8] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[8]),
        .Q(mario_y[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mario_y_reg[9] 
       (.C(clk),
        .CE(mario_y_1),
        .D(s_axi_wdata[9]),
        .Q(mario_y[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080000FFFFFFFF)) 
    \red[1]_i_1 
       (.I0(in_mario22_in),
        .I1(in_mario1),
        .I2(\_inferred__7/i__carry__3_n_3 ),
        .I3(\_inferred__6/i__carry__6_n_0 ),
        .I4(\red[7]_i_3_n_0 ),
        .I5(\blue[5]_i_1_n_0 ),
        .O(\red[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \red[4]_i_1 
       (.I0(in_mario22_in),
        .I1(in_mario1),
        .I2(\_inferred__7/i__carry__3_n_3 ),
        .I3(\_inferred__6/i__carry__6_n_0 ),
        .I4(\red[7]_i_3_n_0 ),
        .I5(\blue[5]_i_1_n_0 ),
        .O(\red[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \red[5]_i_1 
       (.I0(is_brick),
        .I1(in_mario22_in),
        .I2(in_mario1),
        .I3(\_inferred__7/i__carry__3_n_3 ),
        .I4(\_inferred__6/i__carry__6_n_0 ),
        .I5(\red[7]_i_3_n_0 ),
        .O(\red[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \red[6]_i_1 
       (.I0(in_mario22_in),
        .I1(in_mario1),
        .I2(\_inferred__7/i__carry__3_n_3 ),
        .I3(\_inferred__6/i__carry__6_n_0 ),
        .I4(\red[7]_i_3_n_0 ),
        .I5(\green[7]_i_2_n_0 ),
        .O(\red[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red[7]_i_1 
       (.I0(video_active),
        .I1(reset_n),
        .O(red1));
  LUT6 #(
    .INIT(64'hB0A000300003B0A0)) 
    \red[7]_i_10 
       (.I0(\red[7]_i_15_n_0 ),
        .I1(\red[7]_i_16_n_0 ),
        .I2(\red[7]_i_17_n_0 ),
        .I3(\red[7]_i_11_n_0 ),
        .I4(v_count[2]),
        .I5(mario_y[2]),
        .O(\red[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2B22)) 
    \red[7]_i_11 
       (.I0(mario_y[1]),
        .I1(v_count[1]),
        .I2(v_count[0]),
        .I3(mario_y[0]),
        .O(\red[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \red[7]_i_12 
       (.I0(h_count[1]),
        .I1(scroll_x[1]),
        .I2(mario_x[1]),
        .O(\red[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3CC3BEEB28823CC3)) 
    \red[7]_i_13 
       (.I0(h_count[0]),
        .I1(h_count[1]),
        .I2(mario_x[1]),
        .I3(scroll_x[1]),
        .I4(mario_x[0]),
        .I5(scroll_x[0]),
        .O(\red[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \red[7]_i_14 
       (.I0(scroll_x[2]),
        .I1(mario_x[2]),
        .I2(h_count[2]),
        .I3(h_count[3]),
        .I4(scroll_x[3]),
        .I5(mario_x[3]),
        .O(\red[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \red[7]_i_15 
       (.I0(v_count[0]),
        .I1(mario_y[0]),
        .I2(mario_y[1]),
        .I3(v_count[1]),
        .O(\red[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hBDDB)) 
    \red[7]_i_16 
       (.I0(v_count[0]),
        .I1(mario_y[0]),
        .I2(v_count[1]),
        .I3(mario_y[1]),
        .O(\red[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \red[7]_i_17 
       (.I0(v_count[3]),
        .I1(mario_y[3]),
        .O(\red[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hF2FF)) 
    \red[7]_i_2 
       (.I0(\red[7]_i_3_n_0 ),
        .I1(\red[7]_i_4_n_0 ),
        .I2(is_brick),
        .I3(\blue[5]_i_1_n_0 ),
        .O(\red[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF550C3055)) 
    \red[7]_i_3 
       (.I0(\red[7]_i_5_n_0 ),
        .I1(\red[7]_i_6_n_0 ),
        .I2(\red[7]_i_7_n_0 ),
        .I3(\red[7]_i_8_n_0 ),
        .I4(\red[7]_i_9_n_0 ),
        .I5(\red[7]_i_10_n_0 ),
        .O(\red[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \red[7]_i_4 
       (.I0(in_mario22_in),
        .I1(in_mario1),
        .I2(\_inferred__7/i__carry__3_n_3 ),
        .I3(\_inferred__6/i__carry__6_n_0 ),
        .O(\red[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99699699)) 
    \red[7]_i_5 
       (.I0(v_count[3]),
        .I1(mario_y[3]),
        .I2(\red[7]_i_11_n_0 ),
        .I3(v_count[2]),
        .I4(mario_y[2]),
        .O(\red[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3CC3966969963CC3)) 
    \red[7]_i_6 
       (.I0(h_count[0]),
        .I1(h_count[1]),
        .I2(mario_x[1]),
        .I3(scroll_x[1]),
        .I4(mario_x[0]),
        .I5(scroll_x[0]),
        .O(\red[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \red[7]_i_7 
       (.I0(h_count[0]),
        .I1(mario_x[0]),
        .I2(scroll_x[0]),
        .O(\red[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h009696FFFF696900)) 
    \red[7]_i_8 
       (.I0(scroll_x[2]),
        .I1(mario_x[2]),
        .I2(h_count[2]),
        .I3(\red[7]_i_12_n_0 ),
        .I4(\red[7]_i_13_n_0 ),
        .I5(\red[7]_i_14_n_0 ),
        .O(\red[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \red[7]_i_9 
       (.I0(\red[7]_i_13_n_0 ),
        .I1(\red[7]_i_12_n_0 ),
        .I2(h_count[2]),
        .I3(mario_x[2]),
        .I4(scroll_x[2]),
        .O(\red[7]_i_9_n_0 ));
  FDRE \red_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\red[1]_i_1_n_0 ),
        .Q(red[0]),
        .R(red1));
  FDRE \red_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(red[1]),
        .R(red1));
  FDRE \red_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\red[4]_i_1_n_0 ),
        .Q(red[2]),
        .R(red1));
  FDRE \red_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\red[5]_i_1_n_0 ),
        .Q(red[3]),
        .R(red1));
  FDRE \red_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\red[6]_i_1_n_0 ),
        .Q(red[4]),
        .R(red1));
  FDRE \red_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\red[7]_i_2_n_0 ),
        .Q(red[5]),
        .R(red1));
  LUT5 #(
    .INIT(32'hF4440000)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(reset_n),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[0]_i_1 
       (.I0(p_1_in[31]),
        .I1(\s_axi_rdata[0]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_i_2 
       (.I0(mario_state[0]),
        .I1(mario_y[0]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[0]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[0]),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFFEAEAAAAFEAE)) 
    \s_axi_rdata[10]_i_1 
       (.I0(p_1_in[31]),
        .I1(scroll_x[10]),
        .I2(s_axi_araddr[2]),
        .I3(mario_x[10]),
        .I4(s_axi_araddr[3]),
        .I5(mario_y[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hAFAFFEAEAAAAFEAE)) 
    \s_axi_rdata[11]_i_1 
       (.I0(p_1_in[31]),
        .I1(scroll_x[11]),
        .I2(s_axi_araddr[2]),
        .I3(mario_x[11]),
        .I4(s_axi_araddr[3]),
        .I5(mario_y[11]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hAFAFFEAEAAAAFEAE)) 
    \s_axi_rdata[12]_i_1 
       (.I0(p_1_in[31]),
        .I1(scroll_x[12]),
        .I2(s_axi_araddr[2]),
        .I3(mario_x[12]),
        .I4(s_axi_araddr[3]),
        .I5(mario_y[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hAFAFFEAEAAAAFEAE)) 
    \s_axi_rdata[13]_i_1 
       (.I0(p_1_in[31]),
        .I1(scroll_x[13]),
        .I2(s_axi_araddr[2]),
        .I3(mario_x[13]),
        .I4(s_axi_araddr[3]),
        .I5(mario_y[13]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \s_axi_rdata[14]_i_1 
       (.I0(scroll_x[14]),
        .I1(s_axi_araddr[2]),
        .I2(mario_x[14]),
        .I3(s_axi_araddr[3]),
        .I4(mario_y[14]),
        .I5(p_1_in[31]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hAFAFFEAEAAAAFEAE)) 
    \s_axi_rdata[15]_i_1 
       (.I0(p_1_in[31]),
        .I1(scroll_x[15]),
        .I2(s_axi_araddr[2]),
        .I3(mario_x[15]),
        .I4(s_axi_araddr[3]),
        .I5(mario_y[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[1]_i_1 
       (.I0(p_1_in[31]),
        .I1(\s_axi_rdata[1]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_i_2 
       (.I0(mario_state[1]),
        .I1(mario_y[1]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[1]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[1]),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[2]_i_1 
       (.I0(p_1_in[31]),
        .I1(\s_axi_rdata[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_i_2 
       (.I0(mario_state[2]),
        .I1(mario_y[2]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[2]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[2]),
        .O(\s_axi_rdata[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axi_rdata[31]_i_1 
       (.I0(reset_n),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[6]),
        .I3(s_axi_araddr[7]),
        .I4(s_axi_araddr[4]),
        .I5(s_axi_araddr[5]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[3]_i_1 
       (.I0(p_1_in[31]),
        .I1(\s_axi_rdata[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_i_2 
       (.I0(mario_state[3]),
        .I1(mario_y[3]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[3]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[3]),
        .O(\s_axi_rdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\s_axi_rdata[4]_i_2_n_0 ),
        .I1(p_1_in[31]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_2 
       (.I0(mario_state[4]),
        .I1(mario_y[4]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[4]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[4]),
        .O(\s_axi_rdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[5]_i_1 
       (.I0(p_1_in[31]),
        .I1(\s_axi_rdata[5]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_i_2 
       (.I0(mario_state[5]),
        .I1(mario_y[5]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[5]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[5]),
        .O(\s_axi_rdata[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[6]_i_1 
       (.I0(p_1_in[31]),
        .I1(\s_axi_rdata[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_i_2 
       (.I0(mario_state[6]),
        .I1(mario_y[6]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[6]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[6]),
        .O(\s_axi_rdata[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[7]_i_1 
       (.I0(p_1_in[31]),
        .I1(\s_axi_rdata[7]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_i_2 
       (.I0(mario_state[7]),
        .I1(mario_y[7]),
        .I2(s_axi_araddr[3]),
        .I3(mario_x[7]),
        .I4(s_axi_araddr[2]),
        .I5(scroll_x[7]),
        .O(\s_axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \s_axi_rdata[8]_i_1 
       (.I0(scroll_x[8]),
        .I1(s_axi_araddr[2]),
        .I2(mario_x[8]),
        .I3(s_axi_araddr[3]),
        .I4(mario_y[8]),
        .I5(p_1_in[31]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hAFAFFEAEAAAAFEAE)) 
    \s_axi_rdata[9]_i_1 
       (.I0(p_1_in[31]),
        .I1(scroll_x[9]),
        .I2(s_axi_araddr[2]),
        .I3(mario_x[9]),
        .I4(s_axi_araddr[3]),
        .I5(mario_y[9]),
        .O(p_1_in[9]));
  FDRE \s_axi_rdata_reg[0] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[0]),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[10] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[10]),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[11] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[11]),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[12] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[12]),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[13] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[13]),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[14] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[14]),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[15] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[15]),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[1] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[1]),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[2] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[2]),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[31] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[31]),
        .Q(s_axi_rdata[16]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[3] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[3]),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[4] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[4]),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[5] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[5]),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[6] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[6]),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[7] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[7]),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[8] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[8]),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[9] 
       (.C(clk),
        .CE(s_axi_arvalid),
        .D(p_1_in[9]),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF200)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(s_axi_arvalid),
        .I3(reset_n),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \scroll_x[15]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awvalid),
        .I2(\scroll_x[15]_i_2_n_0 ),
        .I3(s_axi_wvalid),
        .I4(s_axi_awaddr[2]),
        .O(scroll_x_3));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \scroll_x[15]_i_2 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[4]),
        .I5(s_axi_awaddr[7]),
        .O(\scroll_x[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[0] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[0]),
        .Q(scroll_x[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[10] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[10]),
        .Q(scroll_x[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[11] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[11]),
        .Q(scroll_x[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[12] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[12]),
        .Q(scroll_x[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[13] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[13]),
        .Q(scroll_x[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[14] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[14]),
        .Q(scroll_x[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[15] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[15]),
        .Q(scroll_x[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[1] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[1]),
        .Q(scroll_x[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[2] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[2]),
        .Q(scroll_x[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[3] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[3]),
        .Q(scroll_x[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[4] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[4]),
        .Q(scroll_x[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[5] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[5]),
        .Q(scroll_x[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[6] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[6]),
        .Q(scroll_x[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[7] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[7]),
        .Q(scroll_x[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[8] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[8]),
        .Q(scroll_x[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scroll_x_reg[9] 
       (.C(clk),
        .CE(scroll_x_3),
        .D(s_axi_wdata[9]),
        .Q(scroll_x[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
