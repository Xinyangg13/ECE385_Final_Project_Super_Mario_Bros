-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Nov 21 01:40:57 2025
-- Host        : Taurus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_mario_dvi_encoder_0_0_sim_netlist.vhdl
-- Design      : bd_mario_dvi_encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    blue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    vde : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    pix_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \tmds_out[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \tmds_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \tmds_out[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \tmds_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \tmds_out[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_3__1_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_4__1_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_5__1_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmds_out[0]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmds_out[1]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tmds_out[5]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmds_out[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tmds_out[8]_i_2__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tmds_out[9]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tmds_out[9]_i_4__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tmds_out[9]_i_5__1\ : label is "soft_lutpair3";
begin
  SR(0) <= \^sr\(0);
master_serdes_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^sr\(0)
    );
\tmds_out[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \tmds_out[9]_i_2__1_n_0\,
      I1 => vde,
      I2 => hsync,
      O => \tmds_out[0]_i_1__1_n_0\
    );
\tmds_out[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => blue(0),
      I1 => \tmds_out[9]_i_2__1_n_0\,
      I2 => vde,
      I3 => hsync,
      O => \tmds_out[1]_i_1__1_n_0\
    );
\tmds_out[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"606F"
    )
        port map (
      I0 => blue(0),
      I1 => blue(1),
      I2 => vde,
      I3 => hsync,
      O => \tmds_out[2]_i_1__1_n_0\
    );
\tmds_out[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EE2E22EE22E2EE2"
    )
        port map (
      I0 => hsync,
      I1 => vde,
      I2 => \tmds_out[9]_i_2__1_n_0\,
      I3 => blue(0),
      I4 => blue(1),
      I5 => blue(2),
      O => \tmds_out[3]_i_1__1_n_0\
    );
\tmds_out[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"699600006996FFFF"
    )
        port map (
      I0 => blue(0),
      I1 => blue(1),
      I2 => blue(2),
      I3 => blue(3),
      I4 => vde,
      I5 => hsync,
      O => \tmds_out[4]_i_1__1_n_0\
    );
\tmds_out[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CC3AAAA"
    )
        port map (
      I0 => hsync,
      I1 => blue(4),
      I2 => \tmds_out[9]_i_2__1_n_0\,
      I3 => \tmds_out[6]_i_2_n_0\,
      I4 => vde,
      O => \tmds_out[5]_i_1__1_n_0\
    );
\tmds_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CC35555"
    )
        port map (
      I0 => hsync,
      I1 => blue(5),
      I2 => blue(4),
      I3 => \tmds_out[6]_i_2_n_0\,
      I4 => vde,
      O => \tmds_out[6]_i_1_n_0\
    );
\tmds_out[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => blue(0),
      I1 => blue(1),
      I2 => blue(2),
      I3 => blue(3),
      O => \tmds_out[6]_i_2_n_0\
    );
\tmds_out[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => blue(6),
      I1 => \tmds_out[7]_i_2__1_n_0\,
      I2 => \tmds_out[9]_i_2__1_n_0\,
      I3 => vde,
      I4 => hsync,
      O => \tmds_out[7]_i_1__1_n_0\
    );
\tmds_out[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => blue(5),
      I1 => blue(4),
      I2 => blue(3),
      I3 => blue(2),
      I4 => blue(1),
      I5 => blue(0),
      O => \tmds_out[7]_i_2__1_n_0\
    );
\tmds_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"966900009669FFFF"
    )
        port map (
      I0 => \tmds_out[8]_i_2__1_n_0\,
      I1 => blue(1),
      I2 => blue(2),
      I3 => blue(3),
      I4 => vde,
      I5 => hsync,
      O => \tmds_out[8]_i_1_n_0\
    );
\tmds_out[8]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => blue(7),
      I1 => blue(0),
      I2 => blue(4),
      I3 => blue(5),
      I4 => blue(6),
      O => \tmds_out[8]_i_2__1_n_0\
    );
\tmds_out[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C3"
    )
        port map (
      I0 => \tmds_out[9]_i_2__1_n_0\,
      I1 => hsync,
      I2 => vsync,
      I3 => vde,
      O => \tmds_out[9]_i_1__1_n_0\
    );
\tmds_out[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FDFFF7F2200AA22"
    )
        port map (
      I0 => \tmds_out[9]_i_3__1_n_0\,
      I1 => \tmds_out[9]_i_4__1_n_0\,
      I2 => blue(0),
      I3 => blue(7),
      I4 => \tmds_out[9]_i_5__1_n_0\,
      I5 => \tmds_out[9]_i_6_n_0\,
      O => \tmds_out[9]_i_2__1_n_0\
    );
