-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Feb 12 19:15:52 2025
-- Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/andre/CoRSoC/IPIs/Dec_SSR_Test/Dec_SSR_Test.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_sim_netlist.vhdl
-- Design      : design_1_auto_pc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd is
  port (
    next_pending_r : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    \axlen_cnt_reg[4]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \axlen_cnt_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axburst_eq1_reg : out STD_LOGIC;
    \axaddr_incr_reg[11]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[9]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[7]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[4]_0\ : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    sel_first_reg_2 : out STD_LOGIC;
    sel_first_reg_3 : out STD_LOGIC;
    sel_first_reg_4 : out STD_LOGIC;
    sel_first_reg_5 : out STD_LOGIC;
    sel_first_reg_6 : out STD_LOGIC;
    sel_first_reg_7 : out STD_LOGIC;
    sel_first_reg_8 : out STD_LOGIC;
    sel_first_reg_9 : out STD_LOGIC;
    sel_first_reg_10 : out STD_LOGIC;
    sel_first_reg_11 : out STD_LOGIC;
    sel_first_reg_12 : out STD_LOGIC;
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sel_first_reg_13 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]_1\ : in STD_LOGIC;
    \axlen_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC;
    \axlen_cnt_reg[3]_1\ : in STD_LOGIC;
    \axaddr_incr_reg[4]_1\ : in STD_LOGIC;
    \axaddr_incr_reg[6]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[7]_1\ : in STD_LOGIC;
    \axaddr_incr_reg[9]_1\ : in STD_LOGIC;
    \axaddr_incr_reg[3]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[2]_0\ : in STD_LOGIC;
    s_axburst_eq1 : in STD_LOGIC;
    s_axburst_eq0 : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \axaddr_incr[5]_i_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axlen_cnt_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]_2\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd : entity is "axi_protocol_converter_v2_1_31_b2s_incr_cmd";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \axaddr_incr[11]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[6]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[11]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[9]\ : STD_LOGIC;
  signal axlen_cnt : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \axlen_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \^axlen_cnt_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axlen_cnt_reg[4]_0\ : STD_LOGIC;
  signal next_pending_r_i_6_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \^sel_first_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[10]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \axaddr_incr[4]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \axaddr_incr[5]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \axaddr_incr[7]_i_2__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \axaddr_incr[8]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \axaddr_incr[9]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \axlen_cnt[4]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \axlen_cnt[5]_i_2\ : label is "soft_lutpair89";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \axlen_cnt_reg[0]_0\(0) <= \^axlen_cnt_reg[0]_0\(0);
  \axlen_cnt_reg[4]_0\ <= \^axlen_cnt_reg[4]_0\;
  sel_first_reg_0 <= \^sel_first_reg_0\;
\axaddr_incr[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[9]\,
      I1 => \axaddr_incr[9]_i_2__0_n_0\,
      O => \axaddr_incr_reg[9]_0\
    );
\axaddr_incr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg[11]_1\,
      O => \axaddr_incr[11]_i_1_n_0\
    );
\axaddr_incr[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[11]\,
      I1 => \axaddr_incr_reg_n_0_[9]\,
      I2 => \axaddr_incr[9]_i_2__0_n_0\,
      I3 => \^q\(4),
      O => \axaddr_incr_reg[11]_0\
    );
\axaddr_incr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA66556A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[2]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \axlen_cnt_reg[7]_0\(13),
      I4 => \axlen_cnt_reg[7]_0\(12),
      O => \axaddr_incr[2]_i_2_n_0\
    );
\axaddr_incr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00555F7FFFAAA080"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \axlen_cnt_reg[7]_0\(12),
      I4 => \axlen_cnt_reg[7]_0\(13),
      I5 => \axaddr_incr_reg_n_0_[3]\,
      O => \axaddr_incr[3]_i_2_n_0\
    );
\axaddr_incr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"909F9F90"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(4),
      I1 => \axaddr_incr_reg[4]_1\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[4]\,
      I4 => \axaddr_incr[6]_i_3_n_0\,
      O => p_1_in(4)
    );
\axaddr_incr[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[4]\,
      I1 => \axaddr_incr[6]_i_3_n_0\,
      O => \axaddr_incr_reg[4]_0\
    );
\axaddr_incr[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFFFFF0000"
    )
        port map (
      I0 => s_axburst_eq1,
      I1 => \axlen_cnt_reg[7]_0\(15),
      I2 => s_axburst_eq0,
      I3 => m_axi_awready,
      I4 => \axaddr_incr[5]_i_4\(0),
      I5 => \axaddr_incr[5]_i_4\(1),
      O => s_axburst_eq1_reg
    );
\axaddr_incr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \axaddr_incr_reg[6]_0\,
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg_n_0_[6]\,
      I3 => \axaddr_incr_reg_n_0_[4]\,
      I4 => \axaddr_incr[6]_i_3_n_0\,
      I5 => \^q\(2),
      O => p_1_in(6)
    );
\axaddr_incr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F000A0008000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \axaddr_incr_reg_n_0_[2]\,
      I3 => \axaddr_incr_reg_n_0_[3]\,
      I4 => \axlen_cnt_reg[7]_0\(12),
      I5 => \axlen_cnt_reg[7]_0\(13),
      O => \axaddr_incr[6]_i_3_n_0\
    );
\axaddr_incr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(7),
      I1 => \axaddr_incr_reg[7]_1\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[7]\,
      I4 => \axaddr_incr[7]_i_2__0_n_0\,
      O => p_1_in(7)
    );
\axaddr_incr[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[6]\,
      I1 => \axaddr_incr_reg_n_0_[4]\,
      I2 => \axaddr_incr[6]_i_3_n_0\,
      I3 => \^q\(2),
      O => \axaddr_incr[7]_i_2__0_n_0\
    );
\axaddr_incr[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[7]\,
      I1 => \^q\(2),
      I2 => \axaddr_incr[6]_i_3_n_0\,
      I3 => \axaddr_incr_reg_n_0_[4]\,
      I4 => \axaddr_incr_reg_n_0_[6]\,
      O => \axaddr_incr_reg[7]_0\
    );
\axaddr_incr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(9),
      I1 => \axaddr_incr_reg[9]_1\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[9]\,
      I4 => \axaddr_incr[9]_i_2__0_n_0\,
      O => p_1_in(9)
    );
\axaddr_incr[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \axaddr_incr_reg_n_0_[6]\,
      I2 => \axaddr_incr_reg_n_0_[4]\,
      I3 => \axaddr_incr[6]_i_3_n_0\,
      I4 => \^q\(2),
      I5 => \axaddr_incr_reg_n_0_[7]\,
      O => \axaddr_incr[9]_i_2__0_n_0\
    );
\axaddr_incr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => \axaddr_incr_reg[11]_2\(0),
      Q => \^q\(0),
      R => '0'
    );
\axaddr_incr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => \axaddr_incr_reg[11]_2\(4),
      Q => \^q\(4),
      R => '0'
    );
\axaddr_incr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => \axaddr_incr_reg[11]_2\(5),
      Q => \axaddr_incr_reg_n_0_[11]\,
      R => '0'
    );
\axaddr_incr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => \axaddr_incr_reg[11]_2\(1),
      Q => \^q\(1),
      R => '0'
    );
\axaddr_incr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(2),
      Q => \axaddr_incr_reg_n_0_[2]\,
      R => '0'
    );
\axaddr_incr_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axaddr_incr[2]_i_2_n_0\,
      I1 => \axaddr_incr_reg[2]_0\,
      O => p_1_in(2),
      S => \^sel_first_reg_0\
    );
\axaddr_incr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(3),
      Q => \axaddr_incr_reg_n_0_[3]\,
      R => '0'
    );
\axaddr_incr_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axaddr_incr[3]_i_2_n_0\,
      I1 => \axaddr_incr_reg[3]_0\,
      O => p_1_in(3),
      S => \^sel_first_reg_0\
    );
\axaddr_incr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(4),
      Q => \axaddr_incr_reg_n_0_[4]\,
      R => '0'
    );
\axaddr_incr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => \axaddr_incr_reg[11]_2\(2),
      Q => \^q\(2),
      R => '0'
    );
\axaddr_incr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(6),
      Q => \axaddr_incr_reg_n_0_[6]\,
      R => '0'
    );
\axaddr_incr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(7),
      Q => \axaddr_incr_reg_n_0_[7]\,
      R => '0'
    );
\axaddr_incr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => \axaddr_incr_reg[11]_2\(3),
      Q => \^q\(3),
      R => '0'
    );
\axaddr_incr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(9),
      Q => \axaddr_incr_reg_n_0_[9]\,
      R => '0'
    );
\axlen_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88888B"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(16),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[4]_0\,
      I3 => axlen_cnt(1),
      I4 => \^axlen_cnt_reg[0]_0\(0),
      O => \axlen_cnt[1]_i_1_n_0\
    );
\axlen_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B888888888B"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(17),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[4]_0\,
      I3 => \^axlen_cnt_reg[0]_0\(0),
      I4 => axlen_cnt(1),
      I5 => axlen_cnt(2),
      O => \axlen_cnt[2]_i_1_n_0\
    );
\axlen_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEBAAAAAAAA"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_1\,
      I1 => axlen_cnt(3),
      I2 => \^axlen_cnt_reg[0]_0\(0),
      I3 => axlen_cnt(1),
      I4 => axlen_cnt(2),
      I5 => \axlen_cnt_reg[3]_0\,
      O => \axlen_cnt[3]_i_1_n_0\
    );
\axlen_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88888B"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(18),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[4]_0\,
      I3 => \axlen_cnt[4]_i_2_n_0\,
      I4 => axlen_cnt(4),
      O => \axlen_cnt[4]_i_1_n_0\
    );
\axlen_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => axlen_cnt(3),
      I1 => axlen_cnt(2),
      I2 => axlen_cnt(1),
      I3 => \^axlen_cnt_reg[0]_0\(0),
      O => \axlen_cnt[4]_i_2_n_0\
    );
\axlen_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF606060"
    )
        port map (
      I0 => axlen_cnt(5),
      I1 => \axlen_cnt[5]_i_2_n_0\,
      I2 => \axlen_cnt_reg[3]_0\,
      I3 => E(0),
      I4 => \axlen_cnt_reg[7]_0\(19),
      O => \axlen_cnt[5]_i_1_n_0\
    );
\axlen_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => axlen_cnt(4),
      I1 => \^axlen_cnt_reg[0]_0\(0),
      I2 => axlen_cnt(1),
      I3 => axlen_cnt(2),
      I4 => axlen_cnt(3),
      O => \axlen_cnt[5]_i_2_n_0\
    );
\axlen_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF606060"
    )
        port map (
      I0 => axlen_cnt(6),
      I1 => \axlen_cnt[8]_i_3_n_0\,
      I2 => \axlen_cnt_reg[3]_0\,
      I3 => E(0),
      I4 => \axlen_cnt_reg[7]_0\(20),
      O => \axlen_cnt[6]_i_1_n_0\
    );
\axlen_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA600A600A600"
    )
        port map (
      I0 => axlen_cnt(7),
      I1 => \axlen_cnt[8]_i_3_n_0\,
      I2 => axlen_cnt(6),
      I3 => \axlen_cnt_reg[3]_0\,
      I4 => E(0),
      I5 => \axlen_cnt_reg[7]_0\(21),
      O => \axlen_cnt[7]_i_1_n_0\
    );
\axlen_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044414444"
    )
        port map (
      I0 => E(0),
      I1 => axlen_cnt(8),
      I2 => axlen_cnt(6),
      I3 => axlen_cnt(7),
      I4 => \axlen_cnt[8]_i_3_n_0\,
      I5 => \^axlen_cnt_reg[4]_0\,
      O => \axlen_cnt[8]_i_2_n_0\
    );
\axlen_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => axlen_cnt(3),
      I1 => axlen_cnt(2),
      I2 => axlen_cnt(1),
      I3 => \^axlen_cnt_reg[0]_0\(0),
      I4 => axlen_cnt(4),
      I5 => axlen_cnt(5),
      O => \axlen_cnt[8]_i_3_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt_reg[0]_1\(0),
      Q => \^axlen_cnt_reg[0]_0\(0),
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[1]_i_1_n_0\,
      Q => axlen_cnt(1),
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[2]_i_1_n_0\,
      Q => axlen_cnt(2),
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[3]_i_1_n_0\,
      Q => axlen_cnt(3),
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[4]_i_1_n_0\,
      Q => axlen_cnt(4),
      R => '0'
    );
\axlen_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[5]_i_1_n_0\,
      Q => axlen_cnt(5),
      R => '0'
    );
\axlen_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[6]_i_1_n_0\,
      Q => axlen_cnt(6),
      R => '0'
    );
\axlen_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[7]_i_1_n_0\,
      Q => axlen_cnt(7),
      R => '0'
    );
\axlen_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[8]_0\(0),
      D => \axlen_cnt[8]_i_2_n_0\,
      Q => axlen_cnt(8),
      R => '0'
    );
\m_axi_awaddr[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^q\(0),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(0),
      O => sel_first_reg_12
    );
\m_axi_awaddr[10]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^q\(4),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(10),
      O => sel_first_reg_2
    );
\m_axi_awaddr[11]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[11]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(11),
      O => sel_first_reg_1
    );
\m_axi_awaddr[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^q\(1),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(1),
      O => sel_first_reg_11
    );
\m_axi_awaddr[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(2),
      O => sel_first_reg_10
    );
\m_axi_awaddr[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[3]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(3),
      O => sel_first_reg_9
    );
\m_axi_awaddr[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(4),
      O => sel_first_reg_8
    );
\m_axi_awaddr[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^q\(2),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(5),
      O => sel_first_reg_7
    );
\m_axi_awaddr[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[6]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(6),
      O => sel_first_reg_6
    );
\m_axi_awaddr[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[7]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(7),
      O => sel_first_reg_5
    );
\m_axi_awaddr[8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^q\(3),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(8),
      O => sel_first_reg_4
    );
\m_axi_awaddr[9]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[9]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(9),
      O => sel_first_reg_3
    );
next_pending_r_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => axlen_cnt(4),
      I1 => axlen_cnt(5),
      I2 => axlen_cnt(1),
      I3 => axlen_cnt(8),
      I4 => next_pending_r_i_6_n_0,
      O => \^axlen_cnt_reg[4]_0\
    );
next_pending_r_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => axlen_cnt(3),
      I1 => axlen_cnt(2),
      I2 => axlen_cnt(7),
      I3 => axlen_cnt(6),
      O => next_pending_r_i_6_n_0
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => incr_next_pending,
      Q => next_pending_r,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_13,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd_2 is
  port (
    next_pending_r : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[3]_1\ : out STD_LOGIC;
    \axlen_cnt_reg[5]_0\ : out STD_LOGIC;
    \axlen_cnt_reg[4]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[11]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[6]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[5]_0\ : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    sel_first_reg_2 : out STD_LOGIC;
    sel_first_reg_3 : out STD_LOGIC;
    sel_first_reg_4 : out STD_LOGIC;
    sel_first_reg_5 : out STD_LOGIC;
    sel_first_reg_6 : out STD_LOGIC;
    sel_first_reg_7 : out STD_LOGIC;
    sel_first_reg_8 : out STD_LOGIC;
    sel_first_reg_9 : out STD_LOGIC;
    sel_first_reg_10 : out STD_LOGIC;
    sel_first_reg_11 : out STD_LOGIC;
    sel_first_reg_12 : out STD_LOGIC;
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sel_first_reg_13 : in STD_LOGIC;
    \axlen_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \axlen_cnt_reg[2]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[3]_2\ : in STD_LOGIC;
    \axaddr_incr_reg[2]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[4]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[5]_1\ : in STD_LOGIC;
    \axaddr_incr_reg[8]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[9]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[10]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[3]_0\ : in STD_LOGIC;
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[11]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd_2 : entity is "axi_protocol_converter_v2_1_31_b2s_incr_cmd";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd_2;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axaddr_incr[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \^axaddr_incr_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axaddr_incr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[11]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[9]\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \^axlen_cnt_reg[3]_1\ : STD_LOGIC;
  signal \^axlen_cnt_reg[5]_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \next_pending_r_i_6__0_n_0\ : STD_LOGIC;
  signal \^sel_first_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axaddr_incr[8]_i_3__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axlen_cnt[5]_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \next_pending_r_i_6__0\ : label is "soft_lutpair7";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \axaddr_incr_reg[7]_0\(3 downto 0) <= \^axaddr_incr_reg[7]_0\(3 downto 0);
  \axlen_cnt_reg[3]_1\ <= \^axlen_cnt_reg[3]_1\;
  \axlen_cnt_reg[5]_0\ <= \^axlen_cnt_reg[5]_0\;
  sel_first_reg_0 <= \^sel_first_reg_0\;
\axaddr_incr[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606F6F606F606F60"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(10),
      I1 => \axaddr_incr_reg[10]_0\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[10]\,
      I4 => \axaddr_incr[10]_i_2__0_n_0\,
      I5 => \axaddr_incr_reg_n_0_[9]\,
      O => \axaddr_incr[10]_i_1__0_n_0\
    );
\axaddr_incr[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[8]\,
      I1 => \^axaddr_incr_reg[7]_0\(2),
      I2 => \axaddr_incr_reg_n_0_[4]\,
      I3 => \axaddr_incr[5]_i_2__0_n_0\,
      I4 => \axaddr_incr_reg_n_0_[5]\,
      I5 => \^axaddr_incr_reg[7]_0\(3),
      O => \axaddr_incr[10]_i_2__0_n_0\
    );
\axaddr_incr[11]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[11]\,
      I1 => \axaddr_incr_reg_n_0_[9]\,
      I2 => \axaddr_incr[10]_i_2__0_n_0\,
      I3 => \axaddr_incr_reg_n_0_[10]\,
      O => \axaddr_incr_reg[11]_0\
    );
\axaddr_incr[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA66556A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[2]\,
      I1 => \^axaddr_incr_reg[7]_0\(1),
      I2 => \^axaddr_incr_reg[7]_0\(0),
      I3 => \axlen_cnt_reg[7]_0\(13),
      I4 => \axlen_cnt_reg[7]_0\(12),
      O => \axaddr_incr[2]_i_2__0_n_0\
    );
\axaddr_incr[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00555F7FFFAAA080"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[2]\,
      I1 => \^axaddr_incr_reg[7]_0\(0),
      I2 => \^axaddr_incr_reg[7]_0\(1),
      I3 => \axlen_cnt_reg[7]_0\(12),
      I4 => \axlen_cnt_reg[7]_0\(13),
      I5 => \axaddr_incr_reg_n_0_[3]\,
      O => \axaddr_incr[3]_i_2__0_n_0\
    );
\axaddr_incr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"909F9F90"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(4),
      I1 => \axaddr_incr_reg[4]_0\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[4]\,
      I4 => \axaddr_incr[5]_i_2__0_n_0\,
      O => \axaddr_incr[4]_i_1__0_n_0\
    );
\axaddr_incr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F9F909F909F90"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(5),
      I1 => \axaddr_incr_reg[5]_1\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[5]\,
      I4 => \axaddr_incr[5]_i_2__0_n_0\,
      I5 => \axaddr_incr_reg_n_0_[4]\,
      O => \axaddr_incr[5]_i_1__0_n_0\
    );
\axaddr_incr[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F000A0008000"
    )
        port map (
      I0 => \^axaddr_incr_reg[7]_0\(1),
      I1 => \^axaddr_incr_reg[7]_0\(0),
      I2 => \axaddr_incr_reg_n_0_[2]\,
      I3 => \axaddr_incr_reg_n_0_[3]\,
      I4 => \axlen_cnt_reg[7]_0\(12),
      I5 => \axlen_cnt_reg[7]_0\(13),
      O => \axaddr_incr[5]_i_2__0_n_0\
    );
\axaddr_incr[6]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[5]\,
      I1 => \axaddr_incr[5]_i_2__0_n_0\,
      I2 => \axaddr_incr_reg_n_0_[4]\,
      O => \axaddr_incr_reg[5]_0\
    );
\axaddr_incr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axaddr_incr_reg[7]_0\(2),
      I1 => \axaddr_incr_reg_n_0_[4]\,
      I2 => \axaddr_incr[5]_i_2__0_n_0\,
      I3 => \axaddr_incr_reg_n_0_[5]\,
      O => \axaddr_incr_reg[6]_0\
    );
\axaddr_incr[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"909F9F90"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(8),
      I1 => \axaddr_incr_reg[8]_0\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[8]\,
      I4 => \axaddr_incr[8]_i_3__0_n_0\,
      O => \axaddr_incr[8]_i_1__0_n_0\
    );
\axaddr_incr[8]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^axaddr_incr_reg[7]_0\(3),
      I1 => \axaddr_incr_reg_n_0_[5]\,
      I2 => \axaddr_incr[5]_i_2__0_n_0\,
      I3 => \axaddr_incr_reg_n_0_[4]\,
      I4 => \^axaddr_incr_reg[7]_0\(2),
      O => \axaddr_incr[8]_i_3__0_n_0\
    );
\axaddr_incr[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"909F9F90"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(9),
      I1 => \axaddr_incr_reg[9]_0\,
      I2 => \^sel_first_reg_0\,
      I3 => \axaddr_incr_reg_n_0_[9]\,
      I4 => \axaddr_incr[10]_i_2__0_n_0\,
      O => \axaddr_incr[9]_i_1__0_n_0\
    );
\axaddr_incr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr_reg[11]_2\(0),
      Q => \^axaddr_incr_reg[7]_0\(0),
      R => '0'
    );
\axaddr_incr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr[10]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[10]\,
      R => '0'
    );
\axaddr_incr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr_reg[11]_2\(4),
      Q => \axaddr_incr_reg_n_0_[11]\,
      R => '0'
    );
\axaddr_incr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr_reg[11]_2\(1),
      Q => \^axaddr_incr_reg[7]_0\(1),
      R => '0'
    );
\axaddr_incr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr_reg[2]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[2]\,
      R => '0'
    );
\axaddr_incr_reg[2]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axaddr_incr[2]_i_2__0_n_0\,
      I1 => \axaddr_incr_reg[2]_0\,
      O => \axaddr_incr_reg[2]_i_1__0_n_0\,
      S => \^sel_first_reg_0\
    );
\axaddr_incr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr_reg[3]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[3]\,
      R => '0'
    );
\axaddr_incr_reg[3]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axaddr_incr[3]_i_2__0_n_0\,
      I1 => \axaddr_incr_reg[3]_0\,
      O => \axaddr_incr_reg[3]_i_1__0_n_0\,
      S => \^sel_first_reg_0\
    );
\axaddr_incr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr[4]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[4]\,
      R => '0'
    );
\axaddr_incr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr[5]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[5]\,
      R => '0'
    );
\axaddr_incr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr_reg[11]_2\(2),
      Q => \^axaddr_incr_reg[7]_0\(2),
      R => '0'
    );
\axaddr_incr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr_reg[11]_2\(3),
      Q => \^axaddr_incr_reg[7]_0\(3),
      R => '0'
    );
\axaddr_incr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr[8]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[8]\,
      R => '0'
    );
\axaddr_incr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[11]_1\(0),
      D => \axaddr_incr[9]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[9]\,
      R => '0'
    );
\axlen_cnt[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88888B"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(15),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[5]_0\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \^q\(0),
      O => \axlen_cnt[1]_i_1__2_n_0\
    );
\axlen_cnt[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA900A900A900"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[2]\,
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \axlen_cnt_reg[2]_0\,
      I4 => E(0),
      I5 => \axlen_cnt_reg[7]_0\(16),
      O => \axlen_cnt[2]_i_1__1_n_0\
    );
\axlen_cnt[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEBAAAAAAAA"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_2\,
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => \axlen_cnt_reg[2]_0\,
      O => \axlen_cnt[3]_i_1__1_n_0\
    );
\axlen_cnt[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \axlen_cnt_reg_n_0_[1]\,
      O => \axlen_cnt_reg[3]_0\
    );
\axlen_cnt[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt_reg[4]_0\
    );
\axlen_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF828882888288"
    )
        port map (
      I0 => \axlen_cnt_reg[2]_0\,
      I1 => \axlen_cnt_reg_n_0_[7]\,
      I2 => \^q\(3),
      I3 => \^axlen_cnt_reg[3]_1\,
      I4 => E(0),
      I5 => \axlen_cnt_reg[7]_0\(17),
      O => \axlen_cnt[7]_i_2_n_0\
    );
\axlen_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \^axlen_cnt_reg[3]_1\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt_reg[6]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[1]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[2]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[3]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt_reg[6]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\axlen_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt_reg[6]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\axlen_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt_reg[6]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
\axlen_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[7]_i_2_n_0\,
      Q => \axlen_cnt_reg_n_0_[7]\,
      R => '0'
    );
\m_axi_araddr[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^axaddr_incr_reg[7]_0\(0),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(0),
      O => sel_first_reg_12
    );
\m_axi_araddr[10]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[10]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(10),
      O => sel_first_reg_2
    );
\m_axi_araddr[11]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[11]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(11),
      O => sel_first_reg_1
    );
\m_axi_araddr[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^axaddr_incr_reg[7]_0\(1),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(1),
      O => sel_first_reg_11
    );
\m_axi_araddr[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(2),
      O => sel_first_reg_10
    );
\m_axi_araddr[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[3]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(3),
      O => sel_first_reg_9
    );
\m_axi_araddr[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(4),
      O => sel_first_reg_8
    );
\m_axi_araddr[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[5]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(5),
      O => sel_first_reg_7
    );
\m_axi_araddr[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^axaddr_incr_reg[7]_0\(2),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(6),
      O => sel_first_reg_6
    );
\m_axi_araddr[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \^axaddr_incr_reg[7]_0\(3),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(7),
      O => sel_first_reg_5
    );
\m_axi_araddr[8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[8]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(8),
      O => sel_first_reg_4
    );
\m_axi_araddr[9]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axaddr_incr_reg_n_0_[9]\,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \axlen_cnt_reg[7]_0\(9),
      O => sel_first_reg_3
    );
\next_pending_r_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \axlen_cnt_reg_n_0_[7]\,
      I3 => \next_pending_r_i_6__0_n_0\,
      O => \^axlen_cnt_reg[5]_0\
    );
\next_pending_r_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      O => \next_pending_r_i_6__0_n_0\
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => incr_next_pending,
      Q => next_pending_r,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_13,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_rd_cmd_fsm is
  port (
    m_valid_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel_first_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axaddr_offset : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC;
    incr_next_pending : out STD_LOGIC;
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axlen_cnt_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sel_first_reg_0 : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_push : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_valid_i0 : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    si_rs_arvalid : in STD_LOGIC;
    next_pending_r_reg : in STD_LOGIC;
    \axaddr_incr_reg[11]\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    next_pending_r_reg_0 : in STD_LOGIC;
    next_pending_r : in STD_LOGIC;
    \axlen_cnt_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[6]_1\ : in STD_LOGIC;
    \axlen_cnt_reg[6]_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axlen_cnt_reg[5]\ : in STD_LOGIC;
    \axlen_cnt_reg[4]\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_3\ : in STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    sel_first_reg_3 : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_rd_cmd_fsm : entity is "axi_protocol_converter_v2_1_31_b2s_rd_cmd_fsm";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_rd_cmd_fsm;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_rd_cmd_fsm is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^axaddr_offset\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \axaddr_offset_r[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \^axaddr_offset_r_reg[3]\ : STD_LOGIC;
  signal \^m_valid_i_reg\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wrap_cnt_r[3]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11";
  attribute SOFT_HLUTNM of \axaddr_incr[11]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axaddr_offset_r[3]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_valid_i_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_pending_r_i_4__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_push_r_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[11]_i_1__0\ : label is "soft_lutpair0";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  E(0) <= \^e\(0);
  \FSM_sequential_state_reg[0]_0\ <= \^fsm_sequential_state_reg[0]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  axaddr_offset(2 downto 0) <= \^axaddr_offset\(2 downto 0);
  \axaddr_offset_r_reg[3]\ <= \^axaddr_offset_r_reg[3]\;
  m_valid_i_reg <= \^m_valid_i_reg\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5F1FFF0F"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_1\,
      I1 => m_axi_arready,
      I2 => \^q\(1),
      I3 => \FSM_sequential_state_reg[0]_1\,
      I4 => \^q\(0),
      O => \next_state__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74CC44CC"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_1\,
      I1 => \^q\(1),
      I2 => \FSM_sequential_state_reg[0]_1\,
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      O => \next_state__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \next_state__0\(0),
      Q => \^q\(0),
      S => areset_d1
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \next_state__0\(1),
      Q => \^q\(1),
      R => areset_d1
    );
\axaddr_incr[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \axaddr_incr_reg[11]\,
      I1 => m_axi_arready,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => sel_first_reg(0)
    );
\axaddr_offset_r[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2__0_n_0\,
      O => \^axaddr_offset\(0)
    );
\axaddr_offset_r[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555535555555F555"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]_0\(0),
      I1 => \axlen_cnt_reg[6]_2\(0),
      I2 => si_rs_arvalid,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \wrap_second_len_r_reg[3]_3\,
      O => \axaddr_offset_r[0]_i_2__0_n_0\
    );
\axaddr_offset_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0AAAAAAAAAAAA"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]_0\(1),
      I1 => \axlen_cnt_reg[6]_2\(1),
      I2 => \axaddr_offset_r_reg[2]\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => si_rs_arvalid,
      O => \^axaddr_offset\(1)
    );
