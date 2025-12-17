-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Nov 19 18:17:42 2025
-- Host        : Taurus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_mario_sprite_engine_0_0_sim_netlist.vhdl
-- Design      : bd_mario_sprite_engine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine is
  port (
    \s_axi_rdata_reg[25]_0\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 4 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    h_count : in STD_LOGIC_VECTOR ( 9 downto 0 );
    v_count : in STD_LOGIC_VECTOR ( 9 downto 0 );
    video_active : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    vga_clk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine is
  signal \FSM_sequential_axi_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__4/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__4/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__4/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__4/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__4/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__4/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__4/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__4/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__4/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__4/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal axi_addr_reg : STD_LOGIC;
  signal \axi_addr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_addr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal axi_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \blue_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \blue_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \blue_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \blue_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \blue_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \green_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \green_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \green_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \green_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \green_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \green_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \green_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \green_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal p_2_in : STD_LOGIC_VECTOR ( 6 to 6 );
  signal red_reg3 : STD_LOGIC;
  signal red_reg36_in : STD_LOGIC;
  signal \red_reg3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \red_reg3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal red_reg3_carry_i_1_n_0 : STD_LOGIC;
  signal red_reg3_carry_i_2_n_0 : STD_LOGIC;
  signal red_reg3_carry_i_3_n_0 : STD_LOGIC;
  signal red_reg3_carry_i_4_n_0 : STD_LOGIC;
  signal red_reg3_carry_i_5_n_0 : STD_LOGIC;
  signal red_reg3_carry_i_6_n_0 : STD_LOGIC;
  signal red_reg3_carry_i_7_n_0 : STD_LOGIC;
  signal red_reg3_carry_i_8_n_0 : STD_LOGIC;
  signal red_reg3_carry_n_0 : STD_LOGIC;
  signal red_reg3_carry_n_1 : STD_LOGIC;
  signal red_reg3_carry_n_2 : STD_LOGIC;
  signal red_reg3_carry_n_3 : STD_LOGIC;
  signal \red_reg3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \red_reg3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \red_reg3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \red_reg3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal red_reg5 : STD_LOGIC;
  signal red_reg54_in : STD_LOGIC;
  signal \red_reg5_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \red_reg5_carry__0_i_2_n_0\ : STD_LOGIC;
  signal red_reg5_carry_i_1_n_0 : STD_LOGIC;
  signal red_reg5_carry_i_2_n_0 : STD_LOGIC;
  signal red_reg5_carry_i_3_n_0 : STD_LOGIC;
  signal red_reg5_carry_i_4_n_0 : STD_LOGIC;
  signal red_reg5_carry_i_5_n_0 : STD_LOGIC;
  signal red_reg5_carry_i_6_n_0 : STD_LOGIC;
  signal red_reg5_carry_i_7_n_0 : STD_LOGIC;
  signal red_reg5_carry_i_8_n_0 : STD_LOGIC;
  signal red_reg5_carry_n_0 : STD_LOGIC;
  signal red_reg5_carry_n_1 : STD_LOGIC;
  signal red_reg5_carry_n_2 : STD_LOGIC;
  signal red_reg5_carry_n_3 : STD_LOGIC;
  signal \red_reg5_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \red_reg5_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \red_reg5_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \red_reg5_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \red_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \red_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \red_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal s_axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_rdata : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \s_axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready_i_1_n_0 : STD_LOGIC;
  signal sprite_enable_0 : STD_LOGIC;
  signal sprite_enable_0_4 : STD_LOGIC;
  signal sprite_enable_1 : STD_LOGIC;
  signal sprite_enable_1_5 : STD_LOGIC;
  signal sprite_enable_7 : STD_LOGIC;
  signal sprite_enable_7_3 : STD_LOGIC;
  signal sprite_enable_vga_0 : STD_LOGIC;
  signal sprite_enable_vga_7 : STD_LOGIC;
  signal sprite_id_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sprite_id_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sprite_id_1[7]_i_2_n_0\ : STD_LOGIC;
  signal sprite_id_7 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sprite_id_7[7]_i_2_n_0\ : STD_LOGIC;
  signal sprite_id_vga_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sprite_id_vga_7_reg_n_0_[0]\ : STD_LOGIC;
  signal \sprite_id_vga_7_reg_n_0_[1]\ : STD_LOGIC;
  signal \sprite_id_vga_7_reg_n_0_[2]\ : STD_LOGIC;
  signal \sprite_id_vga_7_reg_n_0_[3]\ : STD_LOGIC;
  signal \sprite_id_vga_7_reg_n_0_[4]\ : STD_LOGIC;
  signal \sprite_id_vga_7_reg_n_0_[5]\ : STD_LOGIC;
  signal \sprite_id_vga_7_reg_n_0_[6]\ : STD_LOGIC;
  signal \sprite_id_vga_7_reg_n_0_[7]\ : STD_LOGIC;
  signal sprite_x_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_x_0_2 : STD_LOGIC;
  signal sprite_x_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_x_1_1 : STD_LOGIC;
  signal sprite_x_7 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sprite_x_7[9]_i_2_n_0\ : STD_LOGIC;
  signal sprite_x_7_0 : STD_LOGIC;
  signal sprite_x_vga_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_x_vga_7 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_y_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_y_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_y_7 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_y_vga_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sprite_y_vga_7 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW__inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__3/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__3/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__4/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__4/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__4/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__5/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__5/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__5/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__5/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__6/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_red_reg3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_red_reg3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_red_reg3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_red_reg3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_red_reg3_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_red_reg3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_red_reg5_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_red_reg5_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_red_reg5_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_red_reg5_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_red_reg5_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_red_reg5_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_axi_state[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[0]\ : label is "AXI_IDLE:00,AXI_WRITE_RESP:10,AXI_READ_DATA:11,AXI_WRITE_DATA:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[1]\ : label is "AXI_IDLE:00,AXI_WRITE_RESP:10,AXI_READ_DATA:11,AXI_WRITE_DATA:01";
  attribute SOFT_HLUTNM of \axi_addr_reg[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_addr_reg[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_addr_reg[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_addr_reg[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \blue_reg[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \blue_reg[7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \green_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \green_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \green_reg[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \green_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of red_reg3_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \red_reg3_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \red_reg3_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \red_reg3_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of red_reg5_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \red_reg5_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \red_reg5_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \red_reg5_inferred__0/i__carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \red_reg[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \red_reg[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axi_awready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sprite_id_1[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sprite_id_7[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sprite_x_7[9]_i_2\ : label is "soft_lutpair11";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\FSM_sequential_axi_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F5030"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axi_wvalid,
      I2 => axi_state(0),
      I3 => axi_state(1),
      I4 => axi_addr_reg,
      O => \FSM_sequential_axi_state[0]_i_1_n_0\
    );
\FSM_sequential_axi_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FD0"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => axi_state(0),
      I2 => \FSM_sequential_axi_state[1]_i_2_n_0\,
      I3 => axi_state(1),
      O => \FSM_sequential_axi_state[1]_i_1_n_0\
    );
\FSM_sequential_axi_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCAAF000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_rready,
      I2 => s_axi_wvalid,
      I3 => axi_state(0),
      I4 => axi_state(1),
      I5 => axi_addr_reg,
      O => \FSM_sequential_axi_state[1]_i_2_n_0\
    );
\FSM_sequential_axi_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => \FSM_sequential_axi_state[0]_i_1_n_0\,
      Q => axi_state(0)
    );
\FSM_sequential_axi_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => \FSM_sequential_axi_state[1]_i_1_n_0\,
      Q => axi_state(1)
    );
\_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__3/i__carry_n_0\,
      CO(2) => \_inferred__3/i__carry_n_1\,
      CO(1) => \_inferred__3/i__carry_n_2\,
      CO(0) => \_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => h_count(3 downto 0),
      O(3 downto 0) => \NLW__inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i__carry_n_0\,
      CO(3) => \_inferred__3/i__carry__0_n_0\,
      CO(2) => \_inferred__3/i__carry__0_n_1\,
      CO(1) => \_inferred__3/i__carry__0_n_2\,
      CO(0) => \_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => sprite_x_vga_7(4),
      O(3 downto 0) => \NLW__inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\_inferred__3/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i__carry__0_n_0\,
      CO(3) => \NLW__inferred__3/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__3/i__carry__1_n_1\,
      CO(1) => \_inferred__3/i__carry__1_n_2\,
      CO(0) => \_inferred__3/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__1_i_1_n_0\,
      DI(0) => \i__carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW__inferred__3/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_3_n_0\,
      S(1) => \i__carry__1_i_4_n_0\,
      S(0) => \i__carry__1_i_5_n_0\
    );
\_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__4/i__carry_n_0\,
      CO(2) => \_inferred__4/i__carry_n_1\,
      CO(1) => \_inferred__4/i__carry_n_2\,
      CO(0) => \_inferred__4/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => v_count(3 downto 0),
      O(3 downto 0) => \NLW__inferred__4/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\_inferred__4/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__4/i__carry_n_0\,
      CO(3) => \_inferred__4/i__carry__0_n_0\,
      CO(2) => \_inferred__4/i__carry__0_n_1\,
      CO(1) => \_inferred__4/i__carry__0_n_2\,
      CO(0) => \_inferred__4/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__2_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => sprite_y_vga_7(4),
      O(3 downto 0) => \NLW__inferred__4/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4__0_n_0\,
      S(2) => \i__carry__0_i_5__0_n_0\,
      S(1) => \i__carry__0_i_6__0_n_0\,
      S(0) => \i__carry__0_i_7__0_n_0\
    );
\_inferred__4/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__4/i__carry__0_n_0\,
      CO(3) => \NLW__inferred__4/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__4/i__carry__1_n_1\,
      CO(1) => \_inferred__4/i__carry__1_n_2\,
      CO(0) => \_inferred__4/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__1_i_1__0_n_0\,
      DI(0) => \i__carry__1_i_2__0_n_0\,
      O(3 downto 0) => \NLW__inferred__4/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_3__0_n_0\,
      S(1) => \i__carry__1_i_4__0_n_0\,
      S(0) => \i__carry__1_i_5__0_n_0\
    );
\_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__5/i__carry_n_0\,
      CO(2) => \_inferred__5/i__carry_n_1\,
      CO(1) => \_inferred__5/i__carry_n_2\,
      CO(0) => \_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => h_count(3 downto 0),
      O(3 downto 0) => \NLW__inferred__5/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry_n_0\,
      CO(3) => \_inferred__5/i__carry__0_n_0\,
      CO(2) => \_inferred__5/i__carry__0_n_1\,
      CO(1) => \_inferred__5/i__carry__0_n_2\,
      CO(0) => \_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__3_n_0\,
      DI(2) => \i__carry__0_i_2__1_n_0\,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => sprite_x_vga_0(4),
      O(3 downto 0) => \NLW__inferred__5/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4__1_n_0\,
      S(2) => \i__carry__0_i_5__1_n_0\,
      S(1) => \i__carry__0_i_6__1_n_0\,
      S(0) => \i__carry__0_i_7__1_n_0\
    );
\_inferred__5/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__0_n_0\,
      CO(3) => \NLW__inferred__5/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__5/i__carry__1_n_1\,
      CO(1) => \_inferred__5/i__carry__1_n_2\,
      CO(0) => \_inferred__5/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__1_i_1__1_n_0\,
      DI(0) => \i__carry__1_i_2__1_n_0\,
      O(3 downto 0) => \NLW__inferred__5/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_3__1_n_0\,
      S(1) => \i__carry__1_i_4__1_n_0\,
      S(0) => \i__carry__1_i_5__1_n_0\
    );
\_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__6/i__carry_n_0\,
      CO(2) => \_inferred__6/i__carry_n_1\,
      CO(1) => \_inferred__6/i__carry_n_2\,
      CO(0) => \_inferred__6/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => v_count(3 downto 0),
      O(3 downto 0) => \NLW__inferred__6/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\_inferred__6/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry_n_0\,
      CO(3) => \_inferred__6/i__carry__0_n_0\,
      CO(2) => \_inferred__6/i__carry__0_n_1\,
      CO(1) => \_inferred__6/i__carry__0_n_2\,
      CO(0) => \_inferred__6/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__4_n_0\,
      DI(2) => \i__carry__0_i_2__3_n_0\,
      DI(1) => \i__carry__0_i_3__2_n_0\,
      DI(0) => sprite_y_vga_0(4),
      O(3 downto 0) => \NLW__inferred__6/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4__2_n_0\,
      S(2) => \i__carry__0_i_5__2_n_0\,
      S(1) => \i__carry__0_i_6__2_n_0\,
      S(0) => \i__carry__0_i_7__2_n_0\
    );
\_inferred__6/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry__0_n_0\,
      CO(3) => \NLW__inferred__6/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__6/i__carry__1_n_1\,
      CO(1) => \_inferred__6/i__carry__1_n_2\,
      CO(0) => \_inferred__6/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__1_i_1__2_n_0\,
      DI(0) => \i__carry__1_i_2__2_n_0\,
      O(3 downto 0) => \NLW__inferred__6/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_3__2_n_0\,
      S(1) => \i__carry__1_i_4__2_n_0\,
      S(0) => \i__carry__1_i_5__2_n_0\
    );
\axi_addr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awvalid,
      I2 => s_axi_araddr(0),
      O => \axi_addr_reg[2]_i_1_n_0\
    );
