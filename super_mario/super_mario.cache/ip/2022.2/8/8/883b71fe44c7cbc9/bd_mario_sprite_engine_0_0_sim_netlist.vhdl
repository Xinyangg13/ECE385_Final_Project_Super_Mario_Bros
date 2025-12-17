-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 20 17:11:56 2025
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
    s_axi_rdata : out STD_LOGIC_VECTOR ( 16 downto 0 );
    red : out STD_LOGIC_VECTOR ( 5 downto 0 );
    green : out STD_LOGIC_VECTOR ( 4 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    v_count : in STD_LOGIC_VECTOR ( 9 downto 0 );
    h_count : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    vga_clk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    video_active : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine is
  signal \_inferred__6/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__3_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__3_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__3_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__4_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__4_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__4_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__4_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__5_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__5_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__5_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__5_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry__6_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry__6_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry__6_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry__6_n_3\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__7/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__7/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__7/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__7/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__7/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__7/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__7/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__7/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__7/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__7/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__7/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__7/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__7/i__carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__7/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__7/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__7/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__7/i__carry_n_3\ : STD_LOGIC;
  signal \blue[5]_i_1_n_0\ : STD_LOGIC;
  signal \green[0]_i_1_n_0\ : STD_LOGIC;
  signal \green[2]_i_1_n_0\ : STD_LOGIC;
  signal \green[6]_i_1_n_0\ : STD_LOGIC;
  signal \green[7]_i_1_n_0\ : STD_LOGIC;
  signal \green[7]_i_2_n_0\ : STD_LOGIC;
  signal \green[7]_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in_mario1 : STD_LOGIC;
  signal \in_mario1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \in_mario1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \in_mario1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \in_mario1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \in_mario1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \in_mario1_carry__0_n_1\ : STD_LOGIC;
  signal \in_mario1_carry__0_n_2\ : STD_LOGIC;
  signal \in_mario1_carry__0_n_3\ : STD_LOGIC;
  signal in_mario1_carry_i_1_n_0 : STD_LOGIC;
  signal in_mario1_carry_i_2_n_0 : STD_LOGIC;
  signal in_mario1_carry_i_3_n_0 : STD_LOGIC;
  signal in_mario1_carry_i_4_n_0 : STD_LOGIC;
  signal in_mario1_carry_i_5_n_0 : STD_LOGIC;
  signal in_mario1_carry_i_6_n_0 : STD_LOGIC;
  signal in_mario1_carry_i_7_n_0 : STD_LOGIC;
  signal in_mario1_carry_i_8_n_0 : STD_LOGIC;
  signal in_mario1_carry_n_0 : STD_LOGIC;
  signal in_mario1_carry_n_1 : STD_LOGIC;
  signal in_mario1_carry_n_2 : STD_LOGIC;
  signal in_mario1_carry_n_3 : STD_LOGIC;
  signal in_mario22_in : STD_LOGIC;
  signal \in_mario2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \in_mario2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \in_mario2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \in_mario2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \in_mario2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \in_mario2_carry__0_n_1\ : STD_LOGIC;
  signal \in_mario2_carry__0_n_2\ : STD_LOGIC;
  signal \in_mario2_carry__0_n_3\ : STD_LOGIC;
  signal in_mario2_carry_i_1_n_0 : STD_LOGIC;
  signal in_mario2_carry_i_2_n_0 : STD_LOGIC;
  signal in_mario2_carry_i_3_n_0 : STD_LOGIC;
  signal in_mario2_carry_i_4_n_0 : STD_LOGIC;
  signal in_mario2_carry_i_5_n_0 : STD_LOGIC;
  signal in_mario2_carry_i_6_n_0 : STD_LOGIC;
  signal in_mario2_carry_i_7_n_0 : STD_LOGIC;
  signal in_mario2_carry_i_8_n_0 : STD_LOGIC;
  signal in_mario2_carry_n_0 : STD_LOGIC;
  signal in_mario2_carry_n_1 : STD_LOGIC;
  signal in_mario2_carry_n_2 : STD_LOGIC;
  signal in_mario2_carry_n_3 : STD_LOGIC;
  signal in_mario3 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \in_mario3__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__0_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__0_n_1\ : STD_LOGIC;
  signal \in_mario3__0_carry__0_n_2\ : STD_LOGIC;
  signal \in_mario3__0_carry__0_n_3\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_n_1\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_n_2\ : STD_LOGIC;
  signal \in_mario3__0_carry__1_n_3\ : STD_LOGIC;
  signal \in_mario3__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry__2_n_1\ : STD_LOGIC;
  signal \in_mario3__0_carry__2_n_2\ : STD_LOGIC;
  signal \in_mario3__0_carry__2_n_3\ : STD_LOGIC;
  signal \in_mario3__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry_n_0\ : STD_LOGIC;
  signal \in_mario3__0_carry_n_1\ : STD_LOGIC;
  signal \in_mario3__0_carry_n_2\ : STD_LOGIC;
  signal \in_mario3__0_carry_n_3\ : STD_LOGIC;
  signal \in_mario3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_1\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_2\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_3\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_4\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_5\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_6\ : STD_LOGIC;
  signal \in_mario3_carry__0_n_7\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_1\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_2\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_3\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_4\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_5\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_6\ : STD_LOGIC;
  signal \in_mario3_carry__1_n_7\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_1\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_2\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_3\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_4\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_5\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_6\ : STD_LOGIC;
  signal \in_mario3_carry__2_n_7\ : STD_LOGIC;
  signal \in_mario3_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \in_mario3_carry__3_n_2\ : STD_LOGIC;
  signal \in_mario3_carry__3_n_7\ : STD_LOGIC;
  signal in_mario3_carry_i_1_n_0 : STD_LOGIC;
  signal in_mario3_carry_i_2_n_0 : STD_LOGIC;
  signal in_mario3_carry_i_3_n_0 : STD_LOGIC;
  signal in_mario3_carry_i_4_n_0 : STD_LOGIC;
  signal in_mario3_carry_n_0 : STD_LOGIC;
  signal in_mario3_carry_n_1 : STD_LOGIC;
  signal in_mario3_carry_n_2 : STD_LOGIC;
  signal in_mario3_carry_n_3 : STD_LOGIC;
  signal in_mario3_carry_n_4 : STD_LOGIC;
  signal in_mario3_carry_n_5 : STD_LOGIC;
  signal in_mario3_carry_n_6 : STD_LOGIC;
  signal in_mario3_carry_n_7 : STD_LOGIC;
  signal is_brick : STD_LOGIC;
  signal \is_brick1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \is_brick1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \is_brick1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \is_brick1_carry__0_n_2\ : STD_LOGIC;
  signal \is_brick1_carry__0_n_3\ : STD_LOGIC;
  signal \is_brick1_carry__0_n_5\ : STD_LOGIC;
  signal is_brick1_carry_i_1_n_0 : STD_LOGIC;
  signal is_brick1_carry_i_2_n_0 : STD_LOGIC;
  signal is_brick1_carry_i_3_n_0 : STD_LOGIC;
  signal is_brick1_carry_i_4_n_0 : STD_LOGIC;
  signal is_brick1_carry_n_0 : STD_LOGIC;
  signal is_brick1_carry_n_1 : STD_LOGIC;
  signal is_brick1_carry_n_2 : STD_LOGIC;
  signal is_brick1_carry_n_3 : STD_LOGIC;
  signal mario_state : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mario_state_0 : STD_LOGIC;
  signal mario_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mario_x_2 : STD_LOGIC;
  signal mario_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mario_y_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal red1 : STD_LOGIC;
  signal \red[1]_i_1_n_0\ : STD_LOGIC;
  signal \red[4]_i_1_n_0\ : STD_LOGIC;
  signal \red[5]_i_1_n_0\ : STD_LOGIC;
  signal \red[6]_i_1_n_0\ : STD_LOGIC;
  signal \red[7]_i_10_n_0\ : STD_LOGIC;
  signal \red[7]_i_11_n_0\ : STD_LOGIC;
  signal \red[7]_i_12_n_0\ : STD_LOGIC;
  signal \red[7]_i_13_n_0\ : STD_LOGIC;
  signal \red[7]_i_14_n_0\ : STD_LOGIC;
  signal \red[7]_i_15_n_0\ : STD_LOGIC;
  signal \red[7]_i_16_n_0\ : STD_LOGIC;
  signal \red[7]_i_17_n_0\ : STD_LOGIC;
  signal \red[7]_i_2_n_0\ : STD_LOGIC;
  signal \red[7]_i_3_n_0\ : STD_LOGIC;
  signal \red[7]_i_4_n_0\ : STD_LOGIC;
  signal \red[7]_i_5_n_0\ : STD_LOGIC;
  signal \red[7]_i_6_n_0\ : STD_LOGIC;
  signal \red[7]_i_7_n_0\ : STD_LOGIC;
  signal \red[7]_i_8_n_0\ : STD_LOGIC;
  signal \red[7]_i_9_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal scroll_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \scroll_x[15]_i_2_n_0\ : STD_LOGIC;
  signal scroll_x_3 : STD_LOGIC;
  signal \NLW__inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__7/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__7/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__7/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__7/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__7/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__7/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_in_mario1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_in_mario1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_in_mario2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_in_mario2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_in_mario3__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_in_mario3__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_in_mario3_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_in_mario3_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_is_brick1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_is_brick1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_is_brick1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \green[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \green[6]_i_1\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of in_mario1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \in_mario1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of in_mario2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \in_mario2_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \in_mario3__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \in_mario3__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \in_mario3__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \in_mario3__0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of is_brick1_carry : label is 35;
  attribute ADDER_THRESHOLD of \is_brick1_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \red[7]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \red[7]_i_15\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \red[7]_i_17\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \red[7]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_i_1\ : label is "soft_lutpair3";
begin
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__6/i__carry_n_0\,
      CO(2) => \_inferred__6/i__carry_n_1\,
      CO(1) => \_inferred__6/i__carry_n_2\,
      CO(0) => \_inferred__6/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => h_count(3 downto 0),
      O(3 downto 0) => \NLW__inferred__6/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\_inferred__6/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry_n_0\,
      CO(3) => \_inferred__6/i__carry__0_n_0\,
      CO(2) => \_inferred__6/i__carry__0_n_1\,
      CO(1) => \_inferred__6/i__carry__0_n_2\,
      CO(0) => \_inferred__6/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => h_count(7 downto 4),
      O(3 downto 0) => \NLW__inferred__6/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\_inferred__6/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry__0_n_0\,
      CO(3) => \_inferred__6/i__carry__1_n_0\,
      CO(2) => \_inferred__6/i__carry__1_n_1\,
      CO(1) => \_inferred__6/i__carry__1_n_2\,
      CO(0) => \_inferred__6/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => h_count(9 downto 8),
      O(3 downto 0) => \NLW__inferred__6/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\_inferred__6/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry__1_n_0\,
      CO(3) => \_inferred__6/i__carry__2_n_0\,
      CO(2) => \_inferred__6/i__carry__2_n_1\,
      CO(1) => \_inferred__6/i__carry__2_n_2\,
      CO(0) => \_inferred__6/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__6/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\_inferred__6/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry__2_n_0\,
      CO(3) => \_inferred__6/i__carry__3_n_0\,
      CO(2) => \_inferred__6/i__carry__3_n_1\,
      CO(1) => \_inferred__6/i__carry__3_n_2\,
      CO(0) => \_inferred__6/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__6/i__carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \in_mario3_carry__3_n_2\,
      S(2) => \in_mario3_carry__3_n_2\,
      S(1) => \in_mario3_carry__3_n_2\,
      S(0) => \i__carry__3_i_1__0_n_0\
    );
\_inferred__6/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry__3_n_0\,
      CO(3) => \_inferred__6/i__carry__4_n_0\,
      CO(2) => \_inferred__6/i__carry__4_n_1\,
      CO(1) => \_inferred__6/i__carry__4_n_2\,
      CO(0) => \_inferred__6/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__6/i__carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \in_mario3_carry__3_n_2\,
      S(2) => \in_mario3_carry__3_n_2\,
      S(1) => \in_mario3_carry__3_n_2\,
      S(0) => \in_mario3_carry__3_n_2\
    );