\axaddr_offset_r[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBF00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      I3 => \axaddr_offset_r_reg[3]_0\(2),
      I4 => \wrap_second_len_r_reg[3]_1\,
      O => \^axaddr_offset\(2)
    );
\axlen_cnt[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => \^q\(1),
      I1 => si_rs_arvalid,
      I2 => \axlen_cnt_reg[6]_2\(0),
      I3 => \axlen_cnt_reg[6]_0\(0),
      I4 => \^m_valid_i_reg\,
      O => \axlen_cnt_reg[6]\(0)
    );
\axlen_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \^e\(0),
      I1 => \axlen_cnt_reg[6]_2\(2),
      I2 => \axlen_cnt_reg[6]_0\(1),
      I3 => \axlen_cnt_reg[4]\,
      I4 => \^m_valid_i_reg\,
      O => \axlen_cnt_reg[6]\(1)
    );
\axlen_cnt[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF282828"
    )
        port map (
      I0 => \^m_valid_i_reg\,
      I1 => \axlen_cnt_reg[6]_0\(2),
      I2 => \axlen_cnt_reg[5]\,
      I3 => \^e\(0),
      I4 => \axlen_cnt_reg[6]_2\(3),
      O => \axlen_cnt_reg[6]\(2)
    );
\axlen_cnt[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF282828"
    )
        port map (
      I0 => \^m_valid_i_reg\,
      I1 => \axlen_cnt_reg[6]_0\(3),
      I2 => \axlen_cnt_reg[6]_1\,
      I3 => \^e\(0),
      I4 => \axlen_cnt_reg[6]_2\(4),
      O => \axlen_cnt_reg[6]\(3)
    );
\axlen_cnt[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA00"
    )
        port map (
      I0 => si_rs_arvalid,
      I1 => m_axi_arready,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => m_valid_i_reg_0(0)
    );
\axlen_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => si_rs_arvalid,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => next_pending_r_reg,
      O => \^m_valid_i_reg\
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => m_axi_arvalid
    );
\m_payload_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      O => \FSM_sequential_state_reg[1]_0\(0)
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0FFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      I3 => s_axi_arvalid,
      I4 => m_valid_i_reg_1,
      O => m_valid_i0
    );
\next_pending_r_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => next_pending_r_reg_0,
      I1 => \^e\(0),
      I2 => next_pending_r,
      I3 => next_pending_r_reg,
      I4 => \^fsm_sequential_state_reg[0]_0\,
      O => incr_next_pending
    );
\next_pending_r_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => m_axi_arready,
      O => \^fsm_sequential_state_reg[0]_0\
    );
r_push_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => r_push
    );
\sel_first_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2FAA2AAA"
    )
        port map (
      I0 => sel_first_reg_2,
      I1 => m_axi_arready,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => areset_d1,
      O => sel_first_reg_0
    );
\sel_first_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2FAA2AAA"
    )
        port map (
      I0 => \axaddr_incr_reg[11]\,
      I1 => m_axi_arready,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => areset_d1,
      O => sel_first_reg_1
    );
\sel_first_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4FCC4CCC"
    )
        port map (
      I0 => m_axi_arready,
      I1 => sel_first_reg_3,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => areset_d1,
      O => sel_first_i
    );
\wrap_boundary_axaddr_r[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      O => \^e\(0)
    );
\wrap_cnt_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1AAAAAA51555555"
    )
        port map (
      I0 => \^axaddr_offset_r_reg[3]\,
      I1 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => \wrap_second_len_r_reg[3]_2\(0),
      O => \wrap_second_len_r_reg[3]\(0)
    );
\wrap_cnt_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA56A6AAAAAAAA"
    )
        port map (
      I0 => \^d\(2),
      I1 => \wrap_second_len_r_reg[3]_2\(0),
      I2 => \^e\(0),
      I3 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I4 => \^axaddr_offset_r_reg[3]\,
      I5 => \^d\(1),
      O => \wrap_second_len_r_reg[3]\(1)
    );
\wrap_cnt_r[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000202"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \^axaddr_offset\(1),
      I3 => \^e\(0),
      I4 => \axaddr_offset_r_reg[3]_0\(2),
      I5 => \wrap_second_len_r_reg[3]_1\,
      O => \^axaddr_offset_r_reg[3]\
    );
\wrap_cnt_r[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^d\(1),
      I2 => \wrap_cnt_r[3]_i_2__0_n_0\,
      I3 => \^d\(2),
      O => \wrap_second_len_r_reg[3]\(2)
    );
\wrap_cnt_r[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE2222EEE02222"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_2\(0),
      I1 => \^e\(0),
      I2 => \^axaddr_offset\(2),
      I3 => \^axaddr_offset\(1),
      I4 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I5 => \wrap_second_len_r_reg[3]_0\(0),
      O => \wrap_cnt_r[3]_i_2__0_n_0\
    );
\wrap_second_len_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0FFFFF0E00000"
    )
        port map (
      I0 => \^axaddr_offset\(2),
      I1 => \^axaddr_offset\(1),
      I2 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I3 => \wrap_second_len_r_reg[3]_0\(0),
      I4 => \^e\(0),
      I5 => \wrap_second_len_r_reg[3]_2\(0),
      O => \^d\(0)
    );
\wrap_second_len_r[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0FFFF0FE00000"
    )
        port map (
      I0 => \^axaddr_offset\(2),
      I1 => \^axaddr_offset\(1),
      I2 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I3 => \wrap_second_len_r_reg[3]_0\(0),
      I4 => \^e\(0),
      I5 => \wrap_second_len_r_reg[3]_2\(1),
      O => \^d\(1)
    );
\wrap_second_len_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD20FFFFDD200000"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \wrap_second_len_r_reg[3]_1\,
      I3 => \^axaddr_offset\(1),
      I4 => \^e\(0),
      I5 => \wrap_second_len_r_reg[3]_2\(2),
      O => \^d\(2)
    );
\wrap_second_len_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDD0F000F00"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \^e\(0),
      I3 => \wrap_second_len_r_reg[3]_2\(3),
      I4 => \^axaddr_offset\(1),
      I5 => \wrap_second_len_r_reg[3]_1\,
      O => \^d\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_read_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bresp_push : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset_d1_reg : out STD_LOGIC;
    shandshake_r : in STD_LOGIC;
    b_push : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \memory_reg[3][0]_srl4_i_1__0_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    si_rs_bvalid : in STD_LOGIC;
    si_rs_bready : in STD_LOGIC;
    mhandshake_r : in STD_LOGIC;
    bvalid_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo : entity is "axi_protocol_converter_v2_1_31_b2s_simple_fifo";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^bresp_push\ : STD_LOGIC;
  signal bvalid_i_i_2_n_0 : STD_LOGIC;
  signal \cnt_read[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_2_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_3_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_5_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][1]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][2]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][3]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][4]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][5]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][6]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][7]_srl4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[8]_i_6\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of bvalid_i_i_1 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_2\ : label is "soft_lutpair94";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][0]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][1]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][2]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][2]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][2]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][3]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][3]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][3]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][4]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][4]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][4]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][5]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][5]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][5]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][6]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][6]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][6]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][7]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][7]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][7]_srl4 ";
  attribute SOFT_HLUTNM of \s_bresp_acc[1]_i_1\ : label is "soft_lutpair95";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  bresp_push <= \^bresp_push\;
\axaddr_incr[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \cnt_read_reg[0]_0\
    );
bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => areset_d1,
      I1 => bvalid_i_i_2_n_0,
      I2 => si_rs_bvalid,
      I3 => si_rs_bready,
      O => areset_d1_reg
    );
bvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00070707"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => shandshake_r,
      I3 => bvalid_i_reg(1),
      I4 => bvalid_i_reg(0),
      I5 => si_rs_bvalid,
      O => bvalid_i_i_2_n_0
    );
\cnt_read[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cnt_read[0]_i_1__1_n_0\
    );
\cnt_read[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => shandshake_r,
      I1 => b_push,
      O => \cnt_read[1]_i_1_n_0\
    );
\cnt_read[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => shandshake_r,
      I1 => \^bresp_push\,
      O => E(0)
    );
\cnt_read[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => shandshake_r,
      I1 => b_push,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \cnt_read[1]_i_2_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[1]_i_1_n_0\,
      D => \cnt_read[0]_i_1__1_n_0\,
      Q => \^q\(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[1]_i_1_n_0\,
      D => \cnt_read[1]_i_2_n_0\,
      Q => \^q\(1),
      S => areset_d1
    );
\memory_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(0),
      Q => \memory_reg[3][0]_srl4_n_0\
    );
\memory_reg[3][0]_srl4_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000090"
    )
        port map (
      I0 => \memory_reg[3][0]_srl4_i_1__0_0\(3),
      I1 => \memory_reg[3][3]_srl4_n_0\,
      I2 => \memory_reg[3][0]_srl4_i_2_n_0\,
      I3 => \memory_reg[3][0]_srl4_i_3_n_0\,
      I4 => \memory_reg[3][0]_srl4_i_4_n_0\,
      I5 => \memory_reg[3][0]_srl4_i_5_n_0\,
      O => \^bresp_push\
    );
\memory_reg[3][0]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90990000"
    )
        port map (
      I0 => \memory_reg[3][4]_srl4_n_0\,
      I1 => \memory_reg[3][0]_srl4_i_1__0_0\(4),
      I2 => \memory_reg[3][0]_srl4_i_1__0_0\(7),
      I3 => \memory_reg[3][7]_srl4_n_0\,
      I4 => mhandshake_r,
      O => \memory_reg[3][0]_srl4_i_2_n_0\
    );
\memory_reg[3][0]_srl4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FF22FF22FF2"
    )
        port map (
      I0 => \memory_reg[3][1]_srl4_n_0\,
      I1 => \memory_reg[3][0]_srl4_i_1__0_0\(1),
      I2 => \memory_reg[3][0]_srl4_n_0\,
      I3 => \memory_reg[3][0]_srl4_i_1__0_0\(0),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \memory_reg[3][0]_srl4_i_3_n_0\
    );
\memory_reg[3][0]_srl4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F666F6FFFF66F6"
    )
        port map (
      I0 => \memory_reg[3][2]_srl4_n_0\,
      I1 => \memory_reg[3][0]_srl4_i_1__0_0\(2),
      I2 => \memory_reg[3][0]_srl4_i_1__0_0\(1),
      I3 => \memory_reg[3][1]_srl4_n_0\,
      I4 => \memory_reg[3][0]_srl4_i_1__0_0\(5),
      I5 => \memory_reg[3][5]_srl4_n_0\,
      O => \memory_reg[3][0]_srl4_i_4_n_0\
    );
\memory_reg[3][0]_srl4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFFFFFF22F2"
    )
        port map (
      I0 => \memory_reg[3][5]_srl4_n_0\,
      I1 => \memory_reg[3][0]_srl4_i_1__0_0\(5),
      I2 => \memory_reg[3][0]_srl4_i_1__0_0\(7),
      I3 => \memory_reg[3][7]_srl4_n_0\,
      I4 => \memory_reg[3][6]_srl4_n_0\,
      I5 => \memory_reg[3][0]_srl4_i_1__0_0\(6),
      O => \memory_reg[3][0]_srl4_i_5_n_0\
    );
\memory_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(1),
      Q => \memory_reg[3][1]_srl4_n_0\
    );
\memory_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(2),
      Q => \memory_reg[3][2]_srl4_n_0\
    );
\memory_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(3),
      Q => \memory_reg[3][3]_srl4_n_0\
    );
\memory_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(4),
      Q => \memory_reg[3][4]_srl4_n_0\
    );
\memory_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(5),
      Q => \memory_reg[3][5]_srl4_n_0\
    );
\memory_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(6),
      Q => \memory_reg[3][6]_srl4_n_0\
    );
\memory_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(7),
      Q => \memory_reg[3][7]_srl4_n_0\
    );
\s_bresp_acc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => areset_d1,
      I1 => \^bresp_push\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mhandshake : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    shandshake_r : in STD_LOGIC;
    sel : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_bresp_acc_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    mhandshake_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \cnt_read_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized0\ : entity is "axi_protocol_converter_v2_1_31_b2s_simple_fifo";
end \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized0\;

architecture STRUCTURE of \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt_read[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \^mhandshake\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1__2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_2__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of m_axi_bready_INST_0 : label is "soft_lutpair96";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][0]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][1]_srl4 ";
  attribute SOFT_HLUTNM of mhandshake_r_i_1 : label is "soft_lutpair97";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  mhandshake <= \^mhandshake\;
\cnt_read[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \cnt_read[0]_i_1__2_n_0\
    );
\cnt_read[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => shandshake_r,
      I1 => sel,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \cnt_read[1]_i_2__0_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read_reg[1]_0\(0),
      D => \cnt_read[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read_reg[1]_0\(0),
      D => \cnt_read[1]_i_2__0_n_0\,
      Q => \^q\(1),
      S => areset_d1
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => mhandshake_r,
      O => m_axi_bready
    );
\memory_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => sel,
      CLK => aclk,
      D => \s_bresp_acc_reg[0]\(0),
      Q => \out\(0)
    );
\memory_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => '0',
      A3 => '0',
      CE => sel,
      CLK => aclk,
      D => \s_bresp_acc_reg[0]\(1),
      Q => \out\(1)
    );
mhandshake_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => mhandshake_r,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \^mhandshake\
    );
\s_bresp_acc[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088A0808"
    )
        port map (
      I0 => \^mhandshake\,
      I1 => m_axi_bresp(1),
      I2 => \s_bresp_acc_reg[0]\(1),
      I3 => \s_bresp_acc_reg[0]\(0),
      I4 => m_axi_bresp(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized1\ is
  port (
    \cnt_read_reg[3]_0\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \cnt_read_reg[0]_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    \cnt_read_reg[4]_0\ : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized1\ : entity is "axi_protocol_converter_v2_1_31_b2s_simple_fifo";
end \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized1\;

architecture STRUCTURE of \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized1\ is
  signal \cnt_read[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_4_n_0\ : STD_LOGIC;
  signal cnt_read_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_en0 : STD_LOGIC;
  signal \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1__2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_read[2]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_read[3]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of m_axi_rready_INST_0 : label is "soft_lutpair14";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][13]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][13]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][14]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][14]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][15]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][15]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][16]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][16]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][17]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][17]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][18]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][18]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][19]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][19]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][20]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][20]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][21]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][21]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][22]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][22]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][23]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][23]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][24]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][24]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][25]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][25]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][26]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][26]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][27]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][27]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][28]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][28]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][29]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][29]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][30]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][30]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][31]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][31]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][32]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][32]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][32]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][33]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][33]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][33]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl32 ";
begin
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40C0C000"
    )
        port map (
      I0 => cnt_read_reg(0),
      I1 => cnt_read_reg(3),
      I2 => cnt_read_reg(4),
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(2),
      O => \cnt_read_reg[0]_0\
    );
\cnt_read[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_read_reg(0),
      O => \cnt_read[0]_i_1__0_n_0\
    );
\cnt_read[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cnt_read_reg(0),
      I1 => \cnt_read[4]_i_4_n_0\,
      I2 => cnt_read_reg(1),
      O => \cnt_read[1]_i_1__2_n_0\
    );
\cnt_read[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \cnt_read[4]_i_4_n_0\,
      I1 => cnt_read_reg(0),
      I2 => cnt_read_reg(2),
      I3 => cnt_read_reg(1),
      O => \cnt_read[2]_i_1__0_n_0\
    );
\cnt_read[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => cnt_read_reg(0),
      I1 => cnt_read_reg(1),
      I2 => \cnt_read[4]_i_4_n_0\,
      I3 => cnt_read_reg(2),
      I4 => cnt_read_reg(3),
      O => \cnt_read[3]_i_1__0_n_0\
    );
\cnt_read[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_en0,
      I1 => \cnt_read_reg[4]_0\,
      O => \cnt_read[4]_i_1__0_n_0\
    );
\cnt_read[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => cnt_read_reg(4),
      I1 => cnt_read_reg(0),
      I2 => cnt_read_reg(1),
      I3 => \cnt_read[4]_i_4_n_0\,
      I4 => cnt_read_reg(3),
      I5 => cnt_read_reg(2),
      O => \cnt_read[4]_i_2__0_n_0\
    );
\cnt_read[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en0,
      I1 => \cnt_read_reg[4]_0\,
      O => \cnt_read[4]_i_4_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[0]_i_1__0_n_0\,
      Q => cnt_read_reg(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[1]_i_1__2_n_0\,
      Q => cnt_read_reg(1),
      S => areset_d1
    );
\cnt_read_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[2]_i_1__0_n_0\,
      Q => cnt_read_reg(2),
      S => areset_d1
    );
\cnt_read_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[3]_i_1__0_n_0\,
      Q => cnt_read_reg(3),
      S => areset_d1
    );
\cnt_read_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[4]_i_2__0_n_0\,
      Q => cnt_read_reg(4),
      S => areset_d1
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FFF1FFF"
    )
        port map (
      I0 => cnt_read_reg(2),
      I1 => cnt_read_reg(1),
      I2 => cnt_read_reg(4),
      I3 => cnt_read_reg(3),
      I4 => cnt_read_reg(0),
      O => m_axi_rready
    );
m_valid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => cnt_read_reg(3),
      I1 => cnt_read_reg(4),
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(2),
      I4 => cnt_read_reg(1),
      I5 => m_valid_i_reg,
      O => \cnt_read_reg[3]_0\
    );
\memory_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(0),
      Q => \out\(0),
      Q31 => \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82AAAAAA02AAAAAA"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => cnt_read_reg(2),
      I2 => cnt_read_reg(1),
      I3 => cnt_read_reg(4),
      I4 => cnt_read_reg(3),
      I5 => cnt_read_reg(0),
      O => wr_en0
    );
\memory_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(10),
      Q => \out\(10),
      Q31 => \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(11),
      Q => \out\(11),
      Q31 => \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(12),
      Q => \out\(12),
      Q31 => \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(13),
      Q => \out\(13),
      Q31 => \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][14]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(14),
      Q => \out\(14),
      Q31 => \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][15]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(15),
      Q => \out\(15),
      Q31 => \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(16),
      Q => \out\(16),
      Q31 => \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][17]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(17),
      Q => \out\(17),
      Q31 => \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][18]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(18),
      Q => \out\(18),
      Q31 => \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][19]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(19),
      Q => \out\(19),
      Q31 => \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(1),
      Q => \out\(1),
      Q31 => \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(20),
      Q => \out\(20),
      Q31 => \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][21]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(21),
      Q => \out\(21),
      Q31 => \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(22),
      Q => \out\(22),
      Q31 => \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][23]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(23),
      Q => \out\(23),
      Q31 => \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][24]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(24),
      Q => \out\(24),
      Q31 => \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][25]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(25),
      Q => \out\(25),
      Q31 => \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][26]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(26),
      Q => \out\(26),
      Q31 => \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][27]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(27),
      Q => \out\(27),
      Q31 => \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][28]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(28),
      Q => \out\(28),
      Q31 => \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(29),
      Q => \out\(29),
      Q31 => \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(2),
      Q => \out\(2),
      Q31 => \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][30]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(30),
      Q => \out\(30),
      Q31 => \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(31),
      Q => \out\(31),
      Q31 => \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][32]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(32),
      Q => \out\(32),
      Q31 => \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][33]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(33),
      Q => \out\(33),
      Q31 => \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(3),
      Q => \out\(3),
      Q31 => \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(4),
      Q => \out\(4),
      Q31 => \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(5),
      Q => \out\(5),
      Q31 => \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(6),
      Q => \out\(6),
      Q31 => \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(7),
      Q => \out\(7),
      Q31 => \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(8),
      Q31 => \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(9),
      Q => \out\(9),
      Q31 => \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized2\ is
  port (
    si_rs_rlast : out STD_LOGIC;
    \cnt_read_reg[4]_0\ : out STD_LOGIC;
    \cnt_read_reg[4]_1\ : out STD_LOGIC;
    r_push_r : in STD_LOGIC;
    trans_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \cnt_read_reg[4]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized2\ : entity is "axi_protocol_converter_v2_1_31_b2s_simple_fifo";
end \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized2\;

architecture STRUCTURE of \design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized2\ is
  signal \cnt_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_3_n_0\ : STD_LOGIC;
  signal cnt_read_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_read[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_read[4]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of m_valid_i_i_3 : label is "soft_lutpair17";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl32 ";
begin
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515155515151555"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]\,
      I1 => cnt_read_reg(4),
      I2 => cnt_read_reg(3),
      I3 => cnt_read_reg(2),
      I4 => cnt_read_reg(1),
      I5 => cnt_read_reg(0),
      O => \cnt_read_reg[4]_0\
    );
\cnt_read[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_read_reg(0),
      O => \cnt_read[0]_i_1_n_0\
    );
\cnt_read[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => cnt_read_reg(0),
      I1 => r_push_r,
      I2 => \cnt_read_reg[4]_2\,
      I3 => cnt_read_reg(1),
      O => \cnt_read[1]_i_1__1_n_0\
    );
\cnt_read[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40F40B"
    )
        port map (
      I0 => \cnt_read_reg[4]_2\,
      I1 => r_push_r,
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(2),
      I4 => cnt_read_reg(1),
      O => \cnt_read[2]_i_1_n_0\
    );
\cnt_read[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FEEFE00801101"
    )
        port map (
      I0 => cnt_read_reg(0),
      I1 => cnt_read_reg(1),
      I2 => r_push_r,
      I3 => \cnt_read_reg[4]_2\,
      I4 => cnt_read_reg(2),
      I5 => cnt_read_reg(3),
      O => \cnt_read[3]_i_1_n_0\
    );
\cnt_read[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_push_r,
      I1 => \cnt_read_reg[4]_2\,
      O => \cnt_read[4]_i_1_n_0\
    );
\cnt_read[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => cnt_read_reg(4),
      I1 => \cnt_read[4]_i_3_n_0\,
      I2 => cnt_read_reg(3),
      I3 => cnt_read_reg(2),
      O => \cnt_read[4]_i_2_n_0\
    );
\cnt_read[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75555510"
    )
        port map (
      I0 => cnt_read_reg(2),
      I1 => \cnt_read_reg[4]_2\,
      I2 => r_push_r,
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(0),
      O => \cnt_read[4]_i_3_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1_n_0\,
      D => \cnt_read[0]_i_1_n_0\,
      Q => cnt_read_reg(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1_n_0\,
      D => \cnt_read[1]_i_1__1_n_0\,
      Q => cnt_read_reg(1),
      S => areset_d1
    );
\cnt_read_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1_n_0\,
      D => \cnt_read[2]_i_1_n_0\,
      Q => cnt_read_reg(2),
      S => areset_d1
    );
\cnt_read_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1_n_0\,
      D => \cnt_read[3]_i_1_n_0\,
      Q => cnt_read_reg(3),
      S => areset_d1
    );
\cnt_read_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1_n_0\,
      D => \cnt_read[4]_i_2_n_0\,
      Q => cnt_read_reg(4),
      S => areset_d1
    );
m_valid_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_read_reg(4),
      I1 => cnt_read_reg(3),
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(2),
      O => \cnt_read_reg[4]_1\
    );
\memory_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => trans_in(0),
      Q => si_rs_rlast,
      Q31 => \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wr_cmd_fsm is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready_0 : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axaddr_offset : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC;
    incr_next_pending : out STD_LOGIC;
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel_first_reg : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_push : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    si_rs_awvalid : in STD_LOGIC;
    next_pending_r_reg : in STD_LOGIC;
    \axaddr_incr[6]_i_2__0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_3\ : in STD_LOGIC;
    \axaddr_incr[6]_i_2__0_0\ : in STD_LOGIC;
    \axaddr_incr[5]_i_2\ : in STD_LOGIC;
    \axaddr_incr[5]_i_2_0\ : in STD_LOGIC;
    \axaddr_incr[5]_i_2_1\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    next_pending_r_reg_0 : in STD_LOGIC;
    next_pending_r : in STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axlen_cnt_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sel_first__0\ : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    \axaddr_offset_r_reg[2]_0\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_3\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wr_cmd_fsm : entity is "axi_protocol_converter_v2_1_31_b2s_wr_cmd_fsm";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wr_cmd_fsm;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wr_cmd_fsm is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^axaddr_offset\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \axaddr_offset_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \^axaddr_offset_r_reg[3]\ : STD_LOGIC;
  signal \^b_push\ : STD_LOGIC;
  signal \^m_axi_awready_0\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wrap_cnt_r[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair84";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "SM_CMD_ACCEPTED:10,SM_CMD_EN:11,SM_IDLE:01,SM_DONE_WAIT:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "SM_CMD_ACCEPTED:10,SM_CMD_EN:11,SM_IDLE:01,SM_DONE_WAIT:00";
  attribute SOFT_HLUTNM of \axaddr_offset_r[3]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_2__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \axlen_cnt[8]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of m_axi_awvalid_INST_0 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[11]_i_1\ : label is "soft_lutpair83";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  \FSM_sequential_state_reg[0]_0\(0) <= \^fsm_sequential_state_reg[0]_0\(0);
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  axaddr_offset(2 downto 0) <= \^axaddr_offset\(2 downto 0);
  \axaddr_offset_r_reg[3]\ <= \^axaddr_offset_r_reg[3]\;
  b_push <= \^b_push\;
  m_axi_awready_0 <= \^m_axi_awready_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFF3FF07FFF"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_3\,
      I1 => m_axi_awready,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \FSM_sequential_state_reg[0]_2\(1),
      I5 => \FSM_sequential_state_reg[0]_2\(0),
      O => \next_state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFFA0A0"
    )
        port map (
      I0 => si_rs_awvalid,
      I1 => \FSM_sequential_state_reg[1]_3\,
      I2 => \^q\(0),
      I3 => m_axi_awready,
      I4 => \^q\(1),
      O => \next_state__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \next_state__0\(0),
      Q => \^q\(0),
      S => areset_d1
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \next_state__0\(1),
      Q => \^q\(1),
      R => areset_d1
    );
\axaddr_incr[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFBFFFFFFFF"
    )
        port map (
      I0 => \axaddr_incr[5]_i_2\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \axaddr_incr[5]_i_2_0\,
      I4 => \axaddr_incr[6]_i_2__0\,
      I5 => \axaddr_incr[5]_i_2_1\,
      O => \FSM_sequential_state_reg[1]_2\
    );