\axi_addr_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awvalid,
      I2 => s_axi_araddr(1),
      O => \axi_addr_reg[3]_i_1_n_0\
    );
\axi_addr_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awvalid,
      I2 => s_axi_araddr(2),
      O => \axi_addr_reg[4]_i_1_n_0\
    );
\axi_addr_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => axi_state(1),
      I1 => axi_state(0),
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      O => axi_addr_reg
    );
\axi_addr_reg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awvalid,
      I2 => s_axi_araddr(3),
      O => \axi_addr_reg[5]_i_2_n_0\
    );
\axi_addr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => axi_addr_reg,
      CLR => s_axi_awready_i_2_n_0,
      D => \axi_addr_reg[2]_i_1_n_0\,
      Q => p_0_in(0)
    );
\axi_addr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => axi_addr_reg,
      CLR => s_axi_awready_i_2_n_0,
      D => \axi_addr_reg[3]_i_1_n_0\,
      Q => p_0_in(1)
    );
\axi_addr_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => axi_addr_reg,
      CLR => s_axi_awready_i_2_n_0,
      D => \axi_addr_reg[4]_i_1_n_0\,
      Q => p_0_in(2)
    );
\axi_addr_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => axi_addr_reg,
      CLR => s_axi_awready_i_2_n_0,
      D => \axi_addr_reg[5]_i_2_n_0\,
      Q => p_0_in(3)
    );