\_inferred__6/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry__4_n_0\,
      CO(3) => \_inferred__6/i__carry__5_n_0\,
      CO(2) => \_inferred__6/i__carry__5_n_1\,
      CO(1) => \_inferred__6/i__carry__5_n_2\,
      CO(0) => \_inferred__6/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__6/i__carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \in_mario3_carry__3_n_2\,
      S(2) => \in_mario3_carry__3_n_2\,
      S(1) => \in_mario3_carry__3_n_2\,
      S(0) => \in_mario3_carry__3_n_2\
    );
\_inferred__6/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i__carry__5_n_0\,
      CO(3) => \_inferred__6/i__carry__6_n_0\,
      CO(2) => \_inferred__6/i__carry__6_n_1\,
      CO(1) => \_inferred__6/i__carry__6_n_2\,
      CO(0) => \_inferred__6/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__6/i__carry__6_O_UNCONNECTED\(3 downto 0),
      S(3) => \in_mario3_carry__3_n_2\,
      S(2) => \in_mario3_carry__3_n_2\,
      S(1) => \in_mario3_carry__3_n_2\,
      S(0) => \in_mario3_carry__3_n_2\
    );
\_inferred__7/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__7/i__carry_n_0\,
      CO(2) => \_inferred__7/i__carry_n_1\,
      CO(1) => \_inferred__7/i__carry_n_2\,
      CO(0) => \_inferred__7/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => v_count(3 downto 0),
      O(3 downto 0) => \NLW__inferred__7/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\_inferred__7/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__7/i__carry_n_0\,
      CO(3) => \_inferred__7/i__carry__0_n_0\,
      CO(2) => \_inferred__7/i__carry__0_n_1\,
      CO(1) => \_inferred__7/i__carry__0_n_2\,
      CO(0) => \_inferred__7/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => mario_y(4),
      O(3 downto 0) => \NLW__inferred__7/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\_inferred__7/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__7/i__carry__0_n_0\,
      CO(3) => \_inferred__7/i__carry__1_n_0\,
      CO(2) => \_inferred__7/i__carry__1_n_1\,
      CO(1) => \_inferred__7/i__carry__1_n_2\,
      CO(0) => \_inferred__7/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => mario_y(11),
      DI(2) => \i__carry__1_i_1_n_0\,
      DI(1) => \i__carry__1_i_2_n_0\,
      DI(0) => \i__carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW__inferred__7/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_4_n_0\,
      S(2) => \i__carry__1_i_5_n_0\,
      S(1) => \i__carry__1_i_6_n_0\,
      S(0) => \i__carry__1_i_7_n_0\
    );