\axaddr_incr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F171F1FFFFFFFF"
    )
        port map (
      I0 => \axaddr_incr[6]_i_2__0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => m_axi_awready,
      I4 => \FSM_sequential_state_reg[1]_3\,
      I5 => \axaddr_incr[6]_i_2__0_0\,
      O => \FSM_sequential_state_reg[1]_1\
    );
\axaddr_offset_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2_n_0\,
      O => \^axaddr_offset\(0)
    );
\axaddr_offset_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"535555555F555555"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]_0\(0),
      I1 => \axaddr_offset_r_reg[2]\(0),
      I2 => \^q\(1),
      I3 => si_rs_awvalid,
      I4 => \^q\(0),
      I5 => \wrap_second_len_r_reg[3]_3\,
      O => \axaddr_offset_r[0]_i_2_n_0\
    );
\axaddr_offset_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAC0AAAAAA"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]_0\(1),
      I1 => \axaddr_offset_r_reg[2]\(1),
      I2 => \axaddr_offset_r_reg[2]_0\,
      I3 => \^q\(0),
      I4 => si_rs_awvalid,
      I5 => \^q\(1),
      O => \^axaddr_offset\(1)
    );
\axaddr_offset_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF700"
    )
        port map (
      I0 => \^q\(0),
      I1 => si_rs_awvalid,
      I2 => \^q\(1),
      I3 => \axaddr_offset_r_reg[3]_0\(2),
      I4 => \wrap_second_len_r_reg[3]_1\,
      O => \^axaddr_offset\(2)
    );
\axlen_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => \^q\(0),
      I1 => si_rs_awvalid,
      I2 => \^q\(1),
      I3 => \axaddr_offset_r_reg[2]\(0),
      I4 => \axlen_cnt_reg[0]\(0),
      I5 => \^fsm_sequential_state_reg[1]_0\,
      O => \FSM_sequential_state_reg[0]_1\(0)
    );
\axlen_cnt[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => \^q\(1),
      I1 => si_rs_awvalid,
      I2 => \^q\(0),
      I3 => next_pending_r_reg,
      O => \^fsm_sequential_state_reg[1]_0\
    );
\axlen_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => si_rs_awvalid,
      I2 => \^q\(0),
      I3 => \^m_axi_awready_0\,
      O => E(0)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => m_axi_awvalid
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^b_push\,
      I1 => si_rs_awvalid,
      O => m_valid_i_reg(0)
    );
\memory_reg[3][0]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D000DD00D000D"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_2\(1),
      I1 => \FSM_sequential_state_reg[0]_2\(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => m_axi_awready,
      I5 => \FSM_sequential_state_reg[1]_3\,
      O => \^b_push\
    );
next_pending_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => next_pending_r_reg_0,
      I1 => \^fsm_sequential_state_reg[0]_0\(0),
      I2 => next_pending_r,
      I3 => next_pending_r_reg,
      I4 => \^m_axi_awready_0\,
      O => incr_next_pending
    );
next_pending_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0F0F0FFB0F0B0F0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_3\,
      I1 => m_axi_awready,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \FSM_sequential_state_reg[0]_2\(0),
      I5 => \FSM_sequential_state_reg[0]_2\(1),
      O => \^m_axi_awready_0\
    );
sel_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8888F888"
    )
        port map (
      I0 => \sel_first__0\,
      I1 => \^m_axi_awready_0\,
      I2 => \^q\(0),
      I3 => si_rs_awvalid,
      I4 => \^q\(1),
      I5 => areset_d1,
      O => sel_first_reg
    );
\sel_first_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8888F888"
    )
        port map (
      I0 => sel_first_reg_1,
      I1 => \^m_axi_awready_0\,
      I2 => \^q\(0),
      I3 => si_rs_awvalid,
      I4 => \^q\(1),
      I5 => areset_d1,
      O => sel_first_reg_0
    );
\sel_first_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8888F888"
    )
        port map (
      I0 => \^m_axi_awready_0\,
      I1 => sel_first_reg_2,
      I2 => \^q\(0),
      I3 => si_rs_awvalid,
      I4 => \^q\(1),
      I5 => areset_d1,
      O => sel_first_i
    );
\wrap_boundary_axaddr_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => si_rs_awvalid,
      I2 => \^q\(1),
      O => \^fsm_sequential_state_reg[0]_0\(0)
    );
\wrap_cnt_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA1AAA55551555"
    )
        port map (
      I0 => \^axaddr_offset_r_reg[3]\,
      I1 => \axaddr_offset_r[0]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => si_rs_awvalid,
      I4 => \^q\(1),
      I5 => \wrap_second_len_r_reg[3]_2\(0),
      O => \wrap_second_len_r_reg[3]\(0)
    );
\wrap_cnt_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA56A6AAAAAAAA"
    )
        port map (
      I0 => \^d\(2),
      I1 => \wrap_second_len_r_reg[3]_2\(0),
      I2 => \^fsm_sequential_state_reg[0]_0\(0),
      I3 => \axaddr_offset_r[0]_i_2_n_0\,
      I4 => \^axaddr_offset_r_reg[3]\,
      I5 => \^d\(1),
      O => \wrap_second_len_r_reg[3]\(1)
    );
\wrap_cnt_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000202"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \^axaddr_offset\(1),
      I3 => \^fsm_sequential_state_reg[0]_0\(0),
      I4 => \axaddr_offset_r_reg[3]_0\(2),
      I5 => \wrap_second_len_r_reg[3]_1\,
      O => \^axaddr_offset_r_reg[3]\
    );
\wrap_cnt_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^d\(1),
      I2 => \wrap_cnt_r[3]_i_2_n_0\,
      I3 => \^d\(2),
      O => \wrap_second_len_r_reg[3]\(2)
    );
\wrap_cnt_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE2222EEE02222"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_2\(0),
      I1 => \^fsm_sequential_state_reg[0]_0\(0),
      I2 => \^axaddr_offset\(2),
      I3 => \^axaddr_offset\(1),
      I4 => \axaddr_offset_r[0]_i_2_n_0\,
      I5 => \wrap_second_len_r_reg[3]_0\(0),
      O => \wrap_cnt_r[3]_i_2_n_0\
    );
\wrap_second_len_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0FFFFF0E00000"
    )
        port map (
      I0 => \^axaddr_offset\(2),
      I1 => \^axaddr_offset\(1),
      I2 => \axaddr_offset_r[0]_i_2_n_0\,
      I3 => \wrap_second_len_r_reg[3]_0\(0),
      I4 => \^fsm_sequential_state_reg[0]_0\(0),
      I5 => \wrap_second_len_r_reg[3]_2\(0),
      O => \^d\(0)
    );
\wrap_second_len_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0FFFF0FE00000"
    )
        port map (
      I0 => \^axaddr_offset\(2),
      I1 => \^axaddr_offset\(1),
      I2 => \axaddr_offset_r[0]_i_2_n_0\,
      I3 => \wrap_second_len_r_reg[3]_0\(0),
      I4 => \^fsm_sequential_state_reg[0]_0\(0),
      I5 => \wrap_second_len_r_reg[3]_2\(1),
      O => \^d\(1)
    );
\wrap_second_len_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD20FFFFDD200000"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \wrap_second_len_r_reg[3]_1\,
      I3 => \^axaddr_offset\(1),
      I4 => \^fsm_sequential_state_reg[0]_0\(0),
      I5 => \wrap_second_len_r_reg[3]_2\(2),
      O => \^d\(2)
    );
\wrap_second_len_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDD0F000F00"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \^fsm_sequential_state_reg[0]_0\(0),
      I3 => \wrap_second_len_r_reg[3]_2\(3),
      I4 => \^axaddr_offset\(1),
      I5 => \wrap_second_len_r_reg[3]_1\,
      O => \^d\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd is
  port (
    sel_first_reg_0 : out STD_LOGIC;
    next_pending_r_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axburst_eq1_reg : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrap_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_awvalid : in STD_LOGIC;
    \axaddr_wrap_reg[11]_0\ : in STD_LOGIC;
    \axaddr_wrap_reg[1]_0\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC;
    s_axburst_eq1 : in STD_LOGIC;
    s_axburst_eq0 : in STD_LOGIC;
    m_axi_awaddr_11_sp_1 : in STD_LOGIC;
    m_axi_awaddr_10_sp_1 : in STD_LOGIC;
    m_axi_awaddr_9_sp_1 : in STD_LOGIC;
    m_axi_awaddr_8_sp_1 : in STD_LOGIC;
    m_axi_awaddr_7_sp_1 : in STD_LOGIC;
    m_axi_awaddr_6_sp_1 : in STD_LOGIC;
    m_axi_awaddr_5_sp_1 : in STD_LOGIC;
    m_axi_awaddr_4_sp_1 : in STD_LOGIC;
    m_axi_awaddr_3_sp_1 : in STD_LOGIC;
    m_axi_awaddr_2_sp_1 : in STD_LOGIC;
    m_axi_awaddr_1_sp_1 : in STD_LOGIC;
    m_axi_awaddr_0_sp_1 : in STD_LOGIC;
    \axaddr_offset_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[1]_0\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd : entity is "axi_protocol_converter_v2_1_31_b2s_wrap_cmd";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axaddr_wrap : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \axaddr_wrap[0]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[10]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[10]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[1]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[2]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[2]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[4]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[4]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[5]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[5]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[6]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[6]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[8]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[8]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[9]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[9]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal m_axi_awaddr_0_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_10_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_11_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_1_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_2_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_3_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_4_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_5_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_6_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_7_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_8_sn_1 : STD_LOGIC;
  signal m_axi_awaddr_9_sn_1 : STD_LOGIC;
  signal next_pending_r : STD_LOGIC;
  signal \^sel_first_reg_0\ : STD_LOGIC;
  signal wrap_boundary_axaddr_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wrap_cnt : STD_LOGIC_VECTOR ( 1 to 1 );
  signal wrap_cnt_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wrap_second_len_r_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_wrap[10]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \axaddr_wrap[11]_i_3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \axaddr_wrap[5]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \axaddr_wrap[6]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \axaddr_wrap[7]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \axaddr_wrap[8]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \axlen_cnt[1]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \axlen_cnt[3]_i_2__1\ : label is "soft_lutpair91";
begin
  Q(0) <= \^q\(0);
  m_axi_awaddr_0_sn_1 <= m_axi_awaddr_0_sp_1;
  m_axi_awaddr_10_sn_1 <= m_axi_awaddr_10_sp_1;
  m_axi_awaddr_11_sn_1 <= m_axi_awaddr_11_sp_1;
  m_axi_awaddr_1_sn_1 <= m_axi_awaddr_1_sp_1;
  m_axi_awaddr_2_sn_1 <= m_axi_awaddr_2_sp_1;
  m_axi_awaddr_3_sn_1 <= m_axi_awaddr_3_sp_1;
  m_axi_awaddr_4_sn_1 <= m_axi_awaddr_4_sp_1;
  m_axi_awaddr_5_sn_1 <= m_axi_awaddr_5_sp_1;
  m_axi_awaddr_6_sn_1 <= m_axi_awaddr_6_sp_1;
  m_axi_awaddr_7_sn_1 <= m_axi_awaddr_7_sp_1;
  m_axi_awaddr_8_sn_1 <= m_axi_awaddr_8_sp_1;
  m_axi_awaddr_9_sn_1 <= m_axi_awaddr_9_sp_1;
  sel_first_reg_0 <= \^sel_first_reg_0\;
  \wrap_second_len_r_reg[3]_0\(3 downto 0) <= \^wrap_second_len_r_reg[3]_0\(3 downto 0);
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axburst_eq1,
      I1 => \axlen_cnt_reg[3]_0\(14),
      I2 => s_axburst_eq0,
      O => s_axburst_eq1_reg
    );
\axaddr_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axaddr_offset_r_reg[3]_1\(0),
      Q => \axaddr_offset_r_reg[3]_0\(0),
      R => '0'
    );
\axaddr_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axaddr_offset_r_reg[3]_1\(1),
      Q => \axaddr_offset_r_reg[3]_0\(1),
      R => '0'
    );
\axaddr_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axaddr_offset_r_reg[3]_1\(2),
      Q => \axaddr_offset_r_reg[3]_0\(2),
      R => '0'
    );
\axaddr_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axaddr_offset_r_reg[3]_1\(3),
      Q => \axaddr_offset_r_reg[3]_0\(3),
      R => '0'
    );
\axaddr_wrap[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(0),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(0),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => \^q\(0),
      I5 => \axaddr_wrap_reg[0]_0\,
      O => \axaddr_wrap[0]_i_1_n_0\
    );
\axaddr_wrap[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(10),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(10),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => \axaddr_wrap[10]_i_2_n_0\,
      I5 => axaddr_wrap(10),
      O => \axaddr_wrap[10]_i_1_n_0\
    );
\axaddr_wrap[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axaddr_wrap[9]_i_2_n_0\,
      I1 => axaddr_wrap(9),
      O => \axaddr_wrap[10]_i_2_n_0\
    );
\axaddr_wrap[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(11),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(11),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(11),
      I5 => \axaddr_wrap[11]_i_3_n_0\,
      O => \axaddr_wrap[11]_i_1_n_0\
    );
\axaddr_wrap[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => wrap_cnt_r(3),
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axaddr_wrap[11]_i_4_n_0\,
      I3 => \axlen_cnt_reg_n_0_[4]\,
      O => \axaddr_wrap[11]_i_2_n_0\
    );
\axaddr_wrap[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => axaddr_wrap(10),
      I1 => axaddr_wrap(9),
      I2 => \axaddr_wrap[9]_i_2_n_0\,
      O => \axaddr_wrap[11]_i_3_n_0\
    );
\axaddr_wrap[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[2]\,
      I1 => wrap_cnt_r(2),
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => wrap_cnt_r(1),
      I4 => wrap_cnt_r(0),
      I5 => \axlen_cnt_reg_n_0_[0]\,
      O => \axaddr_wrap[11]_i_4_n_0\
    );
\axaddr_wrap[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(1),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(1),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(1),
      I5 => \axaddr_wrap_reg[1]_0\,
      O => \axaddr_wrap[1]_i_1_n_0\
    );
\axaddr_wrap[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(2),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(2),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => \axaddr_wrap[2]_i_2_n_0\,
      O => \axaddr_wrap[2]_i_1_n_0\
    );
\axaddr_wrap[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5070AF8"
    )
        port map (
      I0 => axaddr_wrap(1),
      I1 => \^q\(0),
      I2 => \axlen_cnt_reg[3]_0\(13),
      I3 => \axlen_cnt_reg[3]_0\(12),
      I4 => axaddr_wrap(2),
      O => \axaddr_wrap[2]_i_2_n_0\
    );
\axaddr_wrap[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(3),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(3),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => \axaddr_wrap[3]_i_2_n_0\,
      O => \axaddr_wrap[3]_i_1_n_0\
    );
\axaddr_wrap[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5F7FFFF0A080"
    )
        port map (
      I0 => axaddr_wrap(1),
      I1 => \^q\(0),
      I2 => axaddr_wrap(2),
      I3 => \axlen_cnt_reg[3]_0\(12),
      I4 => \axlen_cnt_reg[3]_0\(13),
      I5 => axaddr_wrap(3),
      O => \axaddr_wrap[3]_i_2_n_0\
    );
\axaddr_wrap[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(4),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(4),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(4),
      I5 => \axaddr_wrap[4]_i_2_n_0\,
      O => \axaddr_wrap[4]_i_1_n_0\
    );
\axaddr_wrap[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00555F7FFFFFFFFF"
    )
        port map (
      I0 => axaddr_wrap(2),
      I1 => \^q\(0),
      I2 => axaddr_wrap(1),
      I3 => \axlen_cnt_reg[3]_0\(12),
      I4 => \axlen_cnt_reg[3]_0\(13),
      I5 => axaddr_wrap(3),
      O => \axaddr_wrap[4]_i_2_n_0\
    );
\axaddr_wrap[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(5),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(5),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(5),
      I5 => \axaddr_wrap[5]_i_2_n_0\,
      O => \axaddr_wrap[5]_i_1_n_0\
    );
\axaddr_wrap[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axaddr_wrap[4]_i_2_n_0\,
      I1 => axaddr_wrap(4),
      O => \axaddr_wrap[5]_i_2_n_0\
    );
\axaddr_wrap[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(6),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(6),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(6),
      I5 => \axaddr_wrap[6]_i_2_n_0\,
      O => \axaddr_wrap[6]_i_1_n_0\
    );
\axaddr_wrap[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => axaddr_wrap(4),
      I1 => \axaddr_wrap[4]_i_2_n_0\,
      I2 => axaddr_wrap(5),
      O => \axaddr_wrap[6]_i_2_n_0\
    );
\axaddr_wrap[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(7),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(7),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(7),
      I5 => \axaddr_wrap[7]_i_2_n_0\,
      O => \axaddr_wrap[7]_i_1_n_0\
    );
\axaddr_wrap[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => axaddr_wrap(5),
      I1 => \axaddr_wrap[4]_i_2_n_0\,
      I2 => axaddr_wrap(4),
      I3 => axaddr_wrap(6),
      O => \axaddr_wrap[7]_i_2_n_0\
    );
\axaddr_wrap[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(8),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(8),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(8),
      I5 => \axaddr_wrap[8]_i_2_n_0\,
      O => \axaddr_wrap[8]_i_1_n_0\
    );
\axaddr_wrap[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => axaddr_wrap(6),
      I1 => axaddr_wrap(4),
      I2 => \axaddr_wrap[4]_i_2_n_0\,
      I3 => axaddr_wrap(5),
      I4 => axaddr_wrap(7),
      O => \axaddr_wrap[8]_i_2_n_0\
    );
\axaddr_wrap[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(9),
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => wrap_boundary_axaddr_r(9),
      I3 => \axaddr_wrap[11]_i_2_n_0\,
      I4 => axaddr_wrap(9),
      I5 => \axaddr_wrap[9]_i_2_n_0\,
      O => \axaddr_wrap[9]_i_1_n_0\
    );
\axaddr_wrap[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => axaddr_wrap(7),
      I1 => axaddr_wrap(5),
      I2 => \axaddr_wrap[4]_i_2_n_0\,
      I3 => axaddr_wrap(4),
      I4 => axaddr_wrap(6),
      I5 => axaddr_wrap(8),
      O => \axaddr_wrap[9]_i_2_n_0\
    );
\axaddr_wrap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\axaddr_wrap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[10]_i_1_n_0\,
      Q => axaddr_wrap(10),
      R => '0'
    );
\axaddr_wrap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[11]_i_1_n_0\,
      Q => axaddr_wrap(11),
      R => '0'
    );
\axaddr_wrap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[1]_i_1_n_0\,
      Q => axaddr_wrap(1),
      R => '0'
    );
\axaddr_wrap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[2]_i_1_n_0\,
      Q => axaddr_wrap(2),
      R => '0'
    );
\axaddr_wrap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[3]_i_1_n_0\,
      Q => axaddr_wrap(3),
      R => '0'
    );
\axaddr_wrap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[4]_i_1_n_0\,
      Q => axaddr_wrap(4),
      R => '0'
    );
\axaddr_wrap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[5]_i_1_n_0\,
      Q => axaddr_wrap(5),
      R => '0'
    );
\axaddr_wrap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[6]_i_1_n_0\,
      Q => axaddr_wrap(6),
      R => '0'
    );
\axaddr_wrap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[7]_i_1_n_0\,
      Q => axaddr_wrap(7),
      R => '0'
    );
\axaddr_wrap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[8]_i_1_n_0\,
      Q => axaddr_wrap(8),
      R => '0'
    );
\axaddr_wrap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axaddr_wrap[9]_i_1_n_0\,
      Q => axaddr_wrap(9),
      R => '0'
    );
\axlen_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0000003A333333"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(15),
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg[0]_0\(1),
      I3 => si_rs_awvalid,
      I4 => \axlen_cnt_reg[0]_0\(0),
      I5 => \axlen_cnt[3]_i_3_n_0\,
      O => \axlen_cnt[0]_i_1__0_n_0\
    );
\axlen_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88888B"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(16),
      I1 => E(0),
      I2 => \axlen_cnt[3]_i_3_n_0\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[0]\,
      O => \axlen_cnt[1]_i_1__0_n_0\
    );
\axlen_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB8888B"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(17),
      I1 => E(0),
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt[3]_i_3_n_0\,
      O => \axlen_cnt[2]_i_1__0_n_0\
    );
\axlen_cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAC3CC"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(18),
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \axlen_cnt[3]_i_2__1_n_0\,
      I4 => E(0),
      I5 => \axlen_cnt[3]_i_3_n_0\,
      O => \axlen_cnt[3]_i_1__0_n_0\
    );
\axlen_cnt[3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[1]\,
      O => \axlen_cnt[3]_i_2__1_n_0\
    );
\axlen_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[4]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      O => \axlen_cnt[3]_i_3_n_0\
    );
\axlen_cnt[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => E(0),
      I1 => \axlen_cnt_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[4]_i_1__1_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[0]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[0]\,
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[1]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[2]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[3]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[4]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[4]\,
      R => '0'
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(0),
      I1 => \^sel_first_reg_0\,
      I2 => \^q\(0),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_0_sn_1,
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(10),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(10),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_10_sn_1,
      O => m_axi_awaddr(10)
    );
\m_axi_awaddr[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(11),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(11),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_11_sn_1,
      O => m_axi_awaddr(11)
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(1),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(1),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_1_sn_1,
      O => m_axi_awaddr(1)
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(2),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(2),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_2_sn_1,
      O => m_axi_awaddr(2)
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(3),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(3),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_3_sn_1,
      O => m_axi_awaddr(3)
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(4),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(4),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_4_sn_1,
      O => m_axi_awaddr(4)
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(5),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(5),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_5_sn_1,
      O => m_axi_awaddr(5)
    );
\m_axi_awaddr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(6),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(6),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_6_sn_1,
      O => m_axi_awaddr(6)
    );
\m_axi_awaddr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(7),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(7),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_7_sn_1,
      O => m_axi_awaddr(7)
    );
\m_axi_awaddr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(8),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(8),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_8_sn_1,
      O => m_axi_awaddr(8)
    );
\m_axi_awaddr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(9),
      I1 => \^sel_first_reg_0\,
      I2 => axaddr_wrap(9),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_awaddr_9_sn_1,
      O => m_axi_awaddr(9)
    );
next_pending_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => next_pending_r,
      I1 => \axaddr_wrap_reg[11]_0\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[4]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => next_pending_r_reg_0
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wrap_next_pending,
      Q => next_pending_r,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_1,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(0),
      Q => wrap_boundary_axaddr_r(0),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(10),
      Q => wrap_boundary_axaddr_r(10),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(11),
      Q => wrap_boundary_axaddr_r(11),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(1),
      Q => wrap_boundary_axaddr_r(1),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(2),
      Q => wrap_boundary_axaddr_r(2),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(3),
      Q => wrap_boundary_axaddr_r(3),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(4),
      Q => wrap_boundary_axaddr_r(4),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(5),
      Q => wrap_boundary_axaddr_r(5),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(6),
      Q => wrap_boundary_axaddr_r(6),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(7),
      Q => wrap_boundary_axaddr_r(7),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(8),
      Q => wrap_boundary_axaddr_r(8),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(9),
      Q => wrap_boundary_axaddr_r(9),
      R => '0'
    );
\wrap_cnt_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA50CAA"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[3]_0\(1),
      I1 => \axaddr_offset_r_reg[3]_1\(1),
      I2 => \wrap_cnt_r_reg[1]_0\,
      I3 => E(0),
      I4 => \^wrap_second_len_r_reg[3]_0\(0),
      O => wrap_cnt(1)
    );
\wrap_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => wrap_cnt_r(0),
      R => '0'
    );
\wrap_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wrap_cnt(1),
      Q => wrap_cnt_r(1),
      R => '0'
    );
\wrap_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => wrap_cnt_r(2),
      R => '0'
    );
\wrap_cnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => wrap_cnt_r(3),
      R => '0'
    );
\wrap_second_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(0),
      Q => \^wrap_second_len_r_reg[3]_0\(0),
      R => '0'
    );
\wrap_second_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(1),
      Q => \^wrap_second_len_r_reg[3]_0\(1),
      R => '0'
    );
\wrap_second_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(2),
      Q => \^wrap_second_len_r_reg[3]_0\(2),
      R => '0'
    );
\wrap_second_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(3),
      Q => \^wrap_second_len_r_reg[3]_0\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd_3 is
  port (
    sel_first_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_pending_r_reg_0 : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrap_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_1\ : in STD_LOGIC;
    \axaddr_wrap_reg[1]_0\ : in STD_LOGIC;
    m_axi_araddr_11_sp_1 : in STD_LOGIC;
    m_axi_araddr_10_sp_1 : in STD_LOGIC;
    m_axi_araddr_9_sp_1 : in STD_LOGIC;
    m_axi_araddr_8_sp_1 : in STD_LOGIC;
    m_axi_araddr_7_sp_1 : in STD_LOGIC;
    m_axi_araddr_6_sp_1 : in STD_LOGIC;
    m_axi_araddr_5_sp_1 : in STD_LOGIC;
    m_axi_araddr_4_sp_1 : in STD_LOGIC;
    m_axi_araddr_3_sp_1 : in STD_LOGIC;
    m_axi_araddr_2_sp_1 : in STD_LOGIC;
    m_axi_araddr_1_sp_1 : in STD_LOGIC;
    m_axi_araddr_0_sp_1 : in STD_LOGIC;
    si_rs_arvalid : in STD_LOGIC;
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[1]_0\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_cnt_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd_3 : entity is "axi_protocol_converter_v2_1_31_b2s_wrap_cmd";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd_3;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axaddr_wrap[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_4__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[10]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[11]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[1]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[2]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[3]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[4]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[5]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[6]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[7]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[8]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[9]\ : STD_LOGIC;
  signal \axlen_cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal m_axi_araddr_0_sn_1 : STD_LOGIC;
  signal m_axi_araddr_10_sn_1 : STD_LOGIC;
  signal m_axi_araddr_11_sn_1 : STD_LOGIC;
  signal m_axi_araddr_1_sn_1 : STD_LOGIC;
  signal m_axi_araddr_2_sn_1 : STD_LOGIC;
  signal m_axi_araddr_3_sn_1 : STD_LOGIC;
  signal m_axi_araddr_4_sn_1 : STD_LOGIC;
  signal m_axi_araddr_5_sn_1 : STD_LOGIC;
  signal m_axi_araddr_6_sn_1 : STD_LOGIC;
  signal m_axi_araddr_7_sn_1 : STD_LOGIC;
  signal m_axi_araddr_8_sn_1 : STD_LOGIC;
  signal m_axi_araddr_9_sn_1 : STD_LOGIC;
  signal next_pending_r : STD_LOGIC;
  signal \^sel_first_reg_0\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_cnt_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \^wrap_second_len_r_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_wrap[10]_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axaddr_wrap[11]_i_3__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axaddr_wrap[5]_i_2__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axaddr_wrap[6]_i_2__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axaddr_wrap[7]_i_2__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axaddr_wrap[8]_i_2__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axlen_cnt[1]_i_1__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axlen_cnt[3]_i_2__2\ : label is "soft_lutpair9";
begin
  Q(0) <= \^q\(0);
  m_axi_araddr_0_sn_1 <= m_axi_araddr_0_sp_1;
  m_axi_araddr_10_sn_1 <= m_axi_araddr_10_sp_1;
  m_axi_araddr_11_sn_1 <= m_axi_araddr_11_sp_1;
  m_axi_araddr_1_sn_1 <= m_axi_araddr_1_sp_1;
  m_axi_araddr_2_sn_1 <= m_axi_araddr_2_sp_1;
  m_axi_araddr_3_sn_1 <= m_axi_araddr_3_sp_1;
  m_axi_araddr_4_sn_1 <= m_axi_araddr_4_sp_1;
  m_axi_araddr_5_sn_1 <= m_axi_araddr_5_sp_1;
  m_axi_araddr_6_sn_1 <= m_axi_araddr_6_sp_1;
  m_axi_araddr_7_sn_1 <= m_axi_araddr_7_sp_1;
  m_axi_araddr_8_sn_1 <= m_axi_araddr_8_sp_1;
  m_axi_araddr_9_sn_1 <= m_axi_araddr_9_sp_1;
  sel_first_reg_0 <= \^sel_first_reg_0\;
  \wrap_second_len_r_reg[3]_0\(3 downto 0) <= \^wrap_second_len_r_reg[3]_0\(3 downto 0);
\axaddr_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \axaddr_offset_r_reg[3]_0\(0),
      R => '0'
    );
\axaddr_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \axaddr_offset_r_reg[3]_0\(1),
      R => '0'
    );
