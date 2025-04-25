-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Mar  5 17:02:25 2025
-- Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_ram_re_0_2 -prefix
--               design_1_ram_re_0_2_ design_1_ram_re_0_1_sim_netlist.vhdl
-- Design      : design_1_ram_re_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_convert_func_call_ram_re_ip_xlconvert is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end design_1_ram_re_0_2_convert_func_call_ram_re_ip_xlconvert;

architecture STRUCTURE of design_1_ram_re_0_2_convert_func_call_ram_re_ip_xlconvert is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair21";
begin
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(9),
      O => m_axis_tdata(9)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => douta(14),
      I1 => douta(15),
      I2 => douta(8),
      O => m_axis_tdata(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_ram_re_ip_axi_lite_interface_verilog is
  port (
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    ram_re_ip_s_axi_bvalid : out STD_LOGIC;
    ram_re_ip_s_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_re_ip_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    ram_re_ip_s_axi_awvalid : in STD_LOGIC;
    ram_re_ip_s_axi_wvalid : in STD_LOGIC;
    ram_re_ip_s_axi_bready : in STD_LOGIC;
    ram_re_ip_s_axi_arvalid : in STD_LOGIC;
    ram_re_ip_s_axi_rready : in STD_LOGIC;
    ram_re_ip_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_re_ip_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_re_ip_aresetn : in STD_LOGIC
  );
end design_1_ram_re_0_2_ram_re_ip_axi_lite_interface_verilog;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip_axi_lite_interface_verilog is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^ram_re_ip_s_axi_bvalid\ : STD_LOGIC;
  signal \^ram_re_ip_s_axi_rvalid\ : STD_LOGIC;
  signal slv_reg_array1 : STD_LOGIC;
  signal \slv_reg_array[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_array_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg_array[0][10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg_array[0][11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg_array[0][12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg_array[0][13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg_array[0][14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg_array[0][15]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg_array[0][16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg_array[0][17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg_array[0][18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg_array[0][19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg_array[0][20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg_array[0][21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg_array[0][22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg_array[0][23]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg_array[0][24]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg_array[0][25]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg_array[0][26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg_array[0][27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg_array[0][28]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg_array[0][29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg_array[0][2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg_array[0][30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg_array[0][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg_array[0][3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg_array[0][4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg_array[0][5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg_array[0][6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg_array[0][7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg_array[0][8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg_array[0][9]_i_1\ : label is "soft_lutpair13";
begin
  D(0) <= \^d\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  ram_re_ip_s_axi_bvalid <= \^ram_re_ip_s_axi_bvalid\;
  ram_re_ip_s_axi_rvalid <= \^ram_re_ip_s_axi_rvalid\;
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ram_re_ip_s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => slv_reg_array1
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_re_ip_aresetn,
      O => slv_reg_array1
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ram_re_ip_s_axi_awvalid,
      I1 => ram_re_ip_s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => slv_reg_array1
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => ram_re_ip_s_axi_awvalid,
      I1 => ram_re_ip_s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => ram_re_ip_s_axi_bready,
      I5 => \^ram_re_ip_s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^ram_re_ip_s_axi_bvalid\,
      R => slv_reg_array1
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \^d\(0),
      Q => ram_re_ip_s_axi_rdata(0),
      R => slv_reg_array1
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(10),
      Q => ram_re_ip_s_axi_rdata(10),
      R => slv_reg_array1
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(11),
      Q => ram_re_ip_s_axi_rdata(11),
      R => slv_reg_array1
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(12),
      Q => ram_re_ip_s_axi_rdata(12),
      R => slv_reg_array1
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(13),
      Q => ram_re_ip_s_axi_rdata(13),
      R => slv_reg_array1
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(14),
      Q => ram_re_ip_s_axi_rdata(14),
      R => slv_reg_array1
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(15),
      Q => ram_re_ip_s_axi_rdata(15),
      R => slv_reg_array1
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(16),
      Q => ram_re_ip_s_axi_rdata(16),
      R => slv_reg_array1
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(17),
      Q => ram_re_ip_s_axi_rdata(17),
      R => slv_reg_array1
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(18),
      Q => ram_re_ip_s_axi_rdata(18),
      R => slv_reg_array1
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(19),
      Q => ram_re_ip_s_axi_rdata(19),
      R => slv_reg_array1
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(1),
      Q => ram_re_ip_s_axi_rdata(1),
      R => slv_reg_array1
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(20),
      Q => ram_re_ip_s_axi_rdata(20),
      R => slv_reg_array1
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(21),
      Q => ram_re_ip_s_axi_rdata(21),
      R => slv_reg_array1
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(22),
      Q => ram_re_ip_s_axi_rdata(22),
      R => slv_reg_array1
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(23),
      Q => ram_re_ip_s_axi_rdata(23),
      R => slv_reg_array1
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(24),
      Q => ram_re_ip_s_axi_rdata(24),
      R => slv_reg_array1
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(25),
      Q => ram_re_ip_s_axi_rdata(25),
      R => slv_reg_array1
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(26),
      Q => ram_re_ip_s_axi_rdata(26),
      R => slv_reg_array1
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(27),
      Q => ram_re_ip_s_axi_rdata(27),
      R => slv_reg_array1
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(28),
      Q => ram_re_ip_s_axi_rdata(28),
      R => slv_reg_array1
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(29),
      Q => ram_re_ip_s_axi_rdata(29),
      R => slv_reg_array1
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(2),
      Q => ram_re_ip_s_axi_rdata(2),
      R => slv_reg_array1
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(30),
      Q => ram_re_ip_s_axi_rdata(30),
      R => slv_reg_array1
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(31),
      Q => ram_re_ip_s_axi_rdata(31),
      R => slv_reg_array1
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(3),
      Q => ram_re_ip_s_axi_rdata(3),
      R => slv_reg_array1
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(4),
      Q => ram_re_ip_s_axi_rdata(4),
      R => slv_reg_array1
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(5),
      Q => ram_re_ip_s_axi_rdata(5),
      R => slv_reg_array1
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(6),
      Q => ram_re_ip_s_axi_rdata(6),
      R => slv_reg_array1
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(7),
      Q => ram_re_ip_s_axi_rdata(7),
      R => slv_reg_array1
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(8),
      Q => ram_re_ip_s_axi_rdata(8),
      R => slv_reg_array1
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slv_reg_rden__0\,
      D => \slv_reg_array_reg[0]\(9),
      Q => ram_re_ip_s_axi_rdata(9),
      R => slv_reg_array1
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => ram_re_ip_s_axi_arvalid,
      I2 => ram_re_ip_s_axi_rready,
      I3 => \^ram_re_ip_s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^ram_re_ip_s_axi_rvalid\,
      R => slv_reg_array1
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ram_re_ip_s_axi_awvalid,
      I1 => ram_re_ip_s_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => slv_reg_array1
    );
\slv_reg_array[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF008000"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(0),
      I1 => ram_re_ip_s_axi_wstrb(0),
      I2 => \slv_reg_wren__0\,
      I3 => ram_re_ip_aresetn,
      I4 => \^d\(0),
      O => \slv_reg_array[0][0]_i_1_n_0\
    );
\slv_reg_array[0][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => ram_re_ip_s_axi_awvalid,
      I3 => ram_re_ip_s_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg_array[0][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(10),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][10]_i_1_n_0\
    );
\slv_reg_array[0][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(11),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][11]_i_1_n_0\
    );
\slv_reg_array[0][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(12),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][12]_i_1_n_0\
    );
\slv_reg_array[0][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(13),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][13]_i_1_n_0\
    );
\slv_reg_array[0][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(14),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][14]_i_1_n_0\
    );
\slv_reg_array[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ram_re_ip_s_axi_wstrb(1),
      I1 => ram_re_ip_aresetn,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => ram_re_ip_s_axi_awvalid,
      I5 => ram_re_ip_s_axi_wvalid,
      O => p_0_in(15)
    );
\slv_reg_array[0][15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(15),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][15]_i_2_n_0\
    );
\slv_reg_array[0][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(16),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][16]_i_1_n_0\
    );
\slv_reg_array[0][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(17),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][17]_i_1_n_0\
    );
\slv_reg_array[0][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(18),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][18]_i_1_n_0\
    );
\slv_reg_array[0][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(19),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][19]_i_1_n_0\
    );
\slv_reg_array[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(1),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][1]_i_1_n_0\
    );
\slv_reg_array[0][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(20),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][20]_i_1_n_0\
    );
\slv_reg_array[0][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(21),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][21]_i_1_n_0\
    );
\slv_reg_array[0][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(22),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][22]_i_1_n_0\
    );
\slv_reg_array[0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ram_re_ip_s_axi_wstrb(2),
      I1 => ram_re_ip_aresetn,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => ram_re_ip_s_axi_awvalid,
      I5 => ram_re_ip_s_axi_wvalid,
      O => p_0_in(23)
    );
\slv_reg_array[0][23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(23),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][23]_i_2_n_0\
    );
\slv_reg_array[0][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(24),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][24]_i_1_n_0\
    );
\slv_reg_array[0][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(25),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][25]_i_1_n_0\
    );
\slv_reg_array[0][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(26),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][26]_i_1_n_0\
    );
\slv_reg_array[0][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(27),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][27]_i_1_n_0\
    );
\slv_reg_array[0][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(28),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][28]_i_1_n_0\
    );
\slv_reg_array[0][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(29),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][29]_i_1_n_0\
    );
\slv_reg_array[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(2),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][2]_i_1_n_0\
    );
\slv_reg_array[0][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(30),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][30]_i_1_n_0\
    );
\slv_reg_array[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ram_re_ip_s_axi_wstrb(3),
      I1 => ram_re_ip_aresetn,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => ram_re_ip_s_axi_awvalid,
      I5 => ram_re_ip_s_axi_wvalid,
      O => p_0_in(31)
    );
\slv_reg_array[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(31),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][31]_i_2_n_0\
    );
\slv_reg_array[0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(3),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][3]_i_1_n_0\
    );
\slv_reg_array[0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(4),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][4]_i_1_n_0\
    );