\blue_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000EEEE0000"
    )
        port map (
      I0 => \green_reg[1]_i_2_n_0\,
      I1 => sprite_id_vga_0(0),
      I2 => \blue_reg[1]_i_2_n_0\,
      I3 => \red_reg[7]_i_3_n_0\,
      I4 => video_active,
      I5 => \red_reg[7]_i_2_n_0\,
      O => \blue_reg[1]_i_1_n_0\
    );
\blue_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \green_reg[1]_i_3_n_0\,
      I1 => \sprite_id_vga_7_reg_n_0_[0]\,
      O => \blue_reg[1]_i_2_n_0\
    );
\blue_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA0000"
    )
        port map (
      I0 => \green_reg[5]_i_2_n_0\,
      I1 => \sprite_id_vga_7_reg_n_0_[0]\,
      I2 => \red_reg[7]_i_2_n_0\,
      I3 => sprite_id_vga_0(0),
      I4 => video_active,
      O => \blue_reg[4]_i_1_n_0\
    );
\blue_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB88800000000"
    )
        port map (
      I0 => \blue_reg[7]_i_2_n_0\,
      I1 => \red_reg[7]_i_2_n_0\,
      I2 => sprite_id_vga_0(0),
      I3 => sprite_id_vga_0(1),
      I4 => \green_reg[5]_i_2_n_0\,
      I5 => video_active,
      O => \blue_reg[7]_i_1_n_0\
    );
\blue_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sprite_id_vga_7_reg_n_0_[0]\,
      I1 => \sprite_id_vga_7_reg_n_0_[1]\,
      O => \blue_reg[7]_i_2_n_0\
    );
\blue_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \blue_reg[1]_i_1_n_0\,
      Q => blue(0),
      R => '0'
    );
\blue_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => vga_clk,
      CE => '1',
      D => \blue_reg[4]_i_1_n_0\,
      Q => blue(1),
      S => p_1_in(6)
    );
\blue_reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => vga_clk,
      CE => '1',
      D => \blue_reg[7]_i_1_n_0\,
      Q => blue(2),
      S => p_1_in(6)
    );
\green_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => sprite_id_vga_0(1),
      I1 => \sprite_id_vga_7_reg_n_0_[1]\,
      I2 => \green_reg[1]_i_2_n_0\,
      I3 => \red_reg[7]_i_2_n_0\,
      I4 => \green_reg[1]_i_3_n_0\,
      O => \green_reg[1]_i_1_n_0\
    );
\green_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sprite_id_vga_0(6),
      I1 => sprite_id_vga_0(7),
      I2 => sprite_id_vga_0(4),
      I3 => sprite_id_vga_0(5),
      I4 => sprite_id_vga_0(3),
      I5 => sprite_id_vga_0(2),
      O => \green_reg[1]_i_2_n_0\
    );
\green_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sprite_id_vga_7_reg_n_0_[6]\,
      I1 => \sprite_id_vga_7_reg_n_0_[7]\,
      I2 => \sprite_id_vga_7_reg_n_0_[4]\,
      I3 => \sprite_id_vga_7_reg_n_0_[5]\,
      I4 => \sprite_id_vga_7_reg_n_0_[3]\,
      I5 => \sprite_id_vga_7_reg_n_0_[2]\,
      O => \green_reg[1]_i_3_n_0\
    );
\green_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB80000"
    )
        port map (
      I0 => \sprite_id_vga_7_reg_n_0_[0]\,
      I1 => \red_reg[7]_i_2_n_0\,
      I2 => sprite_id_vga_0(0),
      I3 => \green_reg[1]_i_1_n_0\,
      I4 => video_active,
      O => \green_reg[2]_i_1_n_0\
    );
\green_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAEAAAEAAAEA"
    )
        port map (
      I0 => \green_reg[5]_i_2_n_0\,
      I1 => sprite_id_vga_0(1),
      I2 => sprite_id_vga_0(0),
      I3 => \red_reg[7]_i_2_n_0\,
      I4 => \sprite_id_vga_7_reg_n_0_[0]\,
      I5 => \sprite_id_vga_7_reg_n_0_[1]\,
      O => \green_reg[5]_i_1_n_0\
    );
\green_reg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \green_reg[1]_i_3_n_0\,
      I1 => \red_reg[7]_i_2_n_0\,
      I2 => \green_reg[1]_i_2_n_0\,
      O => \green_reg[5]_i_2_n_0\
    );
\green_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \green_reg[1]_i_1_n_0\,
      I1 => sprite_id_vga_0(0),
      I2 => \red_reg[7]_i_2_n_0\,
      I3 => \sprite_id_vga_7_reg_n_0_[0]\,
      O => \green_reg[6]_i_1_n_0\
    );
\green_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \green_reg[1]_i_1_n_0\,
      I1 => video_active,
      O => \green_reg[7]_i_1_n_0\
    );
\green_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green_reg[1]_i_1_n_0\,
      Q => green(0),
      R => p_1_in(7)
    );
\green_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green_reg[2]_i_1_n_0\,
      Q => green(1),
      S => p_1_in(6)
    );
\green_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green_reg[5]_i_1_n_0\,
      Q => green(2),
      R => p_1_in(7)
    );
\green_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green_reg[6]_i_1_n_0\,
      Q => green(3),
      R => p_1_in(7)
    );