\_inferred__7/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__7/i__carry__1_n_0\,
      CO(3) => \_inferred__7/i__carry__2_n_0\,
      CO(2) => \_inferred__7/i__carry__2_n_1\,
      CO(1) => \_inferred__7/i__carry__2_n_2\,
      CO(0) => \_inferred__7/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mario_y(15 downto 12),
      O(3 downto 0) => \NLW__inferred__7/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\_inferred__7/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__7/i__carry__2_n_0\,
      CO(3 downto 1) => \NLW__inferred__7/i__carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__7/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__7/i__carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__3_i_1_n_0\
    );
\blue[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515151515151555"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(7),
      I2 => v_count(8),
      I3 => v_count(4),
      I4 => v_count(6),
      I5 => v_count(5),
      O => \blue[5]_i_1_n_0\
    );
\blue_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => '1',
      Q => blue(0),
      R => \green[7]_i_1_n_0\
    );
\blue_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \blue[5]_i_1_n_0\,
      Q => blue(1),
      R => \green[7]_i_1_n_0\
    );
\green[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE000000"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(6),
      I2 => v_count(4),
      I3 => v_count(8),
      I4 => v_count(7),
      I5 => v_count(9),
      O => \green[0]_i_1_n_0\
    );
\green[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_brick,
      O => \green[2]_i_1_n_0\
    );
\green[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \is_brick1_carry__0_n_5\,
      I1 => v_count(6),
      I2 => v_count(5),
      I3 => v_count(8),
      I4 => \green[7]_i_3_n_0\,
      O => is_brick
    );
\green[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => is_brick,
      I1 => \blue[5]_i_1_n_0\,
      O => \green[6]_i_1_n_0\
    );
\green[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAAAAAAAAA"
    )
        port map (
      I0 => red1,
      I1 => in_mario22_in,
      I2 => in_mario1,
      I3 => \_inferred__7/i__carry__3_n_3\,
      I4 => \_inferred__6/i__carry__6_n_0\,
      I5 => \red[7]_i_3_n_0\,
      O => \green[7]_i_1_n_0\
    );
\green[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAAAAAAA"
    )
        port map (
      I0 => \blue[5]_i_1_n_0\,
      I1 => \green[7]_i_3_n_0\,
      I2 => v_count(8),
      I3 => v_count(5),
      I4 => v_count(6),
      I5 => \is_brick1_carry__0_n_5\,
      O => \green[7]_i_2_n_0\
    );
\green[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBF"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(7),
      I2 => v_count(3),
      I3 => v_count(4),
      O => \green[7]_i_3_n_0\
    );
\green_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green[0]_i_1_n_0\,
      Q => green(0),
      R => \green[7]_i_1_n_0\
    );
\green_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green[2]_i_1_n_0\,
      Q => green(1),
      R => \green[7]_i_1_n_0\
    );
\green_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => is_brick,
      Q => green(2),
      R => \green[7]_i_1_n_0\
    );
\green_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green[6]_i_1_n_0\,
      Q => green(3),
      R => \green[7]_i_1_n_0\
    );
\green_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \green[7]_i_2_n_0\,
      Q => green(4),
      R => \green[7]_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count(7),
      I1 => mario_y(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(7),
      I1 => \in_mario3_carry__0_n_4\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(5),
      I1 => mario_y(5),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(6),
      I1 => \in_mario3_carry__0_n_5\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count(5),
      I1 => mario_y(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(5),
      I1 => \in_mario3_carry__0_n_6\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => mario_y(6),
      I1 => v_count(6),
      I2 => mario_y(7),
      I3 => v_count(7),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(4),
      I1 => \in_mario3_carry__0_n_7\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => mario_y(5),
      I1 => v_count(5),
      I2 => mario_y(6),
      I3 => v_count(6),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => mario_y(5),
      I1 => v_count(5),
      I2 => mario_y(4),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count(4),
      I1 => mario_y(4),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(9),
      I1 => mario_y(9),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_mario3_carry__1_n_4\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count(9),
      I1 => mario_y(9),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_mario3_carry__1_n_5\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_count(7),
      I1 => mario_y(7),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(9),
      I1 => \in_mario3_carry__1_n_6\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_y(10),
      I1 => mario_y(11),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(8),
      I1 => \in_mario3_carry__1_n_7\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => mario_y(9),
      I1 => v_count(9),
      I2 => mario_y(10),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => mario_y(8),
      I1 => v_count(8),
      I2 => mario_y(9),
      I3 => v_count(9),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => mario_y(7),
      I1 => v_count(7),
      I2 => mario_y(8),
      I3 => v_count(8),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_mario3_carry__2_n_4\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_y(14),
      I1 => mario_y(15),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_mario3_carry__2_n_5\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_y(13),
      I1 => mario_y(14),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_mario3_carry__2_n_6\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_y(12),
      I1 => mario_y(13),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_mario3_carry__2_n_7\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_y(11),
      I1 => mario_y(12),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mario_y(15),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_mario3_carry__3_n_7\,
      O => \i__carry__3_i_1__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(3),
      I1 => in_mario3_carry_n_4,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(3),
      I1 => mario_y(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(2),
      I1 => mario_y(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(2),
      I1 => in_mario3_carry_n_5,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(1),
      I1 => mario_y(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(1),
      I1 => in_mario3_carry_n_6,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(0),
      I1 => mario_y(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_count(0),
      I1 => in_mario3_carry_n_7,
      O => \i__carry_i_4__0_n_0\
    );
in_mario1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => in_mario1_carry_n_0,
      CO(2) => in_mario1_carry_n_1,
      CO(1) => in_mario1_carry_n_2,
      CO(0) => in_mario1_carry_n_3,
      CYINIT => '1',
      DI(3) => in_mario1_carry_i_1_n_0,
      DI(2) => in_mario1_carry_i_2_n_0,
      DI(1) => in_mario1_carry_i_3_n_0,
      DI(0) => in_mario1_carry_i_4_n_0,
      O(3 downto 0) => NLW_in_mario1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => in_mario1_carry_i_5_n_0,
      S(2) => in_mario1_carry_i_6_n_0,
      S(1) => in_mario1_carry_i_7_n_0,
      S(0) => in_mario1_carry_i_8_n_0
    );
\in_mario1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => in_mario1_carry_n_0,
      CO(3) => in_mario1,
      CO(2) => \in_mario1_carry__0_n_1\,
      CO(1) => \in_mario1_carry__0_n_2\,
      CO(0) => \in_mario1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \in_mario1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_in_mario1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \in_mario1_carry__0_i_2_n_0\,
      S(2) => \in_mario1_carry__0_i_3_n_0\,
      S(1) => \in_mario1_carry__0_i_4_n_0\,
      S(0) => \in_mario1_carry__0_i_5_n_0\
    );
\in_mario1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_count(8),
      I1 => mario_y(8),
      I2 => mario_y(9),
      I3 => v_count(9),
      O => \in_mario1_carry__0_i_1_n_0\
    );
\in_mario1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mario_y(15),
      I1 => mario_y(14),
      O => \in_mario1_carry__0_i_2_n_0\
    );
\in_mario1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mario_y(13),
      I1 => mario_y(12),
      O => \in_mario1_carry__0_i_3_n_0\
    );
\in_mario1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mario_y(11),
      I1 => mario_y(10),
      O => \in_mario1_carry__0_i_4_n_0\
    );
\in_mario1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mario_y(9),
      I1 => v_count(9),
      I2 => mario_y(8),
      I3 => v_count(8),
      O => \in_mario1_carry__0_i_5_n_0\
    );
in_mario1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_count(6),
      I1 => mario_y(6),
      I2 => mario_y(7),
      I3 => v_count(7),
      O => in_mario1_carry_i_1_n_0
    );
