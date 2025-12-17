//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Dec  1 15:36:15 2025
//Host        : Taurus running 64-bit major release  (build 9200)
//Command     : generate_target bd_mario_wrapper.bd
//Design      : bd_mario_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_mario_wrapper
   (DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    PixelClk_0,
    SYS_CLK_0_clk_n,
    SYS_CLK_0_clk_p,
    SerialClk_0,
    TMDS_Clk_n_0,
    TMDS_Clk_p_0,
    TMDS_Data_n_0,
    TMDS_Data_p_0,
    clk_out1_0,
    clk_out2_0,
    gpio_usb_int_tri_i,
    gpio_usb_keycode_0_tri_o,
    gpio_usb_keycode_1_tri_o,
    gpio_usb_rst_tri_o,
    init_calib_complete_0,
    sys_rst_0,
    uart_rtl_0_rxd,
    uart_rtl_0_txd,
    ui_addn_clk_1_0,
    usb_spi_miso,
    usb_spi_mosi,
    usb_spi_sclk,
    usb_spi_ss,
    vid_pData_0,
    vid_pHSync_0,
    vid_pVDE_0,
    vid_pVSync_0);
  output [12:0]DDR3_0_addr;
  output [2:0]DDR3_0_ba;
  output DDR3_0_cas_n;
  output [0:0]DDR3_0_ck_n;
  output [0:0]DDR3_0_ck_p;
  output [0:0]DDR3_0_cke;
  output [1:0]DDR3_0_dm;
  inout [15:0]DDR3_0_dq;
  inout [1:0]DDR3_0_dqs_n;
  inout [1:0]DDR3_0_dqs_p;
  output [0:0]DDR3_0_odt;
  output DDR3_0_ras_n;
  output DDR3_0_reset_n;
  output DDR3_0_we_n;
  input PixelClk_0;
  input SYS_CLK_0_clk_n;
  input SYS_CLK_0_clk_p;
  input SerialClk_0;
  output TMDS_Clk_n_0;
  output TMDS_Clk_p_0;
  output [2:0]TMDS_Data_n_0;
  output [2:0]TMDS_Data_p_0;
  output clk_out1_0;
  output clk_out2_0;
  input [0:0]gpio_usb_int_tri_i;
  output [31:0]gpio_usb_keycode_0_tri_o;
  output [31:0]gpio_usb_keycode_1_tri_o;
  output [0:0]gpio_usb_rst_tri_o;
  output init_calib_complete_0;
  input sys_rst_0;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;
  output ui_addn_clk_1_0;
  input usb_spi_miso;
  output usb_spi_mosi;
  output usb_spi_sclk;
  output [0:0]usb_spi_ss;
  input [23:0]vid_pData_0;
  input vid_pHSync_0;
  input vid_pVDE_0;
  input vid_pVSync_0;

  wire [12:0]DDR3_0_addr;
  wire [2:0]DDR3_0_ba;
  wire DDR3_0_cas_n;
  wire [0:0]DDR3_0_ck_n;
  wire [0:0]DDR3_0_ck_p;
  wire [0:0]DDR3_0_cke;
  wire [1:0]DDR3_0_dm;
  wire [15:0]DDR3_0_dq;
  wire [1:0]DDR3_0_dqs_n;
  wire [1:0]DDR3_0_dqs_p;
  wire [0:0]DDR3_0_odt;
  wire DDR3_0_ras_n;
  wire DDR3_0_reset_n;
  wire DDR3_0_we_n;
  wire PixelClk_0;
  wire SYS_CLK_0_clk_n;
  wire SYS_CLK_0_clk_p;
  wire SerialClk_0;
  wire TMDS_Clk_n_0;
  wire TMDS_Clk_p_0;
  wire [2:0]TMDS_Data_n_0;
  wire [2:0]TMDS_Data_p_0;
  wire clk_out1_0;
  wire clk_out2_0;
  wire [0:0]gpio_usb_int_tri_i;
  wire [31:0]gpio_usb_keycode_0_tri_o;
  wire [31:0]gpio_usb_keycode_1_tri_o;
  wire [0:0]gpio_usb_rst_tri_o;
  wire init_calib_complete_0;
  wire sys_rst_0;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;
  wire ui_addn_clk_1_0;
  wire usb_spi_miso;
  wire usb_spi_mosi;
  wire usb_spi_sclk;
  wire [0:0]usb_spi_ss;
  wire [23:0]vid_pData_0;
  wire vid_pHSync_0;
  wire vid_pVDE_0;
  wire vid_pVSync_0;

  bd_mario bd_mario_i
       (.DDR3_0_addr(DDR3_0_addr),
        .DDR3_0_ba(DDR3_0_ba),
        .DDR3_0_cas_n(DDR3_0_cas_n),
        .DDR3_0_ck_n(DDR3_0_ck_n),
        .DDR3_0_ck_p(DDR3_0_ck_p),
        .DDR3_0_cke(DDR3_0_cke),
        .DDR3_0_dm(DDR3_0_dm),
        .DDR3_0_dq(DDR3_0_dq),
        .DDR3_0_dqs_n(DDR3_0_dqs_n),
        .DDR3_0_dqs_p(DDR3_0_dqs_p),
        .DDR3_0_odt(DDR3_0_odt),
        .DDR3_0_ras_n(DDR3_0_ras_n),
        .DDR3_0_reset_n(DDR3_0_reset_n),
        .DDR3_0_we_n(DDR3_0_we_n),
        .PixelClk_0(PixelClk_0),
        .SYS_CLK_0_clk_n(SYS_CLK_0_clk_n),
        .SYS_CLK_0_clk_p(SYS_CLK_0_clk_p),
        .SerialClk_0(SerialClk_0),
        .TMDS_Clk_n_0(TMDS_Clk_n_0),
        .TMDS_Clk_p_0(TMDS_Clk_p_0),
        .TMDS_Data_n_0(TMDS_Data_n_0),
        .TMDS_Data_p_0(TMDS_Data_p_0),
        .clk_out1_0(clk_out1_0),
        .clk_out2_0(clk_out2_0),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_keycode_0_tri_o(gpio_usb_keycode_0_tri_o),
        .gpio_usb_keycode_1_tri_o(gpio_usb_keycode_1_tri_o),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .init_calib_complete_0(init_calib_complete_0),
        .sys_rst_0(sys_rst_0),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .ui_addn_clk_1_0(ui_addn_clk_1_0),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss),
        .vid_pData_0(vid_pData_0),
        .vid_pHSync_0(vid_pHSync_0),
        .vid_pVDE_0(vid_pVDE_0),
        .vid_pVSync_0(vid_pVSync_0));
endmodule
