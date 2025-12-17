// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 21 01:40:57 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_mario_dvi_encoder_0_0_sim_netlist.v
// Design      : bd_mario_dvi_encoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_mario_dvi_encoder_0_0,simple_dvi_encoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "simple_dvi_encoder,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pix_clk,
    pix_clkx5,
    reset_n,
    red,
    green,
    blue,
    hsync,
    vsync,
    vde,
    tmds_data_p,
    tmds_data_n,
    tmds_clk_p,
    tmds_clk_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pix_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pix_clk, FREQ_HZ 25179755, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input pix_clk;
  input pix_clkx5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input [7:0]red;
  input [7:0]green;
  input [7:0]blue;
  input hsync;
  input vsync;
  input vde;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds DATA_P" *) output [2:0]tmds_data_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds DATA_N" *) output [2:0]tmds_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds CLK_P" *) output tmds_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 tmds CLK_N" *) output tmds_clk_n;

  wire [7:0]blue;
  wire [7:0]green;
  wire hsync;
  wire pix_clk;
  wire pix_clkx5;
  wire [7:0]red;
  wire reset_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire tmds_clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire tmds_clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]tmds_data_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]tmds_data_p;
  wire vde;
  wire vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dvi_encoder inst
       (.blue(blue),
        .green(green),
        .hsync(hsync),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .red(red),
        .reset_n(reset_n),
        .tmds_clk_n(tmds_clk_n),
        .tmds_clk_p(tmds_clk_p),
        .tmds_data_n(tmds_data_n),
        .tmds_data_p(tmds_data_p),
        .vde(vde),
        .vsync(vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dvi_encoder
   (tmds_data_p,
    tmds_data_n,
    tmds_clk_p,
    tmds_clk_n,
    red,
    vde,
    green,
    blue,
    pix_clkx5,
    pix_clk,
    hsync,
    vsync,
    reset_n);
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  output tmds_clk_p;
  output tmds_clk_n;
  input [7:0]red;
  input vde;
  input [7:0]green;
  input [7:0]blue;
  input pix_clkx5;
  input pix_clk;
  input hsync;
  input vsync;
  input reset_n;

  wire RST0;
  wire [7:0]blue;
  wire [7:0]green;
  wire hsync;
  wire pix_clk;
  wire pix_clkx5;
  wire [7:0]red;
  wire reset_n;
  wire \serialize[0].serial_data ;
  wire \serialize[1].serial_data ;
  wire \serialize[2].serial_data ;
  wire [9:0]tmds_blue;
  wire tmds_clk_n;
  wire tmds_clk_p;
  wire tmds_clk_serial;
  wire [2:0]tmds_data_n;
  wire [2:0]tmds_data_p;
  wire [9:0]tmds_green;
  wire [9:0]tmds_red;
  wire vde;
  wire vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer clk_ser
       (.SR(RST0),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .tmds_clk_serial(tmds_clk_serial));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder encode_blue
       (.Q(tmds_blue),
        .SR(RST0),
        .blue(blue),
        .hsync(hsync),
        .pix_clk(pix_clk),
        .reset_n(reset_n),
        .vde(vde),
        .vsync(vsync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_0 encode_green
       (.Q(tmds_green),
        .SR(RST0),
        .green(green),
        .pix_clk(pix_clk),
        .vde(vde));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_1 encode_red
       (.Q(tmds_red),
        .SR(RST0),
        .pix_clk(pix_clk),
        .red(red),
        .vde(vde));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS obufds_clk
       (.I(tmds_clk_serial),
        .O(tmds_clk_p),
        .OB(tmds_clk_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \serialize[0].obufds_inst 
       (.I(\serialize[0].serial_data ),
        .O(tmds_data_p[0]),
        .OB(tmds_data_n[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_2 \serialize[0].ser 
       (.Q(tmds_blue),
        .SR(RST0),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .\serialize[0].serial_data (\serialize[0].serial_data ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \serialize[1].obufds_inst 
       (.I(\serialize[1].serial_data ),
        .O(tmds_data_p[1]),
        .OB(tmds_data_n[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_3 \serialize[1].ser 
       (.Q(tmds_green),
        .SR(RST0),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .\serialize[1].serial_data (\serialize[1].serial_data ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \serialize[2].obufds_inst 
       (.I(\serialize[2].serial_data ),
        .O(tmds_data_p[2]),
        .OB(tmds_data_n[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_4 \serialize[2].ser 
       (.Q(tmds_red),
        .SR(RST0),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .\serialize[2].serial_data (\serialize[2].serial_data ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder
   (SR,
    Q,
    blue,
    hsync,
    vsync,
    vde,
    reset_n,
    pix_clk);
  output [0:0]SR;
  output [9:0]Q;
  input [7:0]blue;
  input hsync;
  input vsync;
  input vde;
  input reset_n;
  input pix_clk;

  wire [9:0]Q;
  wire [0:0]SR;
  wire [7:0]blue;
  wire hsync;
  wire pix_clk;
  wire reset_n;
  wire \tmds_out[0]_i_1__1_n_0 ;
  wire \tmds_out[1]_i_1__1_n_0 ;
  wire \tmds_out[2]_i_1__1_n_0 ;
  wire \tmds_out[3]_i_1__1_n_0 ;
  wire \tmds_out[4]_i_1__1_n_0 ;
  wire \tmds_out[5]_i_1__1_n_0 ;
  wire \tmds_out[6]_i_1_n_0 ;
  wire \tmds_out[6]_i_2_n_0 ;
  wire \tmds_out[7]_i_1__1_n_0 ;
  wire \tmds_out[7]_i_2__1_n_0 ;
  wire \tmds_out[8]_i_1_n_0 ;
  wire \tmds_out[8]_i_2__1_n_0 ;
  wire \tmds_out[9]_i_1__1_n_0 ;
  wire \tmds_out[9]_i_2__1_n_0 ;
  wire \tmds_out[9]_i_3__1_n_0 ;
  wire \tmds_out[9]_i_4__1_n_0 ;
  wire \tmds_out[9]_i_5__1_n_0 ;
  wire \tmds_out[9]_i_6_n_0 ;
  wire vde;
  wire vsync;

  LUT1 #(
    .INIT(2'h1)) 
    master_serdes_i_1
       (.I0(reset_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \tmds_out[0]_i_1__1 
       (.I0(\tmds_out[9]_i_2__1_n_0 ),
        .I1(vde),
        .I2(hsync),
        .O(\tmds_out[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \tmds_out[1]_i_1__1 
       (.I0(blue[0]),
        .I1(\tmds_out[9]_i_2__1_n_0 ),
        .I2(vde),
        .I3(hsync),
        .O(\tmds_out[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h606F)) 
    \tmds_out[2]_i_1__1 
       (.I0(blue[0]),
        .I1(blue[1]),
        .I2(vde),
        .I3(hsync),
        .O(\tmds_out[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2EE2E22EE22E2EE2)) 
    \tmds_out[3]_i_1__1 
       (.I0(hsync),
        .I1(vde),
        .I2(\tmds_out[9]_i_2__1_n_0 ),
        .I3(blue[0]),
        .I4(blue[1]),
        .I5(blue[2]),
        .O(\tmds_out[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h699600006996FFFF)) 
    \tmds_out[4]_i_1__1 
       (.I0(blue[0]),
        .I1(blue[1]),
        .I2(blue[2]),
        .I3(blue[3]),
        .I4(vde),
        .I5(hsync),
        .O(\tmds_out[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3CC3AAAA)) 
    \tmds_out[5]_i_1__1 
       (.I0(hsync),
        .I1(blue[4]),
        .I2(\tmds_out[9]_i_2__1_n_0 ),
        .I3(\tmds_out[6]_i_2_n_0 ),
        .I4(vde),
        .O(\tmds_out[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h3CC35555)) 
    \tmds_out[6]_i_1 
       (.I0(hsync),
        .I1(blue[5]),
        .I2(blue[4]),
        .I3(\tmds_out[6]_i_2_n_0 ),
        .I4(vde),
        .O(\tmds_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \tmds_out[6]_i_2 
       (.I0(blue[0]),
        .I1(blue[1]),
        .I2(blue[2]),
        .I3(blue[3]),
        .O(\tmds_out[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \tmds_out[7]_i_1__1 
       (.I0(blue[6]),
        .I1(\tmds_out[7]_i_2__1_n_0 ),
        .I2(\tmds_out[9]_i_2__1_n_0 ),
        .I3(vde),
        .I4(hsync),
        .O(\tmds_out[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \tmds_out[7]_i_2__1 
       (.I0(blue[5]),
        .I1(blue[4]),
        .I2(blue[3]),
        .I3(blue[2]),
        .I4(blue[1]),
        .I5(blue[0]),
        .O(\tmds_out[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h966900009669FFFF)) 
    \tmds_out[8]_i_1 
       (.I0(\tmds_out[8]_i_2__1_n_0 ),
        .I1(blue[1]),
        .I2(blue[2]),
        .I3(blue[3]),
        .I4(vde),
        .I5(hsync),
        .O(\tmds_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \tmds_out[8]_i_2__1 
       (.I0(blue[7]),
        .I1(blue[0]),
        .I2(blue[4]),
        .I3(blue[5]),
        .I4(blue[6]),
        .O(\tmds_out[8]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h55C3)) 
    \tmds_out[9]_i_1__1 
       (.I0(\tmds_out[9]_i_2__1_n_0 ),
        .I1(hsync),
        .I2(vsync),
        .I3(vde),
        .O(\tmds_out[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFFF7F2200AA22)) 
    \tmds_out[9]_i_2__1 
       (.I0(\tmds_out[9]_i_3__1_n_0 ),
        .I1(\tmds_out[9]_i_4__1_n_0 ),
        .I2(blue[0]),
        .I3(blue[7]),
        .I4(\tmds_out[9]_i_5__1_n_0 ),
        .I5(\tmds_out[9]_i_6_n_0 ),
        .O(\tmds_out[9]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \tmds_out[9]_i_3__1 
       (.I0(blue[3]),
        .I1(blue[2]),
        .I2(blue[1]),
        .I3(blue[6]),
        .I4(blue[5]),
        .I5(blue[4]),
        .O(\tmds_out[9]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \tmds_out[9]_i_4__1 
       (.I0(blue[6]),
        .I1(blue[5]),
        .I2(blue[4]),
        .O(\tmds_out[9]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \tmds_out[9]_i_5__1 
       (.I0(blue[3]),
        .I1(blue[2]),
        .I2(blue[1]),
        .O(\tmds_out[9]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \tmds_out[9]_i_6 
       (.I0(blue[3]),
        .I1(blue[2]),
        .I2(blue[1]),
        .I3(blue[6]),
        .I4(blue[5]),
        .I5(blue[4]),
        .O(\tmds_out[9]_i_6_n_0 ));
  FDRE \tmds_out_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \tmds_out_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \tmds_out_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \tmds_out_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \tmds_out_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \tmds_out_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \tmds_out_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \tmds_out_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \tmds_out_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \tmds_out_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_0
   (Q,
    green,
    vde,
    SR,
    pix_clk);
  output [9:0]Q;
  input [7:0]green;
  input vde;
  input [0:0]SR;
  input pix_clk;

  wire [9:0]Q;
  wire [0:0]SR;
  wire [7:0]green;
  wire pix_clk;
  wire \tmds_out[0]_i_1__0_n_0 ;
  wire \tmds_out[1]_i_1__0_n_0 ;
  wire \tmds_out[2]_i_1__0_n_0 ;
  wire \tmds_out[3]_i_1__0_n_0 ;
  wire \tmds_out[4]_i_1__0_n_0 ;
  wire \tmds_out[5]_i_1__0_n_0 ;
  wire \tmds_out[6]_i_1__1_n_0 ;
  wire \tmds_out[6]_i_2__1_n_0 ;
  wire \tmds_out[7]_i_1__0_n_0 ;
  wire \tmds_out[7]_i_2__0_n_0 ;
  wire \tmds_out[8]_i_1__1_n_0 ;
  wire \tmds_out[8]_i_2__0_n_0 ;
  wire \tmds_out[9]_i_1__0_n_0 ;
  wire \tmds_out[9]_i_2__0_n_0 ;
  wire \tmds_out[9]_i_3__0_n_0 ;
  wire \tmds_out[9]_i_4__0_n_0 ;
  wire \tmds_out[9]_i_5__0_n_0 ;
  wire vde;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmds_out[0]_i_1__0 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2__0_n_0 ),
        .O(\tmds_out[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tmds_out[1]_i_1__0 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2__0_n_0 ),
        .I2(green[0]),
        .O(\tmds_out[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7D)) 
    \tmds_out[2]_i_1__0 
       (.I0(vde),
        .I1(green[1]),
        .I2(green[0]),
        .O(\tmds_out[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28828228)) 
    \tmds_out[3]_i_1__0 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2__0_n_0 ),
        .I2(green[1]),
        .I3(green[0]),
        .I4(green[2]),
        .O(\tmds_out[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7DD7D77D)) 
    \tmds_out[4]_i_1__0 
       (.I0(vde),
        .I1(green[3]),
        .I2(green[2]),
        .I3(green[1]),
        .I4(green[0]),
        .O(\tmds_out[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h82282882)) 
    \tmds_out[5]_i_1__0 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2__0_n_0 ),
        .I2(\tmds_out[6]_i_2__1_n_0 ),
        .I3(green[0]),
        .I4(green[4]),
        .O(\tmds_out[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hD77D7DD7)) 
    \tmds_out[6]_i_1__1 
       (.I0(vde),
        .I1(\tmds_out[6]_i_2__1_n_0 ),
        .I2(green[0]),
        .I3(green[4]),
        .I4(green[5]),
        .O(\tmds_out[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \tmds_out[6]_i_2__1 
       (.I0(green[3]),
        .I1(green[2]),
        .I2(green[1]),
        .O(\tmds_out[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \tmds_out[7]_i_1__0 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2__0_n_0 ),
        .I2(\tmds_out[7]_i_2__0_n_0 ),
        .I3(green[4]),
        .I4(green[5]),
        .I5(green[6]),
        .O(\tmds_out[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \tmds_out[7]_i_2__0 
       (.I0(green[0]),
        .I1(green[1]),
        .I2(green[2]),
        .I3(green[3]),
        .O(\tmds_out[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h9669FFFF)) 
    \tmds_out[8]_i_1__1 
       (.I0(green[3]),
        .I1(green[2]),
        .I2(green[1]),
        .I3(\tmds_out[8]_i_2__0_n_0 ),
        .I4(vde),
        .O(\tmds_out[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \tmds_out[8]_i_2__0 
       (.I0(green[7]),
        .I1(green[0]),
        .I2(green[4]),
        .I3(green[5]),
        .I4(green[6]),
        .O(\tmds_out[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmds_out[9]_i_1__0 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2__0_n_0 ),
        .O(\tmds_out[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h11005511BFEFFFBF)) 
    \tmds_out[9]_i_2__0 
       (.I0(\tmds_out[9]_i_3__0_n_0 ),
        .I1(\tmds_out[9]_i_4__0_n_0 ),
        .I2(green[0]),
        .I3(green[7]),
        .I4(\tmds_out[6]_i_2__1_n_0 ),
        .I5(\tmds_out[9]_i_5__0_n_0 ),
        .O(\tmds_out[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E817E8171717)) 
    \tmds_out[9]_i_3__0 
       (.I0(green[1]),
        .I1(green[2]),
        .I2(green[3]),
        .I3(green[6]),
        .I4(green[5]),
        .I5(green[4]),
        .O(\tmds_out[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \tmds_out[9]_i_4__0 
       (.I0(green[6]),
        .I1(green[5]),
        .I2(green[4]),
        .O(\tmds_out[9]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \tmds_out[9]_i_5__0 
       (.I0(green[1]),
        .I1(green[2]),
        .I2(green[3]),
        .I3(green[6]),
        .I4(green[5]),
        .I5(green[4]),
        .O(\tmds_out[9]_i_5__0_n_0 ));
  FDRE \tmds_out_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \tmds_out_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \tmds_out_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \tmds_out_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \tmds_out_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \tmds_out_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \tmds_out_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \tmds_out_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \tmds_out_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \tmds_out_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_1
   (Q,
    red,
    vde,
    SR,
    pix_clk);
  output [9:0]Q;
  input [7:0]red;
  input vde;
  input [0:0]SR;
  input pix_clk;

  wire [9:0]Q;
  wire [0:0]SR;
  wire pix_clk;
  wire [7:0]red;
  wire [9:0]tmds_out;
  wire \tmds_out[6]_i_2__0_n_0 ;
  wire \tmds_out[7]_i_2_n_0 ;
  wire \tmds_out[8]_i_1__0_n_0 ;
  wire \tmds_out[8]_i_2_n_0 ;
  wire \tmds_out[9]_i_2_n_0 ;
  wire \tmds_out[9]_i_3_n_0 ;
  wire \tmds_out[9]_i_4_n_0 ;
  wire \tmds_out[9]_i_5_n_0 ;
  wire vde;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmds_out[0]_i_1 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2_n_0 ),
        .O(tmds_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tmds_out[1]_i_1 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2_n_0 ),
        .I2(red[0]),
        .O(tmds_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h7D)) 
    \tmds_out[2]_i_1 
       (.I0(vde),
        .I1(red[1]),
        .I2(red[0]),
        .O(tmds_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h28828228)) 
    \tmds_out[3]_i_1 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2_n_0 ),
        .I2(red[1]),
        .I3(red[0]),
        .I4(red[2]),
        .O(tmds_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7DD7D77D)) 
    \tmds_out[4]_i_1 
       (.I0(vde),
        .I1(red[3]),
        .I2(red[2]),
        .I3(red[1]),
        .I4(red[0]),
        .O(tmds_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h82282882)) 
    \tmds_out[5]_i_1 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2_n_0 ),
        .I2(\tmds_out[6]_i_2__0_n_0 ),
        .I3(red[0]),
        .I4(red[4]),
        .O(tmds_out[5]));
  LUT5 #(
    .INIT(32'hD77D7DD7)) 
    \tmds_out[6]_i_1__0 
       (.I0(vde),
        .I1(\tmds_out[6]_i_2__0_n_0 ),
        .I2(red[0]),
        .I3(red[4]),
        .I4(red[5]),
        .O(tmds_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \tmds_out[6]_i_2__0 
       (.I0(red[3]),
        .I1(red[2]),
        .I2(red[1]),
        .O(\tmds_out[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \tmds_out[7]_i_1 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2_n_0 ),
        .I2(\tmds_out[7]_i_2_n_0 ),
        .I3(red[4]),
        .I4(red[5]),
        .I5(red[6]),
        .O(tmds_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \tmds_out[7]_i_2 
       (.I0(red[0]),
        .I1(red[1]),
        .I2(red[2]),
        .I3(red[3]),
        .O(\tmds_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h9669FFFF)) 
    \tmds_out[8]_i_1__0 
       (.I0(red[3]),
        .I1(red[2]),
        .I2(red[1]),
        .I3(\tmds_out[8]_i_2_n_0 ),
        .I4(vde),
        .O(\tmds_out[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \tmds_out[8]_i_2 
       (.I0(red[7]),
        .I1(red[0]),
        .I2(red[4]),
        .I3(red[5]),
        .I4(red[6]),
        .O(\tmds_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmds_out[9]_i_1 
       (.I0(vde),
        .I1(\tmds_out[9]_i_2_n_0 ),
        .O(tmds_out[9]));
  LUT6 #(
    .INIT(64'h4C4C04047FFFB7FF)) 
    \tmds_out[9]_i_2 
       (.I0(\tmds_out[6]_i_2__0_n_0 ),
        .I1(\tmds_out[9]_i_3_n_0 ),
        .I2(\tmds_out[9]_i_4_n_0 ),
        .I3(red[0]),
        .I4(red[7]),
        .I5(\tmds_out[9]_i_5_n_0 ),
        .O(\tmds_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \tmds_out[9]_i_3 
       (.I0(red[3]),
        .I1(red[2]),
        .I2(red[1]),
        .I3(red[6]),
        .I4(red[5]),
        .I5(red[4]),
        .O(\tmds_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \tmds_out[9]_i_4 
       (.I0(red[6]),
        .I1(red[5]),
        .I2(red[4]),
        .O(\tmds_out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \tmds_out[9]_i_5 
       (.I0(red[3]),
        .I1(red[2]),
        .I2(red[1]),
        .I3(red[6]),
        .I4(red[5]),
        .I5(red[4]),
        .O(\tmds_out[9]_i_5_n_0 ));
  FDRE \tmds_out_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \tmds_out_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \tmds_out_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \tmds_out_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \tmds_out_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \tmds_out_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \tmds_out_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \tmds_out_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \tmds_out_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\tmds_out[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \tmds_out_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(tmds_out[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer
   (tmds_clk_serial,
    pix_clkx5,
    pix_clk,
    SR);
  output tmds_clk_serial;
  input pix_clkx5;
  input pix_clk;
  input [0:0]SR;

  wire [0:0]SR;
  wire cascade1;
  wire cascade2;
  wire pix_clk;
  wire pix_clkx5;
  wire tmds_clk_serial;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(tmds_clk_serial),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(SR),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_slave_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_slave_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tmds_serializer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_2
   (\serialize[0].serial_data ,
    pix_clkx5,
    pix_clk,
    Q,
    SR);
  output \serialize[0].serial_data ;
  input pix_clkx5;
  input pix_clk;
  input [9:0]Q;
  input [0:0]SR;

  wire [9:0]Q;
  wire [0:0]SR;
  wire cascade1;
  wire cascade2;
  wire pix_clk;
  wire pix_clkx5;
  wire \serialize[0].serial_data ;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(\serialize[0].serial_data ),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(SR),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_slave_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_slave_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tmds_serializer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_3
   (\serialize[1].serial_data ,
    pix_clkx5,
    pix_clk,
    Q,
    SR);
  output \serialize[1].serial_data ;
  input pix_clkx5;
  input pix_clk;
  input [9:0]Q;
  input [0:0]SR;

  wire [9:0]Q;
  wire [0:0]SR;
  wire cascade1;
  wire cascade2;
  wire pix_clk;
  wire pix_clkx5;
  wire \serialize[1].serial_data ;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(\serialize[1].serial_data ),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(SR),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_slave_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_slave_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tmds_serializer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_4
   (\serialize[2].serial_data ,
    pix_clkx5,
    pix_clk,
    Q,
    SR);
  output \serialize[2].serial_data ;
  input pix_clkx5;
  input pix_clk;
  input [9:0]Q;
  input [0:0]SR;

  wire [9:0]Q;
  wire [0:0]SR;
  wire cascade1;
  wire cascade2;
  wire pix_clk;
  wire pix_clkx5;
  wire \serialize[2].serial_data ;
  wire NLW_master_serdes_OFB_UNCONNECTED;
  wire NLW_master_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_TFB_UNCONNECTED;
  wire NLW_master_serdes_TQ_UNCONNECTED;
  wire NLW_slave_serdes_OFB_UNCONNECTED;
  wire NLW_slave_serdes_OQ_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT1_UNCONNECTED;
  wire NLW_slave_serdes_SHIFTOUT2_UNCONNECTED;
  wire NLW_slave_serdes_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_TFB_UNCONNECTED;
  wire NLW_slave_serdes_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_OFB_UNCONNECTED),
        .OQ(\serialize[2].serial_data ),
        .RST(SR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_OQ_UNCONNECTED),
        .RST(SR),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_slave_serdes_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_slave_serdes_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_TQ_UNCONNECTED));
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