in_mario1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_count(4),
      I1 => mario_y(4),
      I2 => mario_y(5),
      I3 => v_count(5),
      O => in_mario1_carry_i_2_n_0
    );
in_mario1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => mario_y(3),
      I1 => v_count(3),
      I2 => mario_y(2),
      I3 => v_count(2),
      O => in_mario1_carry_i_3_n_0
    );
in_mario1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_count(0),
      I1 => mario_y(0),
      I2 => mario_y(1),
      I3 => v_count(1),
      O => in_mario1_carry_i_4_n_0
    );
in_mario1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mario_y(7),
      I1 => v_count(7),
      I2 => mario_y(6),
      I3 => v_count(6),
      O => in_mario1_carry_i_5_n_0
    );
in_mario1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mario_y(5),
      I1 => v_count(5),
      I2 => mario_y(4),
      I3 => v_count(4),
      O => in_mario1_carry_i_6_n_0
    );
in_mario1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(3),
      I1 => mario_y(3),
      I2 => v_count(2),
      I3 => mario_y(2),
      O => in_mario1_carry_i_7_n_0
    );
in_mario1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(0),
      I1 => mario_y(0),
      I2 => mario_y(1),
      I3 => v_count(1),
      O => in_mario1_carry_i_8_n_0
    );
in_mario2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => in_mario2_carry_n_0,
      CO(2) => in_mario2_carry_n_1,
      CO(1) => in_mario2_carry_n_2,
      CO(0) => in_mario2_carry_n_3,
      CYINIT => '1',
      DI(3) => in_mario2_carry_i_1_n_0,
      DI(2) => in_mario2_carry_i_2_n_0,
      DI(1) => in_mario2_carry_i_3_n_0,
      DI(0) => in_mario2_carry_i_4_n_0,
      O(3 downto 0) => NLW_in_mario2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => in_mario2_carry_i_5_n_0,
      S(2) => in_mario2_carry_i_6_n_0,
      S(1) => in_mario2_carry_i_7_n_0,
      S(0) => in_mario2_carry_i_8_n_0
    );
\in_mario2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => in_mario2_carry_n_0,
      CO(3) => in_mario22_in,
      CO(2) => \in_mario2_carry__0_n_1\,
      CO(1) => \in_mario2_carry__0_n_2\,
      CO(0) => \in_mario2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \in_mario2_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_in_mario2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \in_mario2_carry__0_i_2_n_0\,
      S(2) => \in_mario2_carry__0_i_3_n_0\,
      S(1) => \in_mario2_carry__0_i_4_n_0\,
      S(0) => \in_mario2_carry__0_i_5_n_0\
    );
\in_mario2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(9),
      I1 => in_mario3(9),
      I2 => h_count(8),
      I3 => in_mario3(8),
      O => \in_mario2_carry__0_i_1_n_0\
    );
\in_mario2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_mario3(15),
      I1 => in_mario3(14),
      O => \in_mario2_carry__0_i_2_n_0\
    );
\in_mario2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_mario3(13),
      I1 => in_mario3(12),
      O => \in_mario2_carry__0_i_3_n_0\
    );
\in_mario2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_mario3(11),
      I1 => in_mario3(10),
      O => \in_mario2_carry__0_i_4_n_0\
    );
\in_mario2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mario3(9),
      I1 => h_count(9),
      I2 => in_mario3(8),
      I3 => h_count(8),
      O => \in_mario2_carry__0_i_5_n_0\
    );
in_mario2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(7),
      I1 => in_mario3(7),
      I2 => h_count(6),
      I3 => in_mario3(6),
      O => in_mario2_carry_i_1_n_0
    );
in_mario2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(5),
      I1 => in_mario3(5),
      I2 => h_count(4),
      I3 => in_mario3(4),
      O => in_mario2_carry_i_2_n_0
    );
in_mario2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => h_count(3),
      I1 => in_mario3(3),
      I2 => h_count(2),
      I3 => in_mario3(2),
      O => in_mario2_carry_i_3_n_0
    );
in_mario2_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B22222B2"
    )
        port map (
      I0 => h_count(1),
      I1 => in_mario3(1),
      I2 => h_count(0),
      I3 => scroll_x(0),
      I4 => mario_x(0),
      O => in_mario2_carry_i_4_n_0
    );
in_mario2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mario3(7),
      I1 => h_count(7),
      I2 => in_mario3(6),
      I3 => h_count(6),
      O => in_mario2_carry_i_5_n_0
    );
in_mario2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mario3(5),
      I1 => h_count(5),
      I2 => in_mario3(4),
      I3 => h_count(4),
      O => in_mario2_carry_i_6_n_0
    );
in_mario2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_mario3(3),
      I1 => h_count(3),
      I2 => in_mario3(2),
      I3 => h_count(2),
      O => in_mario2_carry_i_7_n_0
    );
in_mario2_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09909009"
    )
        port map (
      I0 => in_mario3(1),
      I1 => h_count(1),
      I2 => mario_x(0),
      I3 => scroll_x(0),
      I4 => h_count(0),
      O => in_mario2_carry_i_8_n_0
    );
\in_mario3__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \in_mario3__0_carry_n_0\,
      CO(2) => \in_mario3__0_carry_n_1\,
      CO(1) => \in_mario3__0_carry_n_2\,
      CO(0) => \in_mario3__0_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => mario_x(3 downto 0),
      O(3 downto 1) => in_mario3(3 downto 1),
      O(0) => \NLW_in_mario3__0_carry_O_UNCONNECTED\(0),
      S(3) => \in_mario3__0_carry_i_1_n_0\,
      S(2) => \in_mario3__0_carry_i_2_n_0\,
      S(1) => \in_mario3__0_carry_i_3_n_0\,
      S(0) => \in_mario3__0_carry_i_4_n_0\
    );
\in_mario3__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \in_mario3__0_carry_n_0\,
      CO(3) => \in_mario3__0_carry__0_n_0\,
      CO(2) => \in_mario3__0_carry__0_n_1\,
      CO(1) => \in_mario3__0_carry__0_n_2\,
      CO(0) => \in_mario3__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mario_x(7 downto 4),
      O(3 downto 0) => in_mario3(7 downto 4),
      S(3) => \in_mario3__0_carry__0_i_1_n_0\,
      S(2) => \in_mario3__0_carry__0_i_2_n_0\,
      S(1) => \in_mario3__0_carry__0_i_3_n_0\,
      S(0) => \in_mario3__0_carry__0_i_4_n_0\
    );
\in_mario3__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(7),
      I1 => scroll_x(7),
      O => \in_mario3__0_carry__0_i_1_n_0\
    );
\in_mario3__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(6),
      I1 => scroll_x(6),
      O => \in_mario3__0_carry__0_i_2_n_0\
    );
\in_mario3__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(5),
      I1 => scroll_x(5),
      O => \in_mario3__0_carry__0_i_3_n_0\
    );
\in_mario3__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(4),
      I1 => scroll_x(4),
      O => \in_mario3__0_carry__0_i_4_n_0\
    );
\in_mario3__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \in_mario3__0_carry__0_n_0\,
      CO(3) => \in_mario3__0_carry__1_n_0\,
      CO(2) => \in_mario3__0_carry__1_n_1\,
      CO(1) => \in_mario3__0_carry__1_n_2\,
      CO(0) => \in_mario3__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mario_x(11 downto 8),
      O(3 downto 0) => in_mario3(11 downto 8),
      S(3) => \in_mario3__0_carry__1_i_1_n_0\,
      S(2) => \in_mario3__0_carry__1_i_2_n_0\,
      S(1) => \in_mario3__0_carry__1_i_3_n_0\,
      S(0) => \in_mario3__0_carry__1_i_4_n_0\
    );
