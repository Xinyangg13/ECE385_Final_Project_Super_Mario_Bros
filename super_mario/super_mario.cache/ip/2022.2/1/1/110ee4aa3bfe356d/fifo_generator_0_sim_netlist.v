// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Dec  8 15:36:01 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 111360)
`pragma protect data_block
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
`pragma protect end_protected
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