\axaddr_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \axaddr_offset_r_reg[3]_0\(2),
      R => '0'
    );
\axaddr_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \axaddr_offset_r_reg[3]_0\(3),
      R => '0'
    );
\axaddr_wrap[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(0),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[0]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \^q\(0),
      I5 => \axaddr_wrap_reg[0]_1\,
      O => \axaddr_wrap[0]_i_1__0_n_0\
    );
\axaddr_wrap[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(10),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[10]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap[10]_i_2__0_n_0\,
      I5 => \axaddr_wrap_reg_n_0_[10]\,
      O => \axaddr_wrap[10]_i_1__0_n_0\
    );
\axaddr_wrap[10]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axaddr_wrap[9]_i_2__0_n_0\,
      I1 => \axaddr_wrap_reg_n_0_[9]\,
      O => \axaddr_wrap[10]_i_2__0_n_0\
    );
\axaddr_wrap[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(11),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[11]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[11]\,
      I5 => \axaddr_wrap[11]_i_3__0_n_0\,
      O => \axaddr_wrap[11]_i_1__0_n_0\
    );
\axaddr_wrap[11]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \wrap_cnt_r_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axaddr_wrap[11]_i_4__0_n_0\,
      I3 => \axlen_cnt_reg_n_0_[4]\,
      O => \axaddr_wrap[11]_i_2__0_n_0\
    );
\axaddr_wrap[11]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[10]\,
      I1 => \axaddr_wrap_reg_n_0_[9]\,
      I2 => \axaddr_wrap[9]_i_2__0_n_0\,
      O => \axaddr_wrap[11]_i_3__0_n_0\
    );
\axaddr_wrap[11]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \wrap_cnt_r_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \wrap_cnt_r_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => \wrap_cnt_r_reg_n_0_[1]\,
      O => \axaddr_wrap[11]_i_4__0_n_0\
    );
\axaddr_wrap[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(1),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[1]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[1]\,
      I5 => \axaddr_wrap_reg[1]_0\,
      O => \axaddr_wrap[1]_i_1__0_n_0\
    );
\axaddr_wrap[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(2),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[2]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap[2]_i_2__0_n_0\,
      O => \axaddr_wrap[2]_i_1__0_n_0\
    );
\axaddr_wrap[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5070AF8"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \axlen_cnt_reg[3]_0\(13),
      I3 => \axlen_cnt_reg[3]_0\(12),
      I4 => \axaddr_wrap_reg_n_0_[2]\,
      O => \axaddr_wrap[2]_i_2__0_n_0\
    );
\axaddr_wrap[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(3),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[3]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap[3]_i_2__0_n_0\,
      O => \axaddr_wrap[3]_i_1__0_n_0\
    );
\axaddr_wrap[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5F7FFFF0A080"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \axaddr_wrap_reg_n_0_[2]\,
      I3 => \axlen_cnt_reg[3]_0\(12),
      I4 => \axlen_cnt_reg[3]_0\(13),
      I5 => \axaddr_wrap_reg_n_0_[3]\,
      O => \axaddr_wrap[3]_i_2__0_n_0\
    );
\axaddr_wrap[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(4),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[4]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[4]\,
      I5 => \axaddr_wrap[4]_i_2__0_n_0\,
      O => \axaddr_wrap[4]_i_1__0_n_0\
    );
\axaddr_wrap[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF55FF5FFF7FFF"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \axaddr_wrap_reg_n_0_[1]\,
      I3 => \axaddr_wrap_reg_n_0_[3]\,
      I4 => \axlen_cnt_reg[3]_0\(12),
      I5 => \axlen_cnt_reg[3]_0\(13),
      O => \axaddr_wrap[4]_i_2__0_n_0\
    );
\axaddr_wrap[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(5),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[5]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[5]\,
      I5 => \axaddr_wrap[5]_i_2__0_n_0\,
      O => \axaddr_wrap[5]_i_1__0_n_0\
    );
\axaddr_wrap[5]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axaddr_wrap[4]_i_2__0_n_0\,
      I1 => \axaddr_wrap_reg_n_0_[4]\,
      O => \axaddr_wrap[5]_i_2__0_n_0\
    );
\axaddr_wrap[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(6),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[6]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[6]\,
      I5 => \axaddr_wrap[6]_i_2__0_n_0\,
      O => \axaddr_wrap[6]_i_1__0_n_0\
    );
\axaddr_wrap[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[4]\,
      I1 => \axaddr_wrap[4]_i_2__0_n_0\,
      I2 => \axaddr_wrap_reg_n_0_[5]\,
      O => \axaddr_wrap[6]_i_2__0_n_0\
    );
\axaddr_wrap[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(7),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[7]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[7]\,
      I5 => \axaddr_wrap[7]_i_2__0_n_0\,
      O => \axaddr_wrap[7]_i_1__0_n_0\
    );
\axaddr_wrap[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[5]\,
      I1 => \axaddr_wrap[4]_i_2__0_n_0\,
      I2 => \axaddr_wrap_reg_n_0_[4]\,
      I3 => \axaddr_wrap_reg_n_0_[6]\,
      O => \axaddr_wrap[7]_i_2__0_n_0\
    );
\axaddr_wrap[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(8),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[8]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[8]\,
      I5 => \axaddr_wrap[8]_i_2__0_n_0\,
      O => \axaddr_wrap[8]_i_1__0_n_0\
    );
\axaddr_wrap[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[6]\,
      I1 => \axaddr_wrap_reg_n_0_[4]\,
      I2 => \axaddr_wrap[4]_i_2__0_n_0\,
      I3 => \axaddr_wrap_reg_n_0_[5]\,
      I4 => \axaddr_wrap_reg_n_0_[7]\,
      O => \axaddr_wrap[8]_i_2__0_n_0\
    );
\axaddr_wrap[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(9),
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[9]\,
      I3 => \axaddr_wrap[11]_i_2__0_n_0\,
      I4 => \axaddr_wrap_reg_n_0_[9]\,
      I5 => \axaddr_wrap[9]_i_2__0_n_0\,
      O => \axaddr_wrap[9]_i_1__0_n_0\
    );
\axaddr_wrap[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[7]\,
      I1 => \axaddr_wrap_reg_n_0_[5]\,
      I2 => \axaddr_wrap[4]_i_2__0_n_0\,
      I3 => \axaddr_wrap_reg_n_0_[4]\,
      I4 => \axaddr_wrap_reg_n_0_[6]\,
      I5 => \axaddr_wrap_reg_n_0_[8]\,
      O => \axaddr_wrap[9]_i_2__0_n_0\
    );
\axaddr_wrap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\axaddr_wrap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[10]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[10]\,
      R => '0'
    );
\axaddr_wrap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[11]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[11]\,
      R => '0'
    );
\axaddr_wrap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[1]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[1]\,
      R => '0'
    );
\axaddr_wrap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[2]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[2]\,
      R => '0'
    );
\axaddr_wrap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[3]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[3]\,
      R => '0'
    );
\axaddr_wrap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[4]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[4]\,
      R => '0'
    );
\axaddr_wrap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[5]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[5]\,
      R => '0'
    );
\axaddr_wrap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[6]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[6]\,
      R => '0'
    );
\axaddr_wrap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[7]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[7]\,
      R => '0'
    );
\axaddr_wrap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[8]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[8]\,
      R => '0'
    );
\axaddr_wrap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axaddr_wrap[9]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[9]\,
      R => '0'
    );
\axlen_cnt[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A033A3"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(15),
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => si_rs_arvalid,
      I3 => \axlen_cnt_reg[0]_0\(0),
      I4 => \axlen_cnt[3]_i_3__0_n_0\,
      O => \axlen_cnt[0]_i_1__2_n_0\
    );
\axlen_cnt[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88888B"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(16),
      I1 => E(0),
      I2 => \axlen_cnt[3]_i_3__0_n_0\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[0]\,
      O => \axlen_cnt[1]_i_1__1_n_0\
    );
\axlen_cnt[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAACCC3"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(17),
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[0]\,
      I4 => E(0),
      I5 => \axlen_cnt[3]_i_3__0_n_0\,
      O => \axlen_cnt[2]_i_1__2_n_0\
    );
\axlen_cnt[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAC3CC"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(18),
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \axlen_cnt[3]_i_2__2_n_0\,
      I4 => E(0),
      I5 => \axlen_cnt[3]_i_3__0_n_0\,
      O => \axlen_cnt[3]_i_1__2_n_0\
    );
\axlen_cnt[3]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[1]\,
      O => \axlen_cnt[3]_i_2__2_n_0\
    );
\axlen_cnt[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[4]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      O => \axlen_cnt[3]_i_3__0_n_0\
    );
\axlen_cnt[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => E(0),
      I1 => \axlen_cnt_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[4]_i_1__2_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axlen_cnt[0]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[0]\,
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axlen_cnt[1]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axlen_cnt[2]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axlen_cnt[3]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_2\(0),
      D => \axlen_cnt[4]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[4]\,
      R => '0'
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(0),
      I1 => \^sel_first_reg_0\,
      I2 => \^q\(0),
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_0_sn_1,
      O => m_axi_araddr(0)
    );
\m_axi_araddr[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(10),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[10]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_10_sn_1,
      O => m_axi_araddr(10)
    );
\m_axi_araddr[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(11),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[11]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_11_sn_1,
      O => m_axi_araddr(11)
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(1),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_1_sn_1,
      O => m_axi_araddr(1)
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(2),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[2]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_2_sn_1,
      O => m_axi_araddr(2)
    );
\m_axi_araddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(3),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[3]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_3_sn_1,
      O => m_axi_araddr(3)
    );
\m_axi_araddr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(4),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[4]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_4_sn_1,
      O => m_axi_araddr(4)
    );
\m_axi_araddr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(5),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[5]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_5_sn_1,
      O => m_axi_araddr(5)
    );
\m_axi_araddr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(6),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[6]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_6_sn_1,
      O => m_axi_araddr(6)
    );
\m_axi_araddr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(7),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[7]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_7_sn_1,
      O => m_axi_araddr(7)
    );
\m_axi_araddr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(8),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[8]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_8_sn_1,
      O => m_axi_araddr(8)
    );
\m_axi_araddr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\(9),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_wrap_reg_n_0_[9]\,
      I3 => \axlen_cnt_reg[3]_0\(14),
      I4 => m_axi_araddr_9_sn_1,
      O => m_axi_araddr(9)
    );
\next_pending_r_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => next_pending_r,
      I1 => \axaddr_wrap_reg[0]_0\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[4]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => next_pending_r_reg_0
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wrap_next_pending,
      Q => next_pending_r,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_1,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(0),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[0]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(10),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[10]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(11),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[11]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(1),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[1]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(2),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[2]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(3),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[3]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(4),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[4]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(5),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[5]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(6),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[6]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(7),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[7]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(8),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[8]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(9),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[9]\,
      R => '0'
    );
\wrap_cnt_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA50CAA"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[3]_0\(1),
      I1 => D(1),
      I2 => \wrap_cnt_r_reg[1]_0\,
      I3 => E(0),
      I4 => \^wrap_second_len_r_reg[3]_0\(0),
      O => \wrap_cnt_r[1]_i_1__0_n_0\
    );
\wrap_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(0),
      Q => \wrap_cnt_r_reg_n_0_[0]\,
      R => '0'
    );
\wrap_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r[1]_i_1__0_n_0\,
      Q => \wrap_cnt_r_reg_n_0_[1]\,
      R => '0'
    );
\wrap_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(1),
      Q => \wrap_cnt_r_reg_n_0_[2]\,
      R => '0'
    );
\wrap_cnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(2),
      Q => \wrap_cnt_r_reg_n_0_[3]\,
      R => '0'
    );
\wrap_second_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(0),
      Q => \^wrap_second_len_r_reg[3]_0\(0),
      R => '0'
    );
\wrap_second_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(1),
      Q => \^wrap_second_len_r_reg[3]_0\(1),
      R => '0'
    );
\wrap_second_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(2),
      Q => \^wrap_second_len_r_reg[3]_0\(2),
      R => '0'
    );
\wrap_second_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(3),
      Q => \^wrap_second_len_r_reg[3]_0\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    \m_payload_i_reg[25]_0\ : out STD_LOGIC;
    wrap_next_pending_0 : out STD_LOGIC;
    \m_payload_i_reg[37]_0\ : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \m_payload_i_reg[25]_1\ : out STD_LOGIC;
    \m_payload_i_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[21]_0\ : out STD_LOGIC;
    \m_payload_i_reg[33]_0\ : out STD_LOGIC;
    \m_payload_i_reg[11]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \m_payload_i_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[21]_1\ : out STD_LOGIC;
    \m_payload_i_reg[9]_0\ : out STD_LOGIC;
    \m_payload_i_reg[7]_0\ : out STD_LOGIC;
    \m_payload_i_reg[6]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    \m_payload_i_reg[22]_0\ : out STD_LOGIC;
    \m_payload_i_reg[30]_0\ : out STD_LOGIC;
    \m_payload_i_reg[5]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_1\ : out STD_LOGIC;
    \m_payload_i_reg[6]_1\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_payload_i_reg[21]_2\ : out STD_LOGIC;
    \m_payload_i_reg[21]_3\ : out STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    m_valid_i0 : in STD_LOGIC;
    sel_first_i_1 : in STD_LOGIC;
    incr_next_pending_2 : in STD_LOGIC;
    next_pending_r_reg : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel_first_3 : in STD_LOGIC;
    \axaddr_incr_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[0]\ : in STD_LOGIC;
    \axaddr_incr_reg[6]\ : in STD_LOGIC;
    \axaddr_incr_reg[7]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[11]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \axaddr_wrap_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice : entity is "axi_register_slice_v2_1_31_axic_register_slice";
end design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice;

architecture STRUCTURE of design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice is
  signal \axaddr_incr[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[37]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[21]_1\ : STD_LOGIC;
  signal \^m_payload_i_reg[33]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[37]_0\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \^m_payload_i_reg[9]_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \next_pending_r_i_5__0_n_0\ : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^wrap_next_pending_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[1]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axaddr_incr[4]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axaddr_incr[7]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axaddr_incr[8]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axaddr_incr[9]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axaddr_wrap[0]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axaddr_wrap[1]_i_2__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_2__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axburst_eq0_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axburst_eq1_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[3]_i_2__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[5]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[6]_i_1__0\ : label is "soft_lutpair23";
begin
  \m_payload_i_reg[21]_1\ <= \^m_payload_i_reg[21]_1\;
  \m_payload_i_reg[33]_0\ <= \^m_payload_i_reg[33]_0\;
  \m_payload_i_reg[37]_0\(32 downto 0) <= \^m_payload_i_reg[37]_0\(32 downto 0);
  \m_payload_i_reg[9]_0\ <= \^m_payload_i_reg[9]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  wrap_next_pending_0 <= \^wrap_next_pending_0\;
\axaddr_incr[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F000F00909F"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(0),
      I1 => \axaddr_incr_reg[0]\,
      I2 => sel_first_3,
      I3 => \axaddr_incr_reg[7]\(0),
      I4 => \^m_payload_i_reg[37]_0\(22),
      I5 => \^m_payload_i_reg[37]_0\(21),
      O => \m_payload_i_reg[11]_0\(0)
    );
\axaddr_incr[11]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(11),
      I1 => \^m_payload_i_reg[9]_0\,
      I2 => \^m_payload_i_reg[37]_0\(10),
      I3 => sel_first_3,
      I4 => \axaddr_incr_reg[11]\,
      O => \m_payload_i_reg[11]_0\(4)
    );
\axaddr_incr[11]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(9),
      I1 => \^m_payload_i_reg[37]_0\(8),
      I2 => \^m_payload_i_reg[37]_0\(6),
      I3 => \^m_payload_i_reg[21]_1\,
      I4 => \^m_payload_i_reg[37]_0\(5),
      I5 => \^m_payload_i_reg[37]_0\(7),
      O => \^m_payload_i_reg[9]_0\
    );
\axaddr_incr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88B8BB8B88BB8"
    )
        port map (
      I0 => \axaddr_incr[1]_i_2__0_n_0\,
      I1 => sel_first_3,
      I2 => \axaddr_incr_reg[7]\(1),
      I3 => \^m_payload_i_reg[37]_0\(21),
      I4 => \^m_payload_i_reg[37]_0\(22),
      I5 => \axaddr_incr_reg[7]\(0),
      O => \m_payload_i_reg[11]_0\(1)
    );
\axaddr_incr[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CD0032"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(0),
      I1 => \axaddr_incr_reg[0]\,
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(22),
      I4 => \^m_payload_i_reg[37]_0\(1),
      O => \axaddr_incr[1]_i_2__0_n_0\
    );
\axaddr_incr[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CCDDDF00332220"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(1),
      I1 => \axaddr_incr_reg[0]\,
      I2 => \^m_payload_i_reg[37]_0\(0),
      I3 => \^m_payload_i_reg[37]_0\(21),
      I4 => \^m_payload_i_reg[37]_0\(22),
      I5 => \^m_payload_i_reg[37]_0\(2),
      O => \m_payload_i_reg[1]_0\
    );
\axaddr_incr[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6A5595"
    )
        port map (
      I0 => \axaddr_incr[7]_i_4_n_0\,
      I1 => \^m_payload_i_reg[37]_0\(22),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \axaddr_incr_reg[0]\,
      I4 => \^m_payload_i_reg[37]_0\(3),
      O => \m_payload_i_reg[22]_0\
    );
\axaddr_incr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB3BBB"
    )
        port map (
      I0 => \axaddr_incr[7]_i_4_n_0\,
      I1 => \^m_payload_i_reg[37]_0\(3),
      I2 => \^m_payload_i_reg[37]_0\(22),
      I3 => \^m_payload_i_reg[37]_0\(21),
      I4 => \axaddr_incr_reg[0]\,
      O => \m_payload_i_reg[3]_0\
    );
\axaddr_incr[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A600A6FFA6FFA600"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(6),
      I1 => \^m_payload_i_reg[37]_0\(5),
      I2 => \^m_payload_i_reg[21]_1\,
      I3 => sel_first_3,
      I4 => \axaddr_incr_reg[7]\(2),
      I5 => \axaddr_incr_reg[6]\,
      O => \m_payload_i_reg[11]_0\(2)
    );
\axaddr_incr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF00FFFFFFFFFF"
    )
        port map (
      I0 => \axaddr_incr_reg[0]\,
      I1 => \^m_payload_i_reg[37]_0\(21),
      I2 => \^m_payload_i_reg[37]_0\(22),
      I3 => \^m_payload_i_reg[37]_0\(3),
      I4 => \axaddr_incr[7]_i_4_n_0\,
      I5 => \^m_payload_i_reg[37]_0\(4),
      O => \^m_payload_i_reg[21]_1\
    );
\axaddr_incr[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A600A6FFA6FFA600"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(7),
      I1 => \^m_payload_i_reg[37]_0\(6),
      I2 => \axaddr_incr[7]_i_2_n_0\,
      I3 => sel_first_3,
      I4 => \axaddr_incr_reg[7]\(3),
      I5 => \axaddr_incr_reg[7]_0\,
      O => \m_payload_i_reg[11]_0\(3)
    );
\axaddr_incr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDF5FDFFFFFFFFF"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(4),
      I1 => \axaddr_incr[7]_i_4_n_0\,
      I2 => \^m_payload_i_reg[37]_0\(3),
      I3 => \axaddr_incr[7]_i_5_n_0\,
      I4 => \axaddr_incr_reg[0]\,
      I5 => \^m_payload_i_reg[37]_0\(5),
      O => \axaddr_incr[7]_i_2_n_0\
    );
\axaddr_incr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF037FFFFFFFF"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(0),
      I1 => \^m_payload_i_reg[37]_0\(1),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(22),
      I4 => \axaddr_incr_reg[0]\,
      I5 => \^m_payload_i_reg[37]_0\(2),
      O => \axaddr_incr[7]_i_4_n_0\
    );
\axaddr_incr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(21),
      I1 => \^m_payload_i_reg[37]_0\(22),
      O => \axaddr_incr[7]_i_5_n_0\
    );
\axaddr_incr[8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(6),
      I1 => \^m_payload_i_reg[21]_1\,
      I2 => \^m_payload_i_reg[37]_0\(5),
      I3 => \^m_payload_i_reg[37]_0\(7),
      O => \m_payload_i_reg[6]_0\
    );
\axaddr_incr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(7),
      I1 => \^m_payload_i_reg[37]_0\(5),
      I2 => \^m_payload_i_reg[21]_1\,
      I3 => \^m_payload_i_reg[37]_0\(6),
      I4 => \^m_payload_i_reg[37]_0\(8),
      O => \m_payload_i_reg[7]_0\
    );
\axaddr_offset_r[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(3),
      I1 => \^m_payload_i_reg[37]_0\(1),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(2),
      I4 => \^m_payload_i_reg[37]_0\(22),
      I5 => \^m_payload_i_reg[37]_0\(0),
      O => \m_payload_i_reg[3]_1\
    );
\axaddr_offset_r[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFF08000000"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(26),
      I1 => \axaddr_offset_r[1]_i_2__0_n_0\,
      I2 => s_ready_i_reg_2(1),
      I3 => s_ready_i_reg_2(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => \axaddr_offset_r_reg[1]\(0),
      O => \m_payload_i_reg[31]_0\(0)
    );
\axaddr_offset_r[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(4),
      I1 => \^m_payload_i_reg[37]_0\(2),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(3),
      I4 => \^m_payload_i_reg[37]_0\(22),
      I5 => \^m_payload_i_reg[37]_0\(1),
      O => \axaddr_offset_r[1]_i_2__0_n_0\
    );
\axaddr_offset_r[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(5),
      I1 => \^m_payload_i_reg[37]_0\(3),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(4),
      I4 => \^m_payload_i_reg[37]_0\(22),
      I5 => \^m_payload_i_reg[37]_0\(2),
      O => \m_payload_i_reg[5]_0\
    );
\axaddr_offset_r[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \axaddr_offset_r[3]_i_3__0_n_0\,
      I1 => \^m_payload_i_reg[37]_0\(21),
      I2 => \^m_payload_i_reg[37]_0\(4),
      I3 => \^m_payload_i_reg[37]_0\(22),
      I4 => \^m_payload_i_reg[37]_0\(6),
      I5 => \^m_payload_i_reg[33]_0\,
      O => \m_payload_i_reg[21]_0\
    );
\axaddr_offset_r[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(5),
      I1 => \^m_payload_i_reg[37]_0\(22),
      I2 => \^m_payload_i_reg[37]_0\(3),
      O => \axaddr_offset_r[3]_i_3__0_n_0\
    );
\axaddr_wrap[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(21),
      I1 => \^m_payload_i_reg[37]_0\(22),
      O => \m_payload_i_reg[21]_3\
    );
\axaddr_wrap[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(21),
      I1 => \^m_payload_i_reg[37]_0\(22),
      I2 => \axaddr_wrap_reg[1]\(0),
      O => \m_payload_i_reg[21]_2\
    );
\axlen_cnt[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(28),
      I1 => \^m_valid_i_reg_0\,
      I2 => s_ready_i_reg_2(0),
      I3 => s_ready_i_reg_2(1),
      O => \^m_payload_i_reg[33]_0\
    );
\m_payload_i[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__1_n_0\
    );
\m_payload_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__0_n_0\
    );
\m_payload_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__0_n_0\
    );
\m_payload_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__0_n_0\
    );
\m_payload_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__0_n_0\
    );
\m_payload_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__0_n_0\
    );
\m_payload_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__0_n_0\
    );
\m_payload_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__0_n_0\
    );
\m_payload_i[17]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_2__0_n_0\
    );
\m_payload_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__0_n_0\
    );
\m_payload_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__0_n_0\
    );
\m_payload_i[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__1_n_0\
    );
\m_payload_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__0_n_0\
    );
\m_payload_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__0_n_0\
    );
\m_payload_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__0_n_0\
    );
\m_payload_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__0_n_0\
    );
\m_payload_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__0_n_0\
    );
\m_payload_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__0_n_0\
    );
\m_payload_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__0_n_0\
    );
\m_payload_i[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_1__1_n_0\
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__0_n_0\
    );
\m_payload_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__0_n_0\
    );
\m_payload_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__0_n_0\
    );
\m_payload_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__0_n_0\
    );
\m_payload_i[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_1__0_n_0\
    );
\m_payload_i[37]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => \m_payload_i[37]_i_1__0_n_0\
    );
\m_payload_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__0_n_0\
    );
\m_payload_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__0_n_0\
    );
\m_payload_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__0_n_0\
    );
\m_payload_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__0_n_0\
    );
\m_payload_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__0_n_0\
    );
\m_payload_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__0_n_0\
    );
\m_payload_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[0]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[37]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[10]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[11]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[12]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[13]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[14]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[15]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[16]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[17]_i_2__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[18]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[19]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[1]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[37]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[20]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[21]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[22]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(22),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[24]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(23),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[25]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(24),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[2]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[30]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(25),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[31]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[37]_0\(26),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[32]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(27),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[33]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(28),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[34]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(29),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[35]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(30),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[36]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(31),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[37]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(32),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[3]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[4]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[5]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[6]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[7]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[8]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[9]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[37]_0\(9),
      R => '0'
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\next_pending_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(26),
      I1 => \^m_payload_i_reg[37]_0\(27),
      I2 => \^m_payload_i_reg[37]_0\(28),
      I3 => \^m_payload_i_reg[37]_0\(25),
      I4 => next_pending_r_reg,
      I5 => next_pending_r_reg_0,
      O => \^wrap_next_pending_0\
    );
\next_pending_r_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(25),
      I1 => \^m_payload_i_reg[37]_0\(30),
      I2 => \^m_payload_i_reg[37]_0\(31),
      I3 => \^m_payload_i_reg[37]_0\(32),
      I4 => \next_pending_r_i_5__0_n_0\,
      O => \m_payload_i_reg[30]_0\
    );
\next_pending_r_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(26),
      I1 => \^m_payload_i_reg[37]_0\(27),
      I2 => \^m_payload_i_reg[37]_0\(29),
      I3 => \^m_payload_i_reg[37]_0\(28),
      O => \next_pending_r_i_5__0_n_0\
    );
\s_axburst_eq0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^wrap_next_pending_0\,
      I1 => \^m_payload_i_reg[37]_0\(24),
      I2 => sel_first_i_1,
      I3 => incr_next_pending_2,
      O => \m_payload_i_reg[25]_0\
    );
\s_axburst_eq1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^wrap_next_pending_0\,
      I1 => \^m_payload_i_reg[37]_0\(24),
      I2 => sel_first_i_1,
      I3 => incr_next_pending_2,
      O => \m_payload_i_reg[25]_1\
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444FFFFF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_ready_i_reg_0\,
      I2 => s_ready_i_reg_2(1),
      I3 => s_ready_i_reg_2(0),
      I4 => \^m_valid_i_reg_0\,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arprot(0),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arprot(1),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arprot(2),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arsize(0),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arsize(1),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arburst(0),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arburst(1),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(0),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(1),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(2),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(3),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(4),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(5),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(6),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(7),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