\in_mario3__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(11),
      I1 => scroll_x(11),
      O => \in_mario3__0_carry__1_i_1_n_0\
    );
\in_mario3__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(10),
      I1 => scroll_x(10),
      O => \in_mario3__0_carry__1_i_2_n_0\
    );
\in_mario3__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(9),
      I1 => scroll_x(9),
      O => \in_mario3__0_carry__1_i_3_n_0\
    );
\in_mario3__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(8),
      I1 => scroll_x(8),
      O => \in_mario3__0_carry__1_i_4_n_0\
    );
\in_mario3__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \in_mario3__0_carry__1_n_0\,
      CO(3) => \NLW_in_mario3__0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \in_mario3__0_carry__2_n_1\,
      CO(1) => \in_mario3__0_carry__2_n_2\,
      CO(0) => \in_mario3__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => mario_x(14 downto 12),
      O(3 downto 0) => in_mario3(15 downto 12),
      S(3) => \in_mario3__0_carry__2_i_1_n_0\,
      S(2) => \in_mario3__0_carry__2_i_2_n_0\,
      S(1) => \in_mario3__0_carry__2_i_3_n_0\,
      S(0) => \in_mario3__0_carry__2_i_4_n_0\
    );
\in_mario3__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => scroll_x(15),
      I1 => mario_x(15),
      O => \in_mario3__0_carry__2_i_1_n_0\
    );
\in_mario3__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(14),
      I1 => scroll_x(14),
      O => \in_mario3__0_carry__2_i_2_n_0\
    );
\in_mario3__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(13),
      I1 => scroll_x(13),
      O => \in_mario3__0_carry__2_i_3_n_0\
    );
\in_mario3__0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(12),
      I1 => scroll_x(12),
      O => \in_mario3__0_carry__2_i_4_n_0\
    );
\in_mario3__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(3),
      I1 => scroll_x(3),
      O => \in_mario3__0_carry_i_1_n_0\
    );
\in_mario3__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(2),
      I1 => scroll_x(2),
      O => \in_mario3__0_carry_i_2_n_0\
    );
\in_mario3__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(1),
      I1 => scroll_x(1),
      O => \in_mario3__0_carry_i_3_n_0\
    );
\in_mario3__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(0),
      I1 => scroll_x(0),
      O => \in_mario3__0_carry_i_4_n_0\
    );
in_mario3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => in_mario3_carry_n_0,
      CO(2) => in_mario3_carry_n_1,
      CO(1) => in_mario3_carry_n_2,
      CO(0) => in_mario3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => mario_x(3 downto 0),
      O(3) => in_mario3_carry_n_4,
      O(2) => in_mario3_carry_n_5,
      O(1) => in_mario3_carry_n_6,
      O(0) => in_mario3_carry_n_7,
      S(3) => in_mario3_carry_i_1_n_0,
      S(2) => in_mario3_carry_i_2_n_0,
      S(1) => in_mario3_carry_i_3_n_0,
      S(0) => in_mario3_carry_i_4_n_0
    );
\in_mario3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => in_mario3_carry_n_0,
      CO(3) => \in_mario3_carry__0_n_0\,
      CO(2) => \in_mario3_carry__0_n_1\,
      CO(1) => \in_mario3_carry__0_n_2\,
      CO(0) => \in_mario3_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \in_mario3_carry__0_i_1_n_0\,
      DI(2) => \in_mario3_carry__0_i_2_n_0\,
      DI(1) => \in_mario3_carry__0_i_3_n_0\,
      DI(0) => scroll_x(4),
      O(3) => \in_mario3_carry__0_n_4\,
      O(2) => \in_mario3_carry__0_n_5\,
      O(1) => \in_mario3_carry__0_n_6\,
      O(0) => \in_mario3_carry__0_n_7\,
      S(3) => \in_mario3_carry__0_i_4_n_0\,
      S(2) => \in_mario3_carry__0_i_5_n_0\,
      S(1) => \in_mario3_carry__0_i_6_n_0\,
      S(0) => \in_mario3_carry__0_i_7_n_0\
    );
\in_mario3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(6),
      I1 => scroll_x(6),
      O => \in_mario3_carry__0_i_1_n_0\
    );
\in_mario3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(5),
      I1 => scroll_x(5),
      O => \in_mario3_carry__0_i_2_n_0\
    );
\in_mario3_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scroll_x(4),
      O => \in_mario3_carry__0_i_3_n_0\
    );
\in_mario3_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(6),
      I1 => mario_x(6),
      I2 => scroll_x(7),
      I3 => mario_x(7),
      O => \in_mario3_carry__0_i_4_n_0\
    );
\in_mario3_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(5),
      I1 => mario_x(5),
      I2 => scroll_x(6),
      I3 => mario_x(6),
      O => \in_mario3_carry__0_i_5_n_0\
    );
\in_mario3_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => scroll_x(4),
      I1 => scroll_x(5),
      I2 => mario_x(5),
      O => \in_mario3_carry__0_i_6_n_0\
    );
\in_mario3_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => scroll_x(4),
      I1 => mario_x(4),
      O => \in_mario3_carry__0_i_7_n_0\
    );
\in_mario3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \in_mario3_carry__0_n_0\,
      CO(3) => \in_mario3_carry__1_n_0\,
      CO(2) => \in_mario3_carry__1_n_1\,
      CO(1) => \in_mario3_carry__1_n_2\,
      CO(0) => \in_mario3_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \in_mario3_carry__1_i_1_n_0\,
      DI(2) => \in_mario3_carry__1_i_2_n_0\,
      DI(1) => \in_mario3_carry__1_i_3_n_0\,
      DI(0) => \in_mario3_carry__1_i_4_n_0\,
      O(3) => \in_mario3_carry__1_n_4\,
      O(2) => \in_mario3_carry__1_n_5\,
      O(1) => \in_mario3_carry__1_n_6\,
      O(0) => \in_mario3_carry__1_n_7\,
      S(3) => \in_mario3_carry__1_i_5_n_0\,
      S(2) => \in_mario3_carry__1_i_6_n_0\,
      S(1) => \in_mario3_carry__1_i_7_n_0\,
      S(0) => \in_mario3_carry__1_i_8_n_0\
    );
\in_mario3_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(10),
      I1 => scroll_x(10),
      O => \in_mario3_carry__1_i_1_n_0\
    );
\in_mario3_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(9),
      I1 => scroll_x(9),
      O => \in_mario3_carry__1_i_2_n_0\
    );
\in_mario3_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(8),
      I1 => scroll_x(8),
      O => \in_mario3_carry__1_i_3_n_0\
    );
\in_mario3_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(7),
      I1 => scroll_x(7),
      O => \in_mario3_carry__1_i_4_n_0\
    );
\in_mario3_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(10),
      I1 => mario_x(10),
      I2 => scroll_x(11),
      I3 => mario_x(11),
      O => \in_mario3_carry__1_i_5_n_0\
    );
\in_mario3_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(9),
      I1 => mario_x(9),
      I2 => scroll_x(10),
      I3 => mario_x(10),
      O => \in_mario3_carry__1_i_6_n_0\
    );
\in_mario3_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(8),
      I1 => mario_x(8),
      I2 => scroll_x(9),
      I3 => mario_x(9),
      O => \in_mario3_carry__1_i_7_n_0\
    );
\in_mario3_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(7),
      I1 => mario_x(7),
      I2 => scroll_x(8),
      I3 => mario_x(8),
      O => \in_mario3_carry__1_i_8_n_0\
    );
