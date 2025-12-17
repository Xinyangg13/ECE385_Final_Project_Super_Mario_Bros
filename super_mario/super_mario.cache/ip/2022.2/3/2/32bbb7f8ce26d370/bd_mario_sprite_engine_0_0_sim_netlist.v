// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 19 23:21:39 2025
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
  wire clk;
  wire [4:4]\^red ;
  wire reset_n;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:30]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire vga_clk;

  assign blue[7] = \^red [4];
  assign blue[6] = \^red [4];
  assign blue[5] = \^red [4];
  assign blue[4] = \^red [4];
  assign blue[3] = \^red [4];
  assign blue[2] = \^red [4];
  assign blue[1] = \<const0> ;
  assign blue[0] = \<const0> ;
  assign green[7] = \^red [4];
  assign green[6] = \<const0> ;
  assign green[5] = \<const0> ;
  assign green[4] = \^red [4];
  assign green[3] = \<const0> ;
  assign green[2] = \^red [4];
  assign green[1] = \<const0> ;
  assign green[0] = \<const0> ;
  assign red[7] = \<const0> ;
  assign red[6] = \^red [4];
  assign red[5] = \<const0> ;
  assign red[4] = \^red [4];
  assign red[3] = \^red [4];
  assign red[2] = \^red [4];
  assign red[1] = \<const0> ;
  assign red[0] = \<const0> ;
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
  assign s_axi_rdata[15] = \^s_axi_rdata [30];
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \^s_axi_rdata [30];
  assign s_axi_rdata[12] = \^s_axi_rdata [30];
  assign s_axi_rdata[11] = \^s_axi_rdata [30];
  assign s_axi_rdata[10] = \^s_axi_rdata [30];
  assign s_axi_rdata[9] = \^s_axi_rdata [30];
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \^s_axi_rdata [30];
  assign s_axi_rdata[6] = \^s_axi_rdata [30];
  assign s_axi_rdata[5] = \^s_axi_rdata [30];
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \^s_axi_rdata [30];
  assign s_axi_rdata[2] = \^s_axi_rdata [30];
  assign s_axi_rdata[1] = \^s_axi_rdata [30];
  assign s_axi_rdata[0] = \^s_axi_rdata [30];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine inst
       (.clk(clk),
        .red(\^red ),
        .reset_n(reset_n),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .vga_clk(vga_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine
   (red,
    s_axi_awready,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_bready,
    clk,
    vga_clk,
    s_axi_arvalid,
    s_axi_wvalid,
    reset_n);
  output [0:0]red;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_bvalid;
  output s_axi_arready;
  output [0:0]s_axi_rdata;
  output s_axi_rvalid;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_bready;
  input clk;
  input vga_clk;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input reset_n;

  wire \FSM_sequential_axi_state[0]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[1]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[1]_i_2_n_0 ;
  wire [1:0]axi_state;
  wire clk;
  wire [0:0]red;
  wire reset_n;
  wire s_axi_arready;
  wire s_axi_arready_i_1_n_0;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awready_i_2_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [0:0]s_axi_rdata;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_wready;
  wire s_axi_wready_i_1_n_0;
  wire s_axi_wvalid;
  wire vga_clk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h150A)) 
    \FSM_sequential_axi_state[0]_i_1 
       (.I0(\FSM_sequential_axi_state[1]_i_2_n_0 ),
        .I1(s_axi_rready),
        .I2(axi_state[1]),
        .I3(axi_state[0]),
        .O(\FSM_sequential_axi_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h03CC004403CC3344)) 
    \FSM_sequential_axi_state[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(\FSM_sequential_axi_state[1]_i_2_n_0 ),
        .I2(s_axi_rready),
        .I3(axi_state[1]),
        .I4(axi_state[0]),
        .I5(s_axi_bready),
        .O(\FSM_sequential_axi_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FE000E)) 
    \FSM_sequential_axi_state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_arvalid),
        .I2(axi_state[0]),
        .I3(axi_state[1]),
        .I4(s_axi_wvalid),
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
  FDCE \red_reg_reg[6] 
       (.C(vga_clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(1'b1),
        .Q(red));
  LUT5 #(
    .INIT(32'h0FF40004)) 
    s_axi_arready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_arvalid),
        .I2(axi_state[0]),
        .I3(axi_state[1]),
        .I4(s_axi_arready),
        .O(s_axi_arready_i_1_n_0));
  FDCE s_axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_arready_i_1_n_0),
        .Q(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \s_axi_rdata[31]_i_1 
       (.I0(axi_state[1]),
        .I1(axi_state[0]),
        .I2(s_axi_rdata),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  FDCE \s_axi_rdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(\s_axi_rdata[31]_i_1_n_0 ),
        .Q(s_axi_rdata));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7C40)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(axi_state[0]),
        .I2(axi_state[1]),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_1_n_0));
  FDCE s_axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid));
  LUT4 #(
    .INIT(16'hAA08)) 
    s_axi_wready_i_1
       (.I0(axi_state[0]),
        .I1(s_axi_wvalid),
        .I2(axi_state[1]),
        .I3(s_axi_wready),
        .O(s_axi_wready_i_1_n_0));
  FDCE s_axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axi_awready_i_2_n_0),
        .D(s_axi_wready_i_1_n_0),
        .Q(s_axi_wready));
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