\slv_reg_array[0][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(5),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][5]_i_1_n_0\
    );
\slv_reg_array[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(6),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][6]_i_1_n_0\
    );
\slv_reg_array[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ram_re_ip_s_axi_wstrb(0),
      I1 => ram_re_ip_aresetn,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => ram_re_ip_s_axi_awvalid,
      I5 => ram_re_ip_s_axi_wvalid,
      O => p_0_in(7)
    );
\slv_reg_array[0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(7),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][7]_i_2_n_0\
    );
\slv_reg_array[0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(8),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][8]_i_1_n_0\
    );
\slv_reg_array[0][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ram_re_ip_s_axi_wdata(9),
      I1 => \slv_reg_wren__0\,
      O => \slv_reg_array[0][9]_i_1_n_0\
    );
\slv_reg_array_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \slv_reg_array[0][0]_i_1_n_0\,
      Q => \^d\(0),
      R => '0'
    );
\slv_reg_array_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][10]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(10),
      R => '0'
    );
\slv_reg_array_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][11]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(11),
      R => '0'
    );
\slv_reg_array_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][12]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(12),
      R => '0'
    );
\slv_reg_array_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][13]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(13),
      R => '0'
    );
\slv_reg_array_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][14]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(14),
      R => '0'
    );
\slv_reg_array_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][15]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]\(15),
      R => '0'
    );