\green_reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green_reg[7]_i_1_n_0\,
      Q => green(4),
      S => p_1_in(6)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(9),
      I1 => sprite_x_vga_0(9),
      I2 => h_count(8),
      I3 => sprite_x_vga_0(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(9),
      I1 => sprite_y_vga_0(9),
      I2 => v_count(8),
      I3 => sprite_y_vga_0(8),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(6),
      I1 => sprite_x_vga_7(6),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(6),
      I1 => sprite_y_vga_7(6),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(6),
      I1 => sprite_x_vga_0(6),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(6),
      I1 => sprite_y_vga_0(6),
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(5),
      I1 => sprite_x_vga_7(5),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(5),
      I1 => sprite_y_vga_7(5),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(5),
      I1 => sprite_x_vga_0(5),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => h_count(8),
      I1 => sprite_x_vga_0(8),
      I2 => h_count(9),
      I3 => sprite_x_vga_0(9),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(5),
      I1 => sprite_y_vga_0(5),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(8),
      I1 => sprite_y_vga_0(8),
      I2 => v_count(9),
      I3 => sprite_y_vga_0(9),
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sprite_x_vga_7(4),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sprite_y_vga_7(4),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sprite_x_vga_0(4),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sprite_y_vga_0(4),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_7(6),
      I1 => h_count(6),
      I2 => h_count(7),
      I3 => sprite_x_vga_7(7),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_7(6),
      I1 => v_count(6),
      I2 => v_count(7),
      I3 => sprite_y_vga_7(7),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_0(6),
      I1 => h_count(6),
      I2 => h_count(7),
      I3 => sprite_x_vga_0(7),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_0(6),
      I1 => v_count(6),
      I2 => v_count(7),
      I3 => sprite_y_vga_0(7),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_7(5),
      I1 => h_count(5),
      I2 => h_count(6),
      I3 => sprite_x_vga_7(6),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_7(5),
      I1 => v_count(5),
      I2 => v_count(6),
      I3 => sprite_y_vga_7(6),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_0(5),
      I1 => h_count(5),
      I2 => h_count(6),
      I3 => sprite_x_vga_0(6),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_0(5),
      I1 => v_count(5),
      I2 => v_count(6),
      I3 => sprite_y_vga_0(6),
      O => \i__carry__0_i_5__2_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => h_count(5),
      I1 => sprite_x_vga_7(5),
      I2 => sprite_x_vga_7(4),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => v_count(5),
      I1 => sprite_y_vga_7(5),
      I2 => sprite_y_vga_7(4),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => h_count(5),
      I1 => sprite_x_vga_0(5),
      I2 => sprite_x_vga_0(4),
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry__0_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => v_count(5),
      I1 => sprite_y_vga_0(5),
      I2 => sprite_y_vga_0(4),
      O => \i__carry__0_i_6__2_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(4),
      I1 => sprite_x_vga_7(4),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count(4),
      I1 => sprite_y_vga_7(4),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(4),
      I1 => sprite_x_vga_0(4),
      O => \i__carry__0_i_7__1_n_0\
    );
\i__carry__0_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count(4),
      I1 => sprite_y_vga_0(4),
      O => \i__carry__0_i_7__2_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(8),
      I1 => sprite_x_vga_7(8),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(8),
      I1 => sprite_y_vga_7(8),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(8),
      I1 => sprite_x_vga_0(8),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(8),
      I1 => sprite_y_vga_0(8),
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(7),
      I1 => sprite_x_vga_7(7),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(7),
      I1 => sprite_y_vga_7(7),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(7),
      I1 => sprite_x_vga_0(7),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(7),
      I1 => sprite_y_vga_0(7),
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(9),
      I1 => sprite_x_vga_7(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(9),
      I1 => sprite_y_vga_7(9),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count(9),
      I1 => sprite_x_vga_0(9),
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(9),
      I1 => sprite_y_vga_0(9),
      O => \i__carry__1_i_3__2_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_7(8),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => sprite_x_vga_7(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_7(8),
      I1 => v_count(8),
      I2 => v_count(9),
      I3 => sprite_y_vga_7(9),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_0(8),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => sprite_x_vga_0(9),
      O => \i__carry__1_i_4__1_n_0\
    );
\i__carry__1_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_0(8),
      I1 => v_count(8),
      I2 => v_count(9),
      I3 => sprite_y_vga_0(9),
      O => \i__carry__1_i_4__2_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_7(7),
      I1 => h_count(7),
      I2 => h_count(8),
      I3 => sprite_x_vga_7(8),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_7(7),
      I1 => v_count(7),
      I2 => v_count(8),
      I3 => sprite_y_vga_7(8),
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_x_vga_0(7),
      I1 => h_count(7),
      I2 => h_count(8),
      I3 => sprite_x_vga_0(8),
      O => \i__carry__1_i_5__1_n_0\
    );
\i__carry__1_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => sprite_y_vga_0(7),
      I1 => v_count(7),
      I2 => v_count(8),
      I3 => sprite_y_vga_0(8),
      O => \i__carry__1_i_5__2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(7),
      I1 => sprite_x_vga_0(7),
      I2 => h_count(6),
      I3 => sprite_x_vga_0(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(7),
      I1 => sprite_y_vga_0(7),
      I2 => v_count(6),
      I3 => sprite_y_vga_0(6),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(3),
      I1 => sprite_x_vga_7(3),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(3),
      I1 => sprite_y_vga_7(3),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(3),
      I1 => sprite_x_vga_0(3),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(3),
      I1 => sprite_y_vga_0(3),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(5),
      I1 => sprite_x_vga_0(5),
      I2 => h_count(4),
      I3 => sprite_x_vga_0(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(5),
      I1 => sprite_y_vga_0(5),
      I2 => v_count(4),
      I3 => sprite_y_vga_0(4),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(2),
      I1 => sprite_x_vga_7(2),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(2),
      I1 => sprite_y_vga_7(2),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(2),
      I1 => sprite_x_vga_0(2),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(2),
      I1 => sprite_y_vga_0(2),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(3),
      I1 => sprite_x_vga_0(3),
      I2 => h_count(2),
      I3 => sprite_x_vga_0(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(3),
      I1 => sprite_y_vga_0(3),
      I2 => v_count(2),
      I3 => sprite_y_vga_0(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(1),
      I1 => sprite_x_vga_7(1),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(1),
      I1 => sprite_y_vga_7(1),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(1),
      I1 => sprite_x_vga_0(1),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(1),
      I1 => sprite_y_vga_0(1),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(1),
      I1 => sprite_x_vga_0(1),
      I2 => h_count(0),
      I3 => sprite_x_vga_0(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(1),
      I1 => sprite_y_vga_0(1),
      I2 => v_count(0),
      I3 => sprite_y_vga_0(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(0),
      I1 => sprite_x_vga_7(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(0),
      I1 => sprite_y_vga_7(0),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(0),
      I1 => sprite_x_vga_0(0),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(0),
      I1 => sprite_y_vga_0(0),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => h_count(6),
      I1 => sprite_x_vga_0(6),
      I2 => h_count(7),
      I3 => sprite_x_vga_0(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(6),
      I1 => sprite_y_vga_0(6),
      I2 => v_count(7),
      I3 => sprite_y_vga_0(7),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => h_count(4),
      I1 => sprite_x_vga_0(4),
      I2 => h_count(5),
      I3 => sprite_x_vga_0(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(4),
      I1 => sprite_y_vga_0(4),
      I2 => v_count(5),
      I3 => sprite_y_vga_0(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_x_vga_0(3),
      I1 => h_count(3),
      I2 => sprite_x_vga_0(2),
      I3 => h_count(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_y_vga_0(3),
      I1 => v_count(3),
      I2 => sprite_y_vga_0(2),
      I3 => v_count(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_x_vga_0(1),
      I1 => h_count(1),
      I2 => sprite_x_vga_0(0),
      I3 => h_count(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_y_vga_0(1),
      I1 => v_count(1),
      I2 => sprite_y_vga_0(0),
      I3 => v_count(0),
      O => \i__carry_i_8__0_n_0\
    );
red_reg3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => red_reg3_carry_n_0,
      CO(2) => red_reg3_carry_n_1,
      CO(1) => red_reg3_carry_n_2,
      CO(0) => red_reg3_carry_n_3,
      CYINIT => '1',
      DI(3) => red_reg3_carry_i_1_n_0,
      DI(2) => red_reg3_carry_i_2_n_0,
      DI(1) => red_reg3_carry_i_3_n_0,
      DI(0) => red_reg3_carry_i_4_n_0,
      O(3 downto 0) => NLW_red_reg3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => red_reg3_carry_i_5_n_0,
      S(2) => red_reg3_carry_i_6_n_0,
      S(1) => red_reg3_carry_i_7_n_0,
      S(0) => red_reg3_carry_i_8_n_0
    );
\red_reg3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => red_reg3_carry_n_0,
      CO(3 downto 1) => \NLW_red_reg3_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => red_reg3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \red_reg3_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_red_reg3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \red_reg3_carry__0_i_2_n_0\
    );
\red_reg3_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(9),
      I1 => sprite_y_vga_7(9),
      I2 => v_count(8),
      I3 => sprite_y_vga_7(8),
      O => \red_reg3_carry__0_i_1_n_0\
    );
\red_reg3_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(8),
      I1 => sprite_y_vga_7(8),
      I2 => v_count(9),
      I3 => sprite_y_vga_7(9),
      O => \red_reg3_carry__0_i_2_n_0\
    );
red_reg3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(7),
      I1 => sprite_y_vga_7(7),
      I2 => v_count(6),
      I3 => sprite_y_vga_7(6),
      O => red_reg3_carry_i_1_n_0
    );
red_reg3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(5),
      I1 => sprite_y_vga_7(5),
      I2 => v_count(4),
      I3 => sprite_y_vga_7(4),
      O => red_reg3_carry_i_2_n_0
    );
red_reg3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(3),
      I1 => sprite_y_vga_7(3),
      I2 => v_count(2),
      I3 => sprite_y_vga_7(2),
      O => red_reg3_carry_i_3_n_0
    );
red_reg3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_count(1),
      I1 => sprite_y_vga_7(1),
      I2 => v_count(0),
      I3 => sprite_y_vga_7(0),
      O => red_reg3_carry_i_4_n_0
    );
red_reg3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(6),
      I1 => sprite_y_vga_7(6),
      I2 => v_count(7),
      I3 => sprite_y_vga_7(7),
      O => red_reg3_carry_i_5_n_0
    );
red_reg3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(4),
      I1 => sprite_y_vga_7(4),
      I2 => v_count(5),
      I3 => sprite_y_vga_7(5),
      O => red_reg3_carry_i_6_n_0
    );
red_reg3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_y_vga_7(3),
      I1 => v_count(3),
      I2 => sprite_y_vga_7(2),
      I3 => v_count(2),
      O => red_reg3_carry_i_7_n_0
    );
red_reg3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_y_vga_7(1),
      I1 => v_count(1),
      I2 => sprite_y_vga_7(0),
      I3 => v_count(0),
      O => red_reg3_carry_i_8_n_0
    );