\in_mario3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \in_mario3_carry__1_n_0\,
      CO(3) => \in_mario3_carry__2_n_0\,
      CO(2) => \in_mario3_carry__2_n_1\,
      CO(1) => \in_mario3_carry__2_n_2\,
      CO(0) => \in_mario3_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \in_mario3_carry__2_i_1_n_0\,
      DI(2) => \in_mario3_carry__2_i_2_n_0\,
      DI(1) => \in_mario3_carry__2_i_3_n_0\,
      DI(0) => \in_mario3_carry__2_i_4_n_0\,
      O(3) => \in_mario3_carry__2_n_4\,
      O(2) => \in_mario3_carry__2_n_5\,
      O(1) => \in_mario3_carry__2_n_6\,
      O(0) => \in_mario3_carry__2_n_7\,
      S(3) => \in_mario3_carry__2_i_5_n_0\,
      S(2) => \in_mario3_carry__2_i_6_n_0\,
      S(1) => \in_mario3_carry__2_i_7_n_0\,
      S(0) => \in_mario3_carry__2_i_8_n_0\
    );
\in_mario3_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(14),
      I1 => scroll_x(14),
      O => \in_mario3_carry__2_i_1_n_0\
    );
\in_mario3_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(13),
      I1 => scroll_x(13),
      O => \in_mario3_carry__2_i_2_n_0\
    );
\in_mario3_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(12),
      I1 => scroll_x(12),
      O => \in_mario3_carry__2_i_3_n_0\
    );
\in_mario3_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(11),
      I1 => scroll_x(11),
      O => \in_mario3_carry__2_i_4_n_0\
    );
\in_mario3_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(14),
      I1 => mario_x(14),
      I2 => mario_x(15),
      I3 => scroll_x(15),
      O => \in_mario3_carry__2_i_5_n_0\
    );
\in_mario3_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(13),
      I1 => mario_x(13),
      I2 => scroll_x(14),
      I3 => mario_x(14),
      O => \in_mario3_carry__2_i_6_n_0\
    );
\in_mario3_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(12),
      I1 => mario_x(12),
      I2 => scroll_x(13),
      I3 => mario_x(13),
      O => \in_mario3_carry__2_i_7_n_0\
    );
\in_mario3_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => scroll_x(11),
      I1 => mario_x(11),
      I2 => scroll_x(12),
      I3 => mario_x(12),
      O => \in_mario3_carry__2_i_8_n_0\
    );
\in_mario3_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \in_mario3_carry__2_n_0\,
      CO(3 downto 2) => \NLW_in_mario3_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \in_mario3_carry__3_n_2\,
      CO(0) => \NLW_in_mario3_carry__3_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \in_mario3_carry__3_i_1_n_0\,
      O(3 downto 1) => \NLW_in_mario3_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \in_mario3_carry__3_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \in_mario3_carry__3_i_2_n_0\
    );
\in_mario3_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mario_x(15),
      I1 => scroll_x(15),
      O => \in_mario3_carry__3_i_1_n_0\
    );
\in_mario3_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => scroll_x(15),
      I1 => mario_x(15),
      O => \in_mario3_carry__3_i_2_n_0\
    );
in_mario3_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(3),
      I1 => scroll_x(3),
      O => in_mario3_carry_i_1_n_0
    );
in_mario3_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(2),
      I1 => scroll_x(2),
      O => in_mario3_carry_i_2_n_0
    );
in_mario3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(1),
      I1 => scroll_x(1),
      O => in_mario3_carry_i_3_n_0
    );
in_mario3_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mario_x(0),
      I1 => scroll_x(0),
      O => in_mario3_carry_i_4_n_0
    );
is_brick1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => is_brick1_carry_n_0,
      CO(2) => is_brick1_carry_n_1,
      CO(1) => is_brick1_carry_n_2,
      CO(0) => is_brick1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => h_count(3 downto 0),
      O(3 downto 0) => NLW_is_brick1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => is_brick1_carry_i_1_n_0,
      S(2) => is_brick1_carry_i_2_n_0,
      S(1) => is_brick1_carry_i_3_n_0,
      S(0) => is_brick1_carry_i_4_n_0
    );
\is_brick1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => is_brick1_carry_n_0,
      CO(3 downto 2) => \NLW_is_brick1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \is_brick1_carry__0_n_2\,
      CO(0) => \is_brick1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => h_count(5 downto 4),
      O(3) => \NLW_is_brick1_carry__0_O_UNCONNECTED\(3),
      O(2) => \is_brick1_carry__0_n_5\,
      O(1 downto 0) => \NLW_is_brick1_carry__0_O_UNCONNECTED\(1 downto 0),
      S(3) => '0',
      S(2) => \is_brick1_carry__0_i_1_n_0\,
      S(1) => \is_brick1_carry__0_i_2_n_0\,
      S(0) => \is_brick1_carry__0_i_3_n_0\
    );
\is_brick1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => scroll_x(6),
      I1 => h_count(6),
      O => \is_brick1_carry__0_i_1_n_0\
    );
\is_brick1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(5),
      I1 => scroll_x(5),
      O => \is_brick1_carry__0_i_2_n_0\
    );
\is_brick1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(4),
      I1 => scroll_x(4),
      O => \is_brick1_carry__0_i_3_n_0\
    );
is_brick1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => scroll_x(3),
      I1 => h_count(3),
      O => is_brick1_carry_i_1_n_0
    );
is_brick1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(2),
      I1 => scroll_x(2),
      O => is_brick1_carry_i_2_n_0
    );
is_brick1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(1),
      I1 => scroll_x(1),
      O => is_brick1_carry_i_3_n_0
    );
is_brick1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(0),
      I1 => scroll_x(0),
      O => is_brick1_carry_i_4_n_0
    );
\mario_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awvalid,
      I2 => \scroll_x[15]_i_2_n_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(2),
      O => mario_state_0
    );