\slv_reg_array_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][16]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(16),
      R => '0'
    );
\slv_reg_array_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][17]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(17),
      R => '0'
    );
\slv_reg_array_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][18]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(18),
      R => '0'
    );
\slv_reg_array_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][19]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(19),
      R => '0'
    );
\slv_reg_array_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(7),
      D => \slv_reg_array[0][1]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(1),
      R => '0'
    );
\slv_reg_array_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][20]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(20),
      R => '0'
    );
\slv_reg_array_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][21]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(21),
      R => '0'
    );
\slv_reg_array_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][22]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(22),
      R => '0'
    );
\slv_reg_array_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(23),
      D => \slv_reg_array[0][23]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]\(23),
      R => '0'
    );
\slv_reg_array_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][24]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(24),
      R => '0'
    );
\slv_reg_array_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][25]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(25),
      R => '0'
    );
\slv_reg_array_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][26]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(26),
      R => '0'
    );
\slv_reg_array_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][27]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(27),
      R => '0'
    );
\slv_reg_array_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][28]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(28),
      R => '0'
    );
\slv_reg_array_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][29]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(29),
      R => '0'
    );
\slv_reg_array_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(7),
      D => \slv_reg_array[0][2]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(2),
      R => '0'
    );
\slv_reg_array_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][30]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(30),
      R => '0'
    );
\slv_reg_array_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(31),
      D => \slv_reg_array[0][31]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]\(31),
      R => '0'
    );