\red_reg3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \red_reg3_inferred__0/i__carry_n_0\,
      CO(2) => \red_reg3_inferred__0/i__carry_n_1\,
      CO(1) => \red_reg3_inferred__0/i__carry_n_2\,
      CO(0) => \red_reg3_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_red_reg3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\red_reg3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \red_reg3_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_red_reg3_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => red_reg36_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1__0_n_0\,
      O(3 downto 0) => \NLW_red_reg3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2__4_n_0\
    );
red_reg5_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => red_reg5_carry_n_0,
      CO(2) => red_reg5_carry_n_1,
      CO(1) => red_reg5_carry_n_2,
      CO(0) => red_reg5_carry_n_3,
      CYINIT => '1',
      DI(3) => red_reg5_carry_i_1_n_0,
      DI(2) => red_reg5_carry_i_2_n_0,
      DI(1) => red_reg5_carry_i_3_n_0,
      DI(0) => red_reg5_carry_i_4_n_0,
      O(3 downto 0) => NLW_red_reg5_carry_O_UNCONNECTED(3 downto 0),
      S(3) => red_reg5_carry_i_5_n_0,
      S(2) => red_reg5_carry_i_6_n_0,
      S(1) => red_reg5_carry_i_7_n_0,
      S(0) => red_reg5_carry_i_8_n_0
    );
\red_reg5_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => red_reg5_carry_n_0,
      CO(3 downto 1) => \NLW_red_reg5_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => red_reg5,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \red_reg5_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_red_reg5_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \red_reg5_carry__0_i_2_n_0\
    );
\red_reg5_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(9),
      I1 => sprite_x_vga_7(9),
      I2 => h_count(8),
      I3 => sprite_x_vga_7(8),
      O => \red_reg5_carry__0_i_1_n_0\
    );
\red_reg5_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => h_count(8),
      I1 => sprite_x_vga_7(8),
      I2 => h_count(9),
      I3 => sprite_x_vga_7(9),
      O => \red_reg5_carry__0_i_2_n_0\
    );
red_reg5_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(7),
      I1 => sprite_x_vga_7(7),
      I2 => h_count(6),
      I3 => sprite_x_vga_7(6),
      O => red_reg5_carry_i_1_n_0
    );
red_reg5_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(5),
      I1 => sprite_x_vga_7(5),
      I2 => h_count(4),
      I3 => sprite_x_vga_7(4),
      O => red_reg5_carry_i_2_n_0
    );
red_reg5_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(3),
      I1 => sprite_x_vga_7(3),
      I2 => h_count(2),
      I3 => sprite_x_vga_7(2),
      O => red_reg5_carry_i_3_n_0
    );
red_reg5_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(1),
      I1 => sprite_x_vga_7(1),
      I2 => h_count(0),
      I3 => sprite_x_vga_7(0),
      O => red_reg5_carry_i_4_n_0
    );
red_reg5_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => h_count(6),
      I1 => sprite_x_vga_7(6),
      I2 => h_count(7),
      I3 => sprite_x_vga_7(7),
      O => red_reg5_carry_i_5_n_0
    );
red_reg5_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => h_count(4),
      I1 => sprite_x_vga_7(4),
      I2 => h_count(5),
      I3 => sprite_x_vga_7(5),
      O => red_reg5_carry_i_6_n_0
    );
red_reg5_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_x_vga_7(3),
      I1 => h_count(3),
      I2 => sprite_x_vga_7(2),
      I3 => h_count(2),
      O => red_reg5_carry_i_7_n_0
    );
red_reg5_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sprite_x_vga_7(1),
      I1 => h_count(1),
      I2 => sprite_x_vga_7(0),
      I3 => h_count(0),
      O => red_reg5_carry_i_8_n_0
    );
\red_reg5_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \red_reg5_inferred__0/i__carry_n_0\,
      CO(2) => \red_reg5_inferred__0/i__carry_n_1\,
      CO(1) => \red_reg5_inferred__0/i__carry_n_2\,
      CO(0) => \red_reg5_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_red_reg5_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\red_reg5_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \red_reg5_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_red_reg5_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => red_reg54_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_red_reg5_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2__2_n_0\
    );
\red_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \green_reg[1]_i_1_n_0\,
      I1 => sprite_id_vga_0(0),
      I2 => \red_reg[7]_i_2_n_0\,
      I3 => \sprite_id_vga_7_reg_n_0_[0]\,
      O => p_2_in(6)
    );
