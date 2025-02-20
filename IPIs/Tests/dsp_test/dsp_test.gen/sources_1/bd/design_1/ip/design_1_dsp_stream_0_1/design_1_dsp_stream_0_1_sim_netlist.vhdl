-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Feb 19 17:57:29 2025
-- Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/andre/CoRSoC/IPIs/Tests/dsp_test/dsp_test.gen/sources_1/bd/design_1/ip/design_1_dsp_stream_0_1/design_1_dsp_stream_0_1_sim_netlist.vhdl
-- Design      : design_1_dsp_stream_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_convert_func_call_dsp_stream_ip_xlconvert is
  port (
    s_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_convert_func_call_dsp_stream_ip_xlconvert : entity is "convert_func_call_dsp_stream_ip_xlconvert";
end design_1_dsp_stream_0_1_convert_func_call_dsp_stream_ip_xlconvert;

architecture STRUCTURE of design_1_dsp_stream_0_1_convert_func_call_dsp_stream_ip_xlconvert is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_10 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_11 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_12 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_13 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_14 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_5 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_6 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_7 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_8 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of xpm_fifo_axis_inst_i_9 : label is "soft_lutpair15";
begin
xpm_fifo_axis_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(13),
      O => s_axis_tdata(13)
    );
xpm_fifo_axis_inst_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(4),
      O => s_axis_tdata(4)
    );
xpm_fifo_axis_inst_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(3),
      O => s_axis_tdata(3)
    );
xpm_fifo_axis_inst_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(2),
      O => s_axis_tdata(2)
    );
xpm_fifo_axis_inst_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(1),
      O => s_axis_tdata(1)
    );
xpm_fifo_axis_inst_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(0),
      O => s_axis_tdata(0)
    );
xpm_fifo_axis_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(12),
      O => s_axis_tdata(12)
    );
xpm_fifo_axis_inst_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(11),
      O => s_axis_tdata(11)
    );
xpm_fifo_axis_inst_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(10),
      O => s_axis_tdata(10)
    );
xpm_fifo_axis_inst_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(9),
      O => s_axis_tdata(9)
    );
xpm_fifo_axis_inst_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(8),
      O => s_axis_tdata(8)
    );
xpm_fifo_axis_inst_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(7),
      O => s_axis_tdata(7)
    );
xpm_fifo_axis_inst_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(6),
      O => s_axis_tdata(6)
    );