\slv_reg_array_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(7),
      D => \slv_reg_array[0][3]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(3),
      R => '0'
    );
\slv_reg_array_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(7),
      D => \slv_reg_array[0][4]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(4),
      R => '0'
    );
\slv_reg_array_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(7),
      D => \slv_reg_array[0][5]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(5),
      R => '0'
    );
\slv_reg_array_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(7),
      D => \slv_reg_array[0][6]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(6),
      R => '0'
    );
\slv_reg_array_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(7),
      D => \slv_reg_array[0][7]_i_2_n_0\,
      Q => \slv_reg_array_reg[0]\(7),
      R => '0'
    );
\slv_reg_array_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][8]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(8),
      R => '0'
    );
\slv_reg_array_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => \slv_reg_array[0][9]_i_1_n_0\,
      Q => \slv_reg_array_reg[0]\(9),
      R => '0'
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => ram_re_ip_s_axi_arvalid,
      I1 => \^ram_re_ip_s_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_sysgen_relational_7b581d1b32 is
  port (
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end design_1_ram_re_0_2_sysgen_relational_7b581d1b32;

architecture STRUCTURE of design_1_ram_re_0_2_sysgen_relational_7b581d1b32 is
  signal cast : STD_LOGIC;
begin
\op_mem_45_22_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cast,
      Q => m_axis_tlast(0),
      R => '0'
    );
result_22_3_rel: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(4),
      I4 => Q(3),
      O => cast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_xpm_memory_base is
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
  attribute ADDR_WIDTH_A of design_1_ram_re_0_2_xpm_memory_base : entity is 5;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_ram_re_0_2_xpm_memory_base : entity is 5;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of design_1_ram_re_0_2_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of design_1_ram_re_0_2_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_ram_re_0_2_xpm_memory_base : entity is "xpm_50d221_vivado.mem";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_ram_re_0_2_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of design_1_ram_re_0_2_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_ram_re_0_2_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_ram_re_0_2_xpm_memory_base : entity is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_ram_re_0_2_xpm_memory_base : entity is 3;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_ram_re_0_2_xpm_memory_base : entity is 32;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_ram_re_0_2_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_ram_re_0_2_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_ram_re_0_2_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_ram_re_0_2_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_ram_re_0_2_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_ram_re_0_2_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_ram_re_0_2_xpm_memory_base : entity is 5;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of design_1_ram_re_0_2_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_ram_re_0_2_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_ram_re_0_2_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of design_1_ram_re_0_2_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of design_1_ram_re_0_2_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_ram_re_0_2_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of design_1_ram_re_0_2_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_ram_re_0_2_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_ram_re_0_2_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of design_1_ram_re_0_2_xpm_memory_base : entity is 16;
end design_1_ram_re_0_2_xpm_memory_base;

architecture STRUCTURE of design_1_ram_re_0_2_xpm_memory_base is
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
  attribute RTL_RAM_NAME of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is "inst/ram_re_ip_struct/rom/xpm_memory_sprom_inst/xpm_memory_base_inst/gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg";
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
      INIT_00 => X"CC39C47FC081C081C47FCC39D734E4C0F402040513C7224B2EA738153DFD4000",
      INIT_01 => X"00000000000000000000000000003DFD38152EA7224B13C70405F402E4C0D734",
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1824)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_ram_re_ip_axi_lite_interface is
  port (
    axi_wready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    ram_re_ip_s_axi_bvalid : out STD_LOGIC;
    ram_re_ip_s_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_re_ip_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    ram_re_ip_s_axi_awvalid : in STD_LOGIC;
    ram_re_ip_s_axi_wvalid : in STD_LOGIC;
    ram_re_ip_s_axi_bready : in STD_LOGIC;
    ram_re_ip_s_axi_arvalid : in STD_LOGIC;
    ram_re_ip_s_axi_rready : in STD_LOGIC;
    ram_re_ip_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_re_ip_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_re_ip_aresetn : in STD_LOGIC
  );