\tmds_out[9]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => blue(3),
      I1 => blue(2),
      I2 => blue(1),
      I3 => blue(6),
      I4 => blue(5),
      I5 => blue(4),
      O => \tmds_out[9]_i_3__1_n_0\
    );
\tmds_out[9]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => blue(6),
      I1 => blue(5),
      I2 => blue(4),
      O => \tmds_out[9]_i_4__1_n_0\
    );
\tmds_out[9]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => blue(3),
      I1 => blue(2),
      I2 => blue(1),
      O => \tmds_out[9]_i_5__1_n_0\
    );
\tmds_out[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => blue(3),
      I1 => blue(2),
      I2 => blue(1),
      I3 => blue(6),
      I4 => blue(5),
      I5 => blue(4),
      O => \tmds_out[9]_i_6_n_0\
    );
\tmds_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[0]_i_1__1_n_0\,
      Q => Q(0),
      R => \^sr\(0)
    );
\tmds_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[1]_i_1__1_n_0\,
      Q => Q(1),
      R => \^sr\(0)
    );
\tmds_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[2]_i_1__1_n_0\,
      Q => Q(2),
      R => \^sr\(0)
    );
\tmds_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[3]_i_1__1_n_0\,
      Q => Q(3),
      R => \^sr\(0)
    );
\tmds_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[4]_i_1__1_n_0\,
      Q => Q(4),
      R => \^sr\(0)
    );
\tmds_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[5]_i_1__1_n_0\,
      Q => Q(5),
      R => \^sr\(0)
    );
\tmds_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[6]_i_1_n_0\,
      Q => Q(6),
      R => \^sr\(0)
    );
\tmds_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[7]_i_1__1_n_0\,
      Q => Q(7),
      R => \^sr\(0)
    );
\tmds_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[8]_i_1_n_0\,
      Q => Q(8),
      R => \^sr\(0)
    );
\tmds_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[9]_i_1__1_n_0\,
      Q => Q(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    green : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vde : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    pix_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_0 : entity is "tmds_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_0 is
  signal \tmds_out[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \tmds_out[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \tmds_out[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \tmds_out[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_5__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmds_out[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmds_out[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmds_out[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmds_out[3]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmds_out[4]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tmds_out[5]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmds_out[6]_i_2__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmds_out[7]_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tmds_out[8]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmds_out[8]_i_2__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tmds_out[9]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmds_out[9]_i_4__0\ : label is "soft_lutpair8";
begin
\tmds_out[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2__0_n_0\,
      O => \tmds_out[0]_i_1__0_n_0\
    );
\tmds_out[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2__0_n_0\,
      I2 => green(0),
      O => \tmds_out[1]_i_1__0_n_0\
    );
\tmds_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7D"
    )
        port map (
      I0 => vde,
      I1 => green(1),
      I2 => green(0),
      O => \tmds_out[2]_i_1__0_n_0\
    );
\tmds_out[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28828228"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2__0_n_0\,
      I2 => green(1),
      I3 => green(0),
      I4 => green(2),
      O => \tmds_out[3]_i_1__0_n_0\
    );
\tmds_out[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD7D77D"
    )
        port map (
      I0 => vde,
      I1 => green(3),
      I2 => green(2),
      I3 => green(1),
      I4 => green(0),
      O => \tmds_out[4]_i_1__0_n_0\
    );
\tmds_out[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82282882"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2__0_n_0\,
      I2 => \tmds_out[6]_i_2__1_n_0\,
      I3 => green(0),
      I4 => green(4),
      O => \tmds_out[5]_i_1__0_n_0\
    );
\tmds_out[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77D7DD7"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[6]_i_2__1_n_0\,
      I2 => green(0),
      I3 => green(4),
      I4 => green(5),
      O => \tmds_out[6]_i_1__1_n_0\
    );
\tmds_out[6]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => green(3),
      I1 => green(2),
      I2 => green(1),
      O => \tmds_out[6]_i_2__1_n_0\
    );
\tmds_out[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2__0_n_0\,
      I2 => \tmds_out[7]_i_2__0_n_0\,
      I3 => green(4),
      I4 => green(5),
      I5 => green(6),
      O => \tmds_out[7]_i_1__0_n_0\
    );
\tmds_out[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => green(0),
      I1 => green(1),
      I2 => green(2),
      I3 => green(3),
      O => \tmds_out[7]_i_2__0_n_0\
    );
\tmds_out[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9669FFFF"
    )
        port map (
      I0 => green(3),
      I1 => green(2),
      I2 => green(1),
      I3 => \tmds_out[8]_i_2__0_n_0\,
      I4 => vde,
      O => \tmds_out[8]_i_1__1_n_0\
    );
\tmds_out[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => green(7),
      I1 => green(0),
      I2 => green(4),
      I3 => green(5),
      I4 => green(6),
      O => \tmds_out[8]_i_2__0_n_0\
    );
\tmds_out[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2__0_n_0\,
      O => \tmds_out[9]_i_1__0_n_0\
    );
\tmds_out[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11005511BFEFFFBF"
    )
        port map (
      I0 => \tmds_out[9]_i_3__0_n_0\,
      I1 => \tmds_out[9]_i_4__0_n_0\,
      I2 => green(0),
      I3 => green(7),
      I4 => \tmds_out[6]_i_2__1_n_0\,
      I5 => \tmds_out[9]_i_5__0_n_0\,
      O => \tmds_out[9]_i_2__0_n_0\
    );
\tmds_out[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E817E8171717"
    )
        port map (
      I0 => green(1),
      I1 => green(2),
      I2 => green(3),
      I3 => green(6),
      I4 => green(5),
      I5 => green(4),
      O => \tmds_out[9]_i_3__0_n_0\
    );
\tmds_out[9]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => green(6),
      I1 => green(5),
      I2 => green(4),
      O => \tmds_out[9]_i_4__0_n_0\
    );
\tmds_out[9]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => green(1),
      I1 => green(2),
      I2 => green(3),
      I3 => green(6),
      I4 => green(5),
      I5 => green(4),
      O => \tmds_out[9]_i_5__0_n_0\
    );
\tmds_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[0]_i_1__0_n_0\,
      Q => Q(0),
      R => SR(0)
    );
\tmds_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[1]_i_1__0_n_0\,
      Q => Q(1),
      R => SR(0)
    );
\tmds_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[2]_i_1__0_n_0\,
      Q => Q(2),
      R => SR(0)
    );
\tmds_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[3]_i_1__0_n_0\,
      Q => Q(3),
      R => SR(0)
    );
