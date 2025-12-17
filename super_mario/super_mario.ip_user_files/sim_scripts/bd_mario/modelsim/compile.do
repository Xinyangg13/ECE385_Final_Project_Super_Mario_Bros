vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_10
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_crossbar_v2_1_28
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_17
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/mdm_v3_2_23
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_31
vlib modelsim_lib/msim/axi_timer_v2_0_29
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_29
vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/lib_fifo_v1_0_16
vlib modelsim_lib/msim/axi_quad_spi_v3_2_26
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27

vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_10 modelsim_lib/msim/microblaze_v11_0_10
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 modelsim_lib/msim/axi_crossbar_v2_1_28
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 modelsim_lib/msim/axi_intc_v4_1_17
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap mdm_v3_2_23 modelsim_lib/msim/mdm_v3_2_23
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_31 modelsim_lib/msim/axi_uartlite_v2_0_31
vmap axi_timer_v2_0_29 modelsim_lib/msim/axi_timer_v2_0_29
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 modelsim_lib/msim/axi_gpio_v2_0_29
vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap lib_fifo_v1_0_16 modelsim_lib/msim/lib_fifo_v1_0_16
vmap axi_quad_spi_v3_2_26 modelsim_lib/msim/axi_quad_spi_v3_2_26
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/vivado1/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_10  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/1f7b/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_microblaze_0_0/sim/bd_mario_microblaze_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
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

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../bd/bd_mario/ip/bd_mario_xbar_0/sim/bd_mario_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_microblaze_0_axi_intc_0/sim/bd_mario_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_4  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../bd/bd_mario/ip/bd_mario_microblaze_0_xlconcat_0/sim/bd_mario_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_23  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_mdm_1_0/sim/bd_mario_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_rst_mig_7series_0_83M_0/sim/bd_mario_rst_mig_7series_0_83M_0.vhd" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_31  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/67a1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_axi_uartlite_0_0/sim/bd_mario_axi_uartlite_0_0.vhd" \

vcom -work axi_timer_v2_0_29  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/22b2/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_axi_timer_0_0/sim/bd_mario_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_4  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_axi_gpio_0_0/sim/bd_mario_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../bd/bd_mario/ip/bd_mario_clk_wiz_0_0/bd_mario_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/bd_mario/ip/bd_mario_clk_wiz_0_0/bd_mario_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/bd_mario/ip/bd_mario_rst_clk_wiz_0_124M_1/sim/bd_mario_rst_clk_wiz_0_124M_1.vhd" \

vlog -work dist_mem_gen_v8_0_13  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_fifo_v1_0_16  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_26  -93  \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/75b9/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
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

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../bd/bd_mario/sim/bd_mario.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/ec67/hdl" "+incdir+../../../../super_mario.gen/sources_1/bd/bd_mario/ipshared/7698" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_7/sim/bd_mario_auto_pc_7.v" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_0/sim/bd_mario_auto_pc_0.v" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_1/sim/bd_mario_auto_pc_1.v" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_2/sim/bd_mario_auto_pc_2.v" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_3/sim/bd_mario_auto_pc_3.v" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_4/sim/bd_mario_auto_pc_4.v" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_5/sim/bd_mario_auto_pc_5.v" \
"../../../bd/bd_mario/ip/bd_mario_auto_pc_6/sim/bd_mario_auto_pc_6.v" \

vlog -work xil_defaultlib \
"glbl.v"