\wrap_boundary_axaddr_r[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(0),
      I1 => \^m_payload_i_reg[37]_0\(22),
      I2 => \^m_payload_i_reg[37]_0\(25),
      I3 => \^m_payload_i_reg[37]_0\(21),
      O => \m_payload_i_reg[6]_1\(0)
    );
\wrap_boundary_axaddr_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888AAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(1),
      I1 => \^m_payload_i_reg[37]_0\(22),
      I2 => \^m_payload_i_reg[37]_0\(25),
      I3 => \^m_payload_i_reg[37]_0\(21),
      I4 => \^m_payload_i_reg[37]_0\(26),
      O => \m_payload_i_reg[6]_1\(1)
    );
\wrap_boundary_axaddr_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(2),
      I1 => \^m_payload_i_reg[37]_0\(27),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(26),
      I4 => \^m_payload_i_reg[37]_0\(22),
      I5 => \^m_payload_i_reg[37]_0\(25),
      O => \m_payload_i_reg[6]_1\(2)
    );
\wrap_boundary_axaddr_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(3),
      I1 => \wrap_boundary_axaddr_r[3]_i_2__0_n_0\,
      I2 => \^m_payload_i_reg[37]_0\(22),
      I3 => \^m_payload_i_reg[37]_0\(26),
      I4 => \^m_payload_i_reg[37]_0\(21),
      I5 => \^m_payload_i_reg[37]_0\(25),
      O => \m_payload_i_reg[6]_1\(3)
    );
\wrap_boundary_axaddr_r[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(27),
      I1 => \^m_payload_i_reg[37]_0\(21),
      I2 => \^m_payload_i_reg[37]_0\(28),
      O => \wrap_boundary_axaddr_r[3]_i_2__0_n_0\
    );
\wrap_boundary_axaddr_r[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A0A2AA02AAA2A"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(4),
      I1 => \^m_payload_i_reg[37]_0\(28),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(22),
      I4 => \^m_payload_i_reg[37]_0\(27),
      I5 => \^m_payload_i_reg[37]_0\(26),
      O => \m_payload_i_reg[6]_1\(4)
    );
\wrap_boundary_axaddr_r[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A222AAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(5),
      I1 => \^m_payload_i_reg[37]_0\(22),
      I2 => \^m_payload_i_reg[37]_0\(27),
      I3 => \^m_payload_i_reg[37]_0\(21),
      I4 => \^m_payload_i_reg[37]_0\(28),
      O => \m_payload_i_reg[6]_1\(5)
    );
\wrap_boundary_axaddr_r[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\(6),
      I1 => \^m_payload_i_reg[37]_0\(22),
      I2 => \^m_payload_i_reg[37]_0\(21),
      I3 => \^m_payload_i_reg[37]_0\(28),
      O => \m_payload_i_reg[6]_1\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice_0 is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    \m_payload_i_reg[6]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \m_payload_i_reg[25]_0\ : out STD_LOGIC;
    wrap_next_pending : out STD_LOGIC;
    \m_payload_i_reg[25]_1\ : out STD_LOGIC;
    \m_payload_i_reg[21]_0\ : out STD_LOGIC;
    \m_payload_i_reg[33]_0\ : out STD_LOGIC;
    axaddr_offset : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \m_payload_i_reg[6]_1\ : out STD_LOGIC;
    \m_payload_i_reg[8]_0\ : out STD_LOGIC;
    \m_payload_i_reg[22]_0\ : out STD_LOGIC;
    \m_payload_i_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[30]_0\ : out STD_LOGIC;
    \m_payload_i_reg[5]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    \m_payload_i_reg[6]_2\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_payload_i_reg[21]_1\ : out STD_LOGIC;
    \m_payload_i_reg[21]_2\ : out STD_LOGIC;
    \m_payload_i_reg[21]_3\ : out STD_LOGIC;
    \m_payload_i_reg[21]_4\ : out STD_LOGIC;
    \m_payload_i_reg[1]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \axaddr_incr_reg[8]\ : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    incr_next_pending : in STD_LOGIC;
    next_pending_r_reg : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    \axaddr_offset_r_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel_first : in STD_LOGIC;
    \axaddr_incr_reg[10]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axaddr_incr_reg[5]\ : in STD_LOGIC;
    \axaddr_incr_reg[8]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[10]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[11]\ : in STD_LOGIC;
    \axaddr_incr_reg[5]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[0]\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    b_push : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \axaddr_wrap_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice_0 : entity is "axi_register_slice_v2_1_31_axic_register_slice";
end design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice_0;

architecture STRUCTURE of design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \^aresetn_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \axaddr_incr[1]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[8]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[2]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[33]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[6]_1\ : STD_LOGIC;
  signal \^m_payload_i_reg[8]_0\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal next_pending_r_i_5_n_0 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 37 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \^wrap_next_pending\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[1]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axaddr_incr[5]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axaddr_incr[5]_i_7\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axaddr_incr[8]_i_7\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axaddr_offset_r[3]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axaddr_wrap[0]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axaddr_wrap[1]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of s_axburst_eq0_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of s_axburst_eq1_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[3]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[6]_i_1\ : label is "soft_lutpair44";
begin
  Q(32 downto 0) <= \^q\(32 downto 0);
  aresetn_0 <= \^aresetn_0\;
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \m_payload_i_reg[2]_0\ <= \^m_payload_i_reg[2]_0\;
  \m_payload_i_reg[33]_0\ <= \^m_payload_i_reg[33]_0\;
  \m_payload_i_reg[6]_1\ <= \^m_payload_i_reg[6]_1\;
  \m_payload_i_reg[8]_0\ <= \^m_payload_i_reg[8]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  wrap_next_pending <= \^wrap_next_pending\;
areset_d1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \aresetn_d_reg_n_0_[0]\,
      R => \^aresetn_0\
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg_n_0_[0]\,
      Q => \aresetn_d_reg_n_0_[1]\,
      R => \^aresetn_0\
    );
\axaddr_incr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000F000F0990F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axaddr_incr_reg[0]\,
      I2 => \axaddr_incr_reg[10]\(0),
      I3 => sel_first,
      I4 => \^q\(21),
      I5 => \^q\(22),
      O => D(0)
    );
\axaddr_incr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A006AFF6AFF6A00"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^m_payload_i_reg[8]_0\,
      I2 => \^q\(9),
      I3 => sel_first,
      I4 => \axaddr_incr_reg[10]\(4),
      I5 => \axaddr_incr_reg[10]_0\,
      O => D(4)
    );
\axaddr_incr[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(9),
      I2 => \^m_payload_i_reg[8]_0\,
      I3 => \^q\(10),
      I4 => sel_first,
      I5 => \axaddr_incr_reg[11]\,
      O => D(5)
    );
\axaddr_incr[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^m_payload_i_reg[2]_0\,
      I4 => \^q\(4),
      I5 => \^q\(7),
      O => \^m_payload_i_reg[8]_0\
    );
\axaddr_incr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88B8BB8B88BB8"
    )
        port map (
      I0 => \axaddr_incr[1]_i_2_n_0\,
      I1 => sel_first,
      I2 => \axaddr_incr_reg[10]\(1),
      I3 => \^q\(21),
      I4 => \^q\(22),
      I5 => \axaddr_incr_reg[10]\(0),
      O => D(1)
    );
\axaddr_incr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CD0032"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axaddr_incr_reg[0]\,
      I2 => \^q\(21),
      I3 => \^q\(22),
      I4 => \^q\(1),
      O => \axaddr_incr[1]_i_2_n_0\
    );
\axaddr_incr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0F5F7000F0A08"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \axaddr_incr_reg[0]\,
      I3 => \^q\(21),
      I4 => \^q\(22),
      I5 => \^q\(2),
      O => \m_payload_i_reg[1]_0\
    );
\axaddr_incr[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAA6555"
    )
        port map (
      I0 => \axaddr_incr[8]_i_5_n_0\,
      I1 => \axaddr_incr_reg[0]\,
      I2 => \^q\(22),
      I3 => \^q\(21),
      I4 => \^q\(3),
      O => \m_payload_i_reg[22]_0\
    );
\axaddr_incr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A600A6FFA6FFA600"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^m_payload_i_reg[2]_0\,
      I3 => sel_first,
      I4 => \axaddr_incr_reg[10]\(2),
      I5 => \axaddr_incr_reg[5]\,
      O => D(2)
    );
\axaddr_incr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BBB3BBFFFFFFFF"
    )
        port map (
      I0 => \axaddr_incr_reg[5]_0\,
      I1 => \^q\(2),
      I2 => \axaddr_incr_reg[0]\,
      I3 => \^q\(22),
      I4 => \^q\(21),
      I5 => \^q\(3),
      O => \^m_payload_i_reg[2]_0\
    );
\axaddr_incr[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      I2 => \^q\(0),
      O => \m_payload_i_reg[21]_3\
    );
\axaddr_incr[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(22),
      O => \m_payload_i_reg[1]_1\
    );
\axaddr_incr[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6A6A6AAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \axaddr_incr_reg[8]\,
      I4 => \axaddr_incr[8]_i_5_n_0\,
      I5 => \^q\(4),
      O => \m_payload_i_reg[6]_0\
    );
\axaddr_incr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A006AFF6AFF6A00"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^m_payload_i_reg[6]_1\,
      I2 => \^q\(7),
      I3 => sel_first,
      I4 => \axaddr_incr_reg[10]\(3),
      I5 => \axaddr_incr_reg[8]_0\,
      O => D(3)
    );
\axaddr_incr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \axaddr_incr_reg[8]\,
      I4 => \axaddr_incr[8]_i_5_n_0\,
      I5 => \^q\(4),
      O => \^m_payload_i_reg[6]_1\
    );
\axaddr_incr[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F3F7FFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \axaddr_incr_reg[0]\,
      I3 => \^q\(21),
      I4 => \^q\(22),
      I5 => \^q\(2),
      O => \axaddr_incr[8]_i_5_n_0\
    );
\axaddr_incr[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      O => \m_payload_i_reg[21]_1\
    );
\axaddr_offset_r[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(21),
      I3 => \^q\(2),
      I4 => \^q\(22),
      I5 => \^q\(0),
      O => \m_payload_i_reg[3]_0\
    );
\axaddr_offset_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8FFF00008000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \axaddr_offset_r[1]_i_2_n_0\,
      I2 => \axaddr_offset_r_reg[1]\(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => \axaddr_offset_r_reg[1]\(1),
      I5 => \axaddr_offset_r_reg[1]_0\(0),
      O => axaddr_offset(0)
    );
\axaddr_offset_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(21),
      I3 => \^q\(3),
      I4 => \^q\(22),
      I5 => \^q\(1),
      O => \axaddr_offset_r[1]_i_2_n_0\
    );
\axaddr_offset_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(21),
      I3 => \^q\(4),
      I4 => \^q\(22),
      I5 => \^q\(2),
      O => \m_payload_i_reg[5]_0\
    );
\axaddr_offset_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \axaddr_offset_r[3]_i_3_n_0\,
      I1 => \^q\(21),
      I2 => \^q\(4),
      I3 => \^q\(22),
      I4 => \^q\(6),
      I5 => \^m_payload_i_reg[33]_0\,
      O => \m_payload_i_reg[21]_0\
    );
\axaddr_offset_r[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(22),
      I2 => \^q\(3),
      O => \axaddr_offset_r[3]_i_3_n_0\
    );
\axaddr_wrap[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      O => \m_payload_i_reg[21]_4\
    );
\axaddr_wrap[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      I2 => \axaddr_wrap_reg[1]\(0),
      O => \m_payload_i_reg[21]_2\
    );
\axlen_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(28),
      I1 => \axaddr_offset_r_reg[1]\(1),
      I2 => \^m_valid_i_reg_0\,
      I3 => \axaddr_offset_r_reg[1]\(0),
      O => \^m_payload_i_reg[33]_0\
    );
\m_payload_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => skid_buffer(37)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(24),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(25),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(30),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(31),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(32),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(33),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(34),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(35),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(36),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(37),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(9),
      Q => \^q\(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => b_push,
      I1 => \^m_valid_i_reg_0\,
      I2 => s_axi_awvalid,
      I3 => \^s_ready_i_reg_0\,
      O => m_valid_i0
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[1]\,
      O => \^aresetn_d_reg[1]_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => \^aresetn_d_reg[1]_0\
    );
\next_pending_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      I2 => \^q\(28),
      I3 => \^q\(25),
      I4 => next_pending_r_reg,
      I5 => next_pending_r_reg_0,
      O => \^wrap_next_pending\
    );
\next_pending_r_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(30),
      I2 => \^q\(31),
      I3 => \^q\(32),
      I4 => next_pending_r_i_5_n_0,
      O => \m_payload_i_reg[30]_0\
    );
next_pending_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      I2 => \^q\(29),
      I3 => \^q\(28),
      O => next_pending_r_i_5_n_0
    );
s_axburst_eq0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => \^q\(24),
      I2 => sel_first_i,
      I3 => incr_next_pending,
      O => \m_payload_i_reg[25]_0\
    );
s_axburst_eq1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => \^q\(24),
      I2 => sel_first_i,
      I3 => incr_next_pending,
      O => \m_payload_i_reg[25]_1\
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      O => \^aresetn_d_reg[0]_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_ready_i_reg_0\,
      I2 => b_push,
      I3 => \^m_valid_i_reg_0\,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => \^aresetn_d_reg[0]_0\
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awprot(0),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awprot(1),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awprot(2),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awsize(0),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awsize(1),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awburst(0),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awburst(1),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(0),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(1),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(2),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(3),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(4),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(5),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(6),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(7),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
\wrap_boundary_axaddr_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(22),
      I2 => \^q\(25),
      I3 => \^q\(21),
      O => \m_payload_i_reg[6]_2\(0)
    );
\wrap_boundary_axaddr_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888AAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(22),
      I2 => \^q\(25),
      I3 => \^q\(21),
      I4 => \^q\(26),
      O => \m_payload_i_reg[6]_2\(1)
    );
\wrap_boundary_axaddr_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(27),
      I2 => \^q\(21),
      I3 => \^q\(26),
      I4 => \^q\(22),
      I5 => \^q\(25),
      O => \m_payload_i_reg[6]_2\(2)
    );
\wrap_boundary_axaddr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \wrap_boundary_axaddr_r[3]_i_2_n_0\,
      I2 => \^q\(22),
      I3 => \^q\(26),
      I4 => \^q\(21),
      I5 => \^q\(25),
      O => \m_payload_i_reg[6]_2\(3)
    );
\wrap_boundary_axaddr_r[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(21),
      I2 => \^q\(28),
      O => \wrap_boundary_axaddr_r[3]_i_2_n_0\
    );
\wrap_boundary_axaddr_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A0A2AA02AAA2A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(28),
      I2 => \^q\(21),
      I3 => \^q\(22),
      I4 => \^q\(27),
      I5 => \^q\(26),
      O => \m_payload_i_reg[6]_2\(4)
    );
\wrap_boundary_axaddr_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A222AAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(22),
      I2 => \^q\(27),
      I3 => \^q\(21),
      I4 => \^q\(28),
      O => \m_payload_i_reg[6]_2\(5)
    );
\wrap_boundary_axaddr_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(22),
      I2 => \^q\(21),
      I3 => \^q\(28),
      O => \m_payload_i_reg[6]_2\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized1\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    shandshake : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    si_rs_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_31_axic_register_slice";
end \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized1\;

architecture STRUCTURE of \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized1\ is
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of s_ready_i_i_1 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of shandshake_r_i_1 : label is "soft_lutpair63";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^m_valid_i_reg_0\,
      O => p_1_in
    );
\m_payload_i[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(0),
      Q => s_axi_bresp(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(1),
      Q => s_axi_bresp(1),
      R => '0'
    );
\m_valid_i_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^m_valid_i_reg_0\,
      I2 => si_rs_bvalid,
      I3 => \^s_ready_i_reg_0\,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
s_ready_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => si_rs_bvalid,
      I1 => \^s_ready_i_reg_0\,
      I2 => s_axi_bready,
      I3 => \^m_valid_i_reg_0\,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
shandshake_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => si_rs_bvalid,
      O => shandshake
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \m_payload_i_reg[34]_0\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    m_valid_i_reg_2 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    si_rs_rlast : in STD_LOGIC;
    \skid_buffer_reg[33]_0\ : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_31_axic_register_slice";
end \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\;

architecture STRUCTURE of \design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\ is
  signal \m_payload_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal si_rs_rready : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[4]_i_3__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_ready_i_i_1__2\ : label is "soft_lutpair65";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
\cnt_read[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => si_rs_rready,
      I1 => m_valid_i_reg_2,
      O => s_ready_i_reg_0
    );
\m_payload_i[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(0),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__2_n_0\
    );
\m_payload_i[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(10),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__1_n_0\
    );
\m_payload_i[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(11),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__1_n_0\
    );
\m_payload_i[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(12),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__1_n_0\
    );
\m_payload_i[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(13),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__1_n_0\
    );
\m_payload_i[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(14),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__1_n_0\
    );
\m_payload_i[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(15),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__1_n_0\
    );
\m_payload_i[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(16),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__1_n_0\
    );
\m_payload_i[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(17),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__1_n_0\
    );
\m_payload_i[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(18),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__1_n_0\
    );
\m_payload_i[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(19),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__1_n_0\
    );
\m_payload_i[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(1),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__2_n_0\
    );
\m_payload_i[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(20),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__1_n_0\
    );
\m_payload_i[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(21),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__1_n_0\
    );
\m_payload_i[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(22),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__1_n_0\
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(23),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1_n_0\
    );
\m_payload_i[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(24),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__1_n_0\
    );
\m_payload_i[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(25),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__1_n_0\
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(26),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1_n_0\
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(27),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1_n_0\
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(28),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1_n_0\
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(29),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1_n_0\
    );
\m_payload_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(2),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__1_n_0\
    );
\m_payload_i[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(30),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__1_n_0\
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^m_valid_i_reg_0\,
      O => p_1_in
    );
\m_payload_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(31),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_2_n_0\
    );
\m_payload_i[32]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(32),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__1_n_0\
    );
\m_payload_i[33]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(33),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__1_n_0\
    );
\m_payload_i[34]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => si_rs_rlast,
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__1_n_0\
    );
\m_payload_i[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(3),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__1_n_0\
    );
\m_payload_i[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(4),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__1_n_0\
    );
\m_payload_i[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(5),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__1_n_0\
    );
\m_payload_i[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(6),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__1_n_0\
    );
\m_payload_i[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(7),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__1_n_0\
    );
\m_payload_i[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(8),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__1_n_0\
    );
\m_payload_i[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(9),
      I1 => si_rs_rready,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[0]_i_1__2_n_0\,
      Q => \m_payload_i_reg[34]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[10]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[11]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[12]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[13]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[14]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[15]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[16]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[17]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[18]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[19]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[1]_i_1__2_n_0\,
      Q => \m_payload_i_reg[34]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[20]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[21]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[22]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[23]_i_1_n_0\,
      Q => \m_payload_i_reg[34]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[24]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[25]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[26]_i_1_n_0\,
      Q => \m_payload_i_reg[34]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[27]_i_1_n_0\,
      Q => \m_payload_i_reg[34]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[28]_i_1_n_0\,
      Q => \m_payload_i_reg[34]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[29]_i_1_n_0\,
      Q => \m_payload_i_reg[34]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[2]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[30]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[31]_i_2_n_0\,
      Q => \m_payload_i_reg[34]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[32]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[33]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[34]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(34),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[3]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[4]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[5]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[6]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[7]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[8]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[9]_i_1__1_n_0\,
      Q => \m_payload_i_reg[34]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^m_valid_i_reg_0\,
      I2 => m_valid_i_reg_2,
      I3 => si_rs_rready,
      O => \m_valid_i_i_1__2_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__2_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => m_valid_i_reg_2,
      I1 => si_rs_rready,
      I2 => s_axi_rready,
      I3 => \^m_valid_i_reg_0\,
      O => \s_ready_i_i_1__2_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => si_rs_rready,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(32),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(33),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => si_rs_rlast,
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => si_rs_rready,
      D => \skid_buffer_reg[33]_0\(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_b_channel is
  port (
    si_rs_bvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_read_reg[0]\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    areset_d1 : in STD_LOGIC;
    shandshake : in STD_LOGIC;
    aclk : in STD_LOGIC;
    b_push : in STD_LOGIC;
    si_rs_bready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_b_channel : entity is "axi_protocol_converter_v2_1_31_b2s_b_channel";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_b_channel;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_b_channel is
  signal bid_fifo_0_n_3 : STD_LOGIC;
  signal bid_fifo_0_n_6 : STD_LOGIC;
  signal \bresp_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal bresp_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bresp_push : STD_LOGIC;
  signal cnt_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mhandshake : STD_LOGIC;
  signal mhandshake_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_bresp_acc : STD_LOGIC;
  signal s_bresp_acc0 : STD_LOGIC;
  signal \s_bresp_acc_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_bresp_acc_reg_n_0_[1]\ : STD_LOGIC;
  signal shandshake_r : STD_LOGIC;
  signal \^si_rs_bvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bresp_cnt[1]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \bresp_cnt[2]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \bresp_cnt[3]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \bresp_cnt[4]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \bresp_cnt[6]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \bresp_cnt[7]_i_1\ : label is "soft_lutpair99";
begin
  si_rs_bvalid <= \^si_rs_bvalid\;
bid_fifo_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo
     port map (
      E(0) => bid_fifo_0_n_3,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => s_bresp_acc0,
      aclk => aclk,
      areset_d1 => areset_d1,
      areset_d1_reg => bid_fifo_0_n_6,
      b_push => b_push,
      bresp_push => bresp_push,
      bvalid_i_reg(1 downto 0) => cnt_read(1 downto 0),
      \cnt_read_reg[0]_0\ => \cnt_read_reg[0]\,
      \in\(7 downto 0) => \in\(7 downto 0),
      \memory_reg[3][0]_srl4_i_1__0_0\(7 downto 0) => bresp_cnt_reg(7 downto 0),
      mhandshake_r => mhandshake_r,
      shandshake_r => shandshake_r,
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => \^si_rs_bvalid\
    );
\bresp_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bresp_cnt_reg(0),
      O => p_0_in(0)
    );
\bresp_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bresp_cnt_reg(0),
      I1 => bresp_cnt_reg(1),
      O => p_0_in(1)
    );
\bresp_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bresp_cnt_reg(2),
      I1 => bresp_cnt_reg(1),
      I2 => bresp_cnt_reg(0),
      O => p_0_in(2)
    );
\bresp_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bresp_cnt_reg(3),
      I1 => bresp_cnt_reg(0),
      I2 => bresp_cnt_reg(1),
      I3 => bresp_cnt_reg(2),
      O => p_0_in(3)
    );
\bresp_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => bresp_cnt_reg(4),
      I1 => bresp_cnt_reg(2),
      I2 => bresp_cnt_reg(1),
      I3 => bresp_cnt_reg(0),
      I4 => bresp_cnt_reg(3),
      O => p_0_in(4)
    );
\bresp_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => bresp_cnt_reg(5),
      I1 => bresp_cnt_reg(3),
      I2 => bresp_cnt_reg(0),
      I3 => bresp_cnt_reg(1),
      I4 => bresp_cnt_reg(2),
      I5 => bresp_cnt_reg(4),
      O => p_0_in(5)
    );
\bresp_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bresp_cnt_reg(6),
      I1 => \bresp_cnt[7]_i_2_n_0\,
      O => p_0_in(6)
    );
\bresp_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bresp_cnt_reg(7),
      I1 => \bresp_cnt[7]_i_2_n_0\,
      I2 => bresp_cnt_reg(6),
      O => p_0_in(7)
    );
\bresp_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bresp_cnt_reg(5),
      I1 => bresp_cnt_reg(3),
      I2 => bresp_cnt_reg(0),
      I3 => bresp_cnt_reg(1),
      I4 => bresp_cnt_reg(2),
      I5 => bresp_cnt_reg(4),
      O => \bresp_cnt[7]_i_2_n_0\
    );
\bresp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(0),
      Q => bresp_cnt_reg(0),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(1),
      Q => bresp_cnt_reg(1),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(2),
      Q => bresp_cnt_reg(2),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(3),
      Q => bresp_cnt_reg(3),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(4),
      Q => bresp_cnt_reg(4),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(5),
      Q => bresp_cnt_reg(5),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(6),
      Q => bresp_cnt_reg(6),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(7),
      Q => bresp_cnt_reg(7),
      R => s_bresp_acc0
    );
bresp_fifo_0: entity work.\design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized0\
     port map (
      E(0) => s_bresp_acc,
      Q(1 downto 0) => cnt_read(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \cnt_read_reg[1]_0\(0) => bid_fifo_0_n_3,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      mhandshake => mhandshake,
      mhandshake_r => mhandshake_r,
      \out\(1 downto 0) => \out\(1 downto 0),
      \s_bresp_acc_reg[0]\(1) => \s_bresp_acc_reg_n_0_[1]\,
      \s_bresp_acc_reg[0]\(0) => \s_bresp_acc_reg_n_0_[0]\,
      sel => bresp_push,
      shandshake_r => shandshake_r
    );
bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => bid_fifo_0_n_6,
      Q => \^si_rs_bvalid\,
      R => '0'
    );
mhandshake_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mhandshake,
      Q => mhandshake_r,
      R => areset_d1
    );
\s_bresp_acc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_bresp_acc,
      D => m_axi_bresp(0),
      Q => \s_bresp_acc_reg_n_0_[0]\,
      R => s_bresp_acc0
    );
\s_bresp_acc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_bresp_acc,
      D => m_axi_bresp(1),
      Q => \s_bresp_acc_reg_n_0_[1]\,
      R => s_bresp_acc0
    );