\red_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => video_active,
      I1 => \red_reg[7]_i_2_n_0\,
      I2 => \red_reg[7]_i_3_n_0\,
      O => p_1_in(6)
    );
\red_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF470000"
    )
        port map (
      I0 => \sprite_id_vga_7_reg_n_0_[0]\,
      I1 => \red_reg[7]_i_2_n_0\,
      I2 => sprite_id_vga_0(0),
      I3 => \green_reg[1]_i_1_n_0\,
      I4 => video_active,
      O => \red_reg[6]_i_2_n_0\
    );
\red_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \red_reg[7]_i_2_n_0\,
      I1 => \red_reg[7]_i_3_n_0\,
      I2 => video_active,
      O => p_1_in(7)
    );
\red_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => sprite_enable_vga_0,
      I1 => \_inferred__6/i__carry__1_n_1\,
      I2 => \_inferred__5/i__carry__1_n_1\,
      I3 => red_reg54_in,
      I4 => red_reg36_in,
      O => \red_reg[7]_i_2_n_0\
    );
\red_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => sprite_enable_vga_7,
      I1 => \_inferred__4/i__carry__1_n_1\,
      I2 => \_inferred__3/i__carry__1_n_1\,
      I3 => red_reg5,
      I4 => red_reg3,
      O => \red_reg[7]_i_3_n_0\
    );
\red_reg_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => vga_clk,
      CE => '1',
      D => video_active,
      Q => red(0),
      S => p_1_in(6)
    );
\red_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => p_2_in(6),
      Q => red(1),
      R => p_1_in(7)
    );
\red_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => vga_clk,
      CE => '1',
      D => \red_reg[6]_i_2_n_0\,
      Q => red(2),
      S => p_1_in(6)
    );
\red_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => '1',
      Q => red(3),
      R => p_1_in(7)
    );
s_axi_arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF40004"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_arvalid,
      I2 => axi_state(1),
      I3 => axi_state(0),
      I4 => \^s_axi_arready\,
      O => s_axi_arready_i_1_n_0
    );
s_axi_arready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_arready_i_1_n_0,
      Q => \^s_axi_arready\
    );
s_axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => axi_state(1),
      I2 => s_axi_awvalid,
      I3 => axi_state(0),
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => s_axi_awready_i_2_n_0
    );
s_axi_awready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_awready_i_1_n_0,
      Q => \^s_axi_awready\
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => axi_state(0),
      I2 => axi_state(1),
      I3 => s_axi_bready,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(0),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[0]_i_1_n_0\
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(0),
      I1 => sprite_id_1(0),
      I2 => sprite_x_0(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(0),
      I1 => sprite_y_0(0),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[16]_i_1_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(1),
      I1 => sprite_y_0(1),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[17]_i_1_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(2),
      I1 => sprite_y_0(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[18]_i_1_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(3),
      I1 => sprite_y_0(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[19]_i_1_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[1]_i_1_n_0\
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(1),
      I1 => sprite_id_1(1),
      I2 => sprite_x_0(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(4),
      I1 => sprite_y_0(4),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[20]_i_1_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(5),
      I1 => sprite_y_0(5),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[21]_i_1_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(6),
      I1 => sprite_y_0(6),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[22]_i_1_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(7),
      I1 => sprite_y_0(7),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[23]_i_1_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(8),
      I1 => sprite_y_0(8),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_state(0),
      I1 => axi_state(1),
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_y_1(9),
      I1 => sprite_y_0(9),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[25]_i_2_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(2),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[2]_i_1_n_0\
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(2),
      I1 => sprite_id_1(2),
      I2 => sprite_x_0(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(2),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(3),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[3]_i_1_n_0\
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(3),
      I1 => sprite_id_1(3),
      I2 => sprite_x_0(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(3),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(4),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[4]_i_1_n_0\
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(4),
      I1 => sprite_id_1(4),
      I2 => sprite_x_0(4),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(4),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(5),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[5]_i_1_n_0\
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(5),
      I1 => sprite_id_1(5),
      I2 => sprite_x_0(5),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(5),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(6),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[6]_i_1_n_0\
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(6),
      I1 => sprite_id_1(6),
      I2 => sprite_x_0(6),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(6),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(7),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(7),
      I1 => sprite_id_1(7),
      I2 => sprite_x_0(7),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_id_0(7),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_rdata(8),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \s_axi_rdata[8]_i_1_n_0\
    );
\s_axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => sprite_x_1(8),
      I1 => sprite_enable_1,
      I2 => sprite_x_0(8),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sprite_enable_0,
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000AC"
    )
        port map (
      I0 => sprite_x_1(9),
      I1 => sprite_x_0(9),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \s_axi_rdata[9]_i_1_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[0]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(0)
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[16]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(10)
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[17]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(11)
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[18]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(12)
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[19]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(13)
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[1]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(1)
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[20]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(14)
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[21]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(15)
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[22]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(16)
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[23]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(17)
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(18)
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[25]_i_2_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(19)
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[2]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(2)
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[3]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(3)
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[4]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(4)
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[5]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(5)
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[6]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(6)
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[7]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(7)
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[8]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(8)
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s_axi_rdata[25]_i_1_n_0\,
      CLR => s_axi_awready_i_2_n_0,
      D => \s_axi_rdata[9]_i_1_n_0\,
      Q => \s_axi_rdata_reg[25]_0\(9)
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7C40"
    )
        port map (
      I0 => s_axi_rready,
      I1 => axi_state(1),
      I2 => axi_state(0),
      I3 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\
    );
s_axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => axi_state(1),
      I1 => s_axi_wvalid,
      I2 => axi_state(0),
      I3 => \^s_axi_wready\,
      O => s_axi_wready_i_1_n_0
    );
s_axi_wready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wready_i_1_n_0,
      Q => \^s_axi_wready\
    );
sprite_enable_0_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => sprite_enable_0
    );
sprite_enable_1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => sprite_enable_1
    );
sprite_enable_7_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => sprite_enable_7
    );
sprite_enable_vga_0_reg: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_enable_0,
      Q => sprite_enable_vga_0
    );
sprite_enable_vga_7_reg: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_enable_7,
      Q => sprite_enable_vga_7
    );
\sprite_id_0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => axi_state(0),
      I2 => axi_state(1),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \sprite_id_1[7]_i_2_n_0\,
      O => sprite_enable_0_4
    );
\sprite_id_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => sprite_id_0(0)
    );
\sprite_id_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => sprite_id_0(1)
    );
\sprite_id_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => sprite_id_0(2)
    );
\sprite_id_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => sprite_id_0(3)
    );
\sprite_id_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => sprite_id_0(4)
    );
\sprite_id_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => sprite_id_0(5)
    );
\sprite_id_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => sprite_id_0(6)
    );
\sprite_id_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_0_4,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => sprite_id_0(7)
    );
\sprite_id_1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \sprite_id_1[7]_i_2_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => axi_state(1),
      I4 => axi_state(0),
      I5 => s_axi_wvalid,
      O => sprite_enable_1_5
    );