\mario_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(0),
      Q => mario_state(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(1),
      Q => mario_state(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(2),
      Q => mario_state(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(3),
      Q => mario_state(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(4),
      Q => mario_state(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(5),
      Q => mario_state(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(6),
      Q => mario_state(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_state_0,
      D => s_axi_wdata(7),
      Q => mario_state(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awvalid,
      I2 => \scroll_x[15]_i_2_n_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(2),
      O => mario_x_2
    );
\mario_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(0),
      Q => mario_x(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(10),
      Q => mario_x(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(11),
      Q => mario_x(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(12),
      Q => mario_x(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(13),
      Q => mario_x(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(14),
      Q => mario_x(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(15),
      Q => mario_x(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(1),
      Q => mario_x(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(2),
      Q => mario_x(2),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(3),
      Q => mario_x(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(4),
      Q => mario_x(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(5),
      Q => mario_x(5),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(6),
      Q => mario_x(6),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(7),
      Q => mario_x(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(8),
      Q => mario_x(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_x_2,
      D => s_axi_wdata(9),
      Q => mario_x(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awvalid,
      I2 => \scroll_x[15]_i_2_n_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(2),
      O => mario_y_1
    );
\mario_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(0),
      Q => mario_y(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(10),
      Q => mario_y(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(11),
      Q => mario_y(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(12),
      Q => mario_y(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(13),
      Q => mario_y(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(14),
      Q => mario_y(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(15),
      Q => mario_y(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(1),
      Q => mario_y(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(2),
      Q => mario_y(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(3),
      Q => mario_y(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(4),
      Q => mario_y(4),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(5),
      Q => mario_y(5),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(6),
      Q => mario_y(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(7),
      Q => mario_y(7),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(8),
      Q => mario_y(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\mario_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mario_y_1,
      D => s_axi_wdata(9),
      Q => mario_y(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\red[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000FFFFFFFF"
    )
        port map (
      I0 => in_mario22_in,
      I1 => in_mario1,
      I2 => \_inferred__7/i__carry__3_n_3\,
      I3 => \_inferred__6/i__carry__6_n_0\,
      I4 => \red[7]_i_3_n_0\,
      I5 => \blue[5]_i_1_n_0\,
      O => \red[1]_i_1_n_0\
    );
\red[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => in_mario22_in,
      I1 => in_mario1,
      I2 => \_inferred__7/i__carry__3_n_3\,
      I3 => \_inferred__6/i__carry__6_n_0\,
      I4 => \red[7]_i_3_n_0\,
      I5 => \blue[5]_i_1_n_0\,
      O => \red[4]_i_1_n_0\
    );
\red[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAAAAAAAAA"
    )
        port map (
      I0 => is_brick,
      I1 => in_mario22_in,
      I2 => in_mario1,
      I3 => \_inferred__7/i__carry__3_n_3\,
      I4 => \_inferred__6/i__carry__6_n_0\,
      I5 => \red[7]_i_3_n_0\,
      O => \red[5]_i_1_n_0\
    );
\red[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => in_mario22_in,
      I1 => in_mario1,
      I2 => \_inferred__7/i__carry__3_n_3\,
      I3 => \_inferred__6/i__carry__6_n_0\,
      I4 => \red[7]_i_3_n_0\,
      I5 => \green[7]_i_2_n_0\,
      O => \red[6]_i_1_n_0\
    );
\red[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => video_active,
      I1 => reset_n,
      O => red1
    );
\red[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0A000300003B0A0"
    )
        port map (
      I0 => \red[7]_i_15_n_0\,
      I1 => \red[7]_i_16_n_0\,
      I2 => \red[7]_i_17_n_0\,
      I3 => \red[7]_i_11_n_0\,
      I4 => v_count(2),
      I5 => mario_y(2),
      O => \red[7]_i_10_n_0\
    );
\red[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => mario_y(1),
      I1 => v_count(1),
      I2 => v_count(0),
      I3 => mario_y(0),
      O => \red[7]_i_11_n_0\
    );
\red[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => h_count(1),
      I1 => scroll_x(1),
      I2 => mario_x(1),
      O => \red[7]_i_12_n_0\
    );
\red[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3BEEB28823CC3"
    )
        port map (
      I0 => h_count(0),
      I1 => h_count(1),
      I2 => mario_x(1),
      I3 => scroll_x(1),
      I4 => mario_x(0),
      I5 => scroll_x(0),
      O => \red[7]_i_13_n_0\
    );
\red[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => scroll_x(2),
      I1 => mario_x(2),
      I2 => h_count(2),
      I3 => h_count(3),
      I4 => scroll_x(3),
      I5 => mario_x(3),
      O => \red[7]_i_14_n_0\
    );
\red[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_count(0),
      I1 => mario_y(0),
      I2 => mario_y(1),
      I3 => v_count(1),
      O => \red[7]_i_15_n_0\
    );
\red[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BDDB"
    )
        port map (
      I0 => v_count(0),
      I1 => mario_y(0),
      I2 => v_count(1),
      I3 => mario_y(1),
      O => \red[7]_i_16_n_0\
    );
\red[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => v_count(3),
      I1 => mario_y(3),
      O => \red[7]_i_17_n_0\
    );
\red[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F2FF"
    )
        port map (
      I0 => \red[7]_i_3_n_0\,
      I1 => \red[7]_i_4_n_0\,
      I2 => is_brick,
      I3 => \blue[5]_i_1_n_0\,
      O => \red[7]_i_2_n_0\
    );
\red[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF550C3055"
    )
        port map (
      I0 => \red[7]_i_5_n_0\,
      I1 => \red[7]_i_6_n_0\,
      I2 => \red[7]_i_7_n_0\,
      I3 => \red[7]_i_8_n_0\,
      I4 => \red[7]_i_9_n_0\,
      I5 => \red[7]_i_10_n_0\,
      O => \red[7]_i_3_n_0\
    );
\red[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => in_mario22_in,
      I1 => in_mario1,
      I2 => \_inferred__7/i__carry__3_n_3\,
      I3 => \_inferred__6/i__carry__6_n_0\,
      O => \red[7]_i_4_n_0\
    );
\red[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99699699"
    )
        port map (
      I0 => v_count(3),
      I1 => mario_y(3),
      I2 => \red[7]_i_11_n_0\,
      I3 => v_count(2),
      I4 => mario_y(2),
      O => \red[7]_i_5_n_0\
    );
\red[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3966969963CC3"
    )
        port map (
      I0 => h_count(0),
      I1 => h_count(1),
      I2 => mario_x(1),
      I3 => scroll_x(1),
      I4 => mario_x(0),
      I5 => scroll_x(0),
      O => \red[7]_i_6_n_0\
    );
\red[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => h_count(0),
      I1 => mario_x(0),
      I2 => scroll_x(0),
      O => \red[7]_i_7_n_0\
    );
\red[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"009696FFFF696900"
    )
        port map (
      I0 => scroll_x(2),
      I1 => mario_x(2),
      I2 => h_count(2),
      I3 => \red[7]_i_12_n_0\,
      I4 => \red[7]_i_13_n_0\,
      I5 => \red[7]_i_14_n_0\,
      O => \red[7]_i_8_n_0\
    );
\red[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \red[7]_i_13_n_0\,
      I1 => \red[7]_i_12_n_0\,
      I2 => h_count(2),
      I3 => mario_x(2),
      I4 => scroll_x(2),
      O => \red[7]_i_9_n_0\
    );
\red_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \red[1]_i_1_n_0\,
      Q => red(0),
      R => red1
    );
\red_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => '1',
      Q => red(1),
      R => red1
    );
\red_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \red[4]_i_1_n_0\,
      Q => red(2),
      R => red1
    );
\red_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \red[5]_i_1_n_0\,
      Q => red(3),
      R => red1
    );
\red_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \red[6]_i_1_n_0\,
      Q => red(4),
      R => red1
    );
\red_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => vga_clk,
      CE => '1',
      D => \red[7]_i_2_n_0\,
      Q => red(5),
      R => red1
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4440000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => reset_n,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(31),
      I1 => \s_axi_rdata[0]_i_2_n_0\,
      O => p_1_in(0)
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(0),
      I1 => mario_y(0),
      I2 => s_axi_araddr(3),
      I3 => mario_x(0),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(0),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFEAEAAAAFEAE"
    )
        port map (
      I0 => p_1_in(31),
      I1 => scroll_x(10),
      I2 => s_axi_araddr(2),
      I3 => mario_x(10),
      I4 => s_axi_araddr(3),
      I5 => mario_y(10),
      O => p_1_in(10)
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFEAEAAAAFEAE"
    )
        port map (
      I0 => p_1_in(31),
      I1 => scroll_x(11),
      I2 => s_axi_araddr(2),
      I3 => mario_x(11),
      I4 => s_axi_araddr(3),
      I5 => mario_y(11),
      O => p_1_in(11)
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFEAEAAAAFEAE"
    )
        port map (
      I0 => p_1_in(31),
      I1 => scroll_x(12),
      I2 => s_axi_araddr(2),
      I3 => mario_x(12),
      I4 => s_axi_araddr(3),
      I5 => mario_y(12),
      O => p_1_in(12)
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFEAEAAAAFEAE"
    )
        port map (
      I0 => p_1_in(31),
      I1 => scroll_x(13),
      I2 => s_axi_araddr(2),
      I3 => mario_x(13),
      I4 => s_axi_araddr(3),
      I5 => mario_y(13),
      O => p_1_in(13)
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => scroll_x(14),
      I1 => s_axi_araddr(2),
      I2 => mario_x(14),
      I3 => s_axi_araddr(3),
      I4 => mario_y(14),
      I5 => p_1_in(31),
      O => p_1_in(14)
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFEAEAAAAFEAE"
    )
        port map (
      I0 => p_1_in(31),
      I1 => scroll_x(15),
      I2 => s_axi_araddr(2),
      I3 => mario_x(15),
      I4 => s_axi_araddr(3),
      I5 => mario_y(15),
      O => p_1_in(15)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(31),
      I1 => \s_axi_rdata[1]_i_2_n_0\,
      O => p_1_in(1)
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(1),
      I1 => mario_y(1),
      I2 => s_axi_araddr(3),
      I3 => mario_x(1),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(1),
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(31),
      I1 => \s_axi_rdata[2]_i_2_n_0\,
      O => p_1_in(2)
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(2),
      I1 => mario_y(2),
      I2 => s_axi_araddr(3),
      I3 => mario_x(2),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(2),
      O => \s_axi_rdata[2]_i_2_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(6),
      I3 => s_axi_araddr(7),
      I4 => s_axi_araddr(4),
      I5 => s_axi_araddr(5),
      O => p_1_in(31)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(31),
      I1 => \s_axi_rdata[3]_i_2_n_0\,
      O => p_1_in(3)
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(3),
      I1 => mario_y(3),
      I2 => s_axi_araddr(3),
      I3 => mario_x(3),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(3),
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_axi_rdata[4]_i_2_n_0\,
      I1 => p_1_in(31),
      O => p_1_in(4)
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(4),
      I1 => mario_y(4),
      I2 => s_axi_araddr(3),
      I3 => mario_x(4),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(4),
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(31),
      I1 => \s_axi_rdata[5]_i_2_n_0\,
      O => p_1_in(5)
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(5),
      I1 => mario_y(5),
      I2 => s_axi_araddr(3),
      I3 => mario_x(5),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(5),
      O => \s_axi_rdata[5]_i_2_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(31),
      I1 => \s_axi_rdata[6]_i_2_n_0\,
      O => p_1_in(6)
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(6),
      I1 => mario_y(6),
      I2 => s_axi_araddr(3),
      I3 => mario_x(6),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(6),
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(31),
      I1 => \s_axi_rdata[7]_i_2_n_0\,
      O => p_1_in(7)
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => mario_state(7),
      I1 => mario_y(7),
      I2 => s_axi_araddr(3),
      I3 => mario_x(7),
      I4 => s_axi_araddr(2),
      I5 => scroll_x(7),
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => scroll_x(8),
      I1 => s_axi_araddr(2),
      I2 => mario_x(8),
      I3 => s_axi_araddr(3),
      I4 => mario_y(8),
      I5 => p_1_in(31),
      O => p_1_in(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFEAEAAAAFEAE"
    )
        port map (
      I0 => p_1_in(31),
      I1 => scroll_x(9),
      I2 => s_axi_araddr(2),
      I3 => mario_x(9),
      I4 => s_axi_araddr(3),
      I5 => mario_y(9),
      O => p_1_in(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(0),
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(10),
      Q => s_axi_rdata(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(11),
      Q => s_axi_rdata(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(12),
      Q => s_axi_rdata(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(13),
      Q => s_axi_rdata(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(14),
      Q => s_axi_rdata(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(15),
      Q => s_axi_rdata(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(1),
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(2),
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(31),
      Q => s_axi_rdata(16),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(3),
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(4),
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(5),
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(6),
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(7),
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(8),
      Q => s_axi_rdata(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arvalid,
      D => p_1_in(9),
      Q => s_axi_rdata(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => s_axi_arvalid,
      I3 => reset_n,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
\scroll_x[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awvalid,
      I2 => \scroll_x[15]_i_2_n_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awaddr(2),
      O => scroll_x_3
    );
\scroll_x[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(4),
      I5 => s_axi_awaddr(7),
      O => \scroll_x[15]_i_2_n_0\
    );
\scroll_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(0),
      Q => scroll_x(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(10),
      Q => scroll_x(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(11),
      Q => scroll_x(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(12),
      Q => scroll_x(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(13),
      Q => scroll_x(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(14),
      Q => scroll_x(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(15),
      Q => scroll_x(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(1),
      Q => scroll_x(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(2),
      Q => scroll_x(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(3),
      Q => scroll_x(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(4),
      Q => scroll_x(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(5),
      Q => scroll_x(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(6),
      Q => scroll_x(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(7),
      Q => scroll_x(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(8),
      Q => scroll_x(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\scroll_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scroll_x_3,
      D => s_axi_wdata(9),
      Q => scroll_x(9),
      R => \s_axi_rdata[31]_i_1_n_0\
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
  signal \<const1>\ : STD_LOGIC;
  signal \^blue\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^green\ : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \^red\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
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
  blue(7) <= \^blue\(7);
  blue(6) <= \^blue\(7);
  blue(5) <= \^blue\(3);
  blue(4 downto 3) <= \^blue\(4 downto 3);
  blue(2) <= \^blue\(7);
  blue(1) <= \^blue\(1);
  blue(0) <= \^blue\(1);
  green(7) <= \^blue\(7);
  green(6) <= \^green\(6);
  green(5) <= \^green\(3);
  green(4) <= \^blue\(7);
  green(3 downto 2) <= \^green\(3 downto 2);
  green(1) <= \<const0>\;
  green(0) <= \^blue\(1);
  red(7) <= \^red\(7);
  red(6) <= \^red\(2);
  red(5 downto 2) <= \^red\(5 downto 2);
  red(1) <= \^red\(0);
  red(0) <= \^red\(0);
  s_axi_arready <= \<const1>\;
  s_axi_awready <= \<const1>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(30);
  s_axi_rdata(30) <= \^s_axi_rdata\(30);
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \^s_axi_rdata\(30);
  s_axi_rdata(27) <= \^s_axi_rdata\(30);
  s_axi_rdata(26) <= \^s_axi_rdata\(30);
  s_axi_rdata(25) <= \^s_axi_rdata\(30);
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \^s_axi_rdata\(30);
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \^s_axi_rdata\(30);
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \^s_axi_rdata\(30);
  s_axi_rdata(18) <= \^s_axi_rdata\(30);
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \^s_axi_rdata\(30);
  s_axi_rdata(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sprite_engine
     port map (
      blue(1) => \^blue\(3),
      blue(0) => \^blue\(4),
      clk => clk,
      green(4) => \^blue\(7),
      green(3) => \^green\(6),
      green(2 downto 1) => \^green\(3 downto 2),
      green(0) => \^blue\(1),
      h_count(9 downto 0) => h_count(9 downto 0),
      red(5) => \^red\(7),
      red(4) => \^red\(2),
      red(3 downto 1) => \^red\(5 downto 3),
      red(0) => \^red\(0),
      reset_n => reset_n,
      s_axi_araddr(7 downto 0) => s_axi_araddr(7 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(7 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(16) => \^s_axi_rdata\(30),
      s_axi_rdata(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      v_count(9 downto 0) => v_count(9 downto 0),
      vga_clk => vga_clk,
      video_active => video_active
    );
end STRUCTURE;