end design_1_ram_re_0_2_ram_re_ip_axi_lite_interface;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip_axi_lite_interface is
begin
inst: entity work.design_1_ram_re_0_2_ram_re_ip_axi_lite_interface_verilog
     port map (
      D(0) => D(0),
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_wready_reg_0 => axi_wready_reg,
      clk => clk,
      ram_re_ip_aresetn => ram_re_ip_aresetn,
      ram_re_ip_s_axi_arvalid => ram_re_ip_s_axi_arvalid,
      ram_re_ip_s_axi_awvalid => ram_re_ip_s_axi_awvalid,
      ram_re_ip_s_axi_bready => ram_re_ip_s_axi_bready,
      ram_re_ip_s_axi_bvalid => ram_re_ip_s_axi_bvalid,
      ram_re_ip_s_axi_rdata(31 downto 0) => ram_re_ip_s_axi_rdata(31 downto 0),
      ram_re_ip_s_axi_rready => ram_re_ip_s_axi_rready,
      ram_re_ip_s_axi_rvalid => ram_re_ip_s_axi_rvalid,
      ram_re_ip_s_axi_wdata(31 downto 0) => ram_re_ip_s_axi_wdata(31 downto 0),
      ram_re_ip_s_axi_wstrb(3 downto 0) => ram_re_ip_s_axi_wstrb(3 downto 0),
      ram_re_ip_s_axi_wvalid => ram_re_ip_s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_ram_re_ip_xlconvert is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end design_1_ram_re_0_2_ram_re_ip_xlconvert;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip_xlconvert is
begin
\std_conversion_generate.convert\: entity work.design_1_ram_re_0_2_convert_func_call_ram_re_ip_xlconvert
     port map (
      douta(15 downto 0) => douta(15 downto 0),
      m_axis_tdata(13 downto 0) => m_axis_tdata(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_xpm_memory_sprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end design_1_ram_re_0_2_xpm_memory_sprom;

architecture STRUCTURE of design_1_ram_re_0_2_xpm_memory_sprom is
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
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "xpm_50d221_vivado.mem";
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
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^douta\(14),
      I1 => \^douta\(15),
      O => m_axis_tdata(0)
    );
xpm_memory_base_inst: entity work.design_1_ram_re_0_2_xpm_memory_base
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3376)
`protect data_block
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
GLAjbTJumtrPN6eYaw==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_ram_re_ip_xlsprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end design_1_ram_re_0_2_ram_re_ip_xlsprom;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip_xlsprom is
begin
xpm_memory_sprom_inst: entity work.design_1_ram_re_0_2_xpm_memory_sprom
     port map (
      Q(4 downto 0) => Q(4 downto 0),
      clk => clk,
      douta(15 downto 0) => douta(15 downto 0),
      m_axis_tdata(0) => m_axis_tdata(0)
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
eePCszIk0lhLDllqtF2JigwVZ86p+4I=
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5872)
`protect data_block
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
Og==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_ram_re_ip_c_counter_binary_v12_0_i0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ram_re_0_2_ram_re_ip_c_counter_binary_v12_0_i0 : entity is "ram_re_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ram_re_0_2_ram_re_ip_c_counter_binary_v12_0_i0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ram_re_0_2_ram_re_ip_c_counter_binary_v12_0_i0 : entity is "c_counter_binary_v12_0_19,Vivado 2024.1";
end design_1_ram_re_0_2_ram_re_ip_c_counter_binary_v12_0_i0;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip_c_counter_binary_v12_0_i0 is
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
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SINIT : signal is "xilinx.com:signal:data:1.0 sinit_intf DATA";
  attribute X_INTERFACE_PARAMETER of SINIT : signal is "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute X_INTERFACE_PARAMETER of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
begin
U0: entity work.design_1_ram_re_0_2_c_counter_binary_v12_0_19
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
entity design_1_ram_re_0_2_ram_re_ip_xlcounter_limit is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_ram_re_0_2_ram_re_ip_xlcounter_limit;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip_xlcounter_limit is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SINIT : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \comp0.core_instance0\ : label is "ram_re_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \comp0.core_instance0\ : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \comp0.core_instance0\ : label is "c_counter_binary_v12_0_19,Vivado 2024.1";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\comp0.core_instance0\: entity work.design_1_ram_re_0_2_ram_re_ip_c_counter_binary_v12_0_i0
     port map (
      CE => m_axis_tvalid(0),
      CLK => clk,
      Q(4 downto 0) => \^q\(4 downto 0),
      SINIT => SINIT
    );
core_sinit: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => m_axis_tvalid(0),
      O => SINIT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_ram_re_ip_struct is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_ram_re_0_2_ram_re_ip_struct;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip_struct is
  signal counter_op_net : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rom_data_net : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
  m_axis_tdata(15 downto 0) <= \^m_axis_tdata\(15 downto 0);
convert: entity work.design_1_ram_re_0_2_ram_re_ip_xlconvert
     port map (
      douta(15) => \^m_axis_tdata\(15),
      douta(14 downto 0) => rom_data_net(14 downto 0),
      m_axis_tdata(13 downto 0) => \^m_axis_tdata\(14 downto 1)
    );
counter: entity work.design_1_ram_re_0_2_ram_re_ip_xlcounter_limit
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
relational: entity work.design_1_ram_re_0_2_sysgen_relational_7b581d1b32
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      m_axis_tlast(0) => m_axis_tlast(0)
    );
