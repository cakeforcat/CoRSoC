-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Mar  5 17:02:30 2025
-- Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/andre/CoRSoC/IPIs/Tests/dsp_test/dsp_test.gen/sources_1/bd/design_1/ip/design_1_ram_re_0_1/design_1_ram_re_0_1_sim_netlist.vhdl
-- Design      : design_1_ram_re_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_1_convert_func_call_ram_re_ip_xlconvert is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_convert_func_call_ram_re_ip_xlconvert : entity is "convert_func_call_ram_re_ip_xlconvert";
end design_1_ram_re_0_1_convert_func_call_ram_re_ip_xlconvert;

architecture STRUCTURE of design_1_ram_re_0_1_convert_func_call_ram_re_ip_xlconvert is
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
entity design_1_ram_re_0_1_ram_re_ip_axi_lite_interface_verilog is
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip_axi_lite_interface_verilog : entity is "ram_re_ip_axi_lite_interface_verilog";
end design_1_ram_re_0_1_ram_re_ip_axi_lite_interface_verilog;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip_axi_lite_interface_verilog is
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
entity design_1_ram_re_0_1_sysgen_relational_7b581d1b32 is
  port (
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_sysgen_relational_7b581d1b32 : entity is "sysgen_relational_7b581d1b32";
end design_1_ram_re_0_1_sysgen_relational_7b581d1b32;

architecture STRUCTURE of design_1_ram_re_0_1_sysgen_relational_7b581d1b32 is
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
entity design_1_ram_re_0_1_xpm_memory_base is
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
  attribute ADDR_WIDTH_A of design_1_ram_re_0_1_xpm_memory_base : entity is 5;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_ram_re_0_1_xpm_memory_base : entity is 5;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of design_1_ram_re_0_1_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of design_1_ram_re_0_1_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_ram_re_0_1_xpm_memory_base : entity is "xpm_50d221_vivado.mem";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_ram_re_0_1_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of design_1_ram_re_0_1_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_ram_re_0_1_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_ram_re_0_1_xpm_memory_base : entity is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_ram_re_0_1_xpm_memory_base : entity is 3;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_ram_re_0_1_xpm_memory_base : entity is 32;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_ram_re_0_1_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_ram_re_0_1_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_ram_re_0_1_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_ram_re_0_1_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_ram_re_0_1_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_ram_re_0_1_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_ram_re_0_1_xpm_memory_base : entity is 5;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of design_1_ram_re_0_1_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_ram_re_0_1_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_ram_re_0_1_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of design_1_ram_re_0_1_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of design_1_ram_re_0_1_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_ram_re_0_1_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of design_1_ram_re_0_1_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_ram_re_0_1_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_ram_re_0_1_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of design_1_ram_re_0_1_xpm_memory_base : entity is 16;
end design_1_ram_re_0_1_xpm_memory_base;

architecture STRUCTURE of design_1_ram_re_0_1_xpm_memory_base is
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1968)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_1_ram_re_ip_axi_lite_interface is
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip_axi_lite_interface : entity is "ram_re_ip_axi_lite_interface";
end design_1_ram_re_0_1_ram_re_ip_axi_lite_interface;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip_axi_lite_interface is
begin
inst: entity work.design_1_ram_re_0_1_ram_re_ip_axi_lite_interface_verilog
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
entity design_1_ram_re_0_1_ram_re_ip_xlconvert is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip_xlconvert : entity is "ram_re_ip_xlconvert";
end design_1_ram_re_0_1_ram_re_ip_xlconvert;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip_xlconvert is
begin
\std_conversion_generate.convert\: entity work.design_1_ram_re_0_1_convert_func_call_ram_re_ip_xlconvert
     port map (
      douta(15 downto 0) => douta(15 downto 0),
      m_axis_tdata(13 downto 0) => m_axis_tdata(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_1_xpm_memory_sprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_xpm_memory_sprom : entity is "xpm_memory_sprom";
end design_1_ram_re_0_1_xpm_memory_sprom;

architecture STRUCTURE of design_1_ram_re_0_1_xpm_memory_sprom is
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
xpm_memory_base_inst: entity work.design_1_ram_re_0_1_xpm_memory_base
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3536)
`protect data_block
kJ/Vu+gy+XNvi7+HD3lQi2DdIZ4f7EJzkbaW4BoM/0OK/5bjZELeR0rVnu5Ed20ZfYg321Kmefk+
Bh0sd/u7+z44qAKte4zoMXQtAK2UTavdd5MjufRlAFe5J3P4bOsPmf6yG/pxlp6DATpVyIF3YyV7
kqElE1YMripFDyz5B4HdiE3pl952vnEWNUhCpncobtJ6tz/0/9vrJPO+UlQIhh032eDTzZDGzWOI
6n+wzDjeZU+sMA3eQanwgBoxoLXtvNIlH0cVcx10HBzOibGcHwM6JIudP6g0DWyqulNZ5RFTbpNY
P6oJX81FHG8149ipwfWrahj8WwYiFS0auJgh+gYTlIuFHImrnYKSo71U6ILDHQpmxsoUR4TJidVd
r3Jyhdbn2WTY6f5xAmrsVVIF7ceM/GR3Ehdj3AR8LeeWgcW0MNddgyMdEsae4FXOfLM/0TdL3ivI
4ahOJtV6ZxdZKMTE/QBrXNiQIv9FRB6j0/WL1SG8dUUuJIfXmbnYBi+vfaRlalLa1hU8Nier6ahY
Fii7EBsws5d3HcqjfR7bMd+99JQ3bALE3T6ucAUhY/Z1bl+jMRffRSQcT1vySp1oGz2iAROJg+DM
7dWWwgk0jZQIclHkpHLVD9BzVUI+pbw6rBiKxmjsPvrr5wzF/xvls9d2Nmsnr4Agd84aeowRRCG6
a4LOE9IYMZ2NRJisZsbVaOXKg22igxY1XmwtTB61+tsNevOB4IkcN468080pQkPa+WHtcK5Cq0tf
bkgcb6dSbJ68TMqEK2DfuuFXTqEEi43QdfDMVRAPoBdGzTSCT+TzUmmDW/CL6i123fj6RN1lfJBz
XVtQILHMG0e1GuryhS9hVtdFzHL51w6Cahg0sMCcN40CIfoTYfu6RzN2JjjXUab9vMGJtZEwTYbC
BcSpOCWftEhbInBo0wAdrKsfAt6dbZ/R1Yso+ti7B+r9BW4n34MJA2XvC/x2tZW2ysjUMZX4kOpe
+jyCGSSONrI2s1QJx91fmzPWasXR90cUTpHpfAy2s3clZ4OGteVdq+5l5ftJILndoIHuHHmdC8SO
CeyWhJx5lgmq7Jaxk+M2Vo8SAlVJ8bXWnLLItGKEmc8ZpEpfdj3vzBCaMNtoYaF6TGukfnZU4JFl
Ue5TSl+0OdX/+/4BJ+h1iMWlEvKsFoTTE881bk+hgAEAAa7dl7rUUCTscGs4bReA1LfdFW0lEsLK
kKFmzvmfP6HarZ1EJLScz/D29AmzsYa6KZVuFj6S1Coqxlza3t4ISFD4h/YjoUmpHevBm3sbmhJ9
q8Bqmyd2zMa8Xh4ZcrTXurp/XokIRsGwUZp66Sd43H/mdN/3gQvjrnDli/OVGrFALCydxsXHb1u+
TI9saZiwD/sgi5YjGYthN8kobr8h8JZgJ14gFfMr884gGbgWdXIzMCjR+9giGM6BPPvaf3W6BpjC
5lancsKhasspbXl0UKPpTEL84l9u0ygcbIH834O27bJT1iHdNdvO6er2PX5l8JyDgT7S31vSBoaW
nNcC7d66b9viCvNgLa/Ss3LINgb35pjJlP+CRsMf1nkTySeOiKlnn0AlT2eIC5KuWjK5E8mFaNdI
9ffzDwNO89DkvYC5K0XHGRePo4oAnoNWySbsNDRDH3ITEbqAqnvHP8nHGDQmhlmDa/hqxWw0aA3s
NLakqNgjw022LT8Wa/jcD1vGr+bluaCrMJg0WVopyLMzb6cfsPhqJ5vZ8rHWp6wAl3jNAgyNp2S4
2zHppQWqrtJNvq6tkgle91ImNQ6il/ID+1z0Hnd9X+cGCRPt5l4RkFJIXUwHMJ1HS0ys8LX3NJHU
Mjmx9gbtfHuEYyxlhmCrOuix2vg56OtkGrkISoMidAFt3bp71ZukRFxtP+lCzD/1N6RwztrnQc10
UJFotVvjh/QpUAe/qwWrTpC3SFUtygMnCb0/9D5aghdRZ7DBhRjWEKWYRlS1lanZpExBo/I388PY
YmF2JkVk7yH3qOSIuOfjAVGrSNasMPQ+QSFbqTco3L9mLnLx3EWc3ysvS0QJhuC3bxYndRGudcI9
7CqjwLVgcij6BNZRKj4MHhELBYBxn8IGKD/G7RGCzlu2CyOe9+vxdtyaJQhBXwoTEmw+ZA2+W2u3
NOl2Im85E1z4uby/IpeUOaSec7tdJvZKSLcePgyOfLgTwhmw+lJkknefcgjRAzWn1Xevi4UyzIno
9HOmSPoAu3a8gC6A/QmdRQFqGdd0UdfPno30Anbie0BL2qPvLiOS2N3xueqUcV0DBuNxJ6WT1Isp
q7O+J/qgbmSCUZmASs9HDTzvR6B4DnbTCJI2y+JFZMqWU2mTFpEssm3HrWPXt/O7JFAbUTMSxv6Z
62glh5g+xZZlSHZD0bjtcNCoK95ovhm7UmuW9FNRDy+xwx0e9T/FAWHHOLxUXzgaO/xAuH4rO27B
ASj52FVv+rVCp8q4QhERrrjnzlIUCZfJBLbjwcpF1723u/Of0AeUTmmZ2CGM9SWCgHnNacIQTieP
KGz0YnUh/cctzSbdZkQbTbDxo4oUav+e7RJfQ9qCuBK1jGXuWzxxufOVRSDqi0Vmuckx10ezdNuh
fu+U+FVpLBbuZ/m5hNBcLO/aRgbx/1PPPkr4lW2Zkobr1CnMFRioTe6omcVWlTsQ/ZXPnEBp+w+g
4VHT6FjuWOhq3bEG7UWWXynj61AoyXfG85qovkkNnkLMQ3m3M5mubHWjCbXoo6gJF21nBKTOrrfd
iGuRBG54nXq6L+ZHnPUc71sOXseOMKa2/zkSEwMC/k4BT9QieM6LmUufk8N9KdIqDWxQMwC+0A0c
F95g2Mk2j3B/RHYmfRVdzDox3JRK/glmXXrZHUahgJQXW5pAhWP2yIcKRAzNXlFaFqBkhRNaYRlh
TynKY+cSWdxY3BHHChf9aNeMTMUeZ5/S8E9bCnJYCmJ3Q55h87YgJm17wWmlpDV7ZYIew+BdOoVF
Ea6Hy+9DGAKjYmjAFiwy0Vj8DxTdTixzKjX+hak9SYbORJz77VbG6yjv+5UjFnVadPB82eD0eXL8
zNrY0QFQQV7pFxJdLNm0OhnT21QHdJtOYQ+xdo5eOda11nUSQlnlGH5ywEfHcKOShRgeQeQ6htg9
eqCqPKxXzNVvOeTg6jRsIb1WhTgdPA/09BiTJvE5SgbtUoJSHbSRdfC2XXsUf08K7az59Z+Q6EX/
EarFKpYH2bA+8U2qgFUeiBj4ddFMPgCwwESijoQD0IJuFY3y69lYjPNVG/jiePa8xomJHtkDJKFe
5EOe+YCAUm5C7BwF7efOED1PP4mO276vRuGHyk4R60iY+qh5NdvTd302fXBWbOVI4LViLjwWmTMU
/Y/gS70jBk9egyPhmUBAkTOT5fcoYNKJzbFfbpoIWlB60on3v79YsW7qjcmbdOUJtsUmNNwlDVDD
5XQUHeR2hC+wsnNfBU6/rRb7zMFYa/GuZb0jSoii/Snhj/oOvwuRHz+6gyb9YUkdkGOVTIFNLQ34
3J/1+wJTs/zXO9Qmu8pQE65cxpCvOXhm9yfCiJXb5hF1F3aASBeY+cMTULUfMI2a9T0g4U/vIe1T
tHrh6BbIgVZP6XA5+lOAOeehi6obR6NT5ye5IG5u42s8XoBj/2Gvea018uB5srzOAVu6S7oE4NXS
nyM+O+olA5cAtahGyqV+CqVCx5eleCZjTwnH9NetvsSvimtzzS5/YZ70mQHbo6GIodi/q7lh/PTh
uXhPAc7xSzbojIJy1s49QPXlrIg6RH+19xawRMQNvQDHetXAGQcaE/IiuCb3U1+1GirXg/wvUp30
L8GHrMPA/W0sy2//t8cKZzRkDqiHoNW2O4+CrBVL2azsgiO0ezyxM/tN++wqbWADk8LmObKvUFi6
CRCmkwq5/GLHhdiIpDtn/gcJP+/Ld6oUnEtmI8YUSNGntyaUTGpz88r+3nyyg2JrNFpZ8r2J4DU9
QJD8rBHAVz1bilJmunjSrqBbq26WnnVsE4v7yMYXDa2I6Cb2LuATx8qrRraEtDYgLZfchxd/4BMY
Xe83tFcNgG6U0Wg1j2BYH9RChsFPQy9NBN1quz2yi3z9VVxepc4RhvyHRo6Vqo/AnNzVDbsXer/B
X8O9FE4M2DcUu3pIsCmp4P1MyV5opB+qz5u0JAjsbwXNjYK4BN3ER82wv9u/UqJPrF51d/rhqxRC
RJSTlzjcWVvknf7NC+I/1sX0j0UZDuP9DSnjEijBgSkIAuxNMIkvJTiUIRiBUwnzen9lZMTHvnhh
xClIcazS5usRLOyxnlv3M6hENUlP14I2MygLIQRwiQgz/aWD/wwZkMzYRPNsgJXjYJs1wUjvDpaU
sPXGCrfyDPJOiFNUF/fDjot0eYSDsrtP4OaXnpXinXLc16Wo8WTas5ZU2QuzFoP+uLYq4G2slF74
26HnrDk41iEuX7/4L4V/DQIY4VQIO8UDftics2EV5qowX1fmUd8cbkqBaCe/aGZ64tRrb8pwUTdv
uLOThn4jM3GvjeM9c9981q+gMX0I83LIntdg5kiolKLbuhXbepiRu4C5uiohMmLX+phWbqto7wwz
sTNc6DhWLzrg8iYUPGBTKzdgyqA/J8ukweeehimn0wu/0B8G1I3SrbllGMdRQq08s0Z1MuY+wxCt
Cti3JsQanpArWR71zt6plyZ6zWfrJDBJ1IpnHZCDpBQ1eguX9ENnQThs4887Z2tjJBZfkFZlm7Wt
EgM=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_1_ram_re_ip_xlsprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip_xlsprom : entity is "ram_re_ip_xlsprom";
end design_1_ram_re_0_1_ram_re_ip_xlsprom;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip_xlsprom is
begin
xpm_memory_sprom_inst: entity work.design_1_ram_re_0_1_xpm_memory_sprom
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7104)
`protect data_block
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
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6016)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0 : entity is "ram_re_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0 : entity is "ram_re_ip_c_counter_binary_v12_0_i0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0 : entity is "c_counter_binary_v12_0_19,Vivado 2024.1";
end design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0 is
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
U0: entity work.design_1_ram_re_0_1_c_counter_binary_v12_0_19
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
entity design_1_ram_re_0_1_ram_re_ip_xlcounter_limit is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip_xlcounter_limit : entity is "ram_re_ip_xlcounter_limit";
end design_1_ram_re_0_1_ram_re_ip_xlcounter_limit;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip_xlcounter_limit is
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
\comp0.core_instance0\: entity work.design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0
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
entity design_1_ram_re_0_1_ram_re_ip_struct is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip_struct : entity is "ram_re_ip_struct";
end design_1_ram_re_0_1_ram_re_ip_struct;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip_struct is
  signal counter_op_net : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rom_data_net : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
  m_axis_tdata(15 downto 0) <= \^m_axis_tdata\(15 downto 0);
