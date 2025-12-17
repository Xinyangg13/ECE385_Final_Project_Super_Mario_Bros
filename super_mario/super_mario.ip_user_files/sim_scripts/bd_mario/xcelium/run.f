-makelib xcelium_lib/xpm -sv \
  "D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_10 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/1f7b/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_microblaze_0_0/sim/bd_mario_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/bd_mario_mig_7series_0_0_mig_sim.v" \
  "../../../bd/bd_mario/ip/bd_mario_mig_7series_0_0/bd_mario_mig_7series_0_0/user_design/rtl/bd_mario_mig_7series_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_xbar_0/sim/bd_mario_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_17 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_microblaze_0_axi_intc_0/sim/bd_mario_microblaze_0_axi_intc_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_microblaze_0_xlconcat_0/sim/bd_mario_microblaze_0_xlconcat_0.v" \
-endlib
-makelib xcelium_lib/mdm_v3_2_23 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_mdm_1_0/sim/bd_mario_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_rst_mig_7series_0_83M_0/sim/bd_mario_rst_mig_7series_0_83M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_31 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/67a1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_axi_uartlite_0_0/sim/bd_mario_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_29 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/22b2/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_axi_timer_0_0/sim/bd_mario_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_29 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_axi_gpio_0_0/sim/bd_mario_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_clk_wiz_0_0/bd_mario_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/bd_mario/ip/bd_mario_clk_wiz_0_0/bd_mario_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_rst_clk_wiz_0_124M_1/sim/bd_mario_rst_clk_wiz_0_124M_1.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_13 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_quad_spi_v3_2_26 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/75b9/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_spi_usb_0/sim/bd_mario_spi_usb_0.vhd" \
  "../../../bd/bd_mario/ip/bd_mario_axi_gpio_2_0/sim/bd_mario_axi_gpio_2_0.vhd" \
  "../../../bd/bd_mario/ip/bd_mario_axi_gpio_3_0/sim/bd_mario_axi_gpio_3_0.vhd" \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c873/src/DVI_Constants.vhd" \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c873/src/OutputSERDES.vhd" \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c873/src/TMDS_Encoder.vhd" \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c873/src/rgb2dvi.vhd" \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c873/src/ClockGen.vhd" \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c873/src/SyncAsync.vhd" \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c873/src/SyncAsyncReset.vhd" \
  "../../../bd/bd_mario/ip/bd_mario_rgb2dvi_0_0/sim/bd_mario_rgb2dvi_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/sim/bd_mario.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_7/sim/bd_mario_auto_pc_7.v" \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_0/sim/bd_mario_auto_pc_0.v" \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_1/sim/bd_mario_auto_pc_1.v" \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_2/sim/bd_mario_auto_pc_2.v" \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_3/sim/bd_mario_auto_pc_3.v" \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_4/sim/bd_mario_auto_pc_4.v" \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_5/sim/bd_mario_auto_pc_5.v" \
  "../../../bd/bd_mario/ip/bd_mario_auto_pc_6/sim/bd_mario_auto_pc_6.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