xpm_fifo_axis_inst_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(5),
      O => s_axis_tdata(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_srlc33e is
  port (
    s_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_array[0].fde_used.u2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_srlc33e : entity is "srlc33e";
end design_1_dsp_stream_0_1_srlc33e;

architecture STRUCTURE of design_1_dsp_stream_0_1_srlc33e is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_array[0].fde_used.u2_0\(0),
      Q => s_axis_tuser(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_srlc33e_4 is
  port (
    s_axis_tlast : out STD_LOGIC;
    \reg_array[0].fde_used.u2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_srlc33e_4 : entity is "srlc33e";
end design_1_dsp_stream_0_1_srlc33e_4;

architecture STRUCTURE of design_1_dsp_stream_0_1_srlc33e_4 is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_array[0].fde_used.u2_0\(0),
      Q => s_axis_tlast,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_srlc33e_6 is
  port (
    s_axis_tvalid : out STD_LOGIC;
    \reg_array[0].fde_used.u2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_srlc33e_6 : entity is "srlc33e";
end design_1_dsp_stream_0_1_srlc33e_6;

architecture STRUCTURE of design_1_dsp_stream_0_1_srlc33e_6 is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_array[0].fde_used.u2_0\(0),
      Q => s_axis_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_srlc33e_8 is
  port (
    m_axis_tready : out STD_LOGIC;
    \reg_array[0].fde_used.u2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_srlc33e_8 : entity is "srlc33e";
end design_1_dsp_stream_0_1_srlc33e_8;

architecture STRUCTURE of design_1_dsp_stream_0_1_srlc33e_8 is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_array[0].fde_used.u2_0\(0),
      Q => m_axis_tready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is 4;
  attribute INIT : string;
  attribute INIT of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_dsp_stream_0_1_xpm_cdc_sync_rst : entity is "SYNC_RST";
end design_1_dsp_stream_0_1_xpm_cdc_sync_rst;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \gwdc.wr_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gwdc.wr_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_counter_updn : entity is "xpm_counter_updn";
end design_1_dsp_stream_0_1_xpm_counter_updn;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_counter_updn is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_fwft.count_en\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_16\ : label is "lutpair0";
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  Q(0) <= \^q\(0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAA655"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C02F"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => ram_empty_i,
      O => \gen_fwft.count_en\
    );
\count_value_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A999A9A96AAA6AAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => rd_en,
      I4 => \count_value_i_reg[0]_0\(0),
      I5 => count_value_i(0),
      O => \count_value_i[1]_i_3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => count_value_i(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[1]_i_3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\gwdc.wr_data_count_i[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => \gwdc.wr_data_count_i_reg[7]\(1),
      I2 => \^q\(0),
      I3 => \gwdc.wr_data_count_i_reg[7]_0\(1),
      O => S(1)
    );
\gwdc.wr_data_count_i[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \gwdc.wr_data_count_i_reg[7]\(0),
      I2 => \gwdc.wr_data_count_i_reg[7]_0\(0),
      O => S(0)
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \gwdc.wr_data_count_i_reg[7]\(0),
      O => \^di\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    leaving_empty0 : out STD_LOGIC;
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \count_value_i_reg[7]_1\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gwdc.wr_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    \count_value_i_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair0";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \count_value_i_reg_n_0_[8]\,
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[8]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[8]\,
      R => \count_value_i_reg[8]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFF0088"
    )
        port map (
      I0 => ram_wr_en_pf,
      I1 => going_full1,
      I2 => \^leaving_empty0\,
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFBBBFBBBFBBB"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \^leaving_empty0\,
      I4 => going_full1,
      I5 => ram_wr_en_pf,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \grdc.rd_data_count_i_reg[8]\(7),
      I1 => \^q\(7),
      I2 => \grdc.rd_data_count_i_reg[8]\(6),
      I3 => \^q\(6),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I5 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(7),
      I1 => \^q\(7),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(6),
      I3 => \^q\(6),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      I5 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[8]\(3),
      I2 => \grdc.rd_data_count_i_reg[8]\(5),
      I3 => \^q\(5),
      I4 => \grdc.rd_data_count_i_reg[8]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[8]\(0),
      I2 => \grdc.rd_data_count_i_reg[8]\(2),
      I3 => \^q\(2),
      I4 => \grdc.rd_data_count_i_reg[8]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[8]\(7),
      O => \count_value_i_reg[7]_1\(6)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[8]\(6),
      O => \count_value_i_reg[7]_1\(5)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[8]\(5),
      O => \count_value_i_reg[7]_1\(4)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[8]\(4),
      O => \count_value_i_reg[7]_1\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[8]\(3),
      O => \count_value_i_reg[7]_1\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[8]\(2),
      O => \count_value_i_reg[7]_1\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[8]\(1),
      O => \count_value_i_reg[7]_1\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4),
      I2 => \^q\(5),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5),
      O => S(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3),
      I2 => \^q\(4),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4),
      O => S(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2),
      I2 => \^q\(3),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3),
      O => S(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1),
      I2 => \^q\(2),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2),
      O => S(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0),
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(6),
      I2 => \^q\(7),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(7),
      O => S(5)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5),
      I2 => \^q\(6),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(6),
      O => S(4)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\gwdc.wr_data_count_i[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[8]\(5),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[8]\(6),
      O => \count_value_i_reg[6]_0\(3)
    );
\gwdc.wr_data_count_i[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[8]\(4),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[8]\(5),
      O => \count_value_i_reg[6]_0\(2)
    );
\gwdc.wr_data_count_i[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[8]\(3),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[8]\(4),
      O => \count_value_i_reg[6]_0\(1)
    );
\gwdc.wr_data_count_i[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[8]\(2),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[8]\(3),
      O => \count_value_i_reg[6]_0\(0)
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[8]\(1),
      O => \count_value_i_reg[1]_0\(0)
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[8]\(6),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[8]\(7),
      O => \count_value_i_reg[6]_0\(4)
    );
\gwdc.wr_data_count_i[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[8]\(7),
      I2 => \count_value_i_reg_n_0_[8]\,
      I3 => \grdc.rd_data_count_i_reg[8]\(8),
      O => \count_value_i_reg[7]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0_9\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    ram_wr_en_pf : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gwdc.wr_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gwdc.wr_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0_9\ : entity is "xpm_counter_updn";
end \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0_9\;

architecture STRUCTURE of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0_9\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_14_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[8]_i_1\ : label is 35;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_1\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => ram_wr_en_pf,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(7),
      I1 => \^q\(7),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(6),
      I3 => \^q\(6),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I5 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 1) => \^q\(6 downto 1),
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0),
      O(7 downto 0) => \count_value_i_reg[0]_0\(7 downto 0),
      S(7 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(7 downto 0)
    );
\gwdc.wr_data_count_i[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[7]\(0),
      I2 => \gwdc.wr_data_count_i_reg[7]_0\(0),
      I3 => \gwdc.wr_data_count_i_reg[7]_0\(1),
      I4 => \^q\(2),
      O => \gwdc.wr_data_count_i[7]_i_14_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gwdc.wr_data_count_i_reg[7]_0\(5),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gwdc.wr_data_count_i_reg[7]_0\(4),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gwdc.wr_data_count_i_reg[7]_0\(3),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gwdc.wr_data_count_i_reg[7]_0\(2),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[7]_0\(1),
      O => \gwdc.wr_data_count_i[7]_i_6_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(6) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(5) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(4) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_4\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_5\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_6\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_7\,
      DI(7) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(6) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(5) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(4) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      DI(3) => \gwdc.wr_data_count_i[7]_i_6_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 3) => S(6 downto 2),
      S(2) => \gwdc.wr_data_count_i[7]_i_14_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => D(8),
      S(7 downto 1) => B"0000000",
      S(0) => \grdc.rd_data_count_i_reg[8]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair3";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1_10\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1_10\ : entity is "xpm_counter_updn";
end \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1_10\;

architecture STRUCTURE of \design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1_10\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\ : label is 35;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F75108AE08AEF751"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_wr_en_pf,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0),
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\,
      DI(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\,
      DI(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\,
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\,
      DI(1) => DI(0),
      DI(0) => '0',
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 2) => S(5 downto 0),
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    clr_full : out STD_LOGIC;
    write_only : out STD_LOGIC;
    read_only : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_wr_en_pf_q : in STD_LOGIC;
    ram_rd_en_pf_q : in STD_LOGIC;
    prog_full : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end design_1_dsp_stream_0_1_xpm_fifo_reg_bit;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_fifo_reg_bit is
  signal \^clr_full\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal prog_full_i217_in : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\ : label is "soft_lutpair4";
begin
  clr_full <= \^clr_full\;
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => \^clr_full\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0010FFFF"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => wr_en,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I3 => wr_en,
      I4 => \^rst_d1\,
      O => read_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000404"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I1 => wr_en,
      I2 => \^rst_d1\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      O => write_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550040"
    )
        port map (
      I0 => \^clr_full\,
      I1 => prog_full_i217_in,
      I2 => ram_wr_en_pf_q,
      I3 => ram_rd_en_pf_q,
      I4 => prog_full,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(5),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(7),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(6),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\,
      O => prog_full_i217_in
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(3),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(2),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_fifo_rst is
  port (
    ram_wr_en_pf : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i0\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[7]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    write_only_q : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    read_only_q : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_fifo_rst : entity is "xpm_fifo_rst";
end design_1_dsp_stream_0_1_xpm_fifo_rst;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal prog_empty_i1 : STD_LOGIC;
  signal \^ram_wr_en_pf\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[8]_i_1\ : label is "soft_lutpair10";
begin
  Q(0) <= \^q\(0);
  ram_wr_en_pf <= \^ram_wr_en_pf\;
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAE"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => \count_value_i_reg[1]\(1),
      I3 => rd_en,
      I4 => \count_value_i_reg[1]\(0),
      O => SR(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F00D0"
    )
        port map (
      I0 => \^ram_wr_en_pf\,
      I1 => \count_value_i_reg[7]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\(0),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFC4C"
    )
        port map (
      I0 => write_only_q,
      I1 => prog_empty,
      I2 => prog_empty_i1,
      I3 => read_only_q,
      I4 => \^q\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(5),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(7),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(6),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\,
      O => prog_empty_i1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(3),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(2),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\
    );
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[7]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => \^ram_wr_en_pf\
    );
\grdc.rd_data_count_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[1]\(0),
      I2 => \count_value_i_reg[1]\(1),
      O => \grdc.rd_data_count_i0\
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 33 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 33 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 33 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 33 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of design_1_dsp_stream_0_1_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of design_1_dsp_stream_0_1_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_dsp_stream_0_1_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_dsp_stream_0_1_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of design_1_dsp_stream_0_1_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_dsp_stream_0_1_xpm_memory_base : entity is 8704;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_dsp_stream_0_1_xpm_memory_base : entity is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_dsp_stream_0_1_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of design_1_dsp_stream_0_1_xpm_memory_base : entity is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_dsp_stream_0_1_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_dsp_stream_0_1_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of design_1_dsp_stream_0_1_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_dsp_stream_0_1_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 34;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_dsp_stream_0_1_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of design_1_dsp_stream_0_1_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dsp_stream_0_1_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_dsp_stream_0_1_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of design_1_dsp_stream_0_1_xpm_memory_base : entity is 36;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of design_1_dsp_stream_0_1_xpm_memory_base : entity is 36;
end design_1_dsp_stream_0_1_xpm_memory_base;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_100_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_101_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_102_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_103_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_104_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_105_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_106_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_107_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_108_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_109_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_110_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_111_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_112_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_113_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_114_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_115_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_116_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_117_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_118_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_119_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_120_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_121_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_122_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_123_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_124_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_125_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_126_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_127_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_128_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_129_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_130_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_131_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_132_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_133_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_134_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_135_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_136_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_137_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_138_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_3_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_40_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_41_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_42_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_43_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_44_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_45_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_46_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_47_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_48_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_49_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_50_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_51_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_52_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_53_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_54_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_55_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_56_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_57_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_58_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_59_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_60_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_61_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_62_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_63_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_64_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_65_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_66_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_67_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_68_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_69_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_70_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_71_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_72_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_73_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_74_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_75_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_76_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_77_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_78_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_79_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_80_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_81_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_82_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_83_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_84_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_85_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_86_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_87_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_88_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_89_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_90_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_91_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_92_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_93_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_94_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_95_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_96_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_97_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_98_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_99_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6\ : STD_LOGIC;
  signal select_piped_1_reg_pipe_5_reg_n_0 : STD_LOGIC;
  signal select_piped_3_reg_pipe_6_reg_n_0 : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_DOG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_DOG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_DOG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_DOG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_DOH_UNCONNECTED\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 8704;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 20;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\ : label is 33;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is "gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is 128;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is 191;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is "gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is 128;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is 191;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\ : label is 20;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is "gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is 128;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is 191;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is "gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is 128;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is 191;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\ : label is 33;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is "gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is 128;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is 191;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is "gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is 192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is 255;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is "gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is 192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is 255;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\ : label is 20;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is "gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is 192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is 255;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is "gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is 192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is 255;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\ : label is 33;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is "gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is 192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is 255;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is "gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is "gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 20;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is "gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is "gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\ : label is 33;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 8704;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is "gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 13;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_138_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_137_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_136_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_135_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(0)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_98_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_97_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_96_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_95_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(10)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_94_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_93_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_92_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_91_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(11)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_90_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_89_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_88_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_87_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(12)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_86_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_85_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_84_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_83_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(13)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_82_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_81_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_80_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_79_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(14)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_78_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_77_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_76_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_75_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(15)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_74_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_73_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_72_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_71_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(16)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_70_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_69_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_68_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_67_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(17)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_66_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_65_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_64_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_63_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(18)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_62_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_61_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_60_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_59_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(19)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_134_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_133_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_132_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_131_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(1)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_58_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_57_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_56_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_55_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(20)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_54_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_53_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_52_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_51_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(21)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_50_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_49_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_48_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_47_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(22)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_46_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_45_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_44_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_43_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(23)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_42_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_41_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_40_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(24)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(25)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(26)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(27)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(28)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(29)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_130_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_129_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_128_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_127_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(2)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(30)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(31)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(32)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_3_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(33)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_126_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_125_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_124_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_123_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(3)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_122_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_121_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_120_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_119_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(4)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_118_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_117_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_116_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_115_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(5)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_114_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_113_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_112_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_111_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(6)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_110_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_109_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_108_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_107_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(7)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_106_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_105_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_104_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_103_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(8)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_102_reg_n_0\,
      I1 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_101_reg_n_0\,
      I2 => select_piped_3_reg_pipe_6_reg_n_0,
      I3 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_100_reg_n_0\,
      I4 => select_piped_1_reg_pipe_5_reg_n_0,
      I5 => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_99_reg_n_0\,
      O => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(9)
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(10),
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(11),
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(12),
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(13),
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(14),
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(15),
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(16),
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(17),
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(18),
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(19),
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(20),
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(21),
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(22),
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(23),
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(24),
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(25),
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(26),
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(27),
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(28),
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(29),
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(30),
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(31),
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(32),
      Q => doutb(32),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(33),
      Q => doutb(33),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(8),
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg\(9),
      Q => doutb(9),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_100_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_100_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_101_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_101_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_102_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_102_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_103_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_103_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_104_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_104_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_105_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_105_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_106_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_106_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_107_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_107_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_108_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_108_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_109_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_109_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_110_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_110_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_111_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_111_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_112_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_112_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_113_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_113_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_114_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_114_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_115_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_115_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_116_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_116_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_117_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_117_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_118_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_118_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_119_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_119_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_120_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_120_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_121_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_121_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_122_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_122_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_123_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_123_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_124_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_124_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_125_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_125_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_126_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_126_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_127_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_127_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_128_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_128_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_129_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_129_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_130_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_130_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_131_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_131_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_132_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_132_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_133_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_133_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_134_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_134_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_135_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_135_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_136_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_136_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_137_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_137_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_138_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_138_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_3_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_40_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_40_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_41_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_41_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_42_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_42_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_43_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_43_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_44_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_44_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_45_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_45_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_46_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_46_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_47_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_47_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_48_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_48_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_49_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_49_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_50_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_50_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_51_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_51_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_52_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_52_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_53_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_53_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_54_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_54_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_55_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_55_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_56_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_56_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_57_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_57_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_58_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_58_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_59_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_59_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_60_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_60_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_61_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_61_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_62_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_62_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_63_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_63_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_64_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_64_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_65_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_65_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_66_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_66_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_67_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_67_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_68_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_68_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_69_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_69_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_70_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_70_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_71_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_71_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_72_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_72_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_73_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_73_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_74_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_74_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_75_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_75_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_76_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_76_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_77_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_77_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_78_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_1\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_78_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_79_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_79_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_80_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_80_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_81_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_81_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_82_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_0\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_82_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_83_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_83_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_84_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_84_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_85_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_85_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_86_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_6\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_86_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_87_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_87_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_88_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_88_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_89_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_89_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_90_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_5\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_90_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_91_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_91_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_92_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_92_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_93_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_93_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_94_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_94_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_95_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_95_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_96_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_96_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_97_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_97_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_98_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_3\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_98_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_99_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_99_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_4\,
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg_n_0\,
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(0),
      DIB => dina(1),
      DIC => dina(2),
      DID => dina(3),
      DIE => dina(4),
      DIF => dina(5),
      DIG => dina(6),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ena,
      I1 => addra(6),
      I2 => addra(7),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(14),
      DIB => dina(15),
      DIC => dina(16),
      DID => dina(17),
      DIE => dina(18),
      DIF => dina(19),
      DIG => dina(20),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(21),
      DIB => dina(22),
      DIC => dina(23),
      DID => dina(24),
      DIE => dina(25),
      DIF => dina(26),
      DIG => dina(27),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(28),
      DIB => dina(29),
      DIC => dina(30),
      DID => dina(31),
      DIE => dina(32),
      DIF => dina(33),
      DIG => '0',
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_n_5\,
      DOG => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_DOG_UNCONNECTED\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_28_33_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(7),
      DIB => dina(8),
      DIC => dina(9),
      DID => dina(10),
      DIE => dina(11),
      DIF => dina(12),
      DIG => dina(13),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(0),
      DIB => dina(1),
      DIC => dina(2),
      DID => dina(3),
      DIE => dina(4),
      DIF => dina(5),
      DIG => dina(6),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addra(6),
      I1 => addra(7),
      I2 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(14),
      DIB => dina(15),
      DIC => dina(16),
      DID => dina(17),
      DIE => dina(18),
      DIF => dina(19),
      DIG => dina(20),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_14_20_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(21),
      DIB => dina(22),
      DIC => dina(23),
      DID => dina(24),
      DIE => dina(25),
      DIF => dina(26),
      DIG => dina(27),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_21_27_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(28),
      DIB => dina(29),
      DIC => dina(30),
      DID => dina(31),
      DIE => dina(32),
      DIF => dina(33),
      DIG => '0',
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_n_5\,
      DOG => \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_DOG_UNCONNECTED\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_28_33_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(7),
      DIB => dina(8),
      DIC => dina(9),
      DID => dina(10),
      DIE => dina(11),
      DIF => dina(12),
      DIG => dina(13),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_7_13_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(0),
      DIB => dina(1),
      DIC => dina(2),
      DID => dina(3),
      DIE => dina(4),
      DIF => dina(5),
      DIG => dina(6),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ena,
      I1 => addra(6),
      I2 => addra(7),
      O => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(14),
      DIB => dina(15),
      DIC => dina(16),
      DID => dina(17),
      DIE => dina(18),
      DIF => dina(19),
      DIG => dina(20),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_14_20_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(21),
      DIB => dina(22),
      DIC => dina(23),
      DID => dina(24),
      DIE => dina(25),
      DIF => dina(26),
      DIG => dina(27),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_21_27_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(28),
      DIB => dina(29),
      DIC => dina(30),
      DID => dina(31),
      DIE => dina(32),
      DIF => dina(33),
      DIG => '0',
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_n_5\,
      DOG => \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_DOG_UNCONNECTED\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_28_33_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(7),
      DIB => dina(8),
      DIC => dina(9),
      DID => dina(10),
      DIE => dina(11),
      DIF => dina(12),
      DIG => dina(13),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_7_13_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(0),
      DIB => dina(1),
      DIC => dina(2),
      DID => dina(3),
      DIE => dina(4),
      DIF => dina(5),
      DIG => dina(6),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addra(7),
      I1 => addra(6),
      I2 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(14),
      DIB => dina(15),
      DIC => dina(16),
      DID => dina(17),
      DIE => dina(18),
      DIF => dina(19),
      DIG => dina(20),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(21),
      DIB => dina(22),
      DIC => dina(23),
      DID => dina(24),
      DIE => dina(25),
      DIF => dina(26),
      DIG => dina(27),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_27_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(28),
      DIB => dina(29),
      DIC => dina(30),
      DID => dina(31),
      DIE => dina(32),
      DIF => dina(33),
      DIG => '0',
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_n_5\,
      DOG => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_DOG_UNCONNECTED\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_28_33_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(7),
      DIB => dina(8),
      DIC => dina(9),
      DID => dina(10),
      DIE => dina(11),
      DIF => dina(12),
      DIG => dina(13),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
select_piped_1_reg_pipe_5_reg: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => addrb(6),
      Q => select_piped_1_reg_pipe_5_reg_n_0,
      R => '0'
    );
select_piped_3_reg_pipe_6_reg: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => addrb(7),
      Q => select_piped_3_reg_pipe_6_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 5;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 5;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "xpm_6a4a8c_vivado.mem";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 3;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 32;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 5;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 5;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ : entity is 16;
end \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\;

architecture STRUCTURE of \design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is "p0_d16";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 15;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is "U0/dsp_stream_ip_struct/rom/xpm_memory_sprom_inst/xpm_memory_base_inst/gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is 15;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"C322C004C404CEB0DED9F2B208051C752DBA39E93FA63E4F360927C1150C0000",
      INIT_01 => X"00000000000000000000000000000000000000000000000000000000DC95CD06",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"00000",
      ADDRARDADDR(8 downto 4) => addra(4 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DINADIN(15 downto 0) => B"1111111111111111",
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 0) => douta(15 downto 0),
      DOUTBDOUT(15 downto 0) => \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTBDOUT_UNCONNECTED\(15 downto 0),
      DOUTPADOUTP(1 downto 0) => \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPADOUTP_UNCONNECTED\(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => \NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPBDOUTP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
N+ooM5dWPXtWPeqxpgvdUtvvuHmJO7PdkvltxjzX91Lx4FWnxpHifbKganuMl6smtZ8azpi7tXQS
nhAJGsraaQGyfbZyP6VRGGTFbWEPuLHcxbXcELka6mDKvPT6l5Bi2QzgNbs4RwqJy4g8gSzl9t+9
iQX1m1ryV84FNlQisOM=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
WoT93aSEqnayqY1Tu3f9DMdfSPiBQEbRtPEg24tFfqcXE2uwJGyMNIgqbi3vC4R3LNKkHKApKhl+
4SZIvxOdnFCDXNvsooJjPRY1+gB6hFDXe1blaIQ6miFsmOd4mYlVyPEl8ZBfqjKMXom6XHVlRjeB
cQo/wlLtYeHPvHMGxzp2L3W5cs+/WYZ4EHLVDwsA2pPc1Oi4ipIFfJHjNLbEm/+m8LGD2Zie7Ctx
fs2dXARlotsdGzLCztLdSU/f3vYkZxkNbbw9yJ9WOumNfPkQojomjiUZ3yv7isIrwdYiip13wrUJ
Ljs10QqckNUuX5cg0Es/Dq7VLX8KQ6+hvq32WA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
CyvVgN+ggsqUH4O1F/RHrNPY55qIQBXn/GjutTcdUXO5anyseN5DFOm+t2M8ri3dI+a4k7QlPL/V
9A5fS/MWvOOtCAVtVLlys8TfwWfWYKX+PywOtHiIjORTYlEynJMlBtQ9344bB5edqg5s/zHxYd7R
pRGj2+Q93lMXqrcYC2Q=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
N9NJrAZQ5UngQpk5o2CmTohbt6X3E5GU+ZDoz1ya8ZVlY/GzzzKsSDM6ODdrInc2RM73pDKKK31t
3h09gZPTsgb+27NPTY7ejuHyNZj54ODRQqTs6Xmu30Z9Uz4O1wynZbg681Is7mJNFX5E2NJu+hPx
Dby7XRUKmoFNEpOl+s7ELUPD4WlPMKvA0TRNbk8MJ606ts12DSCyzPd1lV8lNQUJe5+s2f2XyxPT
ClPCTtPjPcLweG8WX54Ex1xaWmszpPgir/Hcaj3UlT4u/yaQEznPm9UcNF+nY4XxVScC6jLpMvCu
LvflKmWnRvD7oE6HpKozfiZ2WU+7SW5O4kBcLQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
yyOCXKYWQczUFq0DC9YQCxmI5Mc9OJFkFH4WeefnuGlJ6xERk8a88QLrmy0MAa9o8nEublltNmvt
uHcICISOQWrA7FpDglEnznCAfMxY1s7K7au/yPSgKUmVjUBCBCup2jltc84HMJsze8UlwvyAuRjC
vPoSEMsZPV/I9KngbpE9lZprROwCMB7at34k44Pq3PXpTmScxTAlSAEROGKt8y6Y+dzvPAVYfTjC
O5R96HZOS9TRH25gHxPO0tkjMX39o2pZUofPYGOXTccaG8MgTSbii1GuswNXR1RKejb83QJbzFxP
4o+kcpU+ya7aG9jO7T6oHtKo/aSfV9y2j7/7nw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DDi9HSAQUEcscw8fu1eyKoDGw0DeO1hhIBypxUv0PgF2tCbet6m8+m5z+yKZajrKiAhIFqpTH1tD
DyKdjVsGQCkqD0S6SnTfwwDCotYosPIb2jXizid8nMTWk5Q4RoUUWpZ0EedEqa8a7x2Ni07LuEZa
Z+IhliNnvN/N467zphjcsKWXfUGf9EAGcd4S+ohQjlCRvQv+Qa+oZxbawmZjam4KwNK01yPKZLrl
3OHD39SolKaVp37v2porPBg/dFdXYzri+IDBJO6kKAjgfDubFGWjnTae0b/gFmp2YT7CcqNPzou9
0ZYngsGI0MSgYS8VQ/KVgHvJ/AskgLxzla/D6w==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
bSnLL7fiQAG6VMlvFpq9yYW1CsYTtBTmuEL1X0IZZUojwxBNwocIgXDL6Wtl1MWKabAznAmsGY95
8aVMdJL77EHHnnWdx9BLybygyZpoAdVHerMb7fT326EcWMyg7pU7r0wFa4sxRl8qmvVhNez/NOCT
hH7UnSGBDFkaEqcJjTA8kzE+5OFd+hENDK44P/Z7vSXouv3Qwf0j1hqpGnA6JmMpZtCRjI5kVa6P
hCsB8389H0io+8hJgEf67h2a/B131xN63KuhAqEGIGXM5nRC/4vnmp/ceeqRDCU5reHW9Nq9HeD3
5xTfKno7stuvhpiH2MwLGsVW60hjh6YIcUJwsA==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
WFLeA0NgOFModKtJ8QT1w9DRmP6QyotGQCwGw6G4R/hODlw+N/dC2zPbK0Sh+CpLitx2veBEkTg4
Vn/6vZMmNj6IQXEA3gaP5mCU+zrqU3XOTwImvF0VLqLSr8A9ZkdClRiZCxorDS3WjceA+JS1MYfh
pZAi/MseGetQo6RuY3sggGXbEQgJjH4oI4NcXWCpMUkeayHEsYlrZ6r/4l0sNUWbfTUWQ/+vU+uF
jov7s2P8FepX+Wu+q5zW5pI2ezgLS67binM2wt/sZMaRYRdwg9FIpgtbifCInnSb1rO5rbXyBc85
FfUxucW0zsW+SkQ5MqBHboUvWkopYXCULMUACQBEN/Qr6E5FLB54iyHLnOYdrh90LJlJOBuhobOI
qOzYkJhGvRwRP+pO8Py2bXg+CPxvioxIKnHhLBWD8FcS0CV6F9qu3JAnm9S5Ui796WzQbLIQrwoY
JtfN2XLeNG6qCOT0r4wH4MlRZt/ccNRI8P76kKS1upz2PgdKmQl6nIRF

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZAwbHyyO3yPm7MG5Bsutoe+r552wFRZGRqJv7h7rGo4lmatmRwRJ5iwME2EOH0pjvIyonBN8UnVo
6dP2Vg0Tao5puIWg2eMsDSJB8dTbZUG3crs86hSsRdnKMqA74ImPhM6jc9EZs97LTXC/dVrqTUPD
vgqaTWmHs0NclbeUXHJFaSsgM1gwm3RJCgU7U2SUOdS4JgBBm35wrzThiqSWIcDJ7ahP4lBFQKBj
9XT86upl0lG1zFc8IYVMtvvIRzdNpKpn7lsfkrIHLvesMXJuBdaViwqDJK2lznOx7AVK3IrttBii
yNE6eFkeGBy60vIk3ZCy9mnDBj1/zwiaRjJW1w==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
S0Rjdg1d3ZE7xzFOdbffKJ84MLPV2SS1lTl9ffKHwPlzbTGeD4dJCsrYLak3xI2UY6D/9ORq/s3S
lMyEUnfMgp7STh+vCN2sVvKctQsMkDQV5ra2zjQaSvmFkqoUNQvOuOAtbFNnKc4EGixrmm0V7bZs
aNIvFYnYk6PA//p0AFwD+MWS8RgwypJur31Z1BZDynOU1sq107aiO0GsghBFJPbqZ3paoFPrV+5Z
0joDr+Y+YxB+PRF5yEbMrUw33UWE6PUQd8Ng7LzOcjLEJE63uoSiAYUTKVN5sHkmOT3dgZi5VYq9
oSqHyaHruVhItgzVVlMsLwa6WrfqCmV/3Ow3aw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
IXinJchzR5qYN2zAWzHRViIguMeL10bcrELo0CFG3/qYVVPygtiX8KwceAMM4OygouHALCojOK4F
0vaeqm0AamNqiOYbdLW/t2SONJc0DMuaCZfcDmecPSJ/PYf2EgpXGOkjJuJRYJasbU/1oS+WDQH9
3m24+VCWJsszD7ghyRaeNVN9Az7VKFde+s3lIQZDI6ne/pXY2B2oNGK5/LdPee5ZVg25uzGDCZNf
HTtgFOOnOMa75YC2LdrB3XcDn0mq4nqKCmWoW+htOmoD9XvbbBwUEMoDBBRekfsZ7GX9WLqac/mv
gWsV3z4/gDuO6wV3UPf6EERDFjkPrroes/WvFA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1984)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xlconvert is
  port (
    s_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xlconvert : entity is "dsp_stream_ip_xlconvert";
end design_1_dsp_stream_0_1_dsp_stream_ip_xlconvert;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xlconvert is
begin
\std_conversion_generate.convert\: entity work.design_1_dsp_stream_0_1_convert_func_call_dsp_stream_ip_xlconvert
     port map (
      douta(15 downto 0) => douta(15 downto 0),
      s_axis_tdata(13 downto 0) => s_axis_tdata(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_synth_reg is
  port (
    s_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_synth_reg : entity is "synth_reg";
end design_1_dsp_stream_0_1_synth_reg;

architecture STRUCTURE of design_1_dsp_stream_0_1_synth_reg is
begin
\partial_one.last_srlc33e\: entity work.design_1_dsp_stream_0_1_srlc33e
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2_0\(0) => \reg_array[0].fde_used.u2\(0),
      s_axis_tuser(0) => s_axis_tuser(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_synth_reg_3 is
  port (
    s_axis_tlast : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_synth_reg_3 : entity is "synth_reg";
end design_1_dsp_stream_0_1_synth_reg_3;

architecture STRUCTURE of design_1_dsp_stream_0_1_synth_reg_3 is
begin
\partial_one.last_srlc33e\: entity work.design_1_dsp_stream_0_1_srlc33e_4
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2_0\(0) => \reg_array[0].fde_used.u2\(0),
      s_axis_tlast => s_axis_tlast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_synth_reg_5 is
  port (
    s_axis_tvalid : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_synth_reg_5 : entity is "synth_reg";
end design_1_dsp_stream_0_1_synth_reg_5;

architecture STRUCTURE of design_1_dsp_stream_0_1_synth_reg_5 is
begin
\partial_one.last_srlc33e\: entity work.design_1_dsp_stream_0_1_srlc33e_6
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2_0\(0) => \reg_array[0].fde_used.u2\(0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_synth_reg_7 is
  port (
    m_axis_tready : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_synth_reg_7 : entity is "synth_reg";
end design_1_dsp_stream_0_1_synth_reg_7;

architecture STRUCTURE of design_1_dsp_stream_0_1_synth_reg_7 is
begin
\partial_one.last_srlc33e\: entity work.design_1_dsp_stream_0_1_srlc33e_8
     port map (
      clk => clk,
      m_axis_tready => m_axis_tready,
      \reg_array[0].fde_used.u2_0\(0) => \reg_array[0].fde_used.u2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 33 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 33 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "16'b0001011100000111";
  attribute EN_AE : string;
  attribute EN_AE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "warning";
  attribute EN_UF : string;
  attribute EN_UF of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 256;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 8704;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 8;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 34;
  attribute READ_MODE : integer;
  attribute READ_MODE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 825700407;
  attribute VERSION : integer;
  attribute VERSION of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 34;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_dsp_stream_0_1_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of design_1_dsp_stream_0_1_xpm_fifo_base : entity is 1;
end design_1_dsp_stream_0_1_xpm_fifo_base;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \gen_fwft.count_rst\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_pf_q : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal ram_wr_en_pf_q : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_16 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdp_inst_n_28 : STD_LOGIC;
  signal rdp_inst_n_29 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdp_inst_n_31 : STD_LOGIC;
  signal rdp_inst_n_32 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal read_only : STD_LOGIC;
  signal read_only_q : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_5 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal write_only : STD_LOGIC;
  signal write_only_q : STD_LOGIC;
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_5 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair12";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 8704;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 36;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair12";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.rdpp1_inst\: entity work.design_1_dsp_stream_0_1_xpm_counter_updn
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(0) => count_value_i(1),
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gwdc.wr_data_count_i_reg[7]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      \gwdc.wr_data_count_i_reg[7]_0\(1 downto 0) => wr_pntr_ext(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_24,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_25,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_4,
      Q => \^prog_empty\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => read_only,
      Q => read_only_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => write_only,
      Q => write_only_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(1),
      Q => diff_pntr_pf_q(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_5,
      Q => \^prog_full\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_9,
      Q => ram_rd_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_wr_en_pf,
      Q => ram_wr_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.design_1_dsp_stream_0_1_xpm_memory_base
     port map (
      addra(7 downto 0) => wr_pntr_ext(7 downto 0),
      addrb(7 downto 0) => rd_pntr_ext(7 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(33 downto 0) => din(33 downto 0),
      dinb(33 downto 0) => B"0000000000000000000000000000000000",
      douta(33 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(33 downto 0),
      doutb(33 downto 0) => dout(33 downto 0),
      ena => ram_wr_en_pf,
      enb => rdp_inst_n_9,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => wr_data_count(0),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => wr_data_count(8),
      R => xpm_fifo_rst_inst_n_1
    );
rdp_inst: entity work.\design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0\
     port map (
      DI(0) => rdp_inst_n_0,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_9,
      Q(7 downto 0) => rd_pntr_ext(7 downto 0),
      S(5) => rdp_inst_n_10,
      S(4) => rdp_inst_n_11,
      S(3) => rdp_inst_n_12,
      S(2) => rdp_inst_n_13,
      S(1) => rdp_inst_n_14,
      S(0) => rdp_inst_n_15,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_0\(0) => rdp_inst_n_16,
      \count_value_i_reg[6]_0\(4) => rdp_inst_n_19,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_21,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_22,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_23,
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_17,
      \count_value_i_reg[7]_1\(6) => rdp_inst_n_26,
      \count_value_i_reg[7]_1\(5) => rdp_inst_n_27,
      \count_value_i_reg[7]_1\(4) => rdp_inst_n_28,
      \count_value_i_reg[7]_1\(3) => rdp_inst_n_29,
      \count_value_i_reg[7]_1\(2) => rdp_inst_n_30,
      \count_value_i_reg[7]_1\(1) => rdp_inst_n_31,
      \count_value_i_reg[7]_1\(0) => rdp_inst_n_32,
      \count_value_i_reg[8]_0\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_24,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_25,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(7) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(6) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0) => wrpp1_inst_n_7,
      \grdc.rd_data_count_i_reg[8]\(8) => wrp_inst_n_1,
      \grdc.rd_data_count_i_reg[8]\(7 downto 0) => wr_pntr_ext(7 downto 0),
      \gwdc.wr_data_count_i_reg[7]\(0) => count_value_i(1),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1\
     port map (
      Q(7) => rdpp1_inst_n_0,
      Q(6) => rdpp1_inst_n_1,
      Q(5) => rdpp1_inst_n_2,
      Q(4) => rdpp1_inst_n_3,
      Q(3) => rdpp1_inst_n_4,
      Q(2) => rdpp1_inst_n_5,
      Q(1) => rdpp1_inst_n_6,
      Q(0) => rdpp1_inst_n_7,
      \count_value_i_reg[0]_0\ => rdp_inst_n_9,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_1\(0) => xpm_fifo_rst_inst_n_1,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.design_1_dsp_stream_0_1_xpm_fifo_reg_bit
     port map (
      DI(0) => p_1_in,
      Q(0) => xpm_fifo_rst_inst_n_1,
      clr_full => clr_full,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\ => rdp_inst_n_9,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\ => \gen_fwft.empty_fwft_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\(7 downto 0) => diff_pntr_pf_q(8 downto 1),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ => rst_d1_inst_n_5,
      prog_full => \^prog_full\,
      ram_rd_en_pf_q => ram_rd_en_pf_q,
      ram_wr_en_pf_q => ram_wr_en_pf_q,
      read_only => read_only,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only => write_only
    );
wrp_inst: entity work.\design_1_dsp_stream_0_1_xpm_counter_updn__parameterized0_9\
     port map (
      D(8 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(8 downto 0),
      DI(1) => rdp_inst_n_16,
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(8) => wrp_inst_n_1,
      Q(7 downto 0) => wr_pntr_ext(7 downto 0),
      S(6) => rdp_inst_n_19,
      S(5) => rdp_inst_n_20,
      S(4) => rdp_inst_n_21,
      S(3) => rdp_inst_n_22,
      S(2) => rdp_inst_n_23,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[0]_0\(7 downto 0) => diff_pntr_pe(7 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdp_inst_n_9,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(7) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(6) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(5) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(4) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_7,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0) => p_1_in,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(7) => rdp_inst_n_26,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(6) => rdp_inst_n_27,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(5) => rdp_inst_n_28,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(4) => rdp_inst_n_29,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(3) => rdp_inst_n_30,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(2) => rdp_inst_n_31,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(1) => rdp_inst_n_32,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(0) => xpm_fifo_rst_inst_n_5,
      \grdc.rd_data_count_i_reg[8]\(0) => rdp_inst_n_17,
      \gwdc.wr_data_count_i_reg[7]\(0) => count_value_i(1),
      \gwdc.wr_data_count_i_reg[7]_0\(5 downto 0) => rd_pntr_ext(6 downto 1),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\design_1_dsp_stream_0_1_xpm_counter_updn__parameterized1_10\
     port map (
      D(7 downto 0) => diff_pntr_pf_q0(8 downto 1),
      DI(0) => rdp_inst_n_0,
      Q(7) => wrpp1_inst_n_0,
      Q(6) => wrpp1_inst_n_1,
      Q(5) => wrpp1_inst_n_2,
      Q(4) => wrpp1_inst_n_3,
      Q(3) => wrpp1_inst_n_4,
      Q(2) => wrpp1_inst_n_5,
      Q(1) => wrpp1_inst_n_6,
      Q(0) => wrpp1_inst_n_7,
      S(5) => rdp_inst_n_10,
      S(4) => rdp_inst_n_11,
      S(3) => rdp_inst_n_12,
      S(2) => rdp_inst_n_13,
      S(1) => rdp_inst_n_14,
      S(0) => rdp_inst_n_15,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5 downto 0) => rd_pntr_ext(5 downto 0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\ => rdp_inst_n_9,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.design_1_dsp_stream_0_1_xpm_fifo_rst
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[1]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[7]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0) => xpm_fifo_rst_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ => rdp_inst_n_9,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ => \gen_fwft.empty_fwft_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\(0) => rd_pntr_ext(0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ => xpm_fifo_rst_inst_n_4,
      \grdc.rd_data_count_i0\ => \grdc.rd_data_count_i0\,
      prog_empty => \^prog_empty\,
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      read_only_q => read_only_q,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only_q => write_only_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_memory_sprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_memory_sprom : entity is "xpm_memory_sprom";
end design_1_dsp_stream_0_1_xpm_memory_sprom;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_memory_sprom is
  signal \^douta\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 5;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 5;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of xpm_memory_base_inst : label is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of xpm_memory_base_inst : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of xpm_memory_base_inst : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of xpm_memory_base_inst : label is 15;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of xpm_memory_base_inst : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of xpm_memory_base_inst : label is 16;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "xpm_6a4a8c_vivado.mem";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base_inst : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 3;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 32;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base_inst : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 5;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 5;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 5;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 5;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 16;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of xpm_memory_base_inst : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 16;
begin
  douta(15 downto 0) <= \^douta\(15 downto 0);
xpm_fifo_axis_inst_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^douta\(14),
      I1 => \^douta\(15),
      O => s_axis_tdata(0)
    );
xpm_memory_base_inst: entity work.\design_1_dsp_stream_0_1_xpm_memory_base__parameterized0\
     port map (
      addra(4 downto 0) => Q(4 downto 0),
      addrb(4 downto 0) => B"00000",
      clka => clk,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => \^douta\(15 downto 0),
      doutb(15 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(15 downto 0),
      ena => '1',
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '1',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
j+cisgNr51kboBzSEDMqVtItc+GjGUiMNF0E04YxNeYXTtpqczXoHl7p3pBX3lPxGHPUBdZ6oYbA
uFzQSoAOvv3ANxN24NJ35g39Gushnh3bAhkIaggJwqirNk8uvbFei0Q37GZcy7DTONZHx9iSsnwg
43qcv84+v1Oqg1QlkK0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LvmfIuwVQiUSvu/SWE90Ii3gBrSlLLUK62Pe9Uo5lexkMeDgQfulU0pV4/6bexfxf29XSUIZb3c9
av2fcRcp1ZeyqEnW0ei/HP4UoYfgCSzAUmuehTopxqUP3M4kX2/ETc0gdNuIi6qDHquW7YY9QQGa
g5MTm81zI19+yvQdowrY7g+W1mLrHRcb8Ho+qe0uZMYO9K9DLpwNlhtSf0qufVmJGM+5COEyqb1U
lL+nfwveqOc0IWRRpPS42kC7OR6BTARi5c6dKCQl/a9fojTU0hW9itdcCGK5DL1CuzhnLB3Cw1Lc
UIHvmiN+LslcbwXadjp0wvd8yuh6HziY0Vfxsw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
sxpYAYC9AO3d/Qq5Dz0dcOejYw99+MiH0W395D6tyIroWG9T14T6E7ryw+s/by4tx97NytW6qUN3
NXZVsmgnxSKTeXfcn+ZXRsWNPcQGtCaIdh8TbBiHtUeZecWXJ0/iGORapfLQxNbHmGtiSkN1eYCn
C7QZMw6qZPNfuNyivRg=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E/GNyTiOpevKZa3+bbpJb0kDvoBk/eMnN/JT+ul7JFDogMwn8CpOobzq4ORZE40PqtaeX8shZ2Io
cJi8jjFyYeWd2nZtLZo0heKqX3v/pdf8QoQbxat3X7qE+EWjBbCn/ZFGg9zTrFFxwaHk42COVzlL
0j+PRabCWynZ5ILjyTP47frcmCN/iRKt0d+pvi/GA4UjFDtb6+9p1niifgkhCn1MkMBg8U/Y5knN
CVQ7z+g5SrUo/3bEiUXLkpBhMSliuE96gVp/dhIEh9H7jm8yTGyk0JzdtVTLaZLa+Lip0djJZLpb
UppZLdmVomSIk5FAqXrXZx6cyoWBJHtDlyJZkA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
hg0hZUmrq09eMOjEntvd+gf7Zd2U4BwDY1Jz7gQri0LZtchGB8Z8SRY7YjUyWlUFux+gzbhxtgxE
uXob+ZiD1GlC8r4A2zRmOzuSIMz5UnEhy5TMjR+8A23FUgB5H14Nk+8/ui0Zs/CqU3Odf3BBWOAg
zxnOh70mcUhtPTAIZ+EcN+1Ujtdp78bNTd2IQJcFIhDRt35kHTIgOpo8oDPU8cUgKH6HYVq0sF+B
1yu+k9PCMZikA3k51SJhEW/Qc39FpYPT9CKN0WwelzSM6CD2GrcLMAt1oh2PsLi9Pfz1zzfj+mED
XS3V2CvLYBAA5I2Zn5G1DKrCLW1s3QCGdjLFcQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZihOD8xT0OXV+vYQgVKC2OgNYw1KaLnWHAc+JKheEAvf+yg1M7C7urUi93p572HyJs7Y4xmmO7jH
ND7Tv3yag5/ovBwWsoZpyr5RiGqozyxd59WCmh1IY/4VIOP7O8XrKDP4OGGR4Yrc69eGX7icFD/q
q1Yri9lFsLwghmgnG5/5LI0ZMQuooogdTmG+J2E0ZDBWfT/UmG0W92Ul8I3gfcKlKOiouwG5y4Jp
nBDOfD0ITqlCH9MMIsDa+elFeLXvv2KVvemlQ6QmFkF7trsIsF7QEhsAEKVsCYQTNVAGTL0GQsfh
sg3wRbAMH9DIJaQxk+17Z2Yacz0Veyzzwk9ehw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HY3h60x+HFg/eOgHTI4UVm9DtPW6wqUKca7u8NGVkEwgcMgpHEWwLglcdrxdQNjcwm8OHot4ETKF
WKbgVoX+iDWvtyepO4qxoxeWXH2F1fmkO5TcCS5lfsbj510UC680iv6lj8Cyu8iiRTaXR/o4FoM0
fC0fK1I3vPhOTQ5CR3OgRKAFDdX+d/qZ444LSpBM+tvjaaKR1BRRMkaGxO58SlkZRhBySU0nhAQy
dLhrkimMDrmmj/sej98ps6eMFspr8+5pUYJg+vWp++Sm0zHT5N6L1+n+oCGTjgEAgNvxvIgPv6O6
O614qs4bb0unrlrWFTLtb8eoiQe9RHpwGopwlw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
UwlS0UvncccxxkW4NnEPYSb0LG5K+diX5o0hrXyga8q/gD9ab0W8hccMe2HgIOrJ0coq4cXubRll
ZpfwAORkvZtLjLAkjJkvmwum68290Kk65/t/Zns9LY543if5KVhDzDg632T/2/g+S4iACupycWXY
cZ6s39/F2p//kX1YHKh6qPf3qkoP25aHoXQhlWkBAIGe3uIyPYPXstbeMaMeWMmKTh0rnBbtpr8y
0Qg1S5j9DIzW9sNl57338zbHnQbUbJzw5eAHPIYReJLbGLoFizMzbCeVUf9qQcME/zhozlHMqIYN
Mafo4cDvvsMIs8ppl+EWkfmPwMyBiDor8XdnJwhL6PXvmC52OK25D9SarDCqe+sqUKRPLYOzZm9s
mRp4pTSLWqKlA4Kmt9Om1GAjesqP6fBmfP1NGnjIrnslWz4gi45DlpUHMRKmIlfMjMLoDcxkJyie
bdt0EiJv3tUHW+hzM1osET2y5r7UP2tXX1I0KcbPrsM8mAjAbCi8yC8b

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
X0dvE3L7dLQCMLonwloQgw5itpWmwVthmLjXvNCwkkUnrWRnIFGWcVV+7J059QS+MH4TlngLY35K
jozGLlOeR74+bBTejoxLYWg2EOfziRkOnWV2uSeOTEyEL+LD9sSATD6G+de3w3tolkltsugp6Asm
4+ouB1syLSHEJDe3i6xdrhgn2gjStQgaIBrGx67K6P9M/ZpIE3tJpGwQpXAQW6mcrqXnyP8s9OOR
lKGNPgaQFWDxxHZY806A4MaHpWk9o7ni2o+CNUO1IEpPDpNcX5kMGjPY2d5U2F21JssOrE9gdyeA
WYmROE1TZ0h61Y5QNSuC42zh2bxl5RnU9Yw9kA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
oIVzpSluI7daBxkOk2gHCozBGlbxG53WoEhOzUaurQiUeJP9/arWOJWk+fvz3PNZhGKqhMT34Elf
4CE16vrKhBto+aiBjmbTGqgpcZuAov0ThKrdb5D2RErj9L03MzOMQdBEb2OGyWHIaVcOR12TL/Pc
ppZorRLXpXsMO6OiQvQgS6gBpPLmoJ/4mFQU2y7Gq4fQ1w0mBb5WD4aOFS27kco9sWZg134eJyHh
g3WophY4AK3S6VNrjwfZ8V2EHcWlysmTyQhS/i6nISRdlQIyBBenPXI1qC3X2elRwJJ1rDBw4tSk
FPpZVv+Pg6wD1lxgePFMJlGymPGte/sHafK1og==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
flfR64NYycLIyauxCLn1wC38i1K4/yOEiIIS/pzPw5b4T8AQasCEhfXccXWd7XYD8tVTgjkiZlil
BY/FskgSGdAPW60ru4A65EEa7ULY+aPS1CSMAW6nANPgjVXgGu5AsFKiDjSfY+ibvvFHUmJ8Zmez
wEdjdaf1uPn8gwW70f2+rXV6O5zQnCdBG+tQ5cUZMYqSxcdKZEcd7uFDN1+GqykP0vqNVRZMAmZE
umrRSJg1a1YyLdwwKiD+UbAJWJ0KQNS+4RQTCOHtz8/EK1t1YnoCf5KBTTe57whtj0S+rfOK5HaB
upEqngWyR+h+SKSvfYHRQkIHJPKSCB9buGG6MQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3568)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xldelay is
  port (
    m_axis_tready : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay : entity is "dsp_stream_ip_xldelay";
end design_1_dsp_stream_0_1_dsp_stream_ip_xldelay;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_dsp_stream_0_1_synth_reg_7
     port map (
      clk => clk,
      m_axis_tready => m_axis_tready,
      \reg_array[0].fde_used.u2\(0) => \reg_array[0].fde_used.u2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_0 is
  port (
    s_axis_tvalid : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_0 : entity is "dsp_stream_ip_xldelay";
end design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_0;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_0 is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_dsp_stream_0_1_synth_reg_5
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2\(0) => \reg_array[0].fde_used.u2\(0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_1 is
  port (
    s_axis_tlast : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_1 : entity is "dsp_stream_ip_xldelay";
end design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_1;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_1 is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_dsp_stream_0_1_synth_reg_3
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2\(0) => \reg_array[0].fde_used.u2\(0),
      s_axis_tlast => s_axis_tlast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_2 is
  port (
    s_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_array[0].fde_used.u2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_2 : entity is "dsp_stream_ip_xldelay";
end design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_2;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_2 is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_dsp_stream_0_1_synth_reg
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2\(0) => \reg_array[0].fde_used.u2\(0),
      s_axis_tuser(0) => s_axis_tuser(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xlsprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xlsprom : entity is "dsp_stream_ip_xlsprom";
end design_1_dsp_stream_0_1_dsp_stream_ip_xlsprom;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xlsprom is
begin
xpm_memory_sprom_inst: entity work.design_1_dsp_stream_0_1_xpm_memory_sprom
     port map (
      Q(4 downto 0) => Q(4 downto 0),
      clk => clk,
      douta(15 downto 0) => douta(15 downto 0),
      s_axis_tdata(0) => s_axis_tdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 8 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 0 to 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 34;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 34;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "16'b0001011100000111";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "16'b0001011100000111";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "1'b1";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "warning";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 256;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "distributed";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 8;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "xpm_fifo_axis";
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 1;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 16;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 32;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 28;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 20;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 18;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 4063;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 33;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "1707";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 825700407;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is "true";
  attribute tdata_width : integer;
  attribute tdata_width of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 16;
  attribute tdest_width : integer;
  attribute tdest_width of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 4;
  attribute tid_width : integer;
  attribute tid_width of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 8;
  attribute tuser_width : integer;
  attribute tuser_width of design_1_dsp_stream_0_1_xpm_fifo_axis : entity is 1;
end design_1_dsp_stream_0_1_xpm_fifo_axis;

architecture STRUCTURE of design_1_dsp_stream_0_1_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001011100000111";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_SIM_ASSERT_ERR of xpm_fifo_base_inst : label is "warning";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 256;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 8704;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 10;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 10;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 8;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 34;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES_integer : integer;
  attribute USE_ADV_FEATURES_integer of xpm_fifo_base_inst : label is 825700407;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 34;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 6;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty_axis <= \<const0>\;
  almost_full_axis <= \<const0>\;
  dbiterr_axis <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  sbiterr_axis <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.design_1_dsp_stream_0_1_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.design_1_dsp_stream_0_1_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(33) => s_axis_tlast,
      din(32) => s_axis_tuser(0),
      din(31 downto 28) => s_axis_tdest(3 downto 0),
      din(27 downto 20) => s_axis_tid(7 downto 0),
      din(19 downto 18) => s_axis_tkeep(1 downto 0),
      din(17 downto 16) => s_axis_tstrb(1 downto 0),
      din(15 downto 0) => s_axis_tdata(15 downto 0),
      dout(33) => m_axis_tlast,
      dout(32) => m_axis_tuser(0),
      dout(31 downto 28) => m_axis_tdest(3 downto 0),
      dout(27 downto 20) => m_axis_tid(7 downto 0),
      dout(19 downto 18) => m_axis_tkeep(1 downto 0),
      dout(17 downto 16) => m_axis_tstrb(1 downto 0),
      dout(15 downto 0) => m_axis_tdata(15 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => prog_empty_axis,
      prog_full => prog_full_axis,
      rd_clk => '0',
      rd_data_count(0) => rd_data_count_axis(0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(8 downto 0) => wr_data_count_axis(8 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
j+cisgNr51kboBzSEDMqVtItc+GjGUiMNF0E04YxNeYXTtpqczXoHl7p3pBX3lPxGHPUBdZ6oYbA
uFzQSoAOvv3ANxN24NJ35g39Gushnh3bAhkIaggJwqirNk8uvbFei0Q37GZcy7DTONZHx9iSsnwg
43qcv84+v1Oqg1QlkK0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LvmfIuwVQiUSvu/SWE90Ii3gBrSlLLUK62Pe9Uo5lexkMeDgQfulU0pV4/6bexfxf29XSUIZb3c9
av2fcRcp1ZeyqEnW0ei/HP4UoYfgCSzAUmuehTopxqUP3M4kX2/ETc0gdNuIi6qDHquW7YY9QQGa
g5MTm81zI19+yvQdowrY7g+W1mLrHRcb8Ho+qe0uZMYO9K9DLpwNlhtSf0qufVmJGM+5COEyqb1U
lL+nfwveqOc0IWRRpPS42kC7OR6BTARi5c6dKCQl/a9fojTU0hW9itdcCGK5DL1CuzhnLB3Cw1Lc
UIHvmiN+LslcbwXadjp0wvd8yuh6HziY0Vfxsw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
sxpYAYC9AO3d/Qq5Dz0dcOejYw99+MiH0W395D6tyIroWG9T14T6E7ryw+s/by4tx97NytW6qUN3
NXZVsmgnxSKTeXfcn+ZXRsWNPcQGtCaIdh8TbBiHtUeZecWXJ0/iGORapfLQxNbHmGtiSkN1eYCn
C7QZMw6qZPNfuNyivRg=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E/GNyTiOpevKZa3+bbpJb0kDvoBk/eMnN/JT+ul7JFDogMwn8CpOobzq4ORZE40PqtaeX8shZ2Io
cJi8jjFyYeWd2nZtLZo0heKqX3v/pdf8QoQbxat3X7qE+EWjBbCn/ZFGg9zTrFFxwaHk42COVzlL
0j+PRabCWynZ5ILjyTP47frcmCN/iRKt0d+pvi/GA4UjFDtb6+9p1niifgkhCn1MkMBg8U/Y5knN
CVQ7z+g5SrUo/3bEiUXLkpBhMSliuE96gVp/dhIEh9H7jm8yTGyk0JzdtVTLaZLa+Lip0djJZLpb
UppZLdmVomSIk5FAqXrXZx6cyoWBJHtDlyJZkA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
hg0hZUmrq09eMOjEntvd+gf7Zd2U4BwDY1Jz7gQri0LZtchGB8Z8SRY7YjUyWlUFux+gzbhxtgxE
uXob+ZiD1GlC8r4A2zRmOzuSIMz5UnEhy5TMjR+8A23FUgB5H14Nk+8/ui0Zs/CqU3Odf3BBWOAg
zxnOh70mcUhtPTAIZ+EcN+1Ujtdp78bNTd2IQJcFIhDRt35kHTIgOpo8oDPU8cUgKH6HYVq0sF+B
1yu+k9PCMZikA3k51SJhEW/Qc39FpYPT9CKN0WwelzSM6CD2GrcLMAt1oh2PsLi9Pfz1zzfj+mED
XS3V2CvLYBAA5I2Zn5G1DKrCLW1s3QCGdjLFcQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZihOD8xT0OXV+vYQgVKC2OgNYw1KaLnWHAc+JKheEAvf+yg1M7C7urUi93p572HyJs7Y4xmmO7jH
ND7Tv3yag5/ovBwWsoZpyr5RiGqozyxd59WCmh1IY/4VIOP7O8XrKDP4OGGR4Yrc69eGX7icFD/q
q1Yri9lFsLwghmgnG5/5LI0ZMQuooogdTmG+J2E0ZDBWfT/UmG0W92Ul8I3gfcKlKOiouwG5y4Jp
nBDOfD0ITqlCH9MMIsDa+elFeLXvv2KVvemlQ6QmFkF7trsIsF7QEhsAEKVsCYQTNVAGTL0GQsfh
sg3wRbAMH9DIJaQxk+17Z2Yacz0Veyzzwk9ehw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HY3h60x+HFg/eOgHTI4UVm9DtPW6wqUKca7u8NGVkEwgcMgpHEWwLglcdrxdQNjcwm8OHot4ETKF
WKbgVoX+iDWvtyepO4qxoxeWXH2F1fmkO5TcCS5lfsbj510UC680iv6lj8Cyu8iiRTaXR/o4FoM0
fC0fK1I3vPhOTQ5CR3OgRKAFDdX+d/qZ444LSpBM+tvjaaKR1BRRMkaGxO58SlkZRhBySU0nhAQy
dLhrkimMDrmmj/sej98ps6eMFspr8+5pUYJg+vWp++Sm0zHT5N6L1+n+oCGTjgEAgNvxvIgPv6O6
O614qs4bb0unrlrWFTLtb8eoiQe9RHpwGopwlw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
UwlS0UvncccxxkW4NnEPYSb0LG5K+diX5o0hrXyga8q/gD9ab0W8hccMe2HgIOrJ0coq4cXubRll
ZpfwAORkvZtLjLAkjJkvmwum68290Kk65/t/Zns9LY543if5KVhDzDg632T/2/g+S4iACupycWXY
cZ6s39/F2p//kX1YHKh6qPf3qkoP25aHoXQhlWkBAIGe3uIyPYPXstbeMaMeWMmKTh0rnBbtpr8y
0Qg1S5j9DIzW9sNl57338zbHnQbUbJzw5eAHPIYReJLbGLoFizMzbCeVUf9qQcME/zhozlHMqIYN
Mafo4cDvvsMIs8ppl+EWkfmPwMyBiDor8XdnJwhL6PXvmC52OK25D9SarDCqe+sqUKRPLYOzZm9s
mRp4pTSLWqKlA4Kmt9Om1GAjesqP6fBmfP1NGnjIrnslWz4gi45DlpUHMRKmIlfMjMLoDcxkJyie
bdt0EiJv3tUHW+hzM1osET2y5r7UP2tXX1I0KcbPrsM8mAjAbCi8yC8b

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
X0dvE3L7dLQCMLonwloQgw5itpWmwVthmLjXvNCwkkUnrWRnIFGWcVV+7J059QS+MH4TlngLY35K
jozGLlOeR74+bBTejoxLYWg2EOfziRkOnWV2uSeOTEyEL+LD9sSATD6G+de3w3tolkltsugp6Asm
4+ouB1syLSHEJDe3i6xdrhgn2gjStQgaIBrGx67K6P9M/ZpIE3tJpGwQpXAQW6mcrqXnyP8s9OOR
lKGNPgaQFWDxxHZY806A4MaHpWk9o7ni2o+CNUO1IEpPDpNcX5kMGjPY2d5U2F21JssOrE9gdyeA
WYmROE1TZ0h61Y5QNSuC42zh2bxl5RnU9Yw9kA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
oIVzpSluI7daBxkOk2gHCozBGlbxG53WoEhOzUaurQiUeJP9/arWOJWk+fvz3PNZhGKqhMT34Elf
4CE16vrKhBto+aiBjmbTGqgpcZuAov0ThKrdb5D2RErj9L03MzOMQdBEb2OGyWHIaVcOR12TL/Pc
ppZorRLXpXsMO6OiQvQgS6gBpPLmoJ/4mFQU2y7Gq4fQ1w0mBb5WD4aOFS27kco9sWZg134eJyHh
g3WophY4AK3S6VNrjwfZ8V2EHcWlysmTyQhS/i6nISRdlQIyBBenPXI1qC3X2elRwJJ1rDBw4tSk
FPpZVv+Pg6wD1lxgePFMJlGymPGte/sHafK1og==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
flfR64NYycLIyauxCLn1wC38i1K4/yOEiIIS/pzPw5b4T8AQasCEhfXccXWd7XYD8tVTgjkiZlil
BY/FskgSGdAPW60ru4A65EEa7ULY+aPS1CSMAW6nANPgjVXgGu5AsFKiDjSfY+ibvvFHUmJ8Zmez
wEdjdaf1uPn8gwW70f2+rXV6O5zQnCdBG+tQ5cUZMYqSxcdKZEcd7uFDN1+GqykP0vqNVRZMAmZE
umrRSJg1a1YyLdwwKiD+UbAJWJ0KQNS+4RQTCOHtz8/EK1t1YnoCf5KBTTe57whtj0S+rfOK5HaB
upEqngWyR+h+SKSvfYHRQkIHJPKSCB9buGG6MQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 848)
`protect data_block
YMyHLUQgaBVuHU5qqaoSQzLuEbhPQqOqRouBzKGkWyWCfZOZn3HE5xgsrTuRHSlrw80B0XySOT4I
vau6gIkMK7IinnaqRWyERmJMszyF7GB/yltU1fSCQwVSwW/2SvXMhWlRldVpgrytC+MzghKpILy+
5+MmtsAQX5vMDWIXWVeX2+uS/5HMpE5kXr0IGT+EULvAXqY38+xOWq4nfmJBX376kWJF+9FRX+LV
pja2lIeQiZblzKpmuArAC4LzkzybxmC3ZUFsJmJ4g5KaqdOozXPKc0wi++qHTAr+uAH6bMhFwgFp
a/gkRAavKOCGFqm+PMoIYeD4wICZzuJa4Ajh2BMT7nU6BhvWOAQwinz4Yu12oPqWdY0ww5X9yPfG
YxZs6JAbL9XBqJ0vZcwy0K5pMUx3WQW2u4Xq/GgL1Glva+eG1j2Di3J4xeUh2jMklWMZ2z0384hH
Edvxl0fp8M5i0ydfvvV621PMlFpFj2ZZkjyn8YMQthPHtn995OJnU8lA/8J3Id93PTW8MOqAklWc
GmeI7UGn0j9gUEaTAaGDuLvYmLvFwH0cVvreMCePCrBnfynk/duHD2xm2Skz8fn10wyPARrt0XEf
jJDrWL2cQ4Jign6cGN/wPRlF6okV11vU263IMjkIamCJGHcuK/FXdnCxLt6XQsKamNPxG7n0XQOo
XrlcL0vWBGWO8dA3kPmwgHOFZDicAWcIEJ+t03+zsoSUzn/wJpKkaeX6BOfqlkCknsWry6KYz+Xx
irH+Bf0PHCeLD0Vx7LpGwdDvF20Y0auy7Dmo5m/roEwrJf9fwkXaEM7ybe13YL8Di/2pQgDBk7W2
+3MpCtNdM6dB8vmDkAbzoSzyUOI2AhHz47Ov7H3iTzR+tLpNM0LeXDqTgYKTe8VtRUNkfFLbbhOl
gpKEPh0WIf+yUS/m49L4tzSiSHe61dzDW/6oCU/8NCRpeUHIrSk72+pw9Giq5fNC1pHuAWq+UE7I
+qYbgueAh+Sz4w15YbfQ/pWxBRh1dozAxU2SaTnyyo2g+rhWSNWFIVKjBRetPnZxkX1FJGHKgicu
gopmwLq1DGI6iiPmHUHtH2bCEl3N8x19I8TLgZp7WvKCrNHCAHw/xmF8a+GcNB3Aw74=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xlaxis is
  port (
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xlaxis : entity is "dsp_stream_ip_xlaxis";
end design_1_dsp_stream_0_1_dsp_stream_ip_xlaxis;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xlaxis is
  signal xpm_fifo_axis_inst_n_18 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_19 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_20 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_21 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_23 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_24 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_25 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_26 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_27 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_28 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_29 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_30 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_31 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_32 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_33 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_34 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_37 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_38 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_39 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_40 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_41 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_42 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_43 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_44 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_45 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_46 : STD_LOGIC;
  signal xpm_fifo_axis_inst_n_49 : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_dbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_prog_empty_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_prog_full_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_sbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_axis_inst_rd_data_count_axis_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of xpm_fifo_axis_inst : label is 34;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of xpm_fifo_axis_inst : label is 34;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_fifo_axis_inst : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of xpm_fifo_axis_inst : label is 2;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_fifo_axis_inst : label is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_fifo_axis_inst : label is 0;
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of xpm_fifo_axis_inst : label is "16'b0001011100000111";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of xpm_fifo_axis_inst : label is "16'b0001011100000111";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of xpm_fifo_axis_inst : label is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of xpm_fifo_axis_inst : label is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of xpm_fifo_axis_inst : label is "1'b1";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of xpm_fifo_axis_inst : label is "warning";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of xpm_fifo_axis_inst : label is 256;
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_axis_inst : label is 0;
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of xpm_fifo_axis_inst : label is 8;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of xpm_fifo_axis_inst : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of xpm_fifo_axis_inst : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_axis_inst : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_axis_inst : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of xpm_fifo_axis_inst : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_fifo_axis_inst : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of xpm_fifo_axis_inst : label is 1;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of xpm_fifo_axis_inst : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_axis_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_axis_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_axis_inst : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of xpm_fifo_axis_inst : label is 16;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of xpm_fifo_axis_inst : label is 16;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of xpm_fifo_axis_inst : label is 32;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of xpm_fifo_axis_inst : label is 4;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of xpm_fifo_axis_inst : label is 28;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of xpm_fifo_axis_inst : label is 8;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of xpm_fifo_axis_inst : label is 20;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of xpm_fifo_axis_inst : label is 18;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of xpm_fifo_axis_inst : label is 4063;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of xpm_fifo_axis_inst : label is 33;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of xpm_fifo_axis_inst : label is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of xpm_fifo_axis_inst : label is 1707;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of xpm_fifo_axis_inst : label is 825700407;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_axis_inst : label is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_axis_inst : label is "TRUE";
begin
xpm_fifo_axis_inst: entity work.design_1_dsp_stream_0_1_xpm_fifo_axis
     port map (
      almost_empty_axis => xpm_fifo_axis_inst_n_49,
      almost_full_axis => xpm_fifo_axis_inst_n_46,
      dbiterr_axis => NLW_xpm_fifo_axis_inst_dbiterr_axis_UNCONNECTED,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tdest(3) => xpm_fifo_axis_inst_n_31,
      m_axis_tdest(2) => xpm_fifo_axis_inst_n_32,
      m_axis_tdest(1) => xpm_fifo_axis_inst_n_33,
      m_axis_tdest(0) => xpm_fifo_axis_inst_n_34,
      m_axis_tid(7) => xpm_fifo_axis_inst_n_23,
      m_axis_tid(6) => xpm_fifo_axis_inst_n_24,
      m_axis_tid(5) => xpm_fifo_axis_inst_n_25,
      m_axis_tid(4) => xpm_fifo_axis_inst_n_26,
      m_axis_tid(3) => xpm_fifo_axis_inst_n_27,
      m_axis_tid(2) => xpm_fifo_axis_inst_n_28,
      m_axis_tid(1) => xpm_fifo_axis_inst_n_29,
      m_axis_tid(0) => xpm_fifo_axis_inst_n_30,
      m_axis_tkeep(1) => xpm_fifo_axis_inst_n_20,
      m_axis_tkeep(0) => xpm_fifo_axis_inst_n_21,
      m_axis_tlast => m_axis_tlast(0),
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(1) => xpm_fifo_axis_inst_n_18,
      m_axis_tstrb(0) => xpm_fifo_axis_inst_n_19,
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid(0),
      prog_empty_axis => NLW_xpm_fifo_axis_inst_prog_empty_axis_UNCONNECTED,
      prog_full_axis => NLW_xpm_fifo_axis_inst_prog_full_axis_UNCONNECTED,
      rd_data_count_axis(0) => NLW_xpm_fifo_axis_inst_rd_data_count_axis_UNCONNECTED(0),
      s_aclk => clk,
      s_aresetn => '1',
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(1 downto 0) => B"00",
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready(0),
      s_axis_tstrb(1 downto 0) => B"00",
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid,
      sbiterr_axis => NLW_xpm_fifo_axis_inst_sbiterr_axis_UNCONNECTED,
      wr_data_count_axis(8) => xpm_fifo_axis_inst_n_37,
      wr_data_count_axis(7) => xpm_fifo_axis_inst_n_38,
      wr_data_count_axis(6) => xpm_fifo_axis_inst_n_39,
      wr_data_count_axis(5) => xpm_fifo_axis_inst_n_40,
      wr_data_count_axis(4) => xpm_fifo_axis_inst_n_41,
      wr_data_count_axis(3) => xpm_fifo_axis_inst_n_42,
      wr_data_count_axis(2) => xpm_fifo_axis_inst_n_43,
      wr_data_count_axis(1) => xpm_fifo_axis_inst_n_44,
      wr_data_count_axis(0) => xpm_fifo_axis_inst_n_45
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
j+cisgNr51kboBzSEDMqVtItc+GjGUiMNF0E04YxNeYXTtpqczXoHl7p3pBX3lPxGHPUBdZ6oYbA
uFzQSoAOvv3ANxN24NJ35g39Gushnh3bAhkIaggJwqirNk8uvbFei0Q37GZcy7DTONZHx9iSsnwg
43qcv84+v1Oqg1QlkK0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LvmfIuwVQiUSvu/SWE90Ii3gBrSlLLUK62Pe9Uo5lexkMeDgQfulU0pV4/6bexfxf29XSUIZb3c9
av2fcRcp1ZeyqEnW0ei/HP4UoYfgCSzAUmuehTopxqUP3M4kX2/ETc0gdNuIi6qDHquW7YY9QQGa
g5MTm81zI19+yvQdowrY7g+W1mLrHRcb8Ho+qe0uZMYO9K9DLpwNlhtSf0qufVmJGM+5COEyqb1U
lL+nfwveqOc0IWRRpPS42kC7OR6BTARi5c6dKCQl/a9fojTU0hW9itdcCGK5DL1CuzhnLB3Cw1Lc
UIHvmiN+LslcbwXadjp0wvd8yuh6HziY0Vfxsw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
sxpYAYC9AO3d/Qq5Dz0dcOejYw99+MiH0W395D6tyIroWG9T14T6E7ryw+s/by4tx97NytW6qUN3
NXZVsmgnxSKTeXfcn+ZXRsWNPcQGtCaIdh8TbBiHtUeZecWXJ0/iGORapfLQxNbHmGtiSkN1eYCn
C7QZMw6qZPNfuNyivRg=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E/GNyTiOpevKZa3+bbpJb0kDvoBk/eMnN/JT+ul7JFDogMwn8CpOobzq4ORZE40PqtaeX8shZ2Io
cJi8jjFyYeWd2nZtLZo0heKqX3v/pdf8QoQbxat3X7qE+EWjBbCn/ZFGg9zTrFFxwaHk42COVzlL
0j+PRabCWynZ5ILjyTP47frcmCN/iRKt0d+pvi/GA4UjFDtb6+9p1niifgkhCn1MkMBg8U/Y5knN
CVQ7z+g5SrUo/3bEiUXLkpBhMSliuE96gVp/dhIEh9H7jm8yTGyk0JzdtVTLaZLa+Lip0djJZLpb
UppZLdmVomSIk5FAqXrXZx6cyoWBJHtDlyJZkA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
hg0hZUmrq09eMOjEntvd+gf7Zd2U4BwDY1Jz7gQri0LZtchGB8Z8SRY7YjUyWlUFux+gzbhxtgxE
uXob+ZiD1GlC8r4A2zRmOzuSIMz5UnEhy5TMjR+8A23FUgB5H14Nk+8/ui0Zs/CqU3Odf3BBWOAg
zxnOh70mcUhtPTAIZ+EcN+1Ujtdp78bNTd2IQJcFIhDRt35kHTIgOpo8oDPU8cUgKH6HYVq0sF+B
1yu+k9PCMZikA3k51SJhEW/Qc39FpYPT9CKN0WwelzSM6CD2GrcLMAt1oh2PsLi9Pfz1zzfj+mED
XS3V2CvLYBAA5I2Zn5G1DKrCLW1s3QCGdjLFcQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZihOD8xT0OXV+vYQgVKC2OgNYw1KaLnWHAc+JKheEAvf+yg1M7C7urUi93p572HyJs7Y4xmmO7jH
ND7Tv3yag5/ovBwWsoZpyr5RiGqozyxd59WCmh1IY/4VIOP7O8XrKDP4OGGR4Yrc69eGX7icFD/q
q1Yri9lFsLwghmgnG5/5LI0ZMQuooogdTmG+J2E0ZDBWfT/UmG0W92Ul8I3gfcKlKOiouwG5y4Jp
nBDOfD0ITqlCH9MMIsDa+elFeLXvv2KVvemlQ6QmFkF7trsIsF7QEhsAEKVsCYQTNVAGTL0GQsfh
sg3wRbAMH9DIJaQxk+17Z2Yacz0Veyzzwk9ehw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HY3h60x+HFg/eOgHTI4UVm9DtPW6wqUKca7u8NGVkEwgcMgpHEWwLglcdrxdQNjcwm8OHot4ETKF
WKbgVoX+iDWvtyepO4qxoxeWXH2F1fmkO5TcCS5lfsbj510UC680iv6lj8Cyu8iiRTaXR/o4FoM0
fC0fK1I3vPhOTQ5CR3OgRKAFDdX+d/qZ444LSpBM+tvjaaKR1BRRMkaGxO58SlkZRhBySU0nhAQy
dLhrkimMDrmmj/sej98ps6eMFspr8+5pUYJg+vWp++Sm0zHT5N6L1+n+oCGTjgEAgNvxvIgPv6O6
O614qs4bb0unrlrWFTLtb8eoiQe9RHpwGopwlw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
UwlS0UvncccxxkW4NnEPYSb0LG5K+diX5o0hrXyga8q/gD9ab0W8hccMe2HgIOrJ0coq4cXubRll
ZpfwAORkvZtLjLAkjJkvmwum68290Kk65/t/Zns9LY543if5KVhDzDg632T/2/g+S4iACupycWXY
cZ6s39/F2p//kX1YHKh6qPf3qkoP25aHoXQhlWkBAIGe3uIyPYPXstbeMaMeWMmKTh0rnBbtpr8y
0Qg1S5j9DIzW9sNl57338zbHnQbUbJzw5eAHPIYReJLbGLoFizMzbCeVUf9qQcME/zhozlHMqIYN
Mafo4cDvvsMIs8ppl+EWkfmPwMyBiDor8XdnJwhL6PXvmC52OK25D9SarDCqe+sqUKRPLYOzZm9s
mRp4pTSLWqKlA4Kmt9Om1GAjesqP6fBmfP1NGnjIrnslWz4gi45DlpUHMRKmIlfMjMLoDcxkJyie
bdt0EiJv3tUHW+hzM1osET2y5r7UP2tXX1I0KcbPrsM8mAjAbCi8yC8b

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
X0dvE3L7dLQCMLonwloQgw5itpWmwVthmLjXvNCwkkUnrWRnIFGWcVV+7J059QS+MH4TlngLY35K
jozGLlOeR74+bBTejoxLYWg2EOfziRkOnWV2uSeOTEyEL+LD9sSATD6G+de3w3tolkltsugp6Asm
4+ouB1syLSHEJDe3i6xdrhgn2gjStQgaIBrGx67K6P9M/ZpIE3tJpGwQpXAQW6mcrqXnyP8s9OOR
lKGNPgaQFWDxxHZY806A4MaHpWk9o7ni2o+CNUO1IEpPDpNcX5kMGjPY2d5U2F21JssOrE9gdyeA
WYmROE1TZ0h61Y5QNSuC42zh2bxl5RnU9Yw9kA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
oIVzpSluI7daBxkOk2gHCozBGlbxG53WoEhOzUaurQiUeJP9/arWOJWk+fvz3PNZhGKqhMT34Elf
4CE16vrKhBto+aiBjmbTGqgpcZuAov0ThKrdb5D2RErj9L03MzOMQdBEb2OGyWHIaVcOR12TL/Pc
ppZorRLXpXsMO6OiQvQgS6gBpPLmoJ/4mFQU2y7Gq4fQ1w0mBb5WD4aOFS27kco9sWZg134eJyHh
g3WophY4AK3S6VNrjwfZ8V2EHcWlysmTyQhS/i6nISRdlQIyBBenPXI1qC3X2elRwJJ1rDBw4tSk
FPpZVv+Pg6wD1lxgePFMJlGymPGte/sHafK1og==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
flfR64NYycLIyauxCLn1wC38i1K4/yOEiIIS/pzPw5b4T8AQasCEhfXccXWd7XYD8tVTgjkiZlil
BY/FskgSGdAPW60ru4A65EEa7ULY+aPS1CSMAW6nANPgjVXgGu5AsFKiDjSfY+ibvvFHUmJ8Zmez
wEdjdaf1uPn8gwW70f2+rXV6O5zQnCdBG+tQ5cUZMYqSxcdKZEcd7uFDN1+GqykP0vqNVRZMAmZE
umrRSJg1a1YyLdwwKiD+UbAJWJ0KQNS+4RQTCOHtz8/EK1t1YnoCf5KBTTe57whtj0S+rfOK5HaB
upEqngWyR+h+SKSvfYHRQkIHJPKSCB9buGG6MQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6464)
`protect data_block
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
a4UyCAhy30fXGyTgI2McC+J9jB07yPU=
`protect end_protected
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
P2zhX82uyBEVdF5BF2rjoPUFIfjipNZhYEpATLKcgiS9EGXt6qBbOMX2jVOCy0XDwb5TVkE1nG7X
XhCGxKErRU9jPoY7WV0pdI1wIayHDc8Rs74bj3N0mzWMplnVCaSPbBpIC4LYfqpVTVio67s5iy3E
w6sva82hbE3cZ5p/rRc=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ATCqDjeJlE3rd1lUTRMTvM13wZLySdeY6qhbV5igkPcemUzykIjBbnJsu6APb1ENNlZoK/EbAyI9
qN25AMJVtn283z16KSVpxvftA/Tl0lUlk9wO55eVk5wKgvB1cSVywiEOogV7vDrt3hiX35a7Svds
AV9xqvsQsA2wV5gXrBdHbfVk5TrReH9zaojTNW8dt8mGUB8+yv1X/gfGVT6v6NabkmJviHj8hTNq
FZ4N5hZKo50t+Imqbe2o6y27+dlrdck69OyARANqpqF01fu72w0QZAXYJ90ATJRH7ABM8M/5UFse
AEFeVYp2M818KdaSVTFsSByUaYJXCdkuxJUM9g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
bRU/WKwbjvfClA011r3CVZ1YUizTPsik1AOc+TikBCWuqg1UqofZgbFuqULMNnL7MXEAzuP+FXgr
VqVrQpu/CGGtKAfHwc3t//w4acyK5GTpXOAI1wgkigzOEm4yg4vKgPNXC610E4aKK/j4dyuUaDR1
zB3hAaf2q33Sz5IQmPU=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UgFJO2X6yZZkXNbvv3vUKymwKnlqFgpA384zFnWoT6HXDt6Iq088pkqIqpin5DhL9xB5RsuqnKGH
1cx2mxvmAsdXtgJcifR+VLXpF/l1p5GswXHVa4EQ6SpNznBhHxXh/Z9Ppb8M8EQqocBwed2dOc74
dmBWx9KElaVqaqF+H801o3N9wlIvJOZpHMW5CxuAyPwCfPAbDwyafCK4aBeFM+ZP8YarLD35U5vZ
yL6YRHcKJPlLPF3red34Gw4W7ZstV3K2TPyMWkr2qc9QYj2Nf5ftVZYbLPxBYVTro7Nl4lCUIPES
ONu8dF9MdgfLI7lT8lq/l1iUAez7879SWhtp9Q==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OoYBKlg7sap/0EsIV1swjKUenTJcWreOpMa9MzKYwYAEYCCz7DjDVq3RT5kxtS2wTNfmLZaVB7+V
uu2GdOTjOmSwdY+FFt1h2XrOK1cMm13IZY5/pVznUrUKKHHf2GDT40ita0dwLiINXv4HdgC5bVhM
hiksIRqpsQ0LG7i/2cWLxEgYFJA859AGtE1Upcm+6jxP2EenOxQZu0UcDGCOlP6CXggaDD2i7Yw/
0RihXovM0AoqZA/zgFW+PCpMoOAAj62HZgpnF2hDwVgnLZ3WbYh345T8hrtoAqb3t4WxmEjDCp2R
KPYZYBvaMaBaiHE5iBvQjrpmfI8dJWe4J40jYw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Gx4eTayjueg5J6NG9oGeMhEPuV5NeFJH2DVuyrKF9JKQx8buMiHh8wVPYUoOwMilvyPOIXUcaBQ9
FpU4pPlYa1vZpL5ngIpVugCvQfAtzCuNESRWvRmPubvd01w8PHV+Q2LaWQeFcoLTzFMTFN03aPM7
5TZfp+L/ooPM84memH86HsypSrgkza6VSz0/Z5Ns5oJ8nV3MLuoNQOLd8IMxuOqKGSLzb1ZQdrLu
iFCyMbQwcldt68vGW2EkN98CUyQK8qXwgMJVMuCaP9/oILpn1rBbN2eEh/tmpgtPeoSvA0cUldNF
IcGb+KNtMVKLWHv0efcrV5ldY6MEfo4g4qBbIA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
VFXYmS0ReAB+6/UTbJULVtr1PCaPeCYPVAdUlGeIdUeW9/+rumdhhwgNy2VoKVQC2S8vLxoX2B9l
jgRTQcufyHScGKTHNl3RWvyypLEIoJcoasZWqHzS0ydGSUwa5HoDqsm+gTKcN8Lea4jRdUehj9eR
l7Gx/X2DwwAiIlLjg+4EMv7Irp43V7CNXGFNAfsC1np22kZo7+UqOLYq9zlFKzLw0a6zw4zKDPJi
44kLvxg5Z74zzhtrEENnmXju1z+tlpjS+Qm5AM3C5o3FPYq+hsvO4JH7uDBYjZxw++NDivipcqj2
R7zMiRKY45jyIxh8orFhpXM8HHcVfl7ZnzIXEQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
dOa3TgVfay2fU+u/a/KY/hvZhMg1HC8R8B0CPA+YkM9Sh4VIBOmEl0slV3txZIIjIVmwQqUyQFPR
c9L3JWfFo5uo7SHI/NYzEw5kVOhP9C64NJfcAWneItu6ZpFBpsCQoOA13wA9LRKxOl6QXt4qhQeJ
btAg9fTKOapaMMuzEfTwJY9of0XC5QiXH0vtBSIsNkgldU/qdMeCckChCdbv0YDeJ96FpJEeEo2A
Z0Tjo7OVc0akihtesCKsdWotZLDWBCy/WC3/0jVxCfLD8WPFJZch41aZ382qdLlx/+be6K9JCpBQ
Zcrz/qJep1crHZewcLRZubaOPXx3IVElwjS4xkQbMPjoU2iSo9sCLGK+tj7D0rKUcjijLHHZ7LyM
ZaqVzGGBFYaPkwOWkJneOrMGDhv6ToIuNZvp9CR7oTPOOujHtoM+WzKK0KYToAdZuC3wMbxHQpM+
FAOSJ85yT4fOkvO051b247di0eZ2+bcVc4x1/G5rY7mjl5T4uoWiRK8f

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZckpUFeVVx9iLDnjGxdD/gZkKrAvyHBZklEmeoQIleh9f6KZXrh23OJR3urQB0LqWf7FGxDR05oT
nGlPYV0u9NJ/f8Iw5mJlq9ll0GmDLqJKUrv73p286GQmWMf5vnV/NejEqQtGxgTqjGjePbhx/a7W
p0JDEhrOFhBR3oaSLrGIFV4TJNWcy9+KwpNXpqudxr/77gX0WTvdox9kM8x9lUMVpSxtaQTyLJxy
v+mraCjTm92jcPvWO1wG3miaHlrg4ZVsvfSkHMz3c6ZgQMHm/vmrRILcxDEjG8XF7Q8PqIFXxBP8
iVQaTS4/i5ThaA3fitsBdX9SBjhH3/j9vb+qAQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
sMq7mC29pD/8oTEvyIFQnG4QbCbHnJa0f/5p35ZaRrQlBXntpBsE2KeOjpPSle/BxexnCoyRhE5z
R8eqlJqd0mdDRLFPcafFa4Yogwl5gpS7tNTA1L2oQU7VTd8hTFm1JcFYOc5WCWaaGH6zCBtODfbZ
MRz4C3OpfQO06AaMhw2kLwwb6BLavcxqXUPk7eHPpZzx9t7TiiCVp/anVnXXee9RTqXEjNNnTMJg
H9bUbdN2of38ywrNWhixjSD1fcoSxTN3MI1jc0e8azTDkk58AFOQjkw6g5twk6WXHJw5N4n/3n9n
+19olFZFgOpFry/mkncJUL7rLTclI7ksIId1iQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
YcaJzOMzgMwFRwFA53PoKcbgXwEj3na64lw8rbkPIEr1iki1eHcr/DTK8IzFAhMgViOyQ1laYJS3
7Jg7Ot7tTfaQXJBT1yEhRofeI2udj29HEVHyYvhLPIjmNhLRbxls35EmRG6NAWYm+7IoPIri0ymQ
g/83PIyew58zRsKE2yP84d8u5LaiFmjGN97a5/wHwkpuIoHueT/ZCBRT/6BeV9pIb4vN8hM261mU
eOVSjWajLoCUbVcmKnhc2UV684b9ifyKGrXJQ7htRlnkjG1JRuLUr2RNOlTqgp0nEbAsmtUrbbcs
wJQSVrUy/jCYbQn9YY9MNDE/b8U/DNhtoPWVCQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6144)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0 : entity is "dsp_stream_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0 : entity is "dsp_stream_ip_c_counter_binary_v12_0_i0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0 : entity is "c_counter_binary_v12_0_19,Vivado 2024.1";
end design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0 is
  signal NLW_U0_THRESH0_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of U0 : label is 0;
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 1;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 5;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynquplus";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute c_count_by : string;
  attribute c_count_by of U0 : label is "1";
  attribute c_count_mode : integer;
  attribute c_count_mode of U0 : label is 0;
  attribute c_count_to : string;
  attribute c_count_to of U0 : label is "1";
  attribute c_has_load : integer;
  attribute c_has_load of U0 : label is 0;
  attribute c_has_thresh0 : integer;
  attribute c_has_thresh0 of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_load_low : integer;
  attribute c_load_low of U0 : label is 0;
  attribute c_restrict_count : integer;
  attribute c_restrict_count of U0 : label is 0;
  attribute c_thresh0_value : string;
  attribute c_thresh0_value of U0 : label is "1";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of SINIT : signal is "xilinx.com:signal:data:1.0 sinit_intf DATA";
  attribute x_interface_parameter of SINIT : signal is "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
begin
U0: entity work.design_1_dsp_stream_0_1_c_counter_binary_v12_0_19
     port map (
      CE => CE,
      CLK => CLK,
      L(4 downto 0) => B"00000",
      LOAD => '0',
      Q(4 downto 0) => Q(4 downto 0),
      SCLR => '0',
      SINIT => SINIT,
      SSET => '0',
      THRESH0 => NLW_U0_THRESH0_UNCONNECTED,
      UP => '1'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_xlcounter_limit is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_xlcounter_limit : entity is "dsp_stream_ip_xlcounter_limit";
end design_1_dsp_stream_0_1_dsp_stream_ip_xlcounter_limit;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_xlcounter_limit is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SINIT : STD_LOGIC;
  signal \comp0.core_instance0_i_10_n_0\ : STD_LOGIC;
  signal \comp0.core_instance0_i_11_n_0\ : STD_LOGIC;
  signal \comp0.core_instance0_i_3_n_0\ : STD_LOGIC;
  signal \comp0.core_instance0_i_4_n_0\ : STD_LOGIC;
  signal \comp0.core_instance0_i_5_n_0\ : STD_LOGIC;
  signal \comp0.core_instance0_i_7_n_0\ : STD_LOGIC;
  signal \comp0.core_instance0_i_8_n_0\ : STD_LOGIC;
  signal \comp0.core_instance0_i_9_n_0\ : STD_LOGIC;
  signal convert4_dout_net : STD_LOGIC;
  signal equals : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \comp0.core_instance0\ : label is "dsp_stream_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \comp0.core_instance0\ : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \comp0.core_instance0\ : label is "c_counter_binary_v12_0_19,Vivado 2024.1";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\comp0.core_instance0\: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_c_counter_binary_v12_0_i0
     port map (
      CE => convert4_dout_net,
      CLK => clk,
      Q(4 downto 0) => \^q\(4 downto 0),
      SINIT => SINIT
    );
\comp0.core_instance0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \comp0.core_instance0_i_3_n_0\,
      I2 => \comp0.core_instance0_i_4_n_0\,
      I3 => \comp0.core_instance0_i_5_n_0\,
      O => convert4_dout_net
    );
\comp0.core_instance0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(18),
      O => \comp0.core_instance0_i_10_n_0\
    );
\comp0.core_instance0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(24),
      I2 => s_axis_tdata(21),
      I3 => s_axis_tdata(22),
      O => \comp0.core_instance0_i_11_n_0\
    );
\comp0.core_instance0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => equals,
      I1 => \comp0.core_instance0_i_5_n_0\,
      I2 => \comp0.core_instance0_i_4_n_0\,
      I3 => \comp0.core_instance0_i_3_n_0\,
      I4 => s_axis_tdata(0),
      O => SINIT
    );
\comp0.core_instance0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(13),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(15),
      I4 => \comp0.core_instance0_i_7_n_0\,
      O => \comp0.core_instance0_i_3_n_0\
    );
\comp0.core_instance0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(7),
      I4 => \comp0.core_instance0_i_8_n_0\,
      O => \comp0.core_instance0_i_4_n_0\
    );
\comp0.core_instance0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \comp0.core_instance0_i_9_n_0\,
      I1 => s_axis_tdata(30),
      I2 => s_axis_tdata(29),
      I3 => s_axis_tdata(31),
      I4 => \comp0.core_instance0_i_10_n_0\,
      I5 => \comp0.core_instance0_i_11_n_0\,
      O => \comp0.core_instance0_i_5_n_0\
    );
\comp0.core_instance0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(1),
      O => equals
    );
\comp0.core_instance0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(10),
      O => \comp0.core_instance0_i_7_n_0\
    );
\comp0.core_instance0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(2),
      O => \comp0.core_instance0_i_8_n_0\
    );
\comp0.core_instance0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => s_axis_tdata(28),
      I2 => s_axis_tdata(25),
      I3 => s_axis_tdata(26),
      O => \comp0.core_instance0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip_struct is
  port (
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip_struct : entity is "dsp_stream_ip_struct";
end design_1_dsp_stream_0_1_dsp_stream_ip_struct;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip_struct is
  signal convert1_dout_net : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal counter_op_net : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal delay2_q_net : STD_LOGIC;
  signal delay3_q_net : STD_LOGIC;
  signal delay4_q_net : STD_LOGIC;
  signal delay_q_net : STD_LOGIC;
  signal rom_data_net : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rom_n_16 : STD_LOGIC;
begin
axi_fifo: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xlaxis
     port map (
      clk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready => delay_q_net,
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(15) => rom_data_net(15),
      s_axis_tdata(14 downto 1) => convert1_dout_net(14 downto 1),
      s_axis_tdata(0) => rom_n_16,
      s_axis_tlast => delay3_q_net,
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tuser(0) => delay4_q_net,
      s_axis_tvalid => delay2_q_net
    );
convert1: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xlconvert
     port map (
      douta(15 downto 0) => rom_data_net(15 downto 0),
      s_axis_tdata(13 downto 0) => convert1_dout_net(14 downto 1)
    );
counter: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xlcounter_limit
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0)
    );
delay: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xldelay
     port map (
      clk => clk,
      m_axis_tready => delay_q_net,
      \reg_array[0].fde_used.u2\(0) => m_axis_tready(0)
    );
delay2: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_0
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2\(0) => s_axis_tvalid(0),
      s_axis_tvalid => delay2_q_net
    );
delay3: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_1
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2\(0) => s_axis_tlast(0),
      s_axis_tlast => delay3_q_net
    );
delay4: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xldelay_2
     port map (
      clk => clk,
      \reg_array[0].fde_used.u2\(0) => s_axis_tuser(0),
      s_axis_tuser(0) => delay4_q_net
    );
rom: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_xlsprom
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      douta(15 downto 0) => rom_data_net(15 downto 0),
      s_axis_tdata(0) => rom_n_16
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1_dsp_stream_ip is
  port (
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dsp_stream_0_1_dsp_stream_ip : entity is "dsp_stream_ip";
end design_1_dsp_stream_0_1_dsp_stream_ip;

architecture STRUCTURE of design_1_dsp_stream_0_1_dsp_stream_ip is
begin
dsp_stream_ip_struct: entity work.design_1_dsp_stream_0_1_dsp_stream_ip_struct
     port map (
      clk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast(0) => s_axis_tlast(0),
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dsp_stream_0_1 is
  port (
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dsp_stream_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dsp_stream_0_1 : entity is "design_1_dsp_stream_0_1,dsp_stream_ip,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_dsp_stream_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_dsp_stream_0_1 : entity is "sysgen";
  attribute x_core_info : string;
  attribute x_core_info of design_1_dsp_stream_0_1 : entity is "dsp_stream_ip,Vivado 2024.1";
end design_1_dsp_stream_0_1;

architecture STRUCTURE of design_1_dsp_stream_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_parameter of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
begin
U0: entity work.design_1_dsp_stream_0_1_dsp_stream_ip
     port map (
      clk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast(0) => s_axis_tlast(0),
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
