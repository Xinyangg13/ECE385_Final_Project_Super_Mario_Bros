// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 19 18:17:42 2025
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
  wire [6:0]\^blue ;
  wire clk;
  wire [4:0]\^green ;
  wire [9:0]h_count;
  wire [5:1]\^red ;
  wire reset_n;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [25:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [9:0]v_count;
  wire vga_clk;
  wire video_active;

  assign blue[7] = \^blue [6];
  assign blue[6] = \^blue [6];
  assign blue[5] = \^blue [6];
  assign blue[4] = \^blue [4];
  assign blue[3] = \^blue [6];
  assign blue[2] = \^blue [6];
  assign blue[1] = \^blue [0];
  assign blue[0] = \^blue [0];
  assign green[7] = \^green [4];
  assign green[6] = \^green [0];
  assign green[5] = \^green [3];
  assign green[4:0] = \^green [4:0];
  assign red[7] = \^red [1];
  assign red[6] = \^red [4];
  assign red[5:3] = \^red [5:3];
  assign red[2] = \^red [4];
  assign red[1] = \^red [1];
  assign red[0] = \^red [1];
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25:16] = \^s_axi_rdata [25:16];
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9:0] = \^s_axi_rdata [9:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine inst
       (.blue({\^blue [6],\^blue [4],\^blue [0]}),
        .clk(clk),
        .green({\^green [4],\^green [0],\^green [3:1]}),
        .h_count(h_count),
        .red({\^red [1],\^red [4],\^red [5],\^red [3]}),
        .reset_n(reset_n),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_rdata_reg[25]_0 ({\^s_axi_rdata [25:16],\^s_axi_rdata [9:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[25:16],s_axi_wdata[9:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .v_count(v_count),
        .vga_clk(vga_clk),
        .video_active(video_active));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine
   (\s_axi_rdata_reg[25]_0 ,
    red,
    green,
    blue,
    s_axi_awready,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_rvalid,
    s_axi_arready,
    h_count,
    v_count,
    video_active,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_wvalid,
    clk,
    s_axi_wdata,
    vga_clk,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_araddr,
    reset_n);
  output [19:0]\s_axi_rdata_reg[25]_0 ;
  output [3:0]red;
  output [4:0]green;
  output [2:0]blue;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output s_axi_arready;
  input [9:0]h_count;
  input [9:0]v_count;
  input video_active;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_wvalid;
  input clk;
  input [19:0]s_axi_wdata;
  input vga_clk;
  input s_axi_bready;
  input s_axi_arvalid;
  input [3:0]s_axi_awaddr;
  input [3:0]s_axi_araddr;
  input reset_n;

  wire \FSM_sequential_axi_state[0]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[1]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[1]_i_2_n_0 ;
  wire \_inferred__3/i__carry__0_n_0 ;
  wire \_inferred__3/i__carry__0_n_1 ;
  wire \_inferred__3/i__carry__0_n_2 ;
  wire \_inferred__3/i__carry__0_n_3 ;
  wire \_inferred__3/i__carry__1_n_1 ;
  wire \_inferred__3/i__carry__1_n_2 ;
  wire \_inferred__3/i__carry__1_n_3 ;
  wire \_inferred__3/i__carry_n_0 ;
  wire \_inferred__3/i__carry_n_1 ;
  wire \_inferred__3/i__carry_n_2 ;
  wire \_inferred__3/i__carry_n_3 ;
  wire \_inferred__4/i__carry__0_n_0 ;
  wire \_inferred__4/i__carry__0_n_1 ;
  wire \_inferred__4/i__carry__0_n_2 ;
  wire \_inferred__4/i__carry__0_n_3 ;
  wire \_inferred__4/i__carry__1_n_1 ;
  wire \_inferred__4/i__carry__1_n_2 ;
  wire \_inferred__4/i__carry__1_n_3 ;
  wire \_inferred__4/i__carry_n_0 ;
  wire \_inferred__4/i__carry_n_1 ;
  wire \_inferred__4/i__carry_n_2 ;
  wire \_inferred__4/i__carry_n_3 ;
  wire \_inferred__5/i__carry__0_n_0 ;
  wire \_inferred__5/i__carry__0_n_1 ;
  wire \_inferred__5/i__carry__0_n_2 ;
  wire \_inferred__5/i__carry__0_n_3 ;
  wire \_inferred__5/i__carry__1_n_1 ;
  wire \_inferred__5/i__carry__1_n_2 ;
  wire \_inferred__5/i__carry__1_n_3 ;
  wire \_inferred__5/i__carry_n_0 ;
  wire \_inferred__5/i__carry_n_1 ;
  wire \_inferred__5/i__carry_n_2 ;
  wire \_inferred__5/i__carry_n_3 ;
  wire \_inferred__6/i__carry__0_n_0 ;
  wire \_inferred__6/i__carry__0_n_1 ;
  wire \_inferred__6/i__carry__0_n_2 ;
  wire \_inferred__6/i__carry__0_n_3 ;
  wire \_inferred__6/i__carry__1_n_1 ;
  wire \_inferred__6/i__carry__1_n_2 ;
  wire \_inferred__6/i__carry__1_n_3 ;
  wire \_inferred__6/i__carry_n_0 ;
  wire \_inferred__6/i__carry_n_1 ;
  wire \_inferred__6/i__carry_n_2 ;
  wire \_inferred__6/i__carry_n_3 ;
  wire axi_addr_reg;
  wire \axi_addr_reg[2]_i_1_n_0 ;
  wire \axi_addr_reg[3]_i_1_n_0 ;
  wire \axi_addr_reg[4]_i_1_n_0 ;
  wire \axi_addr_reg[5]_i_2_n_0 ;
  wire [1:0]axi_state;
  wire [2:0]blue;
  wire \blue_reg[1]_i_1_n_0 ;
  wire \blue_reg[1]_i_2_n_0 ;
  wire \blue_reg[4]_i_1_n_0 ;
  wire \blue_reg[7]_i_1_n_0 ;
  wire \blue_reg[7]_i_2_n_0 ;
  wire clk;
  wire [4:0]green;
  wire \green_reg[1]_i_1_n_0 ;
  wire \green_reg[1]_i_2_n_0 ;
  wire \green_reg[1]_i_3_n_0 ;
  wire \green_reg[2]_i_1_n_0 ;
  wire \green_reg[5]_i_1_n_0 ;
  wire \green_reg[5]_i_2_n_0 ;
  wire \green_reg[6]_i_1_n_0 ;
  wire \green_reg[7]_i_1_n_0 ;
  wire [9:0]h_count;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5__2_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6__2_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__0_i_7__2_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_3__2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_4__2_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5__1_n_0;
  wire i__carry__1_i_5__2_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [3:0]p_0_in;
  wire [7:6]p_1_in;
  wire [6:6]p_2_in;
  wire [3:0]red;
  wire red_reg3;
  wire red_reg36_in;
  wire red_reg3_carry__0_i_1_n_0;
  wire red_reg3_carry__0_i_2_n_0;
  wire red_reg3_carry_i_1_n_0;
  wire red_reg3_carry_i_2_n_0;
  wire red_reg3_carry_i_3_n_0;
  wire red_reg3_carry_i_4_n_0;
  wire red_reg3_carry_i_5_n_0;
  wire red_reg3_carry_i_6_n_0;
  wire red_reg3_carry_i_7_n_0;
  wire red_reg3_carry_i_8_n_0;
  wire red_reg3_carry_n_0;
  wire red_reg3_carry_n_1;
  wire red_reg3_carry_n_2;
  wire red_reg3_carry_n_3;
  wire \red_reg3_inferred__0/i__carry_n_0 ;
  wire \red_reg3_inferred__0/i__carry_n_1 ;
  wire \red_reg3_inferred__0/i__carry_n_2 ;
  wire \red_reg3_inferred__0/i__carry_n_3 ;
  wire red_reg5;
  wire red_reg54_in;
  wire red_reg5_carry__0_i_1_n_0;
  wire red_reg5_carry__0_i_2_n_0;
  wire red_reg5_carry_i_1_n_0;
  wire red_reg5_carry_i_2_n_0;
  wire red_reg5_carry_i_3_n_0;
  wire red_reg5_carry_i_4_n_0;
  wire red_reg5_carry_i_5_n_0;
  wire red_reg5_carry_i_6_n_0;
  wire red_reg5_carry_i_7_n_0;
  wire red_reg5_carry_i_8_n_0;
  wire red_reg5_carry_n_0;
  wire red_reg5_carry_n_1;
  wire red_reg5_carry_n_2;
  wire red_reg5_carry_n_3;
  wire \red_reg5_inferred__0/i__carry_n_0 ;
  wire \red_reg5_inferred__0/i__carry_n_1 ;
  wire \red_reg5_inferred__0/i__carry_n_2 ;
  wire \red_reg5_inferred__0/i__carry_n_3 ;
  wire \red_reg[6]_i_2_n_0 ;
  wire \red_reg[7]_i_2_n_0 ;
  wire \red_reg[7]_i_3_n_0 ;
  wire reset_n;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arready_i_1_n_0;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awready_i_2_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [8:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_1_n_0 ;
  wire \s_axi_rdata[16]_i_1_n_0 ;
  wire \s_axi_rdata[17]_i_1_n_0 ;
  wire \s_axi_rdata[18]_i_1_n_0 ;
  wire \s_axi_rdata[19]_i_1_n_0 ;
  wire \s_axi_rdata[1]_i_1_n_0 ;
  wire \s_axi_rdata[20]_i_1_n_0 ;
  wire \s_axi_rdata[21]_i_1_n_0 ;
  wire \s_axi_rdata[22]_i_1_n_0 ;
  wire \s_axi_rdata[23]_i_1_n_0 ;
  wire \s_axi_rdata[24]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_1_n_0 ;
  wire \s_axi_rdata[3]_i_1_n_0 ;
  wire \s_axi_rdata[4]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_1_n_0 ;
  wire \s_axi_rdata[9]_i_1_n_0 ;
  wire [19:0]\s_axi_rdata_reg[25]_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [19:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_i_1_n_0;
  wire s_axi_wvalid;
  wire sprite_enable_0;
  wire sprite_enable_0_4;
  wire sprite_enable_1;
  wire sprite_enable_1_5;
  wire sprite_enable_7;
  wire sprite_enable_7_3;
  wire sprite_enable_vga_0;
  wire sprite_enable_vga_7;
  wire [7:0]sprite_id_0;
  wire [7:0]sprite_id_1;
  wire \sprite_id_1[7]_i_2_n_0 ;
  wire [7:0]sprite_id_7;
  wire \sprite_id_7[7]_i_2_n_0 ;
  wire [7:0]sprite_id_vga_0;
  wire \sprite_id_vga_7_reg_n_0_[0] ;
  wire \sprite_id_vga_7_reg_n_0_[1] ;
  wire \sprite_id_vga_7_reg_n_0_[2] ;
  wire \sprite_id_vga_7_reg_n_0_[3] ;
  wire \sprite_id_vga_7_reg_n_0_[4] ;
  wire \sprite_id_vga_7_reg_n_0_[5] ;
  wire \sprite_id_vga_7_reg_n_0_[6] ;
  wire \sprite_id_vga_7_reg_n_0_[7] ;
  wire [9:0]sprite_x_0;
  wire sprite_x_0_2;
  wire [9:0]sprite_x_1;
  wire sprite_x_1_1;
  wire [9:0]sprite_x_7;
  wire \sprite_x_7[9]_i_2_n_0 ;
  wire sprite_x_7_0;
  wire [9:0]sprite_x_vga_0;
  wire [9:0]sprite_x_vga_7;
  wire [9:0]sprite_y_0;
  wire [9:0]sprite_y_1;
  wire [9:0]sprite_y_7;
  wire [9:0]sprite_y_vga_0;
  wire [9:0]sprite_y_vga_7;
  wire [9:0]v_count;
  wire vga_clk;
  wire video_active;
  wire [3:0]\NLW__inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__3/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW__inferred__3/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__3/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__4/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW__inferred__4/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__4/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__5/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__5/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW__inferred__5/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__5/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW__inferred__6/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__6/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_red_reg3_carry_O_UNCONNECTED;
  wire [3:1]NLW_red_reg3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_red_reg3_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_red_reg3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_red_reg3_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg3_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_red_reg5_carry_O_UNCONNECTED;
  wire [3:1]NLW_red_reg5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_red_reg5_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_red_reg5_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_red_reg5_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg5_inferred__0/i__carry__0_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h000F5030)) 
    \FSM_sequential_axi_state[0]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_wvalid),
        .I2(axi_state[0]),
        .I3(axi_state[1]),
        .I4(axi_addr_reg),
        .O(\FSM_sequential_axi_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0FD0)) 
    \FSM_sequential_axi_state[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(axi_state[0]),
        .I2(\FSM_sequential_axi_state[1]_i_2_n_0 ),
        .I3(axi_state[1]),
        .O(\FSM_sequential_axi_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCAAF000)) 
    \FSM_sequential_axi_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_rready),
        .I2(s_axi_wvalid),
        .I3(axi_state[0]),
        .I4(axi_state[1]),
        .I5(axi_addr_reg),
        .O(\FSM_sequential_axi_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "AXI_IDLE:00,AXI_WRITE_RESP:10,AXI_READ_DATA:11,AXI_WRITE_DATA:01" *) 
  FDCE \FSM_sequential_axi_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\FSM_sequential_axi_state[0]_i_1_n_0 ),
        .Q(axi_state[0]));
  (* FSM_ENCODED_STATES = "AXI_IDLE:00,AXI_WRITE_RESP:10,AXI_READ_DATA:11,AXI_WRITE_DATA:01" *) 
  FDCE \FSM_sequential_axi_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\FSM_sequential_axi_state[1]_i_1_n_0 ),
        .Q(axi_state[1]));
  CARRY4 \_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i__carry_n_0 ,\_inferred__3/i__carry_n_1 ,\_inferred__3/i__carry_n_2 ,\_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(h_count[3:0]),
        .O(\NLW__inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \_inferred__3/i__carry__0 
       (.CI(\_inferred__3/i__carry_n_0 ),
        .CO({\_inferred__3/i__carry__0_n_0 ,\_inferred__3/i__carry__0_n_1 ,\_inferred__3/i__carry__0_n_2 ,\_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,sprite_x_vga_7[4]}),
        .O(\NLW__inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0}));
  CARRY4 \_inferred__3/i__carry__1 
       (.CI(\_inferred__3/i__carry__0_n_0 ),
        .CO({\NLW__inferred__3/i__carry__1_CO_UNCONNECTED [3],\_inferred__3/i__carry__1_n_1 ,\_inferred__3/i__carry__1_n_2 ,\_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0}),
        .O(\NLW__inferred__3/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0}));
  CARRY4 \_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__4/i__carry_n_0 ,\_inferred__4/i__carry_n_1 ,\_inferred__4/i__carry_n_2 ,\_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(v_count[3:0]),
        .O(\NLW__inferred__4/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}));
  CARRY4 \_inferred__4/i__carry__0 
       (.CI(\_inferred__4/i__carry_n_0 ),
        .CO({\_inferred__4/i__carry__0_n_0 ,\_inferred__4/i__carry__0_n_1 ,\_inferred__4/i__carry__0_n_2 ,\_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__2_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,sprite_y_vga_7[4]}),
        .O(\NLW__inferred__4/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0}));
  CARRY4 \_inferred__4/i__carry__1 
       (.CI(\_inferred__4/i__carry__0_n_0 ),
        .CO({\NLW__inferred__4/i__carry__1_CO_UNCONNECTED [3],\_inferred__4/i__carry__1_n_1 ,\_inferred__4/i__carry__1_n_2 ,\_inferred__4/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0}),
        .O(\NLW__inferred__4/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0,i__carry__1_i_5__0_n_0}));
  CARRY4 \_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__5/i__carry_n_0 ,\_inferred__5/i__carry_n_1 ,\_inferred__5/i__carry_n_2 ,\_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(h_count[3:0]),
        .O(\NLW__inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  CARRY4 \_inferred__5/i__carry__0 
       (.CI(\_inferred__5/i__carry_n_0 ),
        .CO({\_inferred__5/i__carry__0_n_0 ,\_inferred__5/i__carry__0_n_1 ,\_inferred__5/i__carry__0_n_2 ,\_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__3_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,sprite_x_vga_0[4]}),
        .O(\NLW__inferred__5/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4__1_n_0,i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0}));
  CARRY4 \_inferred__5/i__carry__1 
       (.CI(\_inferred__5/i__carry__0_n_0 ),
        .CO({\NLW__inferred__5/i__carry__1_CO_UNCONNECTED [3],\_inferred__5/i__carry__1_n_1 ,\_inferred__5/i__carry__1_n_2 ,\_inferred__5/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0}),
        .O(\NLW__inferred__5/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0,i__carry__1_i_5__1_n_0}));
  CARRY4 \_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__6/i__carry_n_0 ,\_inferred__6/i__carry_n_1 ,\_inferred__6/i__carry_n_2 ,\_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(v_count[3:0]),
        .O(\NLW__inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}));
  CARRY4 \_inferred__6/i__carry__0 
       (.CI(\_inferred__6/i__carry_n_0 ),
        .CO({\_inferred__6/i__carry__0_n_0 ,\_inferred__6/i__carry__0_n_1 ,\_inferred__6/i__carry__0_n_2 ,\_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__4_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__2_n_0,sprite_y_vga_0[4]}),
        .O(\NLW__inferred__6/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_4__2_n_0,i__carry__0_i_5__2_n_0,i__carry__0_i_6__2_n_0,i__carry__0_i_7__2_n_0}));
  CARRY4 \_inferred__6/i__carry__1 
       (.CI(\_inferred__6/i__carry__0_n_0 ),
        .CO({\NLW__inferred__6/i__carry__1_CO_UNCONNECTED [3],\_inferred__6/i__carry__1_n_1 ,\_inferred__6/i__carry__1_n_2 ,\_inferred__6/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0}),
        .O(\NLW__inferred__6/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_3__2_n_0,i__carry__1_i_4__2_n_0,i__carry__1_i_5__2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_addr_reg[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awvalid),
        .I2(s_axi_araddr[0]),
        .O(\axi_addr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_addr_reg[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awvalid),
        .I2(s_axi_araddr[1]),
        .O(\axi_addr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_addr_reg[4]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awvalid),
        .I2(s_axi_araddr[2]),
        .O(\axi_addr_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \axi_addr_reg[5]_i_1 
       (.I0(axi_state[1]),
        .I1(axi_state[0]),
        .I2(s_axi_arvalid),
        .I3(s_axi_awvalid),
        .O(axi_addr_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_addr_reg[5]_i_2 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awvalid),
        .I2(s_axi_araddr[3]),
        .O(\axi_addr_reg[5]_i_2_n_0 ));
  FDCE \axi_addr_reg_reg[2] 
       (.C(clk),
        .CE(axi_addr_reg),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\axi_addr_reg[2]_i_1_n_0 ),
        .Q(p_0_in[0]));
  FDCE \axi_addr_reg_reg[3] 
       (.C(clk),
        .CE(axi_addr_reg),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\axi_addr_reg[3]_i_1_n_0 ),
        .Q(p_0_in[1]));
  FDCE \axi_addr_reg_reg[4] 
       (.C(clk),
        .CE(axi_addr_reg),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\axi_addr_reg[4]_i_1_n_0 ),
        .Q(p_0_in[2]));
  FDCE \axi_addr_reg_reg[5] 
       (.C(clk),
        .CE(axi_addr_reg),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\axi_addr_reg[5]_i_2_n_0 ),
        .Q(p_0_in[3]));
  LUT6 #(
    .INIT(64'h00F00000EEEE0000)) 
    \blue_reg[1]_i_1 
       (.I0(\green_reg[1]_i_2_n_0 ),
        .I1(sprite_id_vga_0[0]),
        .I2(\blue_reg[1]_i_2_n_0 ),
        .I3(\red_reg[7]_i_3_n_0 ),
        .I4(video_active),
        .I5(\red_reg[7]_i_2_n_0 ),
        .O(\blue_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \blue_reg[1]_i_2 
       (.I0(\green_reg[1]_i_3_n_0 ),
        .I1(\sprite_id_vga_7_reg_n_0_[0] ),
        .O(\blue_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFEA0000)) 
    \blue_reg[4]_i_1 
       (.I0(\green_reg[5]_i_2_n_0 ),
        .I1(\sprite_id_vga_7_reg_n_0_[0] ),
        .I2(\red_reg[7]_i_2_n_0 ),
        .I3(sprite_id_vga_0[0]),
        .I4(video_active),
        .O(\blue_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB88800000000)) 
    \blue_reg[7]_i_1 
       (.I0(\blue_reg[7]_i_2_n_0 ),
        .I1(\red_reg[7]_i_2_n_0 ),
        .I2(sprite_id_vga_0[0]),
        .I3(sprite_id_vga_0[1]),
        .I4(\green_reg[5]_i_2_n_0 ),
        .I5(video_active),
        .O(\blue_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \blue_reg[7]_i_2 
       (.I0(\sprite_id_vga_7_reg_n_0_[0] ),
        .I1(\sprite_id_vga_7_reg_n_0_[1] ),
        .O(\blue_reg[7]_i_2_n_0 ));
  FDRE \blue_reg_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\blue_reg[1]_i_1_n_0 ),
        .Q(blue[0]),
        .R(1'b0));
  FDSE \blue_reg_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\blue_reg[4]_i_1_n_0 ),
        .Q(blue[1]),
        .S(p_1_in[6]));
  FDSE \blue_reg_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\blue_reg[7]_i_1_n_0 ),
        .Q(blue[2]),
        .S(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \green_reg[1]_i_1 
       (.I0(sprite_id_vga_0[1]),
        .I1(\sprite_id_vga_7_reg_n_0_[1] ),
        .I2(\green_reg[1]_i_2_n_0 ),
        .I3(\red_reg[7]_i_2_n_0 ),
        .I4(\green_reg[1]_i_3_n_0 ),
        .O(\green_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \green_reg[1]_i_2 
       (.I0(sprite_id_vga_0[6]),
        .I1(sprite_id_vga_0[7]),
        .I2(sprite_id_vga_0[4]),
        .I3(sprite_id_vga_0[5]),
        .I4(sprite_id_vga_0[3]),
        .I5(sprite_id_vga_0[2]),
        .O(\green_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \green_reg[1]_i_3 
       (.I0(\sprite_id_vga_7_reg_n_0_[6] ),
        .I1(\sprite_id_vga_7_reg_n_0_[7] ),
        .I2(\sprite_id_vga_7_reg_n_0_[4] ),
        .I3(\sprite_id_vga_7_reg_n_0_[5] ),
        .I4(\sprite_id_vga_7_reg_n_0_[3] ),
        .I5(\sprite_id_vga_7_reg_n_0_[2] ),
        .O(\green_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFB80000)) 
    \green_reg[2]_i_1 
       (.I0(\sprite_id_vga_7_reg_n_0_[0] ),
        .I1(\red_reg[7]_i_2_n_0 ),
        .I2(sprite_id_vga_0[0]),
        .I3(\green_reg[1]_i_1_n_0 ),
        .I4(video_active),
        .O(\green_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAEAAAEAAAEA)) 
    \green_reg[5]_i_1 
       (.I0(\green_reg[5]_i_2_n_0 ),
        .I1(sprite_id_vga_0[1]),
        .I2(sprite_id_vga_0[0]),
        .I3(\red_reg[7]_i_2_n_0 ),
        .I4(\sprite_id_vga_7_reg_n_0_[0] ),
        .I5(\sprite_id_vga_7_reg_n_0_[1] ),
        .O(\green_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \green_reg[5]_i_2 
       (.I0(\green_reg[1]_i_3_n_0 ),
        .I1(\red_reg[7]_i_2_n_0 ),
        .I2(\green_reg[1]_i_2_n_0 ),
        .O(\green_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \green_reg[6]_i_1 
       (.I0(\green_reg[1]_i_1_n_0 ),
        .I1(sprite_id_vga_0[0]),
        .I2(\red_reg[7]_i_2_n_0 ),
        .I3(\sprite_id_vga_7_reg_n_0_[0] ),
        .O(\green_reg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \green_reg[7]_i_1 
       (.I0(\green_reg[1]_i_1_n_0 ),
        .I1(video_active),
        .O(\green_reg[7]_i_1_n_0 ));
  FDRE \green_reg_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green_reg[1]_i_1_n_0 ),
        .Q(green[0]),
        .R(p_1_in[7]));
  FDSE \green_reg_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green_reg[2]_i_1_n_0 ),
        .Q(green[1]),
        .S(p_1_in[6]));
  FDRE \green_reg_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green_reg[5]_i_1_n_0 ),
        .Q(green[2]),
        .R(p_1_in[7]));
  FDRE \green_reg_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green_reg[6]_i_1_n_0 ),
        .Q(green[3]),
        .R(p_1_in[7]));
  FDSE \green_reg_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\green_reg[7]_i_1_n_0 ),
        .Q(green[4]),
        .S(p_1_in[6]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(h_count[9]),
        .I1(sprite_x_vga_0[9]),
        .I2(h_count[8]),
        .I3(sprite_x_vga_0[8]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__0
       (.I0(v_count[9]),
        .I1(sprite_y_vga_0[9]),
        .I2(v_count[8]),
        .I3(sprite_y_vga_0[8]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__1
       (.I0(h_count[6]),
        .I1(sprite_x_vga_7[6]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__2
       (.I0(v_count[6]),
        .I1(sprite_y_vga_7[6]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__3
       (.I0(h_count[6]),
        .I1(sprite_x_vga_0[6]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1__4
       (.I0(v_count[6]),
        .I1(sprite_y_vga_0[6]),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2
       (.I0(h_count[5]),
        .I1(sprite_x_vga_7[5]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2__0
       (.I0(v_count[5]),
        .I1(sprite_y_vga_7[5]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2__1
       (.I0(h_count[5]),
        .I1(sprite_x_vga_0[5]),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_2__2
       (.I0(h_count[8]),
        .I1(sprite_x_vga_0[8]),
        .I2(h_count[9]),
        .I3(sprite_x_vga_0[9]),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2__3
       (.I0(v_count[5]),
        .I1(sprite_y_vga_0[5]),
        .O(i__carry__0_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_2__4
       (.I0(v_count[8]),
        .I1(sprite_y_vga_0[8]),
        .I2(v_count[9]),
        .I3(sprite_y_vga_0[9]),
        .O(i__carry__0_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(sprite_x_vga_7[4]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(sprite_y_vga_7[4]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__1
       (.I0(sprite_x_vga_0[4]),
        .O(i__carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__2
       (.I0(sprite_y_vga_0[4]),
        .O(i__carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_4
       (.I0(sprite_x_vga_7[6]),
        .I1(h_count[6]),
        .I2(h_count[7]),
        .I3(sprite_x_vga_7[7]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_4__0
       (.I0(sprite_y_vga_7[6]),
        .I1(v_count[6]),
        .I2(v_count[7]),
        .I3(sprite_y_vga_7[7]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_4__1
       (.I0(sprite_x_vga_0[6]),
        .I1(h_count[6]),
        .I2(h_count[7]),
        .I3(sprite_x_vga_0[7]),
        .O(i__carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_4__2
       (.I0(sprite_y_vga_0[6]),
        .I1(v_count[6]),
        .I2(v_count[7]),
        .I3(sprite_y_vga_0[7]),
        .O(i__carry__0_i_4__2_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_5
       (.I0(sprite_x_vga_7[5]),
        .I1(h_count[5]),
        .I2(h_count[6]),
        .I3(sprite_x_vga_7[6]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_5__0
       (.I0(sprite_y_vga_7[5]),
        .I1(v_count[5]),
        .I2(v_count[6]),
        .I3(sprite_y_vga_7[6]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_5__1
       (.I0(sprite_x_vga_0[5]),
        .I1(h_count[5]),
        .I2(h_count[6]),
        .I3(sprite_x_vga_0[6]),
        .O(i__carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__0_i_5__2
       (.I0(sprite_y_vga_0[5]),
        .I1(v_count[5]),
        .I2(v_count[6]),
        .I3(sprite_y_vga_0[6]),
        .O(i__carry__0_i_5__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_6
       (.I0(h_count[5]),
        .I1(sprite_x_vga_7[5]),
        .I2(sprite_x_vga_7[4]),
        .O(i__carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_6__0
       (.I0(v_count[5]),
        .I1(sprite_y_vga_7[5]),
        .I2(sprite_y_vga_7[4]),
        .O(i__carry__0_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_6__1
       (.I0(h_count[5]),
        .I1(sprite_x_vga_0[5]),
        .I2(sprite_x_vga_0[4]),
        .O(i__carry__0_i_6__1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_6__2
       (.I0(v_count[5]),
        .I1(sprite_y_vga_0[5]),
        .I2(sprite_y_vga_0[4]),
        .O(i__carry__0_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7
       (.I0(h_count[4]),
        .I1(sprite_x_vga_7[4]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7__0
       (.I0(v_count[4]),
        .I1(sprite_y_vga_7[4]),
        .O(i__carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7__1
       (.I0(h_count[4]),
        .I1(sprite_x_vga_0[4]),
        .O(i__carry__0_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7__2
       (.I0(v_count[4]),
        .I1(sprite_y_vga_0[4]),
        .O(i__carry__0_i_7__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_1
       (.I0(h_count[8]),
        .I1(sprite_x_vga_7[8]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_1__0
       (.I0(v_count[8]),
        .I1(sprite_y_vga_7[8]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_1__1
       (.I0(h_count[8]),
        .I1(sprite_x_vga_0[8]),
        .O(i__carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_1__2
       (.I0(v_count[8]),
        .I1(sprite_y_vga_0[8]),
        .O(i__carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_2
       (.I0(h_count[7]),
        .I1(sprite_x_vga_7[7]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_2__0
       (.I0(v_count[7]),
        .I1(sprite_y_vga_7[7]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_2__1
       (.I0(h_count[7]),
        .I1(sprite_x_vga_0[7]),
        .O(i__carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_2__2
       (.I0(v_count[7]),
        .I1(sprite_y_vga_0[7]),
        .O(i__carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_3
       (.I0(h_count[9]),
        .I1(sprite_x_vga_7[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_3__0
       (.I0(v_count[9]),
        .I1(sprite_y_vga_7[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_3__1
       (.I0(h_count[9]),
        .I1(sprite_x_vga_0[9]),
        .O(i__carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_3__2
       (.I0(v_count[9]),
        .I1(sprite_y_vga_0[9]),
        .O(i__carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_4
       (.I0(sprite_x_vga_7[8]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(sprite_x_vga_7[9]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_4__0
       (.I0(sprite_y_vga_7[8]),
        .I1(v_count[8]),
        .I2(v_count[9]),
        .I3(sprite_y_vga_7[9]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_4__1
       (.I0(sprite_x_vga_0[8]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(sprite_x_vga_0[9]),
        .O(i__carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_4__2
       (.I0(sprite_y_vga_0[8]),
        .I1(v_count[8]),
        .I2(v_count[9]),
        .I3(sprite_y_vga_0[9]),
        .O(i__carry__1_i_4__2_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_5
       (.I0(sprite_x_vga_7[7]),
        .I1(h_count[7]),
        .I2(h_count[8]),
        .I3(sprite_x_vga_7[8]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_5__0
       (.I0(sprite_y_vga_7[7]),
        .I1(v_count[7]),
        .I2(v_count[8]),
        .I3(sprite_y_vga_7[8]),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_5__1
       (.I0(sprite_x_vga_0[7]),
        .I1(h_count[7]),
        .I2(h_count[8]),
        .I3(sprite_x_vga_0[8]),
        .O(i__carry__1_i_5__1_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_5__2
       (.I0(sprite_y_vga_0[7]),
        .I1(v_count[7]),
        .I2(v_count[8]),
        .I3(sprite_y_vga_0[8]),
        .O(i__carry__1_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(h_count[7]),
        .I1(sprite_x_vga_0[7]),
        .I2(h_count[6]),
        .I3(sprite_x_vga_0[6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(v_count[7]),
        .I1(sprite_y_vga_0[7]),
        .I2(v_count[6]),
        .I3(sprite_y_vga_0[6]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__1
       (.I0(h_count[3]),
        .I1(sprite_x_vga_7[3]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__2
       (.I0(v_count[3]),
        .I1(sprite_y_vga_7[3]),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(h_count[3]),
        .I1(sprite_x_vga_0[3]),
        .O(i__carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__4
       (.I0(v_count[3]),
        .I1(sprite_y_vga_0[3]),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(h_count[5]),
        .I1(sprite_x_vga_0[5]),
        .I2(h_count[4]),
        .I3(sprite_x_vga_0[4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(v_count[5]),
        .I1(sprite_y_vga_0[5]),
        .I2(v_count[4]),
        .I3(sprite_y_vga_0[4]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(h_count[2]),
        .I1(sprite_x_vga_7[2]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__2
       (.I0(v_count[2]),
        .I1(sprite_y_vga_7[2]),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__3
       (.I0(h_count[2]),
        .I1(sprite_x_vga_0[2]),
        .O(i__carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__4
       (.I0(v_count[2]),
        .I1(sprite_y_vga_0[2]),
        .O(i__carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(h_count[3]),
        .I1(sprite_x_vga_0[3]),
        .I2(h_count[2]),
        .I3(sprite_x_vga_0[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(v_count[3]),
        .I1(sprite_y_vga_0[3]),
        .I2(v_count[2]),
        .I3(sprite_y_vga_0[2]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__1
       (.I0(h_count[1]),
        .I1(sprite_x_vga_7[1]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__2
       (.I0(v_count[1]),
        .I1(sprite_y_vga_7[1]),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__3
       (.I0(h_count[1]),
        .I1(sprite_x_vga_0[1]),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__4
       (.I0(v_count[1]),
        .I1(sprite_y_vga_0[1]),
        .O(i__carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(h_count[1]),
        .I1(sprite_x_vga_0[1]),
        .I2(h_count[0]),
        .I3(sprite_x_vga_0[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(v_count[1]),
        .I1(sprite_y_vga_0[1]),
        .I2(v_count[0]),
        .I3(sprite_y_vga_0[0]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__1
       (.I0(h_count[0]),
        .I1(sprite_x_vga_7[0]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__2
       (.I0(v_count[0]),
        .I1(sprite_y_vga_7[0]),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__3
       (.I0(h_count[0]),
        .I1(sprite_x_vga_0[0]),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__4
       (.I0(v_count[0]),
        .I1(sprite_y_vga_0[0]),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(h_count[6]),
        .I1(sprite_x_vga_0[6]),
        .I2(h_count[7]),
        .I3(sprite_x_vga_0[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(v_count[6]),
        .I1(sprite_y_vga_0[6]),
        .I2(v_count[7]),
        .I3(sprite_y_vga_0[7]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(h_count[4]),
        .I1(sprite_x_vga_0[4]),
        .I2(h_count[5]),
        .I3(sprite_x_vga_0[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(v_count[4]),
        .I1(sprite_y_vga_0[4]),
        .I2(v_count[5]),
        .I3(sprite_y_vga_0[5]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(sprite_x_vga_0[3]),
        .I1(h_count[3]),
        .I2(sprite_x_vga_0[2]),
        .I3(h_count[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(sprite_y_vga_0[3]),
        .I1(v_count[3]),
        .I2(sprite_y_vga_0[2]),
        .I3(v_count[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(sprite_x_vga_0[1]),
        .I1(h_count[1]),
        .I2(sprite_x_vga_0[0]),
        .I3(h_count[0]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(sprite_y_vga_0[1]),
        .I1(v_count[1]),
        .I2(sprite_y_vga_0[0]),
        .I3(v_count[0]),
        .O(i__carry_i_8__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 red_reg3_carry
       (.CI(1'b0),
        .CO({red_reg3_carry_n_0,red_reg3_carry_n_1,red_reg3_carry_n_2,red_reg3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({red_reg3_carry_i_1_n_0,red_reg3_carry_i_2_n_0,red_reg3_carry_i_3_n_0,red_reg3_carry_i_4_n_0}),
        .O(NLW_red_reg3_carry_O_UNCONNECTED[3:0]),
        .S({red_reg3_carry_i_5_n_0,red_reg3_carry_i_6_n_0,red_reg3_carry_i_7_n_0,red_reg3_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 red_reg3_carry__0
       (.CI(red_reg3_carry_n_0),
        .CO({NLW_red_reg3_carry__0_CO_UNCONNECTED[3:1],red_reg3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,red_reg3_carry__0_i_1_n_0}),
        .O(NLW_red_reg3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,red_reg3_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg3_carry__0_i_1
       (.I0(v_count[9]),
        .I1(sprite_y_vga_7[9]),
        .I2(v_count[8]),
        .I3(sprite_y_vga_7[8]),
        .O(red_reg3_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg3_carry__0_i_2
       (.I0(v_count[8]),
        .I1(sprite_y_vga_7[8]),
        .I2(v_count[9]),
        .I3(sprite_y_vga_7[9]),
        .O(red_reg3_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg3_carry_i_1
       (.I0(v_count[7]),
        .I1(sprite_y_vga_7[7]),
        .I2(v_count[6]),
        .I3(sprite_y_vga_7[6]),
        .O(red_reg3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg3_carry_i_2
       (.I0(v_count[5]),
        .I1(sprite_y_vga_7[5]),
        .I2(v_count[4]),
        .I3(sprite_y_vga_7[4]),
        .O(red_reg3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg3_carry_i_3
       (.I0(v_count[3]),
        .I1(sprite_y_vga_7[3]),
        .I2(v_count[2]),
        .I3(sprite_y_vga_7[2]),
        .O(red_reg3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg3_carry_i_4
       (.I0(v_count[1]),
        .I1(sprite_y_vga_7[1]),
        .I2(v_count[0]),
        .I3(sprite_y_vga_7[0]),
        .O(red_reg3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg3_carry_i_5
       (.I0(v_count[6]),
        .I1(sprite_y_vga_7[6]),
        .I2(v_count[7]),
        .I3(sprite_y_vga_7[7]),
        .O(red_reg3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg3_carry_i_6
       (.I0(v_count[4]),
        .I1(sprite_y_vga_7[4]),
        .I2(v_count[5]),
        .I3(sprite_y_vga_7[5]),
        .O(red_reg3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg3_carry_i_7
       (.I0(sprite_y_vga_7[3]),
        .I1(v_count[3]),
        .I2(sprite_y_vga_7[2]),
        .I3(v_count[2]),
        .O(red_reg3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg3_carry_i_8
       (.I0(sprite_y_vga_7[1]),
        .I1(v_count[1]),
        .I2(sprite_y_vga_7[0]),
        .I3(v_count[0]),
        .O(red_reg3_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \red_reg3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\red_reg3_inferred__0/i__carry_n_0 ,\red_reg3_inferred__0/i__carry_n_1 ,\red_reg3_inferred__0/i__carry_n_2 ,\red_reg3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_red_reg3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \red_reg3_inferred__0/i__carry__0 
       (.CI(\red_reg3_inferred__0/i__carry_n_0 ),
        .CO({\NLW_red_reg3_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],red_reg36_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1__0_n_0}),
        .O(\NLW_red_reg3_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 red_reg5_carry
       (.CI(1'b0),
        .CO({red_reg5_carry_n_0,red_reg5_carry_n_1,red_reg5_carry_n_2,red_reg5_carry_n_3}),
        .CYINIT(1'b1),
        .DI({red_reg5_carry_i_1_n_0,red_reg5_carry_i_2_n_0,red_reg5_carry_i_3_n_0,red_reg5_carry_i_4_n_0}),
        .O(NLW_red_reg5_carry_O_UNCONNECTED[3:0]),
        .S({red_reg5_carry_i_5_n_0,red_reg5_carry_i_6_n_0,red_reg5_carry_i_7_n_0,red_reg5_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 red_reg5_carry__0
       (.CI(red_reg5_carry_n_0),
        .CO({NLW_red_reg5_carry__0_CO_UNCONNECTED[3:1],red_reg5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,red_reg5_carry__0_i_1_n_0}),
        .O(NLW_red_reg5_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,red_reg5_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg5_carry__0_i_1
       (.I0(h_count[9]),
        .I1(sprite_x_vga_7[9]),
        .I2(h_count[8]),
        .I3(sprite_x_vga_7[8]),
        .O(red_reg5_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg5_carry__0_i_2
       (.I0(h_count[8]),
        .I1(sprite_x_vga_7[8]),
        .I2(h_count[9]),
        .I3(sprite_x_vga_7[9]),
        .O(red_reg5_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg5_carry_i_1
       (.I0(h_count[7]),
        .I1(sprite_x_vga_7[7]),
        .I2(h_count[6]),
        .I3(sprite_x_vga_7[6]),
        .O(red_reg5_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg5_carry_i_2
       (.I0(h_count[5]),
        .I1(sprite_x_vga_7[5]),
        .I2(h_count[4]),
        .I3(sprite_x_vga_7[4]),
        .O(red_reg5_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg5_carry_i_3
       (.I0(h_count[3]),
        .I1(sprite_x_vga_7[3]),
        .I2(h_count[2]),
        .I3(sprite_x_vga_7[2]),
        .O(red_reg5_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    red_reg5_carry_i_4
       (.I0(h_count[1]),
        .I1(sprite_x_vga_7[1]),
        .I2(h_count[0]),
        .I3(sprite_x_vga_7[0]),
        .O(red_reg5_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg5_carry_i_5
       (.I0(h_count[6]),
        .I1(sprite_x_vga_7[6]),
        .I2(h_count[7]),
        .I3(sprite_x_vga_7[7]),
        .O(red_reg5_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg5_carry_i_6
       (.I0(h_count[4]),
        .I1(sprite_x_vga_7[4]),
        .I2(h_count[5]),
        .I3(sprite_x_vga_7[5]),
        .O(red_reg5_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg5_carry_i_7
       (.I0(sprite_x_vga_7[3]),
        .I1(h_count[3]),
        .I2(sprite_x_vga_7[2]),
        .I3(h_count[2]),
        .O(red_reg5_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    red_reg5_carry_i_8
       (.I0(sprite_x_vga_7[1]),
        .I1(h_count[1]),
        .I2(sprite_x_vga_7[0]),
        .I3(h_count[0]),
        .O(red_reg5_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \red_reg5_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\red_reg5_inferred__0/i__carry_n_0 ,\red_reg5_inferred__0/i__carry_n_1 ,\red_reg5_inferred__0/i__carry_n_2 ,\red_reg5_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_red_reg5_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \red_reg5_inferred__0/i__carry__0 
       (.CI(\red_reg5_inferred__0/i__carry_n_0 ),
        .CO({\NLW_red_reg5_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],red_reg54_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}),
        .O(\NLW_red_reg5_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \red_reg[5]_i_1 
       (.I0(\green_reg[1]_i_1_n_0 ),
        .I1(sprite_id_vga_0[0]),
        .I2(\red_reg[7]_i_2_n_0 ),
        .I3(\sprite_id_vga_7_reg_n_0_[0] ),
        .O(p_2_in));
  LUT3 #(
    .INIT(8'h80)) 
    \red_reg[6]_i_1 
       (.I0(video_active),
        .I1(\red_reg[7]_i_2_n_0 ),
        .I2(\red_reg[7]_i_3_n_0 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF470000)) 
    \red_reg[6]_i_2 
       (.I0(\sprite_id_vga_7_reg_n_0_[0] ),
        .I1(\red_reg[7]_i_2_n_0 ),
        .I2(sprite_id_vga_0[0]),
        .I3(\green_reg[1]_i_1_n_0 ),
        .I4(video_active),
        .O(\red_reg[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \red_reg[7]_i_1 
       (.I0(\red_reg[7]_i_2_n_0 ),
        .I1(\red_reg[7]_i_3_n_0 ),
        .I2(video_active),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \red_reg[7]_i_2 
       (.I0(sprite_enable_vga_0),
        .I1(\_inferred__6/i__carry__1_n_1 ),
        .I2(\_inferred__5/i__carry__1_n_1 ),
        .I3(red_reg54_in),
        .I4(red_reg36_in),
        .O(\red_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \red_reg[7]_i_3 
       (.I0(sprite_enable_vga_7),
        .I1(\_inferred__4/i__carry__1_n_1 ),
        .I2(\_inferred__3/i__carry__1_n_1 ),
        .I3(red_reg5),
        .I4(red_reg3),
        .O(\red_reg[7]_i_3_n_0 ));
  FDSE \red_reg_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(video_active),
        .Q(red[0]),
        .S(p_1_in[6]));
  FDRE \red_reg_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(red[1]),
        .R(p_1_in[7]));
  FDSE \red_reg_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(\red_reg[6]_i_2_n_0 ),
        .Q(red[2]),
        .S(p_1_in[6]));
  FDRE \red_reg_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(red[3]),
        .R(p_1_in[7]));
  LUT5 #(
    .INIT(32'h0FF40004)) 
    s_axi_arready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_arvalid),
        .I2(axi_state[1]),
        .I3(axi_state[0]),
        .I4(s_axi_arready),
        .O(s_axi_arready_i_1_n_0));
  FDCE s_axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_arready_i_1_n_0),
        .Q(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    s_axi_awready_i_1
       (.I0(s_axi_awready),
        .I1(axi_state[1]),
        .I2(s_axi_awvalid),
        .I3(axi_state[0]),
        .O(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_2
       (.I0(reset_n),
        .O(s_axi_awready_i_2_n_0));
  FDCE s_axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_awready_i_1_n_0),
        .Q(s_axi_awready));
  LUT4 #(
    .INIT(16'h88B8)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bvalid),
        .I1(axi_state[0]),
        .I2(axi_state[1]),
        .I3(s_axi_bready),
        .O(s_axi_bvalid_i_1_n_0));
  FDCE s_axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[0]_i_1 
       (.I0(s_axi_rdata[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[0]_i_2 
       (.I0(sprite_x_1[0]),
        .I1(sprite_id_1[0]),
        .I2(sprite_x_0[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[0]),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[16]_i_1 
       (.I0(sprite_y_1[0]),
        .I1(sprite_y_0[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[17]_i_1 
       (.I0(sprite_y_1[1]),
        .I1(sprite_y_0[1]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[18]_i_1 
       (.I0(sprite_y_1[2]),
        .I1(sprite_y_0[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[19]_i_1 
       (.I0(sprite_y_1[3]),
        .I1(sprite_y_0[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[1]_i_1 
       (.I0(s_axi_rdata[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[1]_i_2 
       (.I0(sprite_x_1[1]),
        .I1(sprite_id_1[1]),
        .I2(sprite_x_0[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[1]),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[20]_i_1 
       (.I0(sprite_y_1[4]),
        .I1(sprite_y_0[4]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[21]_i_1 
       (.I0(sprite_y_1[5]),
        .I1(sprite_y_0[5]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[22]_i_1 
       (.I0(sprite_y_1[6]),
        .I1(sprite_y_0[6]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[23]_i_1 
       (.I0(sprite_y_1[7]),
        .I1(sprite_y_0[7]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[24]_i_1 
       (.I0(sprite_y_1[8]),
        .I1(sprite_y_0[8]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata[25]_i_1 
       (.I0(axi_state[0]),
        .I1(axi_state[1]),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[25]_i_2 
       (.I0(sprite_y_1[9]),
        .I1(sprite_y_0[9]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[2]_i_1 
       (.I0(s_axi_rdata[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[2]_i_2 
       (.I0(sprite_x_1[2]),
        .I1(sprite_id_1[2]),
        .I2(sprite_x_0[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[2]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[3]_i_1 
       (.I0(s_axi_rdata[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[3]_i_2 
       (.I0(sprite_x_1[3]),
        .I1(sprite_id_1[3]),
        .I2(sprite_x_0[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[3]),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[4]_i_1 
       (.I0(s_axi_rdata[4]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[4]_i_2 
       (.I0(sprite_x_1[4]),
        .I1(sprite_id_1[4]),
        .I2(sprite_x_0[4]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[4]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[5]_i_1 
       (.I0(s_axi_rdata[5]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[5]_i_2 
       (.I0(sprite_x_1[5]),
        .I1(sprite_id_1[5]),
        .I2(sprite_x_0[5]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[5]),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[6]_i_1 
       (.I0(s_axi_rdata[6]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[6]_i_2 
       (.I0(sprite_x_1[6]),
        .I1(sprite_id_1[6]),
        .I2(sprite_x_0[6]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[6]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[7]_i_1 
       (.I0(s_axi_rdata[7]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[7]_i_2 
       (.I0(sprite_x_1[7]),
        .I1(sprite_id_1[7]),
        .I2(sprite_x_0[7]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_id_0[7]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rdata[8]_i_1 
       (.I0(s_axi_rdata[8]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(\s_axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \s_axi_rdata[8]_i_2 
       (.I0(sprite_x_1[8]),
        .I1(sprite_enable_1),
        .I2(sprite_x_0[8]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(sprite_enable_0),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \s_axi_rdata[9]_i_1 
       (.I0(sprite_x_1[9]),
        .I1(sprite_x_0[9]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\s_axi_rdata[9]_i_1_n_0 ));
  FDCE \s_axi_rdata_reg[0] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [0]));
  FDCE \s_axi_rdata_reg[16] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[16]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [10]));
  FDCE \s_axi_rdata_reg[17] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[17]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [11]));
  FDCE \s_axi_rdata_reg[18] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[18]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [12]));
  FDCE \s_axi_rdata_reg[19] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[19]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [13]));
  FDCE \s_axi_rdata_reg[1] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[1]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [1]));
  FDCE \s_axi_rdata_reg[20] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[20]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [14]));
  FDCE \s_axi_rdata_reg[21] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[21]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [15]));
  FDCE \s_axi_rdata_reg[22] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[22]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [16]));
  FDCE \s_axi_rdata_reg[23] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[23]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [17]));
  FDCE \s_axi_rdata_reg[24] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [18]));
  FDCE \s_axi_rdata_reg[25] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[25]_i_2_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [19]));
  FDCE \s_axi_rdata_reg[2] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[2]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [2]));
  FDCE \s_axi_rdata_reg[3] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[3]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [3]));
  FDCE \s_axi_rdata_reg[4] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[4]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [4]));
  FDCE \s_axi_rdata_reg[5] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [5]));
  FDCE \s_axi_rdata_reg[6] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [6]));
  FDCE \s_axi_rdata_reg[7] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[7]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [7]));
  FDCE \s_axi_rdata_reg[8] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[8]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [8]));
  FDCE \s_axi_rdata_reg[9] 
       (.C(clk),
        .CE(\s_axi_rdata[25]_i_1_n_0 ),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[9]_i_1_n_0 ),
        .Q(\s_axi_rdata_reg[25]_0 [9]));
  LUT4 #(
    .INIT(16'h7C40)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(axi_state[1]),
        .I2(axi_state[0]),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_1_n_0));
  FDCE s_axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid));
  LUT4 #(
    .INIT(16'hF040)) 
    s_axi_wready_i_1
       (.I0(axi_state[1]),
        .I1(s_axi_wvalid),
        .I2(axi_state[0]),
        .I3(s_axi_wready),
        .O(s_axi_wready_i_1_n_0));
  FDCE s_axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wready_i_1_n_0),
        .Q(s_axi_wready));
  FDCE sprite_enable_0_reg
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(sprite_enable_0));
  FDCE sprite_enable_1_reg
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(sprite_enable_1));
  FDCE sprite_enable_7_reg
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(sprite_enable_7));
  FDCE sprite_enable_vga_0_reg
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_enable_0),
        .Q(sprite_enable_vga_0));
  FDCE sprite_enable_vga_7_reg
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_enable_7),
        .Q(sprite_enable_vga_7));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \sprite_id_0[7]_i_1 
       (.I0(s_axi_wvalid),
        .I1(axi_state[0]),
        .I2(axi_state[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\sprite_id_1[7]_i_2_n_0 ),
        .O(sprite_enable_0_4));
  FDCE \sprite_id_0_reg[0] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(sprite_id_0[0]));
  FDCE \sprite_id_0_reg[1] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(sprite_id_0[1]));
  FDCE \sprite_id_0_reg[2] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(sprite_id_0[2]));
  FDCE \sprite_id_0_reg[3] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(sprite_id_0[3]));
  FDCE \sprite_id_0_reg[4] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(sprite_id_0[4]));
  FDCE \sprite_id_0_reg[5] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(sprite_id_0[5]));
  FDCE \sprite_id_0_reg[6] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(sprite_id_0[6]));
  FDCE \sprite_id_0_reg[7] 
       (.C(clk),
        .CE(sprite_enable_0_4),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(sprite_id_0[7]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \sprite_id_1[7]_i_1 
       (.I0(\sprite_id_1[7]_i_2_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(axi_state[1]),
        .I4(axi_state[0]),
        .I5(s_axi_wvalid),
        .O(sprite_enable_1_5));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sprite_id_1[7]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .O(\sprite_id_1[7]_i_2_n_0 ));
  FDCE \sprite_id_1_reg[0] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(sprite_id_1[0]));
  FDCE \sprite_id_1_reg[1] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(sprite_id_1[1]));
  FDCE \sprite_id_1_reg[2] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(sprite_id_1[2]));
  FDCE \sprite_id_1_reg[3] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(sprite_id_1[3]));
  FDCE \sprite_id_1_reg[4] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(sprite_id_1[4]));
  FDCE \sprite_id_1_reg[5] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(sprite_id_1[5]));
  FDCE \sprite_id_1_reg[6] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(sprite_id_1[6]));
  FDCE \sprite_id_1_reg[7] 
       (.C(clk),
        .CE(sprite_enable_1_5),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(sprite_id_1[7]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \sprite_id_7[7]_i_1 
       (.I0(\sprite_id_7[7]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(axi_state[1]),
        .I4(axi_state[0]),
        .I5(s_axi_wvalid),
        .O(sprite_enable_7_3));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sprite_id_7[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(\sprite_id_7[7]_i_2_n_0 ));
  FDCE \sprite_id_7_reg[0] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(sprite_id_7[0]));
  FDCE \sprite_id_7_reg[1] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(sprite_id_7[1]));
  FDCE \sprite_id_7_reg[2] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(sprite_id_7[2]));
  FDCE \sprite_id_7_reg[3] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(sprite_id_7[3]));
  FDCE \sprite_id_7_reg[4] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(sprite_id_7[4]));
  FDCE \sprite_id_7_reg[5] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(sprite_id_7[5]));
  FDCE \sprite_id_7_reg[6] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(sprite_id_7[6]));
  FDCE \sprite_id_7_reg[7] 
       (.C(clk),
        .CE(sprite_enable_7_3),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(sprite_id_7[7]));
  FDCE \sprite_id_vga_0_reg[0] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[0]),
        .Q(sprite_id_vga_0[0]));
  FDCE \sprite_id_vga_0_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[1]),
        .Q(sprite_id_vga_0[1]));
  FDCE \sprite_id_vga_0_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[2]),
        .Q(sprite_id_vga_0[2]));
  FDCE \sprite_id_vga_0_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[3]),
        .Q(sprite_id_vga_0[3]));
  FDCE \sprite_id_vga_0_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[4]),
        .Q(sprite_id_vga_0[4]));
  FDCE \sprite_id_vga_0_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[5]),
        .Q(sprite_id_vga_0[5]));
  FDCE \sprite_id_vga_0_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[6]),
        .Q(sprite_id_vga_0[6]));
  FDCE \sprite_id_vga_0_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_0[7]),
        .Q(sprite_id_vga_0[7]));
  FDCE \sprite_id_vga_7_reg[0] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[0]),
        .Q(\sprite_id_vga_7_reg_n_0_[0] ));
  FDCE \sprite_id_vga_7_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[1]),
        .Q(\sprite_id_vga_7_reg_n_0_[1] ));
  FDCE \sprite_id_vga_7_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[2]),
        .Q(\sprite_id_vga_7_reg_n_0_[2] ));
  FDCE \sprite_id_vga_7_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[3]),
        .Q(\sprite_id_vga_7_reg_n_0_[3] ));
  FDCE \sprite_id_vga_7_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[4]),
        .Q(\sprite_id_vga_7_reg_n_0_[4] ));
  FDCE \sprite_id_vga_7_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[5]),
        .Q(\sprite_id_vga_7_reg_n_0_[5] ));
  FDCE \sprite_id_vga_7_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[6]),
        .Q(\sprite_id_vga_7_reg_n_0_[6] ));
  FDCE \sprite_id_vga_7_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_id_7[7]),
        .Q(\sprite_id_vga_7_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \sprite_x_0[9]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(s_axi_wvalid),
        .I3(axi_state[0]),
        .I4(axi_state[1]),
        .I5(\sprite_id_1[7]_i_2_n_0 ),
        .O(sprite_x_0_2));
  FDCE \sprite_x_0_reg[0] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(sprite_x_0[0]));
  FDCE \sprite_x_0_reg[1] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(sprite_x_0[1]));
  FDCE \sprite_x_0_reg[2] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(sprite_x_0[2]));
  FDCE \sprite_x_0_reg[3] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(sprite_x_0[3]));
  FDCE \sprite_x_0_reg[4] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(sprite_x_0[4]));
  FDCE \sprite_x_0_reg[5] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(sprite_x_0[5]));
  FDCE \sprite_x_0_reg[6] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(sprite_x_0[6]));
  FDCE \sprite_x_0_reg[7] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(sprite_x_0[7]));
  FDCE \sprite_x_0_reg[8] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(sprite_x_0[8]));
  FDCE \sprite_x_0_reg[9] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(sprite_x_0[9]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \sprite_x_1[9]_i_1 
       (.I0(s_axi_wvalid),
        .I1(axi_state[0]),
        .I2(axi_state[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\sprite_id_1[7]_i_2_n_0 ),
        .O(sprite_x_1_1));
  FDCE \sprite_x_1_reg[0] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(sprite_x_1[0]));
  FDCE \sprite_x_1_reg[1] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(sprite_x_1[1]));
  FDCE \sprite_x_1_reg[2] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(sprite_x_1[2]));
  FDCE \sprite_x_1_reg[3] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(sprite_x_1[3]));
  FDCE \sprite_x_1_reg[4] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(sprite_x_1[4]));
  FDCE \sprite_x_1_reg[5] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(sprite_x_1[5]));
  FDCE \sprite_x_1_reg[6] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(sprite_x_1[6]));
  FDCE \sprite_x_1_reg[7] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(sprite_x_1[7]));
  FDCE \sprite_x_1_reg[8] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(sprite_x_1[8]));
  FDCE \sprite_x_1_reg[9] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(sprite_x_1[9]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \sprite_x_7[9]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(\sprite_x_7[9]_i_2_n_0 ),
        .I3(axi_state[1]),
        .I4(axi_state[0]),
        .I5(s_axi_wvalid),
        .O(sprite_x_7_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sprite_x_7[9]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(\sprite_x_7[9]_i_2_n_0 ));
  FDCE \sprite_x_7_reg[0] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[0]),
        .Q(sprite_x_7[0]));
  FDCE \sprite_x_7_reg[1] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[1]),
        .Q(sprite_x_7[1]));
  FDCE \sprite_x_7_reg[2] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[2]),
        .Q(sprite_x_7[2]));
  FDCE \sprite_x_7_reg[3] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[3]),
        .Q(sprite_x_7[3]));
  FDCE \sprite_x_7_reg[4] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[4]),
        .Q(sprite_x_7[4]));
  FDCE \sprite_x_7_reg[5] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[5]),
        .Q(sprite_x_7[5]));
  FDCE \sprite_x_7_reg[6] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[6]),
        .Q(sprite_x_7[6]));
  FDCE \sprite_x_7_reg[7] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[7]),
        .Q(sprite_x_7[7]));
  FDCE \sprite_x_7_reg[8] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[8]),
        .Q(sprite_x_7[8]));
  FDCE \sprite_x_7_reg[9] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[9]),
        .Q(sprite_x_7[9]));
  FDCE \sprite_x_vga_0_reg[0] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[0]),
        .Q(sprite_x_vga_0[0]));
  FDCE \sprite_x_vga_0_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[1]),
        .Q(sprite_x_vga_0[1]));
  FDCE \sprite_x_vga_0_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[2]),
        .Q(sprite_x_vga_0[2]));
  FDCE \sprite_x_vga_0_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[3]),
        .Q(sprite_x_vga_0[3]));
  FDCE \sprite_x_vga_0_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[4]),
        .Q(sprite_x_vga_0[4]));
  FDCE \sprite_x_vga_0_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[5]),
        .Q(sprite_x_vga_0[5]));
  FDCE \sprite_x_vga_0_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[6]),
        .Q(sprite_x_vga_0[6]));
  FDCE \sprite_x_vga_0_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[7]),
        .Q(sprite_x_vga_0[7]));
  FDCE \sprite_x_vga_0_reg[8] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[8]),
        .Q(sprite_x_vga_0[8]));
  FDCE \sprite_x_vga_0_reg[9] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_0[9]),
        .Q(sprite_x_vga_0[9]));
  FDCE \sprite_x_vga_7_reg[0] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[0]),
        .Q(sprite_x_vga_7[0]));
  FDCE \sprite_x_vga_7_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[1]),
        .Q(sprite_x_vga_7[1]));
  FDCE \sprite_x_vga_7_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[2]),
        .Q(sprite_x_vga_7[2]));
  FDCE \sprite_x_vga_7_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[3]),
        .Q(sprite_x_vga_7[3]));
  FDCE \sprite_x_vga_7_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[4]),
        .Q(sprite_x_vga_7[4]));
  FDCE \sprite_x_vga_7_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[5]),
        .Q(sprite_x_vga_7[5]));
  FDCE \sprite_x_vga_7_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[6]),
        .Q(sprite_x_vga_7[6]));
  FDCE \sprite_x_vga_7_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[7]),
        .Q(sprite_x_vga_7[7]));
  FDCE \sprite_x_vga_7_reg[8] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[8]),
        .Q(sprite_x_vga_7[8]));
  FDCE \sprite_x_vga_7_reg[9] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_x_7[9]),
        .Q(sprite_x_vga_7[9]));
  FDCE \sprite_y_0_reg[0] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(sprite_y_0[0]));
  FDCE \sprite_y_0_reg[1] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(sprite_y_0[1]));
  FDCE \sprite_y_0_reg[2] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(sprite_y_0[2]));
  FDCE \sprite_y_0_reg[3] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(sprite_y_0[3]));
  FDCE \sprite_y_0_reg[4] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(sprite_y_0[4]));
  FDCE \sprite_y_0_reg[5] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(sprite_y_0[5]));
  FDCE \sprite_y_0_reg[6] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[16]),
        .Q(sprite_y_0[6]));
  FDCE \sprite_y_0_reg[7] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[17]),
        .Q(sprite_y_0[7]));
  FDCE \sprite_y_0_reg[8] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[18]),
        .Q(sprite_y_0[8]));
  FDCE \sprite_y_0_reg[9] 
       (.C(clk),
        .CE(sprite_x_0_2),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[19]),
        .Q(sprite_y_0[9]));
  FDCE \sprite_y_1_reg[0] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(sprite_y_1[0]));
  FDCE \sprite_y_1_reg[1] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(sprite_y_1[1]));
  FDCE \sprite_y_1_reg[2] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(sprite_y_1[2]));
  FDCE \sprite_y_1_reg[3] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(sprite_y_1[3]));
  FDCE \sprite_y_1_reg[4] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(sprite_y_1[4]));
  FDCE \sprite_y_1_reg[5] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(sprite_y_1[5]));
  FDCE \sprite_y_1_reg[6] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[16]),
        .Q(sprite_y_1[6]));
  FDCE \sprite_y_1_reg[7] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[17]),
        .Q(sprite_y_1[7]));
  FDCE \sprite_y_1_reg[8] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[18]),
        .Q(sprite_y_1[8]));
  FDCE \sprite_y_1_reg[9] 
       (.C(clk),
        .CE(sprite_x_1_1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[19]),
        .Q(sprite_y_1[9]));
  FDCE \sprite_y_7_reg[0] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[10]),
        .Q(sprite_y_7[0]));
  FDCE \sprite_y_7_reg[1] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[11]),
        .Q(sprite_y_7[1]));
  FDCE \sprite_y_7_reg[2] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[12]),
        .Q(sprite_y_7[2]));
  FDCE \sprite_y_7_reg[3] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[13]),
        .Q(sprite_y_7[3]));
  FDCE \sprite_y_7_reg[4] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[14]),
        .Q(sprite_y_7[4]));
  FDCE \sprite_y_7_reg[5] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[15]),
        .Q(sprite_y_7[5]));
  FDCE \sprite_y_7_reg[6] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[16]),
        .Q(sprite_y_7[6]));
  FDCE \sprite_y_7_reg[7] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[17]),
        .Q(sprite_y_7[7]));
  FDCE \sprite_y_7_reg[8] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[18]),
        .Q(sprite_y_7[8]));
  FDCE \sprite_y_7_reg[9] 
       (.C(clk),
        .CE(sprite_x_7_0),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wdata[19]),
        .Q(sprite_y_7[9]));
  FDCE \sprite_y_vga_0_reg[0] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[0]),
        .Q(sprite_y_vga_0[0]));
  FDCE \sprite_y_vga_0_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[1]),
        .Q(sprite_y_vga_0[1]));
  FDCE \sprite_y_vga_0_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[2]),
        .Q(sprite_y_vga_0[2]));
  FDCE \sprite_y_vga_0_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[3]),
        .Q(sprite_y_vga_0[3]));
  FDCE \sprite_y_vga_0_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[4]),
        .Q(sprite_y_vga_0[4]));
  FDCE \sprite_y_vga_0_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[5]),
        .Q(sprite_y_vga_0[5]));
  FDCE \sprite_y_vga_0_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[6]),
        .Q(sprite_y_vga_0[6]));
  FDCE \sprite_y_vga_0_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[7]),
        .Q(sprite_y_vga_0[7]));
  FDCE \sprite_y_vga_0_reg[8] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[8]),
        .Q(sprite_y_vga_0[8]));
  FDCE \sprite_y_vga_0_reg[9] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_0[9]),
        .Q(sprite_y_vga_0[9]));
  FDCE \sprite_y_vga_7_reg[0] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[0]),
        .Q(sprite_y_vga_7[0]));
  FDCE \sprite_y_vga_7_reg[1] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[1]),
        .Q(sprite_y_vga_7[1]));
  FDCE \sprite_y_vga_7_reg[2] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[2]),
        .Q(sprite_y_vga_7[2]));
  FDCE \sprite_y_vga_7_reg[3] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[3]),
        .Q(sprite_y_vga_7[3]));
  FDCE \sprite_y_vga_7_reg[4] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[4]),
        .Q(sprite_y_vga_7[4]));
  FDCE \sprite_y_vga_7_reg[5] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[5]),
        .Q(sprite_y_vga_7[5]));
  FDCE \sprite_y_vga_7_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[6]),
        .Q(sprite_y_vga_7[6]));
  FDCE \sprite_y_vga_7_reg[7] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[7]),
        .Q(sprite_y_vga_7[7]));
  FDCE \sprite_y_vga_7_reg[8] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[8]),
        .Q(sprite_y_vga_7[8]));
  FDCE \sprite_y_vga_7_reg[9] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(sprite_y_7[9]),
        .Q(sprite_y_vga_7[9]));
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