\tmds_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[4]_i_1__0_n_0\,
      Q => Q(4),
      R => SR(0)
    );
\tmds_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[5]_i_1__0_n_0\,
      Q => Q(5),
      R => SR(0)
    );
\tmds_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[6]_i_1__1_n_0\,
      Q => Q(6),
      R => SR(0)
    );
\tmds_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[7]_i_1__0_n_0\,
      Q => Q(7),
      R => SR(0)
    );
\tmds_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[8]_i_1__1_n_0\,
      Q => Q(8),
      R => SR(0)
    );
\tmds_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[9]_i_1__0_n_0\,
      Q => Q(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    red : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vde : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    pix_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_1 : entity is "tmds_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_1 is
  signal tmds_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \tmds_out[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \tmds_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \tmds_out[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmds_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \tmds_out[9]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmds_out[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmds_out[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmds_out[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tmds_out[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmds_out[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tmds_out[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmds_out[6]_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmds_out[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tmds_out[8]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmds_out[8]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tmds_out[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tmds_out[9]_i_4\ : label is "soft_lutpair13";
begin
\tmds_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2_n_0\,
      O => tmds_out(0)
    );
\tmds_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2_n_0\,
      I2 => red(0),
      O => tmds_out(1)
    );
\tmds_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7D"
    )
        port map (
      I0 => vde,
      I1 => red(1),
      I2 => red(0),
      O => tmds_out(2)
    );
\tmds_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28828228"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2_n_0\,
      I2 => red(1),
      I3 => red(0),
      I4 => red(2),
      O => tmds_out(3)
    );
\tmds_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD7D77D"
    )
        port map (
      I0 => vde,
      I1 => red(3),
      I2 => red(2),
      I3 => red(1),
      I4 => red(0),
      O => tmds_out(4)
    );
\tmds_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82282882"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2_n_0\,
      I2 => \tmds_out[6]_i_2__0_n_0\,
      I3 => red(0),
      I4 => red(4),
      O => tmds_out(5)
    );
\tmds_out[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77D7DD7"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[6]_i_2__0_n_0\,
      I2 => red(0),
      I3 => red(4),
      I4 => red(5),
      O => tmds_out(6)
    );
\tmds_out[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => red(3),
      I1 => red(2),
      I2 => red(1),
      O => \tmds_out[6]_i_2__0_n_0\
    );
\tmds_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2_n_0\,
      I2 => \tmds_out[7]_i_2_n_0\,
      I3 => red(4),
      I4 => red(5),
      I5 => red(6),
      O => tmds_out(7)
    );
\tmds_out[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => red(0),
      I1 => red(1),
      I2 => red(2),
      I3 => red(3),
      O => \tmds_out[7]_i_2_n_0\
    );
\tmds_out[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9669FFFF"
    )
        port map (
      I0 => red(3),
      I1 => red(2),
      I2 => red(1),
      I3 => \tmds_out[8]_i_2_n_0\,
      I4 => vde,
      O => \tmds_out[8]_i_1__0_n_0\
    );
\tmds_out[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => red(7),
      I1 => red(0),
      I2 => red(4),
      I3 => red(5),
      I4 => red(6),
      O => \tmds_out[8]_i_2_n_0\
    );
\tmds_out[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vde,
      I1 => \tmds_out[9]_i_2_n_0\,
      O => tmds_out(9)
    );
\tmds_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C4C04047FFFB7FF"
    )
        port map (
      I0 => \tmds_out[6]_i_2__0_n_0\,
      I1 => \tmds_out[9]_i_3_n_0\,
      I2 => \tmds_out[9]_i_4_n_0\,
      I3 => red(0),
      I4 => red(7),
      I5 => \tmds_out[9]_i_5_n_0\,
      O => \tmds_out[9]_i_2_n_0\
    );
\tmds_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => red(3),
      I1 => red(2),
      I2 => red(1),
      I3 => red(6),
      I4 => red(5),
      I5 => red(4),
      O => \tmds_out[9]_i_3_n_0\
    );
\tmds_out[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => red(6),
      I1 => red(5),
      I2 => red(4),
      O => \tmds_out[9]_i_4_n_0\
    );
\tmds_out[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => red(3),
      I1 => red(2),
      I2 => red(1),
      I3 => red(6),
      I4 => red(5),
      I5 => red(4),
      O => \tmds_out[9]_i_5_n_0\
    );
\tmds_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(0),
      Q => Q(0),
      R => SR(0)
    );
\tmds_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(1),
      Q => Q(1),
      R => SR(0)
    );