shandshake_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => shandshake,
      Q => shandshake_r,
      R => areset_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator is
  port (
    next_pending_r : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    \sel_first__0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[4]\ : out STD_LOGIC;
    \axaddr_incr_reg[10]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    next_pending_r_reg : out STD_LOGIC;
    \axaddr_wrap_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axburst_eq1_reg_0 : out STD_LOGIC;
    s_axburst_eq1_reg_1 : out STD_LOGIC;
    \axaddr_incr_reg[11]\ : out STD_LOGIC;
    \axaddr_incr_reg[9]\ : out STD_LOGIC;
    \axaddr_incr_reg[7]\ : out STD_LOGIC;
    \axaddr_incr_reg[4]\ : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wrap_next_pending : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    s_axburst_eq0_reg_0 : in STD_LOGIC;
    s_axburst_eq1_reg_2 : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    sel_first_reg_3 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_wrap_reg[11]\ : in STD_LOGIC;
    \axlen_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC;
    \axlen_cnt_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_awvalid : in STD_LOGIC;
    \axaddr_incr_reg[4]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[6]\ : in STD_LOGIC;
    \axaddr_incr_reg[7]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[9]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[3]\ : in STD_LOGIC;
    \axaddr_incr_reg[2]\ : in STD_LOGIC;
    \axaddr_wrap_reg[1]\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[1]\ : in STD_LOGIC;
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axaddr_incr_reg[11]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator : entity is "axi_protocol_converter_v2_1_31_b2s_cmd_translator";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator is
  signal incr_cmd_0_n_14 : STD_LOGIC;
  signal incr_cmd_0_n_15 : STD_LOGIC;
  signal incr_cmd_0_n_16 : STD_LOGIC;
  signal incr_cmd_0_n_17 : STD_LOGIC;
  signal incr_cmd_0_n_18 : STD_LOGIC;
  signal incr_cmd_0_n_19 : STD_LOGIC;
  signal incr_cmd_0_n_20 : STD_LOGIC;
  signal incr_cmd_0_n_21 : STD_LOGIC;
  signal incr_cmd_0_n_22 : STD_LOGIC;
  signal incr_cmd_0_n_23 : STD_LOGIC;
  signal incr_cmd_0_n_24 : STD_LOGIC;
  signal incr_cmd_0_n_25 : STD_LOGIC;
  signal s_axburst_eq0 : STD_LOGIC;
  signal s_axburst_eq1 : STD_LOGIC;
begin
incr_cmd_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd
     port map (
      E(0) => E(0),
      Q(4 downto 0) => \axaddr_incr_reg[10]\(4 downto 0),
      aclk => aclk,
      \axaddr_incr[5]_i_4\(1 downto 0) => \axlen_cnt_reg[0]\(1 downto 0),
      \axaddr_incr_reg[11]_0\ => \axaddr_incr_reg[11]\,
      \axaddr_incr_reg[11]_1\ => \axaddr_wrap_reg[11]\,
      \axaddr_incr_reg[11]_2\(5 downto 0) => \axaddr_incr_reg[11]_0\(5 downto 0),
      \axaddr_incr_reg[2]_0\ => \axaddr_incr_reg[2]\,
      \axaddr_incr_reg[3]_0\ => \axaddr_incr_reg[3]\,
      \axaddr_incr_reg[4]_0\ => \axaddr_incr_reg[4]\,
      \axaddr_incr_reg[4]_1\ => \axaddr_incr_reg[4]_0\,
      \axaddr_incr_reg[6]_0\ => \axaddr_incr_reg[6]\,
      \axaddr_incr_reg[7]_0\ => \axaddr_incr_reg[7]\,
      \axaddr_incr_reg[7]_1\ => \axaddr_incr_reg[7]_0\,
      \axaddr_incr_reg[9]_0\ => \axaddr_incr_reg[9]\,
      \axaddr_incr_reg[9]_1\ => \axaddr_incr_reg[9]_0\,
      \axlen_cnt_reg[0]_0\(0) => Q(0),
      \axlen_cnt_reg[0]_1\(0) => \axlen_cnt_reg[0]_1\(0),
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[3]_1\ => \axlen_cnt_reg[3]_0\,
      \axlen_cnt_reg[4]_0\ => \axlen_cnt_reg[4]\,
      \axlen_cnt_reg[7]_0\(21 downto 18) => \axlen_cnt_reg[7]\(23 downto 20),
      \axlen_cnt_reg[7]_0\(17 downto 16) => \axlen_cnt_reg[7]\(18 downto 17),
      \axlen_cnt_reg[7]_0\(15 downto 0) => \axlen_cnt_reg[7]\(15 downto 0),
      \axlen_cnt_reg[8]_0\(0) => \axlen_cnt_reg[0]_0\(0),
      incr_next_pending => incr_next_pending,
      m_axi_awready => m_axi_awready,
      next_pending_r => next_pending_r,
      s_axburst_eq0 => s_axburst_eq0,
      s_axburst_eq1 => s_axburst_eq1,
      s_axburst_eq1_reg => s_axburst_eq1_reg_0,
      sel_first_reg_0 => sel_first_reg_1,
      sel_first_reg_1 => incr_cmd_0_n_14,
      sel_first_reg_10 => incr_cmd_0_n_23,
      sel_first_reg_11 => incr_cmd_0_n_24,
      sel_first_reg_12 => incr_cmd_0_n_25,
      sel_first_reg_13 => sel_first_reg_2,
      sel_first_reg_2 => incr_cmd_0_n_15,
      sel_first_reg_3 => incr_cmd_0_n_16,
      sel_first_reg_4 => incr_cmd_0_n_17,
      sel_first_reg_5 => incr_cmd_0_n_18,
      sel_first_reg_6 => incr_cmd_0_n_19,
      sel_first_reg_7 => incr_cmd_0_n_20,
      sel_first_reg_8 => incr_cmd_0_n_21,
      sel_first_reg_9 => incr_cmd_0_n_22
    );
s_axburst_eq0_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axburst_eq0_reg_0,
      Q => s_axburst_eq0,
      R => '0'
    );
s_axburst_eq1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axburst_eq1_reg_2,
      Q => s_axburst_eq1,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i,
      Q => sel_first_reg_0,
      R => '0'
    );
wrap_cmd_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      Q(0) => \axaddr_wrap_reg[0]\(0),
      aclk => aclk,
      \axaddr_offset_r_reg[3]_0\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      \axaddr_offset_r_reg[3]_1\(3 downto 0) => \axaddr_offset_r_reg[3]_0\(3 downto 0),
      \axaddr_wrap_reg[0]_0\ => \axaddr_wrap_reg[0]_0\,
      \axaddr_wrap_reg[11]_0\ => \axaddr_wrap_reg[11]\,
      \axaddr_wrap_reg[1]_0\ => \axaddr_wrap_reg[1]\,
      \axlen_cnt_reg[0]_0\(1 downto 0) => \axlen_cnt_reg[0]\(1 downto 0),
      \axlen_cnt_reg[0]_1\(0) => \axlen_cnt_reg[0]_0\(0),
      \axlen_cnt_reg[3]_0\(18 downto 14) => \axlen_cnt_reg[7]\(19 downto 15),
      \axlen_cnt_reg[3]_0\(13 downto 0) => \axlen_cnt_reg[7]\(13 downto 0),
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      m_axi_awaddr_0_sp_1 => incr_cmd_0_n_25,
      m_axi_awaddr_10_sp_1 => incr_cmd_0_n_15,
      m_axi_awaddr_11_sp_1 => incr_cmd_0_n_14,
      m_axi_awaddr_1_sp_1 => incr_cmd_0_n_24,
      m_axi_awaddr_2_sp_1 => incr_cmd_0_n_23,
      m_axi_awaddr_3_sp_1 => incr_cmd_0_n_22,
      m_axi_awaddr_4_sp_1 => incr_cmd_0_n_21,
      m_axi_awaddr_5_sp_1 => incr_cmd_0_n_20,
      m_axi_awaddr_6_sp_1 => incr_cmd_0_n_19,
      m_axi_awaddr_7_sp_1 => incr_cmd_0_n_18,
      m_axi_awaddr_8_sp_1 => incr_cmd_0_n_17,
      m_axi_awaddr_9_sp_1 => incr_cmd_0_n_16,
      next_pending_r_reg_0 => next_pending_r_reg,
      s_axburst_eq0 => s_axburst_eq0,
      s_axburst_eq1 => s_axburst_eq1,
      s_axburst_eq1_reg => s_axburst_eq1_reg_1,
      sel_first_reg_0 => \sel_first__0\,
      sel_first_reg_1 => sel_first_reg_3,
      si_rs_awvalid => si_rs_awvalid,
      \wrap_boundary_axaddr_r_reg[6]_0\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[1]_0\ => \wrap_cnt_r_reg[1]\,
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0),
      \wrap_second_len_r_reg[3]_1\(3 downto 0) => \wrap_second_len_r_reg[3]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator_1 is
  port (
    next_pending_r : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    sel_first_reg_2 : out STD_LOGIC;
    \axlen_cnt_reg[3]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[3]_0\ : out STD_LOGIC;
    \axlen_cnt_reg[5]\ : out STD_LOGIC;
    \axaddr_wrap_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_pending_r_reg : out STD_LOGIC;
    m_axi_arready_0 : out STD_LOGIC;
    r_rlast : out STD_LOGIC;
    \axlen_cnt_reg[4]\ : out STD_LOGIC;
    \axaddr_incr_reg[11]\ : out STD_LOGIC;
    \axaddr_incr_reg[6]\ : out STD_LOGIC;
    \axaddr_incr_reg[5]\ : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wrap_next_pending : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    s_axburst_eq0_reg_0 : in STD_LOGIC;
    s_axburst_eq1_reg_0 : in STD_LOGIC;
    sel_first_reg_3 : in STD_LOGIC;
    sel_first_reg_4 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \axlen_cnt_reg[2]\ : in STD_LOGIC;
    \axlen_cnt_reg[3]_1\ : in STD_LOGIC;
    \axaddr_incr_reg[2]\ : in STD_LOGIC;
    \axaddr_incr_reg[4]\ : in STD_LOGIC;
    \axaddr_incr_reg[5]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[8]\ : in STD_LOGIC;
    \axaddr_incr_reg[9]\ : in STD_LOGIC;
    \axaddr_incr_reg[10]\ : in STD_LOGIC;
    \axaddr_incr_reg[3]\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_1\ : in STD_LOGIC;
    \axaddr_wrap_reg[1]\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    si_rs_arvalid : in STD_LOGIC;
    \axlen_cnt_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[1]\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axaddr_incr_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator_1 : entity is "axi_protocol_converter_v2_1_31_b2s_cmd_translator";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator_1;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator_1 is
  signal incr_cmd_0_n_17 : STD_LOGIC;
  signal incr_cmd_0_n_18 : STD_LOGIC;
  signal incr_cmd_0_n_19 : STD_LOGIC;
  signal incr_cmd_0_n_20 : STD_LOGIC;
  signal incr_cmd_0_n_21 : STD_LOGIC;
  signal incr_cmd_0_n_22 : STD_LOGIC;
  signal incr_cmd_0_n_23 : STD_LOGIC;
  signal incr_cmd_0_n_24 : STD_LOGIC;
  signal incr_cmd_0_n_25 : STD_LOGIC;
  signal incr_cmd_0_n_26 : STD_LOGIC;
  signal incr_cmd_0_n_27 : STD_LOGIC;
  signal incr_cmd_0_n_28 : STD_LOGIC;
  signal s_axburst_eq0 : STD_LOGIC;
  signal s_axburst_eq1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of r_rlast_r_i_1 : label is "soft_lutpair12";
begin
\FSM_sequential_state[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => m_axi_arready,
      I1 => s_axburst_eq0,
      I2 => \axlen_cnt_reg[7]\(15),
      I3 => s_axburst_eq1,
      O => m_axi_arready_0
    );
incr_cmd_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_incr_cmd_2
     port map (
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      aclk => aclk,
      \axaddr_incr_reg[10]_0\ => \axaddr_incr_reg[10]\,
      \axaddr_incr_reg[11]_0\ => \axaddr_incr_reg[11]\,
      \axaddr_incr_reg[11]_1\(0) => \axaddr_incr_reg[11]_0\(0),
      \axaddr_incr_reg[11]_2\(4 downto 0) => \axaddr_incr_reg[11]_1\(4 downto 0),
      \axaddr_incr_reg[2]_0\ => \axaddr_incr_reg[2]\,
      \axaddr_incr_reg[3]_0\ => \axaddr_incr_reg[3]\,
      \axaddr_incr_reg[4]_0\ => \axaddr_incr_reg[4]\,
      \axaddr_incr_reg[5]_0\ => \axaddr_incr_reg[5]\,
      \axaddr_incr_reg[5]_1\ => \axaddr_incr_reg[5]_0\,
      \axaddr_incr_reg[6]_0\ => \axaddr_incr_reg[6]\,
      \axaddr_incr_reg[7]_0\(3 downto 0) => \axaddr_incr_reg[7]\(3 downto 0),
      \axaddr_incr_reg[8]_0\ => \axaddr_incr_reg[8]\,
      \axaddr_incr_reg[9]_0\ => \axaddr_incr_reg[9]\,
      \axlen_cnt_reg[0]_0\(0) => \axaddr_wrap_reg[0]_2\(0),
      \axlen_cnt_reg[2]_0\ => \axlen_cnt_reg[2]\,
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[3]_1\ => \axlen_cnt_reg[3]_0\,
      \axlen_cnt_reg[3]_2\ => \axlen_cnt_reg[3]_1\,
      \axlen_cnt_reg[4]_0\ => \axlen_cnt_reg[4]\,
      \axlen_cnt_reg[5]_0\ => \axlen_cnt_reg[5]\,
      \axlen_cnt_reg[6]_0\(3 downto 0) => \axlen_cnt_reg[6]\(3 downto 0),
      \axlen_cnt_reg[7]_0\(17) => \axlen_cnt_reg[7]\(20),
      \axlen_cnt_reg[7]_0\(16 downto 15) => \axlen_cnt_reg[7]\(18 downto 17),
      \axlen_cnt_reg[7]_0\(14 downto 0) => \axlen_cnt_reg[7]\(14 downto 0),
      incr_next_pending => incr_next_pending,
      next_pending_r => next_pending_r,
      sel_first_reg_0 => sel_first_reg_1,
      sel_first_reg_1 => incr_cmd_0_n_17,
      sel_first_reg_10 => incr_cmd_0_n_26,
      sel_first_reg_11 => incr_cmd_0_n_27,
      sel_first_reg_12 => incr_cmd_0_n_28,
      sel_first_reg_13 => sel_first_reg_3,
      sel_first_reg_2 => incr_cmd_0_n_18,
      sel_first_reg_3 => incr_cmd_0_n_19,
      sel_first_reg_4 => incr_cmd_0_n_20,
      sel_first_reg_5 => incr_cmd_0_n_21,
      sel_first_reg_6 => incr_cmd_0_n_22,
      sel_first_reg_7 => incr_cmd_0_n_23,
      sel_first_reg_8 => incr_cmd_0_n_24,
      sel_first_reg_9 => incr_cmd_0_n_25
    );
r_rlast_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => s_axburst_eq0,
      I1 => \axlen_cnt_reg[7]\(15),
      I2 => s_axburst_eq1,
      O => r_rlast
    );
s_axburst_eq0_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axburst_eq0_reg_0,
      Q => s_axburst_eq0,
      R => '0'
    );
s_axburst_eq1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axburst_eq1_reg_0,
      Q => s_axburst_eq1,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i,
      Q => sel_first_reg_0,
      R => '0'
    );
wrap_cmd_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wrap_cmd_3
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      Q(0) => \axaddr_wrap_reg[0]\(0),
      aclk => aclk,
      \axaddr_offset_r_reg[3]_0\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      \axaddr_wrap_reg[0]_0\ => \axaddr_wrap_reg[0]_0\,
      \axaddr_wrap_reg[0]_1\ => \axaddr_wrap_reg[0]_1\,
      \axaddr_wrap_reg[0]_2\(0) => \axaddr_wrap_reg[0]_2\(0),
      \axaddr_wrap_reg[1]_0\ => \axaddr_wrap_reg[1]\,
      \axlen_cnt_reg[0]_0\(0) => \axlen_cnt_reg[0]\(0),
      \axlen_cnt_reg[3]_0\(18 downto 14) => \axlen_cnt_reg[7]\(19 downto 15),
      \axlen_cnt_reg[3]_0\(13 downto 0) => \axlen_cnt_reg[7]\(13 downto 0),
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_araddr_0_sp_1 => incr_cmd_0_n_28,
      m_axi_araddr_10_sp_1 => incr_cmd_0_n_18,
      m_axi_araddr_11_sp_1 => incr_cmd_0_n_17,
      m_axi_araddr_1_sp_1 => incr_cmd_0_n_27,
      m_axi_araddr_2_sp_1 => incr_cmd_0_n_26,
      m_axi_araddr_3_sp_1 => incr_cmd_0_n_25,
      m_axi_araddr_4_sp_1 => incr_cmd_0_n_24,
      m_axi_araddr_5_sp_1 => incr_cmd_0_n_23,
      m_axi_araddr_6_sp_1 => incr_cmd_0_n_22,
      m_axi_araddr_7_sp_1 => incr_cmd_0_n_21,
      m_axi_araddr_8_sp_1 => incr_cmd_0_n_20,
      m_axi_araddr_9_sp_1 => incr_cmd_0_n_19,
      next_pending_r_reg_0 => next_pending_r_reg,
      sel_first_reg_0 => sel_first_reg_2,
      sel_first_reg_1 => sel_first_reg_4,
      si_rs_arvalid => si_rs_arvalid,
      \wrap_boundary_axaddr_r_reg[6]_0\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[1]_0\ => \wrap_cnt_r_reg[1]\,
      \wrap_cnt_r_reg[3]_0\(2 downto 0) => \wrap_cnt_r_reg[3]\(2 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0),
      \wrap_second_len_r_reg[3]_1\(3 downto 0) => \wrap_second_len_r_reg[3]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_r_channel is
  port (
    si_rs_rlast : out STD_LOGIC;
    \cnt_read_reg[3]\ : out STD_LOGIC;
    \cnt_read_reg[4]\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    r_push : in STD_LOGIC;
    r_rlast : in STD_LOGIC;
    \cnt_read_reg[4]_0\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_r_channel : entity is "axi_protocol_converter_v2_1_31_b2s_r_channel";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_r_channel;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_r_channel is
  signal r_push_r : STD_LOGIC;
  signal rd_data_fifo_0_n_2 : STD_LOGIC;
  signal trans_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal transaction_fifo_0_n_2 : STD_LOGIC;
begin
r_push_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => r_push,
      Q => r_push_r,
      R => '0'
    );
r_rlast_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => r_rlast,
      Q => trans_in(0),
      R => '0'
    );
rd_data_fifo_0: entity work.\design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized1\
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      \cnt_read_reg[0]_0\ => rd_data_fifo_0_n_2,
      \cnt_read_reg[3]_0\ => \cnt_read_reg[3]\,
      \cnt_read_reg[4]_0\ => \cnt_read_reg[4]_0\,
      \in\(33 downto 0) => \in\(33 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_valid_i_reg => transaction_fifo_0_n_2,
      \out\(33 downto 0) => \out\(33 downto 0)
    );