rom: entity work.design_1_ram_re_0_2_ram_re_ip_xlsprom
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      douta(15) => \^m_axis_tdata\(15),
      douta(14 downto 0) => rom_data_net(14 downto 0),
      m_axis_tdata(0) => \^m_axis_tdata\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2_ram_re_ip is
  port (
    clk : in STD_LOGIC;
    ram_re_ip_aresetn : in STD_LOGIC;
    ram_re_ip_s_axi_awaddr : in STD_LOGIC;
    ram_re_ip_s_axi_awvalid : in STD_LOGIC;
    ram_re_ip_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_re_ip_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_re_ip_s_axi_wvalid : in STD_LOGIC;
    ram_re_ip_s_axi_bready : in STD_LOGIC;
    ram_re_ip_s_axi_araddr : in STD_LOGIC;
    ram_re_ip_s_axi_arvalid : in STD_LOGIC;
    ram_re_ip_s_axi_rready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_re_ip_s_axi_awready : out STD_LOGIC;
    ram_re_ip_s_axi_wready : out STD_LOGIC;
    ram_re_ip_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_re_ip_s_axi_bvalid : out STD_LOGIC;
    ram_re_ip_s_axi_arready : out STD_LOGIC;
    ram_re_ip_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_re_ip_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_re_ip_s_axi_rvalid : out STD_LOGIC
  );
end design_1_ram_re_0_2_ram_re_ip;

architecture STRUCTURE of design_1_ram_re_0_2_ram_re_ip is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  m_axis_tvalid(0) <= \^m_axis_tvalid\(0);
  ram_re_ip_s_axi_bresp(1) <= \<const0>\;
  ram_re_ip_s_axi_bresp(0) <= \<const0>\;
  ram_re_ip_s_axi_rresp(1) <= \<const0>\;
  ram_re_ip_s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ram_re_ip_axi_lite_interface: entity work.design_1_ram_re_0_2_ram_re_ip_axi_lite_interface
     port map (
      D(0) => \^m_axis_tvalid\(0),
      axi_arready_reg => ram_re_ip_s_axi_arready,
      axi_awready_reg => ram_re_ip_s_axi_awready,
      axi_wready_reg => ram_re_ip_s_axi_wready,
      clk => clk,
      ram_re_ip_aresetn => ram_re_ip_aresetn,
      ram_re_ip_s_axi_arvalid => ram_re_ip_s_axi_arvalid,
      ram_re_ip_s_axi_awvalid => ram_re_ip_s_axi_awvalid,
      ram_re_ip_s_axi_bready => ram_re_ip_s_axi_bready,
      ram_re_ip_s_axi_bvalid => ram_re_ip_s_axi_bvalid,
      ram_re_ip_s_axi_rdata(31 downto 0) => ram_re_ip_s_axi_rdata(31 downto 0),
      ram_re_ip_s_axi_rready => ram_re_ip_s_axi_rready,
      ram_re_ip_s_axi_rvalid => ram_re_ip_s_axi_rvalid,
      ram_re_ip_s_axi_wdata(31 downto 0) => ram_re_ip_s_axi_wdata(31 downto 0),
      ram_re_ip_s_axi_wstrb(3 downto 0) => ram_re_ip_s_axi_wstrb(3 downto 0),
      ram_re_ip_s_axi_wvalid => ram_re_ip_s_axi_wvalid
    );