\tmds_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(2),
      Q => Q(2),
      R => SR(0)
    );
\tmds_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(3),
      Q => Q(3),
      R => SR(0)
    );
\tmds_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(4),
      Q => Q(4),
      R => SR(0)
    );
\tmds_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(5),
      Q => Q(5),
      R => SR(0)
    );
\tmds_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(6),
      Q => Q(6),
      R => SR(0)
    );
\tmds_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(7),
      Q => Q(7),
      R => SR(0)
    );
\tmds_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \tmds_out[8]_i_1__0_n_0\,
      Q => Q(8),
      R => SR(0)
    );
\tmds_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => tmds_out(9),
      Q => Q(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer is
  port (
    tmds_clk_serial : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => tmds_clk_serial,
      RST => SR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => SR(0),
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_slave_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_slave_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_2 is
  port (
    \serialize[0].serial_data\ : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_2 : entity is "tmds_serializer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_2 is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => \serialize[0].serial_data\,
      RST => SR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => SR(0),
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_slave_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_slave_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_3 is
  port (
    \serialize[1].serial_data\ : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_3 : entity is "tmds_serializer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_3 is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => \serialize[1].serial_data\,
      RST => SR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => SR(0),
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_slave_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_slave_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_4 is
  port (
    \serialize[2].serial_data\ : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_4 : entity is "tmds_serializer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_4 is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal NLW_master_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_serdes_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_serdes_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of master_serdes : label is "PRIMITIVE";
  attribute BOX_TYPE of slave_serdes : label is "PRIMITIVE";
begin
master_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => '1',
      OFB => NLW_master_serdes_OFB_UNCONNECTED,
      OQ => \serialize[2].serial_data\,
      RST => SR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_serdes_TFB_UNCONNECTED,
      TQ => NLW_master_serdes_TQ_UNCONNECTED
    );
slave_serdes: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_serdes_OFB_UNCONNECTED,
      OQ => NLW_slave_serdes_OQ_UNCONNECTED,
      RST => SR(0),
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_slave_serdes_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_slave_serdes_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_serdes_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_serdes_TFB_UNCONNECTED,
      TQ => NLW_slave_serdes_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dvi_encoder is
  port (
    tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC;
    red : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vde : in STD_LOGIC;
    green : in STD_LOGIC_VECTOR ( 7 downto 0 );
    blue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dvi_encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dvi_encoder is
  signal RST0 : STD_LOGIC;
  signal \serialize[0].serial_data\ : STD_LOGIC;
  signal \serialize[1].serial_data\ : STD_LOGIC;
  signal \serialize[2].serial_data\ : STD_LOGIC;
  signal tmds_blue : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmds_clk_serial : STD_LOGIC;
  signal tmds_green : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmds_red : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of obufds_clk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of obufds_clk : label is "DONT_CARE";
  attribute BOX_TYPE of \serialize[0].obufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \serialize[0].obufds_inst\ : label is "DONT_CARE";
  attribute BOX_TYPE of \serialize[1].obufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \serialize[1].obufds_inst\ : label is "DONT_CARE";
  attribute BOX_TYPE of \serialize[2].obufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \serialize[2].obufds_inst\ : label is "DONT_CARE";
begin
clk_ser: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer
     port map (
      SR(0) => RST0,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5,
      tmds_clk_serial => tmds_clk_serial
    );
encode_blue: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder
     port map (
      Q(9 downto 0) => tmds_blue(9 downto 0),
      SR(0) => RST0,
      blue(7 downto 0) => blue(7 downto 0),
      hsync => hsync,
      pix_clk => pix_clk,
      reset_n => reset_n,
      vde => vde,
      vsync => vsync
    );
encode_green: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_0
     port map (
      Q(9 downto 0) => tmds_green(9 downto 0),
      SR(0) => RST0,
      green(7 downto 0) => green(7 downto 0),
      pix_clk => pix_clk,
      vde => vde
    );
encode_red: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_1
     port map (
      Q(9 downto 0) => tmds_red(9 downto 0),
      SR(0) => RST0,
      pix_clk => pix_clk,
      red(7 downto 0) => red(7 downto 0),
      vde => vde
    );
obufds_clk: unisim.vcomponents.OBUFDS
     port map (
      I => tmds_clk_serial,
      O => tmds_clk_p,
      OB => tmds_clk_n
    );
\serialize[0].obufds_inst\: unisim.vcomponents.OBUFDS
     port map (
      I => \serialize[0].serial_data\,
      O => tmds_data_p(0),
      OB => tmds_data_n(0)
    );
\serialize[0].ser\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_2
     port map (
      Q(9 downto 0) => tmds_blue(9 downto 0),
      SR(0) => RST0,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5,
      \serialize[0].serial_data\ => \serialize[0].serial_data\
    );
\serialize[1].obufds_inst\: unisim.vcomponents.OBUFDS
     port map (
      I => \serialize[1].serial_data\,
      O => tmds_data_p(1),
      OB => tmds_data_n(1)
    );
\serialize[1].ser\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_3
     port map (
      Q(9 downto 0) => tmds_green(9 downto 0),
      SR(0) => RST0,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5,
      \serialize[1].serial_data\ => \serialize[1].serial_data\
    );
\serialize[2].obufds_inst\: unisim.vcomponents.OBUFDS
     port map (
      I => \serialize[2].serial_data\,
      O => tmds_data_p(2),
      OB => tmds_data_n(2)
    );
\serialize[2].ser\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_serializer_4
     port map (
      Q(9 downto 0) => tmds_red(9 downto 0),
      SR(0) => RST0,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5,
      \serialize[2].serial_data\ => \serialize[2].serial_data\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pix_clk : in STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    red : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green : in STD_LOGIC_VECTOR ( 7 downto 0 );
    blue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    vde : in STD_LOGIC;
    tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_mario_dvi_encoder_0_0,simple_dvi_encoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "simple_dvi_encoder,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pix_clk : signal is "xilinx.com:signal:clock:1.0 pix_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pix_clk : signal is "XIL_INTERFACENAME pix_clk, FREQ_HZ 25179755, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tmds_clk_n : signal is "digilentinc.com:interface:tmds:1.0 tmds CLK_N";
  attribute X_INTERFACE_INFO of tmds_clk_p : signal is "digilentinc.com:interface:tmds:1.0 tmds CLK_P";
  attribute X_INTERFACE_INFO of tmds_data_n : signal is "digilentinc.com:interface:tmds:1.0 tmds DATA_N";
  attribute X_INTERFACE_INFO of tmds_data_p : signal is "digilentinc.com:interface:tmds:1.0 tmds DATA_P";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_dvi_encoder
     port map (
      blue(7 downto 0) => blue(7 downto 0),
      green(7 downto 0) => green(7 downto 0),
      hsync => hsync,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5,
      red(7 downto 0) => red(7 downto 0),
      reset_n => reset_n,
      tmds_clk_n => tmds_clk_n,
      tmds_clk_p => tmds_clk_p,
      tmds_data_n(2 downto 0) => tmds_data_n(2 downto 0),
      tmds_data_p(2 downto 0) => tmds_data_p(2 downto 0),
      vde => vde,
      vsync => vsync
    );
end STRUCTURE;