transaction_fifo_0: entity work.\design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_simple_fifo__parameterized2\
     port map (
      \FSM_sequential_state_reg[0]\ => rd_data_fifo_0_n_2,
      aclk => aclk,
      areset_d1 => areset_d1,
      \cnt_read_reg[4]_0\ => \cnt_read_reg[4]\,
      \cnt_read_reg[4]_1\ => transaction_fifo_0_n_2,
      \cnt_read_reg[4]_2\ => \cnt_read_reg[4]_0\,
      r_push_r => r_push_r,
      si_rs_rlast => si_rs_rlast,
      trans_in(0) => trans_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_register_slice_v2_1_31_axi_register_slice is
  port (
    s_ready_i_reg : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    si_rs_awvalid : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    si_rs_bready : out STD_LOGIC;
    si_rs_arvalid : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    aresetn_0 : out STD_LOGIC;
    \m_payload_i_reg[6]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \m_payload_i_reg[25]\ : out STD_LOGIC;
    wrap_next_pending : out STD_LOGIC;
    \m_payload_i_reg[25]_0\ : out STD_LOGIC;
    \m_payload_i_reg[21]\ : out STD_LOGIC;
    \m_payload_i_reg[33]\ : out STD_LOGIC;
    axaddr_offset : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    \m_payload_i_reg[6]_0\ : out STD_LOGIC;
    \m_payload_i_reg[8]\ : out STD_LOGIC;
    \m_payload_i_reg[22]\ : out STD_LOGIC;
    \m_payload_i_reg[1]\ : out STD_LOGIC;
    \m_payload_i_reg[30]\ : out STD_LOGIC;
    shandshake : out STD_LOGIC;
    \m_payload_i_reg[25]_1\ : out STD_LOGIC;
    wrap_next_pending_0 : out STD_LOGIC;
    \m_payload_i_reg[37]\ : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \m_payload_i_reg[25]_2\ : out STD_LOGIC;
    \m_payload_i_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[21]_0\ : out STD_LOGIC;
    \m_payload_i_reg[33]_0\ : out STD_LOGIC;
    \m_payload_i_reg[11]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \m_payload_i_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[21]_1\ : out STD_LOGIC;
    \m_payload_i_reg[9]\ : out STD_LOGIC;
    \m_payload_i_reg[7]\ : out STD_LOGIC;
    \m_payload_i_reg[6]_1\ : out STD_LOGIC;
    \m_payload_i_reg[3]\ : out STD_LOGIC;
    \m_payload_i_reg[22]_0\ : out STD_LOGIC;
    \m_payload_i_reg[30]_0\ : out STD_LOGIC;
    s_ready_i_reg_1 : out STD_LOGIC;
    \m_payload_i_reg[5]\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    \m_payload_i_reg[5]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_1\ : out STD_LOGIC;
    \m_payload_i_reg[6]_2\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_payload_i_reg[6]_3\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_payload_i_reg[21]_2\ : out STD_LOGIC;
    \m_payload_i_reg[21]_3\ : out STD_LOGIC;
    \m_payload_i_reg[21]_4\ : out STD_LOGIC;
    \m_payload_i_reg[21]_5\ : out STD_LOGIC;
    \m_payload_i_reg[1]_1\ : out STD_LOGIC;
    \m_payload_i_reg[21]_6\ : out STD_LOGIC;
    \m_payload_i_reg[21]_7\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[34]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    aclk : in STD_LOGIC;
    m_valid_i0 : in STD_LOGIC;
    \axaddr_incr_reg[8]\ : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    incr_next_pending : in STD_LOGIC;
    next_pending_r_reg : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    \axaddr_offset_r_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel_first : in STD_LOGIC;
    \axaddr_incr_reg[10]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axaddr_incr_reg[5]\ : in STD_LOGIC;
    \axaddr_incr_reg[8]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[10]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[11]\ : in STD_LOGIC;
    \axaddr_incr_reg[5]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[0]\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    b_push : in STD_LOGIC;
    si_rs_bvalid : in STD_LOGIC;
    sel_first_i_1 : in STD_LOGIC;
    incr_next_pending_2 : in STD_LOGIC;
    next_pending_r_reg_1 : in STD_LOGIC;
    next_pending_r_reg_2 : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel_first_3 : in STD_LOGIC;
    \axaddr_incr_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[0]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[6]\ : in STD_LOGIC;
    \axaddr_incr_reg[7]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[11]_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \axaddr_wrap_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \axaddr_wrap_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    si_rs_rlast : in STD_LOGIC;
    \skid_buffer_reg[33]\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_register_slice_v2_1_31_axi_register_slice : entity is "axi_register_slice_v2_1_31_axi_register_slice";
end design_1_auto_pc_0_axi_register_slice_v2_1_31_axi_register_slice;

architecture STRUCTURE of design_1_auto_pc_0_axi_register_slice_v2_1_31_axi_register_slice is
  signal \aw.aw_pipe_n_1\ : STD_LOGIC;
  signal \aw.aw_pipe_n_3\ : STD_LOGIC;
begin
\ar.ar_pipe\: entity work.design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice
     port map (
      aclk => aclk,
      \axaddr_incr_reg[0]\ => \axaddr_incr_reg[0]_0\,
      \axaddr_incr_reg[11]\ => \axaddr_incr_reg[11]_0\,
      \axaddr_incr_reg[6]\ => \axaddr_incr_reg[6]\,
      \axaddr_incr_reg[7]\(3 downto 0) => \axaddr_incr_reg[7]\(3 downto 0),
      \axaddr_incr_reg[7]_0\ => \axaddr_incr_reg[7]_0\,
      \axaddr_offset_r_reg[1]\(0) => \axaddr_offset_r_reg[1]_1\(0),
      \axaddr_wrap_reg[1]\(0) => \axaddr_wrap_reg[1]_0\(0),
      incr_next_pending_2 => incr_next_pending_2,
      \m_payload_i_reg[0]_0\(0) => \m_payload_i_reg[0]\(0),
      \m_payload_i_reg[11]_0\(4 downto 0) => \m_payload_i_reg[11]\(4 downto 0),
      \m_payload_i_reg[1]_0\ => \m_payload_i_reg[1]_0\,
      \m_payload_i_reg[21]_0\ => \m_payload_i_reg[21]_0\,
      \m_payload_i_reg[21]_1\ => \m_payload_i_reg[21]_1\,
      \m_payload_i_reg[21]_2\ => \m_payload_i_reg[21]_6\,
      \m_payload_i_reg[21]_3\ => \m_payload_i_reg[21]_7\,
      \m_payload_i_reg[22]_0\ => \m_payload_i_reg[22]_0\,
      \m_payload_i_reg[25]_0\ => \m_payload_i_reg[25]_1\,
      \m_payload_i_reg[25]_1\ => \m_payload_i_reg[25]_2\,
      \m_payload_i_reg[30]_0\ => \m_payload_i_reg[30]_0\,
      \m_payload_i_reg[31]_0\(0) => \m_payload_i_reg[31]\(0),
      \m_payload_i_reg[33]_0\ => \m_payload_i_reg[33]_0\,
      \m_payload_i_reg[37]_0\(32 downto 0) => \m_payload_i_reg[37]\(32 downto 0),
      \m_payload_i_reg[3]_0\ => \m_payload_i_reg[3]\,
      \m_payload_i_reg[3]_1\ => \m_payload_i_reg[3]_1\,
      \m_payload_i_reg[5]_0\ => \m_payload_i_reg[5]_0\,
      \m_payload_i_reg[6]_0\ => \m_payload_i_reg[6]_1\,
      \m_payload_i_reg[6]_1\(6 downto 0) => \m_payload_i_reg[6]_3\(6 downto 0),
      \m_payload_i_reg[7]_0\ => \m_payload_i_reg[7]\,
      \m_payload_i_reg[9]_0\ => \m_payload_i_reg[9]\,
      m_valid_i0 => m_valid_i0,
      m_valid_i_reg_0 => si_rs_arvalid,
      m_valid_i_reg_1 => \aw.aw_pipe_n_3\,
      next_pending_r_reg => next_pending_r_reg_1,
      next_pending_r_reg_0 => next_pending_r_reg_2,
      s_axi_araddr(17 downto 0) => s_axi_araddr(17 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_ready_i_reg_0 => s_ready_i_reg_0,
      s_ready_i_reg_1 => \aw.aw_pipe_n_1\,
      s_ready_i_reg_2(1 downto 0) => s_ready_i_reg_2(1 downto 0),
      sel_first_3 => sel_first_3,
      sel_first_i_1 => sel_first_i_1,
      wrap_next_pending_0 => wrap_next_pending_0
    );
\aw.aw_pipe\: entity work.design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice_0
     port map (
      D(5 downto 0) => D(5 downto 0),
      E(0) => E(0),
      Q(32 downto 0) => Q(32 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => aresetn_0,
      \aresetn_d_reg[0]_0\ => \aw.aw_pipe_n_1\,
      \aresetn_d_reg[1]_0\ => \aw.aw_pipe_n_3\,
      \axaddr_incr_reg[0]\ => \axaddr_incr_reg[0]\,
      \axaddr_incr_reg[10]\(4 downto 0) => \axaddr_incr_reg[10]\(4 downto 0),
      \axaddr_incr_reg[10]_0\ => \axaddr_incr_reg[10]_0\,
      \axaddr_incr_reg[11]\ => \axaddr_incr_reg[11]\,
      \axaddr_incr_reg[5]\ => \axaddr_incr_reg[5]\,
      \axaddr_incr_reg[5]_0\ => \axaddr_incr_reg[5]_0\,
      \axaddr_incr_reg[8]\ => \axaddr_incr_reg[8]\,
      \axaddr_incr_reg[8]_0\ => \axaddr_incr_reg[8]_0\,
      axaddr_offset(0) => axaddr_offset(0),
      \axaddr_offset_r_reg[1]\(1 downto 0) => \axaddr_offset_r_reg[1]\(1 downto 0),
      \axaddr_offset_r_reg[1]_0\(0) => \axaddr_offset_r_reg[1]_0\(0),
      \axaddr_wrap_reg[1]\(0) => \axaddr_wrap_reg[1]\(0),
      b_push => b_push,
      incr_next_pending => incr_next_pending,
      \m_payload_i_reg[1]_0\ => \m_payload_i_reg[1]\,
      \m_payload_i_reg[1]_1\ => \m_payload_i_reg[1]_1\,
      \m_payload_i_reg[21]_0\ => \m_payload_i_reg[21]\,
      \m_payload_i_reg[21]_1\ => \m_payload_i_reg[21]_2\,
      \m_payload_i_reg[21]_2\ => \m_payload_i_reg[21]_3\,
      \m_payload_i_reg[21]_3\ => \m_payload_i_reg[21]_4\,
      \m_payload_i_reg[21]_4\ => \m_payload_i_reg[21]_5\,
      \m_payload_i_reg[22]_0\ => \m_payload_i_reg[22]\,
      \m_payload_i_reg[25]_0\ => \m_payload_i_reg[25]\,
      \m_payload_i_reg[25]_1\ => \m_payload_i_reg[25]_0\,
      \m_payload_i_reg[2]_0\ => \m_payload_i_reg[2]\,
      \m_payload_i_reg[30]_0\ => \m_payload_i_reg[30]\,
      \m_payload_i_reg[33]_0\ => \m_payload_i_reg[33]\,
      \m_payload_i_reg[3]_0\ => \m_payload_i_reg[3]_0\,
      \m_payload_i_reg[5]_0\ => \m_payload_i_reg[5]\,
      \m_payload_i_reg[6]_0\ => \m_payload_i_reg[6]\,
      \m_payload_i_reg[6]_1\ => \m_payload_i_reg[6]_0\,
      \m_payload_i_reg[6]_2\(6 downto 0) => \m_payload_i_reg[6]_2\(6 downto 0),
      \m_payload_i_reg[8]_0\ => \m_payload_i_reg[8]\,
      m_valid_i_reg_0 => si_rs_awvalid,
      next_pending_r_reg => next_pending_r_reg,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      s_axi_awaddr(17 downto 0) => s_axi_awaddr(17 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg_0 => s_ready_i_reg,
      sel_first => sel_first,
      sel_first_i => sel_first_i,
      wrap_next_pending => wrap_next_pending
    );
\b.b_pipe\: entity work.\design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized1\
     port map (
      aclk => aclk,
      m_valid_i_reg_0 => m_valid_i_reg,
      m_valid_i_reg_1 => \aw.aw_pipe_n_3\,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_ready_i_reg_0 => si_rs_bready,
      s_ready_i_reg_1 => \aw.aw_pipe_n_1\,
      shandshake => shandshake,
      si_rs_bvalid => si_rs_bvalid
    );
\r.r_pipe\: entity work.\design_1_auto_pc_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\
     port map (
      aclk => aclk,
      \m_payload_i_reg[34]_0\(34 downto 0) => \m_payload_i_reg[34]\(34 downto 0),
      m_valid_i_reg_0 => m_valid_i_reg_0,
      m_valid_i_reg_1 => \aw.aw_pipe_n_3\,
      m_valid_i_reg_2 => m_valid_i_reg_1,
      s_axi_rready => s_axi_rready,
      s_ready_i_reg_0 => s_ready_i_reg_1,
      s_ready_i_reg_1 => \aw.aw_pipe_n_1\,
      si_rs_rlast => si_rs_rlast,
      \skid_buffer_reg[33]_0\(33 downto 0) => \skid_buffer_reg[33]\(33 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_ar_channel is
  port (
    incr_next_pending : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    sel_first : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \axaddr_incr_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_wrap_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_pending_r_reg : out STD_LOGIC;
    r_push : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_valid_i0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_rlast : out STD_LOGIC;
    \axaddr_incr_reg[11]\ : out STD_LOGIC;
    \axaddr_incr_reg[6]\ : out STD_LOGIC;
    \axaddr_incr_reg[5]\ : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC;
    wrap_next_pending : in STD_LOGIC;
    s_axburst_eq0_reg : in STD_LOGIC;
    s_axburst_eq1_reg : in STD_LOGIC;
    si_rs_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \axlen_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axaddr_offset_r_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]\ : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[2]\ : in STD_LOGIC;
    \axaddr_incr_reg[4]\ : in STD_LOGIC;
    \axaddr_incr_reg[5]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[8]\ : in STD_LOGIC;
    \axaddr_incr_reg[9]\ : in STD_LOGIC;
    \axaddr_incr_reg[10]\ : in STD_LOGIC;
    \axaddr_incr_reg[3]\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC;
    \axaddr_wrap_reg[1]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axaddr_incr_reg[11]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_ar_channel : entity is "axi_protocol_converter_v2_1_31_b2s_ar_channel";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_ar_channel;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_ar_channel is
  signal \^fsm_sequential_state_reg[0]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ar_cmd_fsm_0_n_0 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_13 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_15 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_16 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_17 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_18 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_19 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_20 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_21 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_22 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_23 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_25 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_4 : STD_LOGIC;
  signal cmd_translator_0_n_1 : STD_LOGIC;
  signal cmd_translator_0_n_13 : STD_LOGIC;
  signal cmd_translator_0_n_14 : STD_LOGIC;
  signal cmd_translator_0_n_17 : STD_LOGIC;
  signal cmd_translator_0_n_19 : STD_LOGIC;
  signal cmd_translator_0_n_3 : STD_LOGIC;
  signal cmd_translator_0_n_4 : STD_LOGIC;
  signal cmd_translator_0_n_5 : STD_LOGIC;
  signal cmd_translator_0_n_6 : STD_LOGIC;
  signal cmd_translator_0_n_7 : STD_LOGIC;
  signal cmd_translator_0_n_8 : STD_LOGIC;
  signal \incr_cmd_0/next_pending_r\ : STD_LOGIC;
  signal \^incr_next_pending\ : STD_LOGIC;
  signal \^sel_first\ : STD_LOGIC;
  signal \^sel_first_i\ : STD_LOGIC;
  signal \wrap_cmd_0/axaddr_offset\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/axaddr_offset_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/wrap_second_len\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/wrap_second_len_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \FSM_sequential_state_reg[0]\ <= \^fsm_sequential_state_reg[0]\;
  \FSM_sequential_state_reg[1]\ <= \^fsm_sequential_state_reg[1]\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  incr_next_pending <= \^incr_next_pending\;
  sel_first <= \^sel_first\;
  sel_first_i <= \^sel_first_i\;
ar_cmd_fsm_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_rd_cmd_fsm
     port map (
      D(3 downto 0) => \wrap_cmd_0/wrap_second_len\(3 downto 0),
      E(0) => \^fsm_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[0]_0\ => \^fsm_sequential_state_reg[0]\,
      \FSM_sequential_state_reg[0]_1\ => \FSM_sequential_state_reg[0]_0\,
      \FSM_sequential_state_reg[1]_0\(0) => E(0),
      \FSM_sequential_state_reg[1]_1\ => cmd_translator_0_n_17,
      Q(1 downto 0) => \^q\(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr_reg[11]\ => \^sel_first\,
      axaddr_offset(2 downto 1) => \wrap_cmd_0/axaddr_offset\(3 downto 2),
      axaddr_offset(0) => \wrap_cmd_0/axaddr_offset\(0),
      \axaddr_offset_r_reg[2]\ => \axaddr_offset_r_reg[2]\,
      \axaddr_offset_r_reg[3]\ => ar_cmd_fsm_0_n_13,
      \axaddr_offset_r_reg[3]_0\(2 downto 1) => \wrap_cmd_0/axaddr_offset_r\(3 downto 2),
      \axaddr_offset_r_reg[3]_0\(0) => \wrap_cmd_0/axaddr_offset_r\(0),
      \axlen_cnt_reg[4]\ => cmd_translator_0_n_4,
      \axlen_cnt_reg[5]\ => cmd_translator_0_n_19,
      \axlen_cnt_reg[6]\(3) => ar_cmd_fsm_0_n_18,
      \axlen_cnt_reg[6]\(2) => ar_cmd_fsm_0_n_19,
      \axlen_cnt_reg[6]\(1) => ar_cmd_fsm_0_n_20,
      \axlen_cnt_reg[6]\(0) => ar_cmd_fsm_0_n_21,
      \axlen_cnt_reg[6]_0\(3) => cmd_translator_0_n_5,
      \axlen_cnt_reg[6]_0\(2) => cmd_translator_0_n_6,
      \axlen_cnt_reg[6]_0\(1) => cmd_translator_0_n_7,
      \axlen_cnt_reg[6]_0\(0) => cmd_translator_0_n_8,
      \axlen_cnt_reg[6]_1\ => cmd_translator_0_n_13,
      \axlen_cnt_reg[6]_2\(4 downto 2) => \axlen_cnt_reg[7]\(22 downto 20),
      \axlen_cnt_reg[6]_2\(1) => \axlen_cnt_reg[7]\(18),
      \axlen_cnt_reg[6]_2\(0) => \axlen_cnt_reg[7]\(16),
      incr_next_pending => \^incr_next_pending\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_valid_i0 => m_valid_i0,
      m_valid_i_reg => ar_cmd_fsm_0_n_0,
      m_valid_i_reg_0(0) => ar_cmd_fsm_0_n_25,
      m_valid_i_reg_1 => m_valid_i_reg,
      next_pending_r => \incr_cmd_0/next_pending_r\,
      next_pending_r_reg => cmd_translator_0_n_14,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      r_push => r_push,
      s_axi_arvalid => s_axi_arvalid,
      sel_first_i => \^sel_first_i\,
      sel_first_reg(0) => ar_cmd_fsm_0_n_4,
      sel_first_reg_0 => ar_cmd_fsm_0_n_22,
      sel_first_reg_1 => ar_cmd_fsm_0_n_23,
      sel_first_reg_2 => cmd_translator_0_n_3,
      sel_first_reg_3 => cmd_translator_0_n_1,
      si_rs_arvalid => si_rs_arvalid,
      \wrap_second_len_r_reg[3]\(2) => ar_cmd_fsm_0_n_15,
      \wrap_second_len_r_reg[3]\(1) => ar_cmd_fsm_0_n_16,
      \wrap_second_len_r_reg[3]\(0) => ar_cmd_fsm_0_n_17,
      \wrap_second_len_r_reg[3]_0\(0) => \axaddr_offset_r_reg[1]_0\(0),
      \wrap_second_len_r_reg[3]_1\ => \wrap_second_len_r_reg[3]\,
      \wrap_second_len_r_reg[3]_2\(3 downto 0) => \wrap_cmd_0/wrap_second_len_r\(3 downto 0),
      \wrap_second_len_r_reg[3]_3\ => \wrap_second_len_r_reg[3]_0\
    );
cmd_translator_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator_1
     port map (
      D(3 downto 2) => \wrap_cmd_0/axaddr_offset\(3 downto 2),
      D(1) => \axaddr_offset_r_reg[1]_0\(0),
      D(0) => \wrap_cmd_0/axaddr_offset\(0),
      E(0) => \^fsm_sequential_state_reg[1]\,
      Q(3) => cmd_translator_0_n_5,
      Q(2) => cmd_translator_0_n_6,
      Q(1) => cmd_translator_0_n_7,
      Q(0) => cmd_translator_0_n_8,
      aclk => aclk,
      \axaddr_incr_reg[10]\ => \axaddr_incr_reg[10]\,
      \axaddr_incr_reg[11]\ => \axaddr_incr_reg[11]\,
      \axaddr_incr_reg[11]_0\(0) => ar_cmd_fsm_0_n_4,
      \axaddr_incr_reg[11]_1\(4 downto 0) => \axaddr_incr_reg[11]_0\(4 downto 0),
      \axaddr_incr_reg[2]\ => \axaddr_incr_reg[2]\,
      \axaddr_incr_reg[3]\ => \axaddr_incr_reg[3]\,
      \axaddr_incr_reg[4]\ => \axaddr_incr_reg[4]\,
      \axaddr_incr_reg[5]\ => \axaddr_incr_reg[5]\,
      \axaddr_incr_reg[5]_0\ => \axaddr_incr_reg[5]_0\,
      \axaddr_incr_reg[6]\ => \axaddr_incr_reg[6]\,
      \axaddr_incr_reg[7]\(3 downto 0) => \axaddr_incr_reg[7]\(3 downto 0),
      \axaddr_incr_reg[8]\ => \axaddr_incr_reg[8]\,
      \axaddr_incr_reg[9]\ => \axaddr_incr_reg[9]\,
      \axaddr_offset_r_reg[3]\(3 downto 2) => \wrap_cmd_0/axaddr_offset_r\(3 downto 2),
      \axaddr_offset_r_reg[3]\(1) => \axaddr_offset_r_reg[1]\(0),
      \axaddr_offset_r_reg[3]\(0) => \wrap_cmd_0/axaddr_offset_r\(0),
      \axaddr_wrap_reg[0]\(0) => \axaddr_wrap_reg[0]\(0),
      \axaddr_wrap_reg[0]_0\ => \^fsm_sequential_state_reg[0]\,
      \axaddr_wrap_reg[0]_1\ => \axaddr_wrap_reg[0]_0\,
      \axaddr_wrap_reg[0]_2\(0) => ar_cmd_fsm_0_n_25,
      \axaddr_wrap_reg[1]\ => \axaddr_wrap_reg[1]\,
      \axlen_cnt_reg[0]\(0) => \^q\(1),
      \axlen_cnt_reg[2]\ => ar_cmd_fsm_0_n_0,
      \axlen_cnt_reg[3]\ => cmd_translator_0_n_4,
      \axlen_cnt_reg[3]_0\ => cmd_translator_0_n_13,
      \axlen_cnt_reg[3]_1\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[4]\ => cmd_translator_0_n_19,
      \axlen_cnt_reg[5]\ => cmd_translator_0_n_14,
      \axlen_cnt_reg[6]\(3) => ar_cmd_fsm_0_n_18,
      \axlen_cnt_reg[6]\(2) => ar_cmd_fsm_0_n_19,
      \axlen_cnt_reg[6]\(1) => ar_cmd_fsm_0_n_20,
      \axlen_cnt_reg[6]\(0) => ar_cmd_fsm_0_n_21,
      \axlen_cnt_reg[7]\(20) => \axlen_cnt_reg[7]\(23),
      \axlen_cnt_reg[7]\(19 downto 0) => \axlen_cnt_reg[7]\(19 downto 0),
      incr_next_pending => \^incr_next_pending\,
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arready_0 => cmd_translator_0_n_17,
      next_pending_r => \incr_cmd_0/next_pending_r\,
      next_pending_r_reg => next_pending_r_reg,
      r_rlast => r_rlast,
      s_axburst_eq0_reg_0 => s_axburst_eq0_reg,
      s_axburst_eq1_reg_0 => s_axburst_eq1_reg,
      sel_first_i => \^sel_first_i\,
      sel_first_reg_0 => cmd_translator_0_n_1,
      sel_first_reg_1 => \^sel_first\,
      sel_first_reg_2 => cmd_translator_0_n_3,
      sel_first_reg_3 => ar_cmd_fsm_0_n_23,
      sel_first_reg_4 => ar_cmd_fsm_0_n_22,
      si_rs_arvalid => si_rs_arvalid,
      \wrap_boundary_axaddr_r_reg[6]\(6 downto 0) => D(6 downto 0),
      \wrap_cnt_r_reg[1]\ => ar_cmd_fsm_0_n_13,
      \wrap_cnt_r_reg[3]\(2) => ar_cmd_fsm_0_n_15,
      \wrap_cnt_r_reg[3]\(1) => ar_cmd_fsm_0_n_16,
      \wrap_cnt_r_reg[3]\(0) => ar_cmd_fsm_0_n_17,
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]\(3 downto 0) => \wrap_cmd_0/wrap_second_len_r\(3 downto 0),
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_cmd_0/wrap_second_len\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_aw_channel is
  port (
    incr_next_pending : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    sel_first : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready_0 : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[10]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \axaddr_offset_r_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_pending_r_reg : out STD_LOGIC;
    \axaddr_wrap_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_push : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    \axaddr_incr_reg[11]\ : out STD_LOGIC;
    \axaddr_incr_reg[9]\ : out STD_LOGIC;
    \axaddr_incr_reg[7]\ : out STD_LOGIC;
    \axaddr_incr_reg[4]\ : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \s_awlen_r_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    wrap_next_pending : in STD_LOGIC;
    s_axburst_eq0_reg : in STD_LOGIC;
    s_axburst_eq1_reg : in STD_LOGIC;
    si_rs_awvalid : in STD_LOGIC;
    \axaddr_incr[6]_i_2__0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \axaddr_incr[6]_i_2__0_0\ : in STD_LOGIC;
    \axaddr_incr[5]_i_2\ : in STD_LOGIC;
    \axaddr_incr[5]_i_2_0\ : in STD_LOGIC;
    \s_awlen_r_reg[7]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axaddr_offset_r_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]\ : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \axaddr_incr_reg[4]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[6]\ : in STD_LOGIC;
    \axaddr_incr_reg[7]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[9]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[3]\ : in STD_LOGIC;
    \axaddr_incr_reg[2]\ : in STD_LOGIC;
    \axaddr_wrap_reg[1]\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC;
    \wrap_boundary_axaddr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_aw_channel : entity is "axi_protocol_converter_v2_1_31_b2s_aw_channel";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_aw_channel;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_aw_channel is
  signal \^fsm_sequential_state_reg[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_cmd_fsm_0_n_0 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_15 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_20 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_21 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_22 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_4 : STD_LOGIC;
  signal axlen_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cmd_translator_0_n_1 : STD_LOGIC;
  signal cmd_translator_0_n_13 : STD_LOGIC;
  signal cmd_translator_0_n_14 : STD_LOGIC;
  signal cmd_translator_0_n_5 : STD_LOGIC;
  signal \incr_cmd_0/next_pending_r\ : STD_LOGIC;
  signal \^incr_next_pending\ : STD_LOGIC;
  signal \^m_axi_awready_0\ : STD_LOGIC;
  signal \^sel_first\ : STD_LOGIC;
  signal \sel_first__0\ : STD_LOGIC;
  signal \^sel_first_i\ : STD_LOGIC;
  signal \wrap_cmd_0/axaddr_offset\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/axaddr_offset_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/wrap_second_len\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/wrap_second_len_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wrap_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \FSM_sequential_state_reg[0]\ <= \^fsm_sequential_state_reg[0]\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  incr_next_pending <= \^incr_next_pending\;
  m_axi_awready_0 <= \^m_axi_awready_0\;
  sel_first <= \^sel_first\;
  sel_first_i <= \^sel_first_i\;
aw_cmd_fsm_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_wr_cmd_fsm
     port map (
      D(3 downto 0) => \wrap_cmd_0/wrap_second_len\(3 downto 0),
      E(0) => aw_cmd_fsm_0_n_0,
      \FSM_sequential_state_reg[0]_0\(0) => \^fsm_sequential_state_reg[0]\,
      \FSM_sequential_state_reg[0]_1\(0) => aw_cmd_fsm_0_n_20,
      \FSM_sequential_state_reg[0]_2\(1 downto 0) => \FSM_sequential_state_reg[0]_0\(1 downto 0),
      \FSM_sequential_state_reg[1]_0\ => aw_cmd_fsm_0_n_4,
      \FSM_sequential_state_reg[1]_1\ => \FSM_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[1]_2\ => \FSM_sequential_state_reg[1]_0\,
      \FSM_sequential_state_reg[1]_3\ => cmd_translator_0_n_14,
      Q(1 downto 0) => \^q\(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr[5]_i_2\ => \axaddr_incr[5]_i_2\,
      \axaddr_incr[5]_i_2_0\ => cmd_translator_0_n_13,
      \axaddr_incr[5]_i_2_1\ => \axaddr_incr[5]_i_2_0\,
      \axaddr_incr[6]_i_2__0\ => \axaddr_incr[6]_i_2__0\,
      \axaddr_incr[6]_i_2__0_0\ => \axaddr_incr[6]_i_2__0_0\,
      axaddr_offset(2 downto 1) => \wrap_cmd_0/axaddr_offset\(3 downto 2),
      axaddr_offset(0) => \wrap_cmd_0/axaddr_offset\(0),
      \axaddr_offset_r_reg[2]\(1) => \s_awlen_r_reg[7]_1\(18),
      \axaddr_offset_r_reg[2]\(0) => \s_awlen_r_reg[7]_1\(16),
      \axaddr_offset_r_reg[2]_0\ => \axaddr_offset_r_reg[2]\,
      \axaddr_offset_r_reg[3]\ => aw_cmd_fsm_0_n_15,
      \axaddr_offset_r_reg[3]_0\(2 downto 1) => \wrap_cmd_0/axaddr_offset_r\(3 downto 2),
      \axaddr_offset_r_reg[3]_0\(0) => \wrap_cmd_0/axaddr_offset_r\(0),
      \axlen_cnt_reg[0]\(0) => axlen_cnt(0),
      b_push => b_push,
      incr_next_pending => \^incr_next_pending\,
      m_axi_awready => m_axi_awready,
      m_axi_awready_0 => \^m_axi_awready_0\,
      m_axi_awvalid => m_axi_awvalid,
      m_valid_i_reg(0) => E(0),
      next_pending_r => \incr_cmd_0/next_pending_r\,
      next_pending_r_reg => cmd_translator_0_n_5,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      \sel_first__0\ => \sel_first__0\,
      sel_first_i => \^sel_first_i\,
      sel_first_reg => aw_cmd_fsm_0_n_21,
      sel_first_reg_0 => aw_cmd_fsm_0_n_22,
      sel_first_reg_1 => \^sel_first\,
      sel_first_reg_2 => cmd_translator_0_n_1,
      si_rs_awvalid => si_rs_awvalid,
      \wrap_second_len_r_reg[3]\(2 downto 1) => wrap_cnt(3 downto 2),
      \wrap_second_len_r_reg[3]\(0) => wrap_cnt(0),
      \wrap_second_len_r_reg[3]_0\(0) => \axaddr_offset_r_reg[1]_0\(0),
      \wrap_second_len_r_reg[3]_1\ => \wrap_second_len_r_reg[3]\,
      \wrap_second_len_r_reg[3]_2\(3 downto 0) => \wrap_cmd_0/wrap_second_len_r\(3 downto 0),
      \wrap_second_len_r_reg[3]_3\ => \wrap_second_len_r_reg[3]_0\
    );
cmd_translator_0: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_cmd_translator
     port map (
      D(2 downto 1) => wrap_cnt(3 downto 2),
      D(0) => wrap_cnt(0),
      E(0) => \^fsm_sequential_state_reg[0]\,
      Q(0) => axlen_cnt(0),
      aclk => aclk,
      \axaddr_incr_reg[10]\(4 downto 0) => \axaddr_incr_reg[10]\(4 downto 0),
      \axaddr_incr_reg[11]\ => \axaddr_incr_reg[11]\,
      \axaddr_incr_reg[11]_0\(5 downto 0) => D(5 downto 0),
      \axaddr_incr_reg[2]\ => \axaddr_incr_reg[2]\,
      \axaddr_incr_reg[3]\ => \axaddr_incr_reg[3]\,
      \axaddr_incr_reg[4]\ => \axaddr_incr_reg[4]\,
      \axaddr_incr_reg[4]_0\ => \axaddr_incr_reg[4]_0\,
      \axaddr_incr_reg[6]\ => \axaddr_incr_reg[6]\,
      \axaddr_incr_reg[7]\ => \axaddr_incr_reg[7]\,
      \axaddr_incr_reg[7]_0\ => \axaddr_incr_reg[7]_0\,
      \axaddr_incr_reg[9]\ => \axaddr_incr_reg[9]\,
      \axaddr_incr_reg[9]_0\ => \axaddr_incr_reg[9]_0\,
      \axaddr_offset_r_reg[3]\(3 downto 2) => \wrap_cmd_0/axaddr_offset_r\(3 downto 2),
      \axaddr_offset_r_reg[3]\(1) => \axaddr_offset_r_reg[1]\(0),
      \axaddr_offset_r_reg[3]\(0) => \wrap_cmd_0/axaddr_offset_r\(0),
      \axaddr_offset_r_reg[3]_0\(3 downto 2) => \wrap_cmd_0/axaddr_offset\(3 downto 2),
      \axaddr_offset_r_reg[3]_0\(1) => \axaddr_offset_r_reg[1]_0\(0),
      \axaddr_offset_r_reg[3]_0\(0) => \wrap_cmd_0/axaddr_offset\(0),
      \axaddr_wrap_reg[0]\(0) => \axaddr_wrap_reg[0]\(0),
      \axaddr_wrap_reg[0]_0\ => \axaddr_wrap_reg[0]_0\,
      \axaddr_wrap_reg[11]\ => \^m_axi_awready_0\,
      \axaddr_wrap_reg[1]\ => \axaddr_wrap_reg[1]\,
      \axlen_cnt_reg[0]\(1 downto 0) => \^q\(1 downto 0),
      \axlen_cnt_reg[0]_0\(0) => aw_cmd_fsm_0_n_0,
      \axlen_cnt_reg[0]_1\(0) => aw_cmd_fsm_0_n_20,
      \axlen_cnt_reg[3]\ => aw_cmd_fsm_0_n_4,
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[4]\ => cmd_translator_0_n_5,
      \axlen_cnt_reg[7]\(23 downto 0) => \s_awlen_r_reg[7]_1\(23 downto 0),
      incr_next_pending => \^incr_next_pending\,
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      m_axi_awready => m_axi_awready,
      next_pending_r => \incr_cmd_0/next_pending_r\,
      next_pending_r_reg => next_pending_r_reg,
      s_axburst_eq0_reg_0 => s_axburst_eq0_reg,
      s_axburst_eq1_reg_0 => cmd_translator_0_n_13,
      s_axburst_eq1_reg_1 => cmd_translator_0_n_14,
      s_axburst_eq1_reg_2 => s_axburst_eq1_reg,
      \sel_first__0\ => \sel_first__0\,
      sel_first_i => \^sel_first_i\,
      sel_first_reg_0 => cmd_translator_0_n_1,
      sel_first_reg_1 => \^sel_first\,
      sel_first_reg_2 => aw_cmd_fsm_0_n_22,
      sel_first_reg_3 => aw_cmd_fsm_0_n_21,
      si_rs_awvalid => si_rs_awvalid,
      \wrap_boundary_axaddr_r_reg[6]\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[1]\ => aw_cmd_fsm_0_n_15,
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]\(3 downto 0) => \wrap_cmd_0/wrap_second_len_r\(3 downto 0),
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_cmd_0/wrap_second_len\(3 downto 0)
    );
\s_awlen_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(16),
      Q => \s_awlen_r_reg[7]_0\(0),
      R => '0'
    );
\s_awlen_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(17),
      Q => \s_awlen_r_reg[7]_0\(1),
      R => '0'
    );
\s_awlen_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(18),
      Q => \s_awlen_r_reg[7]_0\(2),
      R => '0'
    );
\s_awlen_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(19),
      Q => \s_awlen_r_reg[7]_0\(3),
      R => '0'
    );
\s_awlen_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(20),
      Q => \s_awlen_r_reg[7]_0\(4),
      R => '0'
    );
\s_awlen_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(21),
      Q => \s_awlen_r_reg[7]_0\(5),
      R => '0'
    );
\s_awlen_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(22),
      Q => \s_awlen_r_reg[7]_0\(6),
      R => '0'
    );
\s_awlen_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awlen_r_reg[7]_1\(23),
      Q => \s_awlen_r_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arready : out STD_LOGIC;
    \m_payload_i_reg[20]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[34]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s : entity is "axi_protocol_converter_v2_1_31_b2s";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s is
  signal \RD.ar_channel_0_n_10\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_12\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_13\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_19\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_20\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_21\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_5\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_6\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_7\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_8\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_9\ : STD_LOGIC;
  signal \RD.r_channel_0_n_1\ : STD_LOGIC;
  signal \RD.r_channel_0_n_2\ : STD_LOGIC;
  signal SI_REG_n_100 : STD_LOGIC;
  signal SI_REG_n_101 : STD_LOGIC;
  signal SI_REG_n_102 : STD_LOGIC;
  signal SI_REG_n_103 : STD_LOGIC;
  signal SI_REG_n_104 : STD_LOGIC;
  signal SI_REG_n_105 : STD_LOGIC;
  signal SI_REG_n_106 : STD_LOGIC;
  signal SI_REG_n_107 : STD_LOGIC;
  signal SI_REG_n_108 : STD_LOGIC;
  signal SI_REG_n_109 : STD_LOGIC;
  signal SI_REG_n_110 : STD_LOGIC;
  signal SI_REG_n_111 : STD_LOGIC;
  signal SI_REG_n_112 : STD_LOGIC;
  signal SI_REG_n_113 : STD_LOGIC;
  signal SI_REG_n_114 : STD_LOGIC;
  signal SI_REG_n_115 : STD_LOGIC;
  signal SI_REG_n_116 : STD_LOGIC;
  signal SI_REG_n_117 : STD_LOGIC;
  signal SI_REG_n_118 : STD_LOGIC;
  signal SI_REG_n_119 : STD_LOGIC;
  signal SI_REG_n_120 : STD_LOGIC;
  signal SI_REG_n_121 : STD_LOGIC;
  signal SI_REG_n_122 : STD_LOGIC;
  signal SI_REG_n_123 : STD_LOGIC;
  signal SI_REG_n_124 : STD_LOGIC;
  signal SI_REG_n_125 : STD_LOGIC;
  signal SI_REG_n_126 : STD_LOGIC;
  signal SI_REG_n_127 : STD_LOGIC;
  signal SI_REG_n_128 : STD_LOGIC;
  signal SI_REG_n_129 : STD_LOGIC;
  signal SI_REG_n_130 : STD_LOGIC;
  signal SI_REG_n_131 : STD_LOGIC;
  signal SI_REG_n_132 : STD_LOGIC;
  signal SI_REG_n_133 : STD_LOGIC;
  signal SI_REG_n_134 : STD_LOGIC;
  signal SI_REG_n_135 : STD_LOGIC;
  signal SI_REG_n_136 : STD_LOGIC;
  signal SI_REG_n_137 : STD_LOGIC;
  signal SI_REG_n_138 : STD_LOGIC;
  signal SI_REG_n_18 : STD_LOGIC;
  signal SI_REG_n_42 : STD_LOGIC;
  signal SI_REG_n_44 : STD_LOGIC;
  signal SI_REG_n_45 : STD_LOGIC;
  signal SI_REG_n_46 : STD_LOGIC;
  signal SI_REG_n_54 : STD_LOGIC;
  signal SI_REG_n_55 : STD_LOGIC;
  signal SI_REG_n_56 : STD_LOGIC;
  signal SI_REG_n_57 : STD_LOGIC;
  signal SI_REG_n_58 : STD_LOGIC;
  signal SI_REG_n_59 : STD_LOGIC;
  signal SI_REG_n_61 : STD_LOGIC;
  signal SI_REG_n_7 : STD_LOGIC;
  signal SI_REG_n_72 : STD_LOGIC;
  signal SI_REG_n_73 : STD_LOGIC;
  signal SI_REG_n_74 : STD_LOGIC;
  signal SI_REG_n_8 : STD_LOGIC;
  signal SI_REG_n_96 : STD_LOGIC;
  signal SI_REG_n_98 : STD_LOGIC;
  signal SI_REG_n_99 : STD_LOGIC;
  signal \WR.aw_channel_0_n_10\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_11\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_12\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_13\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_15\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_20\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_21\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_22\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_23\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_5\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_6\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_7\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_8\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_9\ : STD_LOGIC;
  signal \WR.b_channel_0_n_3\ : STD_LOGIC;
  signal \ar.ar_pipe/m_valid_i0\ : STD_LOGIC;
  signal \ar.ar_pipe/p_1_in\ : STD_LOGIC;
  signal \ar_cmd_fsm_0/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal areset_d1 : STD_LOGIC;
  signal \aw.aw_pipe/p_1_in\ : STD_LOGIC;
  signal \aw_cmd_fsm_0/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axaddr_wrap : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axlen : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal axsize : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal b_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b_push : STD_LOGIC;
  signal \bid_fifo_0/cnt_read\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cmd_translator_0/incr_cmd_0/sel_first\ : STD_LOGIC;
  signal \cmd_translator_0/incr_cmd_0/sel_first_3\ : STD_LOGIC;
  signal \cmd_translator_0/incr_next_pending\ : STD_LOGIC;
  signal \cmd_translator_0/incr_next_pending_5\ : STD_LOGIC;
  signal \cmd_translator_0/sel_first_i\ : STD_LOGIC;
  signal \cmd_translator_0/sel_first_i_4\ : STD_LOGIC;
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_2\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \cmd_translator_0/wrap_next_pending\ : STD_LOGIC;
  signal \cmd_translator_0/wrap_next_pending_1\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal r_push : STD_LOGIC;
  signal r_rlast : STD_LOGIC;
  signal s_awlen : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal shandshake : STD_LOGIC;
  signal si_rs_araddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_arburst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal si_rs_arlen : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_rs_arvalid : STD_LOGIC;
  signal si_rs_awaddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_awburst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal si_rs_awlen : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_rs_awvalid : STD_LOGIC;
  signal si_rs_bready : STD_LOGIC;
  signal si_rs_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_rs_bvalid : STD_LOGIC;
  signal si_rs_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal si_rs_rlast : STD_LOGIC;
  signal si_rs_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  s_axi_arready <= \^s_axi_arready\;
\RD.ar_channel_0\: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_ar_channel
     port map (
      D(6) => SI_REG_n_125,
      D(5) => SI_REG_n_126,
      D(4) => SI_REG_n_127,
      D(3) => SI_REG_n_128,
      D(2) => SI_REG_n_129,
      D(1) => SI_REG_n_130,
      D(0) => SI_REG_n_131,
      E(0) => \ar.ar_pipe/p_1_in\,
      \FSM_sequential_state_reg[0]\ => \RD.ar_channel_0_n_6\,
      \FSM_sequential_state_reg[0]_0\ => \RD.r_channel_0_n_2\,
      \FSM_sequential_state_reg[1]\ => \RD.ar_channel_0_n_5\,
      Q(1 downto 0) => \ar_cmd_fsm_0/state\(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr_reg[10]\ => SI_REG_n_107,
      \axaddr_incr_reg[11]\ => \RD.ar_channel_0_n_19\,
      \axaddr_incr_reg[11]_0\(4) => SI_REG_n_100,
      \axaddr_incr_reg[11]_0\(3) => SI_REG_n_101,
      \axaddr_incr_reg[11]_0\(2) => SI_REG_n_102,
      \axaddr_incr_reg[11]_0\(1) => SI_REG_n_103,
      \axaddr_incr_reg[11]_0\(0) => SI_REG_n_104,
      \axaddr_incr_reg[2]\ => SI_REG_n_105,
      \axaddr_incr_reg[3]\ => SI_REG_n_111,
      \axaddr_incr_reg[4]\ => SI_REG_n_110,
      \axaddr_incr_reg[5]\ => \RD.ar_channel_0_n_21\,
      \axaddr_incr_reg[5]_0\ => SI_REG_n_106,
      \axaddr_incr_reg[6]\ => \RD.ar_channel_0_n_20\,
      \axaddr_incr_reg[7]\(3) => \RD.ar_channel_0_n_7\,
      \axaddr_incr_reg[7]\(2) => \RD.ar_channel_0_n_8\,
      \axaddr_incr_reg[7]\(1) => \RD.ar_channel_0_n_9\,
      \axaddr_incr_reg[7]\(0) => \RD.ar_channel_0_n_10\,
      \axaddr_incr_reg[8]\ => SI_REG_n_109,
      \axaddr_incr_reg[9]\ => SI_REG_n_108,
      \axaddr_offset_r_reg[1]\(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(1),
      \axaddr_offset_r_reg[1]_0\(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(1),
      \axaddr_offset_r_reg[2]\ => SI_REG_n_116,
      \axaddr_wrap_reg[0]\(0) => \RD.ar_channel_0_n_12\,
      \axaddr_wrap_reg[0]_0\ => SI_REG_n_138,
      \axaddr_wrap_reg[1]\ => SI_REG_n_137,
      \axlen_cnt_reg[3]\ => SI_REG_n_99,
      \axlen_cnt_reg[7]\(23 downto 20) => axlen(7 downto 4),
      \axlen_cnt_reg[7]\(19 downto 16) => si_rs_arlen(3 downto 0),
      \axlen_cnt_reg[7]\(15) => si_rs_arburst(1),
      \axlen_cnt_reg[7]\(14) => SI_REG_n_72,
      \axlen_cnt_reg[7]\(13) => SI_REG_n_73,
      \axlen_cnt_reg[7]\(12) => SI_REG_n_74,
      \axlen_cnt_reg[7]\(11 downto 0) => si_rs_araddr(11 downto 0),
      incr_next_pending => \cmd_translator_0/incr_next_pending\,
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_valid_i0 => \ar.ar_pipe/m_valid_i0\,
      m_valid_i_reg => \^s_axi_arready\,
      next_pending_r_reg => \RD.ar_channel_0_n_13\,
      next_pending_r_reg_0 => SI_REG_n_112,
      r_push => r_push,
      r_rlast => r_rlast,
      s_axburst_eq0_reg => SI_REG_n_61,
      s_axburst_eq1_reg => SI_REG_n_96,
      s_axi_arvalid => s_axi_arvalid,
      sel_first => \cmd_translator_0/incr_cmd_0/sel_first\,
      sel_first_i => \cmd_translator_0/sel_first_i\,
      si_rs_arvalid => si_rs_arvalid,
      wrap_next_pending => \cmd_translator_0/wrap_next_pending\,
      \wrap_second_len_r_reg[3]\ => SI_REG_n_98,
      \wrap_second_len_r_reg[3]_0\ => SI_REG_n_117
    );
\RD.r_channel_0\: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_r_channel
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      \cnt_read_reg[3]\ => \RD.r_channel_0_n_1\,
      \cnt_read_reg[4]\ => \RD.r_channel_0_n_2\,
      \cnt_read_reg[4]_0\ => SI_REG_n_113,
      \in\(33 downto 0) => \in\(33 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\(33 downto 32) => si_rs_rresp(1 downto 0),
      \out\(31 downto 0) => si_rs_rdata(31 downto 0),
      r_push => r_push,
      r_rlast => r_rlast,
      si_rs_rlast => si_rs_rlast
    );
SI_REG: entity work.design_1_auto_pc_0_axi_register_slice_v2_1_31_axi_register_slice
     port map (
      D(5 downto 4) => p_1_in(11 downto 10),
      D(3) => p_1_in(8),
      D(2) => p_1_in(5),
      D(1 downto 0) => p_1_in(1 downto 0),
      E(0) => \aw.aw_pipe/p_1_in\,
      Q(32 downto 29) => s_awlen(7 downto 4),
      Q(28 downto 25) => si_rs_awlen(3 downto 0),
      Q(24) => si_rs_awburst(1),
      Q(23) => SI_REG_n_18,
      Q(22 downto 21) => axsize(1 downto 0),
      Q(20 downto 12) => Q(8 downto 0),
      Q(11 downto 0) => si_rs_awaddr(11 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => SI_REG_n_7,
      \axaddr_incr_reg[0]\ => \WR.aw_channel_0_n_5\,
      \axaddr_incr_reg[0]_0\ => \RD.ar_channel_0_n_6\,
      \axaddr_incr_reg[10]\(4) => \WR.aw_channel_0_n_9\,
      \axaddr_incr_reg[10]\(3) => \WR.aw_channel_0_n_10\,
      \axaddr_incr_reg[10]\(2) => \WR.aw_channel_0_n_11\,
      \axaddr_incr_reg[10]\(1) => \WR.aw_channel_0_n_12\,
      \axaddr_incr_reg[10]\(0) => \WR.aw_channel_0_n_13\,
      \axaddr_incr_reg[10]_0\ => \WR.aw_channel_0_n_21\,
      \axaddr_incr_reg[11]\ => \WR.aw_channel_0_n_20\,
      \axaddr_incr_reg[11]_0\ => \RD.ar_channel_0_n_19\,
      \axaddr_incr_reg[5]\ => \WR.aw_channel_0_n_23\,
      \axaddr_incr_reg[5]_0\ => \WR.aw_channel_0_n_8\,
      \axaddr_incr_reg[6]\ => \RD.ar_channel_0_n_21\,
      \axaddr_incr_reg[7]\(3) => \RD.ar_channel_0_n_7\,
      \axaddr_incr_reg[7]\(2) => \RD.ar_channel_0_n_8\,
      \axaddr_incr_reg[7]\(1) => \RD.ar_channel_0_n_9\,
      \axaddr_incr_reg[7]\(0) => \RD.ar_channel_0_n_10\,
      \axaddr_incr_reg[7]_0\ => \RD.ar_channel_0_n_20\,
      \axaddr_incr_reg[8]\ => \WR.aw_channel_0_n_7\,
      \axaddr_incr_reg[8]_0\ => \WR.aw_channel_0_n_22\,
      axaddr_offset(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\(1),
      \axaddr_offset_r_reg[1]\(1 downto 0) => \aw_cmd_fsm_0/state\(1 downto 0),
      \axaddr_offset_r_reg[1]_0\(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_2\(1),
      \axaddr_offset_r_reg[1]_1\(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(1),
      \axaddr_wrap_reg[1]\(0) => axaddr_wrap(0),
      \axaddr_wrap_reg[1]_0\(0) => \RD.ar_channel_0_n_12\,
      b_push => b_push,
      incr_next_pending => \cmd_translator_0/incr_next_pending_5\,
      incr_next_pending_2 => \cmd_translator_0/incr_next_pending\,
      \m_payload_i_reg[0]\(0) => \ar.ar_pipe/p_1_in\,
      \m_payload_i_reg[11]\(4) => SI_REG_n_100,
      \m_payload_i_reg[11]\(3) => SI_REG_n_101,
      \m_payload_i_reg[11]\(2) => SI_REG_n_102,
      \m_payload_i_reg[11]\(1) => SI_REG_n_103,
      \m_payload_i_reg[11]\(0) => SI_REG_n_104,
      \m_payload_i_reg[1]\ => SI_REG_n_58,
      \m_payload_i_reg[1]_0\ => SI_REG_n_105,
      \m_payload_i_reg[1]_1\ => SI_REG_n_136,
      \m_payload_i_reg[21]\ => SI_REG_n_45,
      \m_payload_i_reg[21]_0\ => SI_REG_n_98,
      \m_payload_i_reg[21]_1\ => SI_REG_n_106,
      \m_payload_i_reg[21]_2\ => SI_REG_n_132,
      \m_payload_i_reg[21]_3\ => SI_REG_n_133,
      \m_payload_i_reg[21]_4\ => SI_REG_n_134,
      \m_payload_i_reg[21]_5\ => SI_REG_n_135,
      \m_payload_i_reg[21]_6\ => SI_REG_n_137,
      \m_payload_i_reg[21]_7\ => SI_REG_n_138,
      \m_payload_i_reg[22]\ => SI_REG_n_57,
      \m_payload_i_reg[22]_0\ => SI_REG_n_111,
      \m_payload_i_reg[25]\ => SI_REG_n_42,
      \m_payload_i_reg[25]_0\ => SI_REG_n_44,
      \m_payload_i_reg[25]_1\ => SI_REG_n_61,
      \m_payload_i_reg[25]_2\ => SI_REG_n_96,
      \m_payload_i_reg[2]\ => SI_REG_n_54,
      \m_payload_i_reg[30]\ => SI_REG_n_59,
      \m_payload_i_reg[30]_0\ => SI_REG_n_112,
      \m_payload_i_reg[31]\(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(1),
      \m_payload_i_reg[33]\ => SI_REG_n_46,
      \m_payload_i_reg[33]_0\ => SI_REG_n_99,
      \m_payload_i_reg[34]\(34 downto 0) => \m_payload_i_reg[34]\(34 downto 0),
      \m_payload_i_reg[37]\(32 downto 29) => axlen(7 downto 4),
      \m_payload_i_reg[37]\(28 downto 25) => si_rs_arlen(3 downto 0),
      \m_payload_i_reg[37]\(24) => si_rs_arburst(1),
      \m_payload_i_reg[37]\(23) => SI_REG_n_72,
      \m_payload_i_reg[37]\(22) => SI_REG_n_73,
      \m_payload_i_reg[37]\(21) => SI_REG_n_74,
      \m_payload_i_reg[37]\(20 downto 12) => \m_payload_i_reg[20]\(8 downto 0),
      \m_payload_i_reg[37]\(11 downto 0) => si_rs_araddr(11 downto 0),
      \m_payload_i_reg[3]\ => SI_REG_n_110,
      \m_payload_i_reg[3]_0\ => SI_REG_n_115,
      \m_payload_i_reg[3]_1\ => SI_REG_n_117,
      \m_payload_i_reg[5]\ => SI_REG_n_114,
      \m_payload_i_reg[5]_0\ => SI_REG_n_116,
      \m_payload_i_reg[6]\ => SI_REG_n_8,
      \m_payload_i_reg[6]_0\ => SI_REG_n_55,
      \m_payload_i_reg[6]_1\ => SI_REG_n_109,
      \m_payload_i_reg[6]_2\(6) => SI_REG_n_118,
      \m_payload_i_reg[6]_2\(5) => SI_REG_n_119,
      \m_payload_i_reg[6]_2\(4) => SI_REG_n_120,
      \m_payload_i_reg[6]_2\(3) => SI_REG_n_121,
      \m_payload_i_reg[6]_2\(2) => SI_REG_n_122,
      \m_payload_i_reg[6]_2\(1) => SI_REG_n_123,
      \m_payload_i_reg[6]_2\(0) => SI_REG_n_124,
      \m_payload_i_reg[6]_3\(6) => SI_REG_n_125,
      \m_payload_i_reg[6]_3\(5) => SI_REG_n_126,
      \m_payload_i_reg[6]_3\(4) => SI_REG_n_127,
      \m_payload_i_reg[6]_3\(3) => SI_REG_n_128,
      \m_payload_i_reg[6]_3\(2) => SI_REG_n_129,
      \m_payload_i_reg[6]_3\(1) => SI_REG_n_130,
      \m_payload_i_reg[6]_3\(0) => SI_REG_n_131,
      \m_payload_i_reg[7]\ => SI_REG_n_108,
      \m_payload_i_reg[8]\ => SI_REG_n_56,
      \m_payload_i_reg[9]\ => SI_REG_n_107,
      m_valid_i0 => \ar.ar_pipe/m_valid_i0\,
      m_valid_i_reg => s_axi_bvalid,
      m_valid_i_reg_0 => s_axi_rvalid,
      m_valid_i_reg_1 => \RD.r_channel_0_n_1\,
      next_pending_r_reg => \WR.aw_channel_0_n_6\,
      next_pending_r_reg_0 => \WR.aw_channel_0_n_15\,
      next_pending_r_reg_1 => \RD.ar_channel_0_n_5\,
      next_pending_r_reg_2 => \RD.ar_channel_0_n_13\,
      \out\(1 downto 0) => si_rs_bresp(1 downto 0),
      s_axi_araddr(17 downto 0) => s_axi_araddr(17 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(17 downto 0) => s_axi_awaddr(17 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_ready_i_reg => s_axi_awready,
      s_ready_i_reg_0 => \^s_axi_arready\,
      s_ready_i_reg_1 => SI_REG_n_113,
      s_ready_i_reg_2(1 downto 0) => \ar_cmd_fsm_0/state\(1 downto 0),
      sel_first => \cmd_translator_0/incr_cmd_0/sel_first_3\,
      sel_first_3 => \cmd_translator_0/incr_cmd_0/sel_first\,
      sel_first_i => \cmd_translator_0/sel_first_i_4\,
      sel_first_i_1 => \cmd_translator_0/sel_first_i\,
      shandshake => shandshake,
      si_rs_arvalid => si_rs_arvalid,
      si_rs_awvalid => si_rs_awvalid,
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => si_rs_bvalid,
      si_rs_rlast => si_rs_rlast,
      \skid_buffer_reg[33]\(33 downto 32) => si_rs_rresp(1 downto 0),
      \skid_buffer_reg[33]\(31 downto 0) => si_rs_rdata(31 downto 0),
      wrap_next_pending => \cmd_translator_0/wrap_next_pending_1\,
      wrap_next_pending_0 => \cmd_translator_0/wrap_next_pending\
    );
\WR.aw_channel_0\: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_aw_channel
     port map (
      D(5 downto 4) => p_1_in(11 downto 10),
      D(3) => p_1_in(8),
      D(2) => p_1_in(5),
      D(1 downto 0) => p_1_in(1 downto 0),
      E(0) => \aw.aw_pipe/p_1_in\,
      \FSM_sequential_state_reg[0]\ => \WR.aw_channel_0_n_6\,
      \FSM_sequential_state_reg[0]_0\(1 downto 0) => \bid_fifo_0/cnt_read\(1 downto 0),
      \FSM_sequential_state_reg[1]\ => \WR.aw_channel_0_n_7\,
      \FSM_sequential_state_reg[1]_0\ => \WR.aw_channel_0_n_8\,
      Q(1 downto 0) => \aw_cmd_fsm_0/state\(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr[5]_i_2\ => SI_REG_n_134,
      \axaddr_incr[5]_i_2_0\ => SI_REG_n_136,
      \axaddr_incr[6]_i_2__0\ => \WR.b_channel_0_n_3\,
      \axaddr_incr[6]_i_2__0_0\ => SI_REG_n_132,
      \axaddr_incr_reg[10]\(4) => \WR.aw_channel_0_n_9\,
      \axaddr_incr_reg[10]\(3) => \WR.aw_channel_0_n_10\,
      \axaddr_incr_reg[10]\(2) => \WR.aw_channel_0_n_11\,
      \axaddr_incr_reg[10]\(1) => \WR.aw_channel_0_n_12\,
      \axaddr_incr_reg[10]\(0) => \WR.aw_channel_0_n_13\,
      \axaddr_incr_reg[11]\ => \WR.aw_channel_0_n_20\,
      \axaddr_incr_reg[2]\ => SI_REG_n_58,
      \axaddr_incr_reg[3]\ => SI_REG_n_57,
      \axaddr_incr_reg[4]\ => \WR.aw_channel_0_n_23\,
      \axaddr_incr_reg[4]_0\ => SI_REG_n_54,
      \axaddr_incr_reg[6]\ => SI_REG_n_8,
      \axaddr_incr_reg[7]\ => \WR.aw_channel_0_n_22\,
      \axaddr_incr_reg[7]_0\ => SI_REG_n_55,
      \axaddr_incr_reg[9]\ => \WR.aw_channel_0_n_21\,
      \axaddr_incr_reg[9]_0\ => SI_REG_n_56,
      \axaddr_offset_r_reg[1]\(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_2\(1),
      \axaddr_offset_r_reg[1]_0\(0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\(1),
      \axaddr_offset_r_reg[2]\ => SI_REG_n_114,
      \axaddr_wrap_reg[0]\(0) => axaddr_wrap(0),
      \axaddr_wrap_reg[0]_0\ => SI_REG_n_135,
      \axaddr_wrap_reg[1]\ => SI_REG_n_133,
      \axlen_cnt_reg[3]\ => SI_REG_n_46,
      b_push => b_push,
      incr_next_pending => \cmd_translator_0/incr_next_pending_5\,
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awready_0 => \WR.aw_channel_0_n_5\,
      m_axi_awvalid => m_axi_awvalid,
      next_pending_r_reg => \WR.aw_channel_0_n_15\,
      next_pending_r_reg_0 => SI_REG_n_59,
      \s_awlen_r_reg[7]_0\(7 downto 0) => b_awlen(7 downto 0),
      \s_awlen_r_reg[7]_1\(23 downto 20) => s_awlen(7 downto 4),
      \s_awlen_r_reg[7]_1\(19 downto 16) => si_rs_awlen(3 downto 0),
      \s_awlen_r_reg[7]_1\(15) => si_rs_awburst(1),
      \s_awlen_r_reg[7]_1\(14) => SI_REG_n_18,
      \s_awlen_r_reg[7]_1\(13 downto 12) => axsize(1 downto 0),
      \s_awlen_r_reg[7]_1\(11 downto 0) => si_rs_awaddr(11 downto 0),
      s_axburst_eq0_reg => SI_REG_n_42,
      s_axburst_eq1_reg => SI_REG_n_44,
      sel_first => \cmd_translator_0/incr_cmd_0/sel_first_3\,
      sel_first_i => \cmd_translator_0/sel_first_i_4\,
      si_rs_awvalid => si_rs_awvalid,
      \wrap_boundary_axaddr_r_reg[6]\(6) => SI_REG_n_118,
      \wrap_boundary_axaddr_r_reg[6]\(5) => SI_REG_n_119,
      \wrap_boundary_axaddr_r_reg[6]\(4) => SI_REG_n_120,
      \wrap_boundary_axaddr_r_reg[6]\(3) => SI_REG_n_121,
      \wrap_boundary_axaddr_r_reg[6]\(2) => SI_REG_n_122,
      \wrap_boundary_axaddr_r_reg[6]\(1) => SI_REG_n_123,
      \wrap_boundary_axaddr_r_reg[6]\(0) => SI_REG_n_124,
      wrap_next_pending => \cmd_translator_0/wrap_next_pending_1\,
      \wrap_second_len_r_reg[3]\ => SI_REG_n_45,
      \wrap_second_len_r_reg[3]_0\ => SI_REG_n_115
    );
\WR.b_channel_0\: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s_b_channel
     port map (
      Q(1 downto 0) => \bid_fifo_0/cnt_read\(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      b_push => b_push,
      \cnt_read_reg[0]\ => \WR.b_channel_0_n_3\,
      \in\(7 downto 0) => b_awlen(7 downto 0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      \out\(1 downto 0) => si_rs_bresp(1 downto 0),
      shandshake => shandshake,
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => si_rs_bvalid
    );
areset_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => SI_REG_n_7,
      Q => areset_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 18;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "zynquplus";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "axi_protocol_converter_v2_1_31_axi_protocol_converter";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "2'b10";
end design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter;

architecture STRUCTURE of design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_axilite.gen_b2s_conv.axilite_b2s\: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_b2s
     port map (
      Q(8 downto 6) => m_axi_awprot(2 downto 0),
      Q(5 downto 0) => m_axi_awaddr(17 downto 12),
      aclk => aclk,
      aresetn => aresetn,
      \in\(33 downto 32) => m_axi_rresp(1 downto 0),
      \in\(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[20]\(8 downto 6) => m_axi_arprot(2 downto 0),
      \m_payload_i_reg[20]\(5 downto 0) => m_axi_araddr(17 downto 12),
      \m_payload_i_reg[34]\(34) => s_axi_rlast,
      \m_payload_i_reg[34]\(33 downto 32) => s_axi_rresp(1 downto 0),
      \m_payload_i_reg[34]\(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_araddr(17 downto 0) => s_axi_araddr(17 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(17 downto 0) => s_axi_awaddr(17 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_auto_pc_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_auto_pc_0 : entity is "design_1_auto_pc_0,axi_protocol_converter_v2_1_31_axi_protocol_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_pc_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_auto_pc_0 : entity is "axi_protocol_converter_v2_1_31_axi_protocol_converter,Vivado 2024.1";
end design_1_auto_pc_0;

architecture STRUCTURE of design_1_auto_pc_0 is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 18;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of inst : label is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of inst : label is 2;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of inst : label is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of inst : label is 2;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of inst : label is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of inst : label is "2'b10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 64000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_usp_rf_data_converter_0_0_clk_adc0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 64000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_usp_rf_data_converter_0_0_clk_adc0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 64000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_usp_rf_data_converter_0_0_clk_adc0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.design_1_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(17 downto 0) => m_axi_araddr(17 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(17 downto 0) => m_axi_awaddr(17 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '1',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(17 downto 0) => s_axi_araddr(17 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2) => '0',
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(17 downto 0) => s_axi_awaddr(17 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2) => '0',
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