\sprite_id_1[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      O => \sprite_id_1[7]_i_2_n_0\
    );
\sprite_id_1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => sprite_id_1(0)
    );
\sprite_id_1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => sprite_id_1(1)
    );
\sprite_id_1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => sprite_id_1(2)
    );
\sprite_id_1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => sprite_id_1(3)
    );
\sprite_id_1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => sprite_id_1(4)
    );
\sprite_id_1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => sprite_id_1(5)
    );
\sprite_id_1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => sprite_id_1(6)
    );
\sprite_id_1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_1_5,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => sprite_id_1(7)
    );
\sprite_id_7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \sprite_id_7[7]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => axi_state(1),
      I4 => axi_state(0),
      I5 => s_axi_wvalid,
      O => sprite_enable_7_3
    );
\sprite_id_7[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => \sprite_id_7[7]_i_2_n_0\
    );
\sprite_id_7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => sprite_id_7(0)
    );
\sprite_id_7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => sprite_id_7(1)
    );
\sprite_id_7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => sprite_id_7(2)
    );
\sprite_id_7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => sprite_id_7(3)
    );
\sprite_id_7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => sprite_id_7(4)
    );
\sprite_id_7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => sprite_id_7(5)
    );
\sprite_id_7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => sprite_id_7(6)
    );
\sprite_id_7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_enable_7_3,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => sprite_id_7(7)
    );
\sprite_id_vga_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(0),
      Q => sprite_id_vga_0(0)
    );
\sprite_id_vga_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(1),
      Q => sprite_id_vga_0(1)
    );
\sprite_id_vga_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(2),
      Q => sprite_id_vga_0(2)
    );
\sprite_id_vga_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(3),
      Q => sprite_id_vga_0(3)
    );
\sprite_id_vga_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(4),
      Q => sprite_id_vga_0(4)
    );
\sprite_id_vga_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(5),
      Q => sprite_id_vga_0(5)
    );
\sprite_id_vga_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(6),
      Q => sprite_id_vga_0(6)
    );
\sprite_id_vga_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_0(7),
      Q => sprite_id_vga_0(7)
    );
\sprite_id_vga_7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(0),
      Q => \sprite_id_vga_7_reg_n_0_[0]\
    );
\sprite_id_vga_7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(1),
      Q => \sprite_id_vga_7_reg_n_0_[1]\
    );
\sprite_id_vga_7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(2),
      Q => \sprite_id_vga_7_reg_n_0_[2]\
    );
\sprite_id_vga_7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(3),
      Q => \sprite_id_vga_7_reg_n_0_[3]\
    );
\sprite_id_vga_7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(4),
      Q => \sprite_id_vga_7_reg_n_0_[4]\
    );
\sprite_id_vga_7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(5),
      Q => \sprite_id_vga_7_reg_n_0_[5]\
    );
\sprite_id_vga_7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(6),
      Q => \sprite_id_vga_7_reg_n_0_[6]\
    );
\sprite_id_vga_7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_id_7(7),
      Q => \sprite_id_vga_7_reg_n_0_[7]\
    );
\sprite_x_0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => s_axi_wvalid,
      I3 => axi_state(0),
      I4 => axi_state(1),
      I5 => \sprite_id_1[7]_i_2_n_0\,
      O => sprite_x_0_2
    );
\sprite_x_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => sprite_x_0(0)
    );
\sprite_x_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => sprite_x_0(1)
    );
\sprite_x_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => sprite_x_0(2)
    );
\sprite_x_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => sprite_x_0(3)
    );
\sprite_x_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => sprite_x_0(4)
    );
\sprite_x_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => sprite_x_0(5)
    );
\sprite_x_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => sprite_x_0(6)
    );
\sprite_x_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => sprite_x_0(7)
    );
\sprite_x_0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => sprite_x_0(8)
    );
\sprite_x_0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => sprite_x_0(9)
    );
\sprite_x_1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => axi_state(0),
      I2 => axi_state(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \sprite_id_1[7]_i_2_n_0\,
      O => sprite_x_1_1
    );
\sprite_x_1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => sprite_x_1(0)
    );
\sprite_x_1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => sprite_x_1(1)
    );
\sprite_x_1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => sprite_x_1(2)
    );
\sprite_x_1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => sprite_x_1(3)
    );
\sprite_x_1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => sprite_x_1(4)
    );
\sprite_x_1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => sprite_x_1(5)
    );
\sprite_x_1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => sprite_x_1(6)
    );
\sprite_x_1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => sprite_x_1(7)
    );
\sprite_x_1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => sprite_x_1(8)
    );
\sprite_x_1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => sprite_x_1(9)
    );
\sprite_x_7[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => \sprite_x_7[9]_i_2_n_0\,
      I3 => axi_state(1),
      I4 => axi_state(0),
      I5 => s_axi_wvalid,
      O => sprite_x_7_0
    );
\sprite_x_7[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => \sprite_x_7[9]_i_2_n_0\
    );
\sprite_x_7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(0),
      Q => sprite_x_7(0)
    );
\sprite_x_7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(1),
      Q => sprite_x_7(1)
    );
\sprite_x_7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(2),
      Q => sprite_x_7(2)
    );
\sprite_x_7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(3),
      Q => sprite_x_7(3)
    );
\sprite_x_7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(4),
      Q => sprite_x_7(4)
    );
\sprite_x_7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(5),
      Q => sprite_x_7(5)
    );
\sprite_x_7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(6),
      Q => sprite_x_7(6)
    );
\sprite_x_7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(7),
      Q => sprite_x_7(7)
    );
\sprite_x_7_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(8),
      Q => sprite_x_7(8)
    );
\sprite_x_7_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(9),
      Q => sprite_x_7(9)
    );
\sprite_x_vga_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(0),
      Q => sprite_x_vga_0(0)
    );
\sprite_x_vga_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(1),
      Q => sprite_x_vga_0(1)
    );
\sprite_x_vga_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(2),
      Q => sprite_x_vga_0(2)
    );
\sprite_x_vga_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(3),
      Q => sprite_x_vga_0(3)
    );
\sprite_x_vga_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(4),
      Q => sprite_x_vga_0(4)
    );
\sprite_x_vga_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(5),
      Q => sprite_x_vga_0(5)
    );
\sprite_x_vga_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(6),
      Q => sprite_x_vga_0(6)
    );
\sprite_x_vga_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(7),
      Q => sprite_x_vga_0(7)
    );
\sprite_x_vga_0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(8),
      Q => sprite_x_vga_0(8)
    );
\sprite_x_vga_0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_0(9),
      Q => sprite_x_vga_0(9)
    );
\sprite_x_vga_7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(0),
      Q => sprite_x_vga_7(0)
    );
\sprite_x_vga_7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(1),
      Q => sprite_x_vga_7(1)
    );
\sprite_x_vga_7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(2),
      Q => sprite_x_vga_7(2)
    );
\sprite_x_vga_7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(3),
      Q => sprite_x_vga_7(3)
    );
\sprite_x_vga_7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(4),
      Q => sprite_x_vga_7(4)
    );
\sprite_x_vga_7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(5),
      Q => sprite_x_vga_7(5)
    );
