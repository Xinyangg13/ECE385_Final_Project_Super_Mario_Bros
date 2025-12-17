// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Dec  8 15:36:02 2025
// Host        : Taurus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Super_Mario/super_mario/super_mario.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
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
  fifo_generator_0_fifo_generator_v13_2_7 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
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
module fifo_generator_0_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single
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
module fifo_generator_0_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst
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
module fifo_generator_0_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 110928)
`pragma protect data_block
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
842cSThm
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