ram_re_ip_struct: entity work.design_1_ram_re_0_2_ram_re_ip_struct
     port map (
      clk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tvalid(0) => \^m_axis_tvalid\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_2 is
  port (
    clk : in STD_LOGIC;
    ram_re_ip_aresetn : in STD_LOGIC;
    ram_re_ip_s_axi_awaddr : in STD_LOGIC;
    ram_re_ip_s_axi_awvalid : in STD_LOGIC;
    ram_re_ip_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_re_ip_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_re_ip_s_axi_wvalid : in STD_LOGIC;
    ram_re_ip_s_axi_bready : in STD_LOGIC;
    ram_re_ip_s_axi_araddr : in STD_LOGIC;
    ram_re_ip_s_axi_arvalid : in STD_LOGIC;
    ram_re_ip_s_axi_rready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_re_ip_s_axi_awready : out STD_LOGIC;
    ram_re_ip_s_axi_wready : out STD_LOGIC;
    ram_re_ip_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_re_ip_s_axi_bvalid : out STD_LOGIC;
    ram_re_ip_s_axi_arready : out STD_LOGIC;
    ram_re_ip_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_re_ip_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_re_ip_s_axi_rvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ram_re_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ram_re_0_2 : entity is "design_1_ram_re_0_1,ram_re_ip,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ram_re_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ram_re_0_2 : entity is "sysgen";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ram_re_0_2 : entity is "ram_re_ip,Vivado 2024.1";
end design_1_ram_re_0_2;

architecture STRUCTURE of design_1_ram_re_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_ram_re_ip_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ram_re_ip_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF ram_re_ip_s_axi:m_axis, ASSOCIATED_RESET ram_re_ip_aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ram_re_ip_aresetn : signal is "xilinx.com:signal:reset:1.0 ram_re_ip_aresetn RST";
  attribute X_INTERFACE_PARAMETER of ram_re_ip_aresetn : signal is "XIL_INTERFACENAME ram_re_ip_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARADDR";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARREADY";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARVALID";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWADDR";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWREADY";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWVALID";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BREADY";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BVALID";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RREADY";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RVALID";
  attribute X_INTERFACE_PARAMETER of ram_re_ip_s_axi_rvalid : signal is "XIL_INTERFACENAME ram_re_ip_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WREADY";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BRESP";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RDATA";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RRESP";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WDATA";
  attribute X_INTERFACE_INFO of ram_re_ip_s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WSTRB";
begin
  ram_re_ip_s_axi_bresp(1) <= \<const0>\;
  ram_re_ip_s_axi_bresp(0) <= \<const0>\;
  ram_re_ip_s_axi_rresp(1) <= \<const0>\;
  ram_re_ip_s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_ram_re_0_2_ram_re_ip
     port map (
      clk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      ram_re_ip_aresetn => ram_re_ip_aresetn,
      ram_re_ip_s_axi_araddr => '0',
      ram_re_ip_s_axi_arready => ram_re_ip_s_axi_arready,
      ram_re_ip_s_axi_arvalid => ram_re_ip_s_axi_arvalid,
      ram_re_ip_s_axi_awaddr => '0',
      ram_re_ip_s_axi_awready => ram_re_ip_s_axi_awready,
      ram_re_ip_s_axi_awvalid => ram_re_ip_s_axi_awvalid,
      ram_re_ip_s_axi_bready => ram_re_ip_s_axi_bready,
      ram_re_ip_s_axi_bresp(1 downto 0) => NLW_inst_ram_re_ip_s_axi_bresp_UNCONNECTED(1 downto 0),
      ram_re_ip_s_axi_bvalid => ram_re_ip_s_axi_bvalid,
      ram_re_ip_s_axi_rdata(31 downto 0) => ram_re_ip_s_axi_rdata(31 downto 0),
      ram_re_ip_s_axi_rready => ram_re_ip_s_axi_rready,
      ram_re_ip_s_axi_rresp(1 downto 0) => NLW_inst_ram_re_ip_s_axi_rresp_UNCONNECTED(1 downto 0),
      ram_re_ip_s_axi_rvalid => ram_re_ip_s_axi_rvalid,
      ram_re_ip_s_axi_wdata(31 downto 0) => ram_re_ip_s_axi_wdata(31 downto 0),
      ram_re_ip_s_axi_wready => ram_re_ip_s_axi_wready,
      ram_re_ip_s_axi_wstrb(3 downto 0) => ram_re_ip_s_axi_wstrb(3 downto 0),
      ram_re_ip_s_axi_wvalid => ram_re_ip_s_axi_wvalid
    );
end STRUCTURE;