\sprite_x_vga_7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(6),
      Q => sprite_x_vga_7(6)
    );
\sprite_x_vga_7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(7),
      Q => sprite_x_vga_7(7)
    );
\sprite_x_vga_7_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(8),
      Q => sprite_x_vga_7(8)
    );
\sprite_x_vga_7_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_x_7(9),
      Q => sprite_x_vga_7(9)
    );
\sprite_y_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => sprite_y_0(0)
    );
\sprite_y_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => sprite_y_0(1)
    );
\sprite_y_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => sprite_y_0(2)
    );
\sprite_y_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => sprite_y_0(3)
    );
\sprite_y_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => sprite_y_0(4)
    );
\sprite_y_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => sprite_y_0(5)
    );
\sprite_y_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(16),
      Q => sprite_y_0(6)
    );
\sprite_y_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(17),
      Q => sprite_y_0(7)
    );
\sprite_y_0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(18),
      Q => sprite_y_0(8)
    );
\sprite_y_0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_0_2,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(19),
      Q => sprite_y_0(9)
    );
\sprite_y_1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => sprite_y_1(0)
    );
\sprite_y_1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => sprite_y_1(1)
    );
\sprite_y_1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => sprite_y_1(2)
    );
\sprite_y_1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => sprite_y_1(3)
    );
\sprite_y_1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => sprite_y_1(4)
    );
\sprite_y_1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => sprite_y_1(5)
    );
\sprite_y_1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(16),
      Q => sprite_y_1(6)
    );
\sprite_y_1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(17),
      Q => sprite_y_1(7)
    );
\sprite_y_1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(18),
      Q => sprite_y_1(8)
    );
\sprite_y_1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_1_1,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(19),
      Q => sprite_y_1(9)
    );
\sprite_y_7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(10),
      Q => sprite_y_7(0)
    );
\sprite_y_7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(11),
      Q => sprite_y_7(1)
    );
\sprite_y_7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(12),
      Q => sprite_y_7(2)
    );
\sprite_y_7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(13),
      Q => sprite_y_7(3)
    );
\sprite_y_7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(14),
      Q => sprite_y_7(4)
    );
\sprite_y_7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(15),
      Q => sprite_y_7(5)
    );
\sprite_y_7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(16),
      Q => sprite_y_7(6)
    );
\sprite_y_7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(17),
      Q => sprite_y_7(7)
    );
\sprite_y_7_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(18),
      Q => sprite_y_7(8)
    );
\sprite_y_7_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sprite_x_7_0,
      CLR => s_axi_awready_i_2_n_0,
      D => s_axi_wdata(19),
      Q => sprite_y_7(9)
    );
\sprite_y_vga_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(0),
      Q => sprite_y_vga_0(0)
    );
\sprite_y_vga_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(1),
      Q => sprite_y_vga_0(1)
    );
\sprite_y_vga_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(2),
      Q => sprite_y_vga_0(2)
    );
\sprite_y_vga_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(3),
      Q => sprite_y_vga_0(3)
    );
\sprite_y_vga_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(4),
      Q => sprite_y_vga_0(4)
    );
\sprite_y_vga_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(5),
      Q => sprite_y_vga_0(5)
    );
\sprite_y_vga_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(6),
      Q => sprite_y_vga_0(6)
    );
\sprite_y_vga_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(7),
      Q => sprite_y_vga_0(7)
    );
\sprite_y_vga_0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(8),
      Q => sprite_y_vga_0(8)
    );
\sprite_y_vga_0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_0(9),
      Q => sprite_y_vga_0(9)
    );
\sprite_y_vga_7_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(0),
      Q => sprite_y_vga_7(0)
    );
\sprite_y_vga_7_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(1),
      Q => sprite_y_vga_7(1)
    );
\sprite_y_vga_7_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(2),
      Q => sprite_y_vga_7(2)
    );
\sprite_y_vga_7_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(3),
      Q => sprite_y_vga_7(3)
    );
\sprite_y_vga_7_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(4),
      Q => sprite_y_vga_7(4)
    );
\sprite_y_vga_7_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(5),
      Q => sprite_y_vga_7(5)
    );
\sprite_y_vga_7_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(6),
      Q => sprite_y_vga_7(6)
    );
\sprite_y_vga_7_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(7),
      Q => sprite_y_vga_7(7)
    );
\sprite_y_vga_7_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(8),
      Q => sprite_y_vga_7(8)
    );
\sprite_y_vga_7_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vga_clk,
      CE => '1',
      CLR => s_axi_awready_i_2_n_0,
      D => sprite_y_7(9),
      Q => sprite_y_vga_7(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    vga_clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    h_count : in STD_LOGIC_VECTOR ( 9 downto 0 );
    v_count : in STD_LOGIC_VECTOR ( 9 downto 0 );
    video_active : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    red : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green : out STD_LOGIC_VECTOR ( 7 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_mario_sprite_engine_0_0,sprite_engine,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sprite_engine,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^blue\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^green\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^red\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 83333333, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_mario_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 83333333, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN bd_mario_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of vga_clk : signal is "xilinx.com:signal:clock:1.0 vga_clk CLK";
  attribute X_INTERFACE_PARAMETER of vga_clk : signal is "XIL_INTERFACENAME vga_clk, FREQ_HZ 25179755, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  blue(7) <= \^blue\(6);
  blue(6) <= \^blue\(6);
  blue(5) <= \^blue\(6);
  blue(4) <= \^blue\(4);
  blue(3) <= \^blue\(6);
  blue(2) <= \^blue\(6);
  blue(1) <= \^blue\(0);
  blue(0) <= \^blue\(0);
  green(7) <= \^green\(4);
  green(6) <= \^green\(0);
  green(5) <= \^green\(3);
  green(4 downto 0) <= \^green\(4 downto 0);
  red(7) <= \^red\(1);
  red(6) <= \^red\(4);
  red(5 downto 3) <= \^red\(5 downto 3);
  red(2) <= \^red\(4);
  red(1) <= \^red\(1);
  red(0) <= \^red\(1);
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25 downto 16) <= \^s_axi_rdata\(25 downto 16);
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9 downto 0) <= \^s_axi_rdata\(9 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine
     port map (
      blue(2) => \^blue\(6),
      blue(1) => \^blue\(4),
      blue(0) => \^blue\(0),
      clk => clk,
      green(4) => \^green\(4),
      green(3) => \^green\(0),
      green(2 downto 0) => \^green\(3 downto 1),
      h_count(9 downto 0) => h_count(9 downto 0),
      red(3) => \^red\(1),
      red(2) => \^red\(4),
      red(1) => \^red\(5),
      red(0) => \^red\(3),
      reset_n => reset_n,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      \s_axi_rdata_reg[25]_0\(19 downto 10) => \^s_axi_rdata\(25 downto 16),
      \s_axi_rdata_reg[25]_0\(9 downto 0) => \^s_axi_rdata\(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(19 downto 10) => s_axi_wdata(25 downto 16),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      v_count(9 downto 0) => v_count(9 downto 0),
      vga_clk => vga_clk,
      video_active => video_active
    );
end STRUCTURE;