convert: entity work.design_1_ram_re_0_1_ram_re_ip_xlconvert
     port map (
      douta(15) => \^m_axis_tdata\(15),
      douta(14 downto 0) => rom_data_net(14 downto 0),
      m_axis_tdata(13 downto 0) => \^m_axis_tdata\(14 downto 1)
    );
counter: entity work.design_1_ram_re_0_1_ram_re_ip_xlcounter_limit
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
relational: entity work.design_1_ram_re_0_1_sysgen_relational_7b581d1b32
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      m_axis_tlast(0) => m_axis_tlast(0)
    );
rom: entity work.design_1_ram_re_0_1_ram_re_ip_xlsprom
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
entity design_1_ram_re_0_1_ram_re_ip is
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_1_ram_re_ip : entity is "ram_re_ip";
end design_1_ram_re_0_1_ram_re_ip;

architecture STRUCTURE of design_1_ram_re_0_1_ram_re_ip is
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
ram_re_ip_axi_lite_interface: entity work.design_1_ram_re_0_1_ram_re_ip_axi_lite_interface
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
ram_re_ip_struct: entity work.design_1_ram_re_0_1_ram_re_ip_struct
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
entity design_1_ram_re_0_1 is
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
  attribute NotValidForBitStream of design_1_ram_re_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ram_re_0_1 : entity is "design_1_ram_re_0_1,ram_re_ip,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ram_re_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ram_re_0_1 : entity is "sysgen";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ram_re_0_1 : entity is "ram_re_ip,Vivado 2024.1";
end design_1_ram_re_0_1;

architecture STRUCTURE of design_1_ram_re_0_1 is
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
inst: entity work.design_1_ram_re_0_1_ram_re_ip
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
