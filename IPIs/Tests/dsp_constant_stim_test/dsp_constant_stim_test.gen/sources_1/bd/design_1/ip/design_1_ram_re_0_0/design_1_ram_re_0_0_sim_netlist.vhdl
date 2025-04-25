-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Apr  4 11:56:17 2025
-- Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/andre/CoRSoC/IPIs/Tests/integration_test/integration_test.gen/sources_1/bd/design_1/ip/design_1_ram_re_0_0/design_1_ram_re_0_0_sim_netlist.vhdl
-- Design      : design_1_ram_re_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_0_convert_func_call_ram_re_xlconvert is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_convert_func_call_ram_re_xlconvert : entity is "convert_func_call_ram_re_xlconvert";
end design_1_ram_re_0_0_convert_func_call_ram_re_xlconvert;

architecture STRUCTURE of design_1_ram_re_0_0_convert_func_call_ram_re_xlconvert is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair4";
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
entity design_1_ram_re_0_0_sysgen_relational_a5722cb7a4 is
  port (
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_sysgen_relational_a5722cb7a4 : entity is "sysgen_relational_a5722cb7a4";
end design_1_ram_re_0_0_sysgen_relational_a5722cb7a4;

architecture STRUCTURE of design_1_ram_re_0_0_sysgen_relational_a5722cb7a4 is
  signal cast : STD_LOGIC;
begin
\op_mem_45_22[0][0]_i_1\: unisim.vcomponents.LUT5
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_0_xpm_memory_base is
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
  attribute ADDR_WIDTH_A of design_1_ram_re_0_0_xpm_memory_base : entity is 5;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_ram_re_0_0_xpm_memory_base : entity is 5;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of design_1_ram_re_0_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of design_1_ram_re_0_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_ram_re_0_0_xpm_memory_base : entity is "xpm_50d221_vivado.mem";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_ram_re_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of design_1_ram_re_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_ram_re_0_0_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_ram_re_0_0_xpm_memory_base : entity is 512;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_ram_re_0_0_xpm_memory_base : entity is 3;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_ram_re_0_0_xpm_memory_base : entity is 32;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_ram_re_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_ram_re_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_ram_re_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_ram_re_0_0_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_ram_re_0_0_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_ram_re_0_0_xpm_memory_base : entity is 5;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_ram_re_0_0_xpm_memory_base : entity is 5;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of design_1_ram_re_0_0_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_ram_re_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_ram_re_0_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of design_1_ram_re_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of design_1_ram_re_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_ram_re_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of design_1_ram_re_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_ram_re_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_ram_re_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of design_1_ram_re_0_0_xpm_memory_base : entity is 16;
end design_1_ram_re_0_0_xpm_memory_base;

architecture STRUCTURE of design_1_ram_re_0_0_xpm_memory_base is
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
  attribute RTL_RAM_NAME of \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg\ : label is "U0/ram_re_struct/rom/xpm_memory_sprom_inst/xpm_memory_base_inst/gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg";
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
entity design_1_ram_re_0_0_ram_re_xlconvert is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_ram_re_xlconvert : entity is "ram_re_xlconvert";
end design_1_ram_re_0_0_ram_re_xlconvert;

architecture STRUCTURE of design_1_ram_re_0_0_ram_re_xlconvert is
begin
\std_conversion_generate.convert\: entity work.design_1_ram_re_0_0_convert_func_call_ram_re_xlconvert
     port map (
      douta(15 downto 0) => douta(15 downto 0),
      m_axis_tdata(13 downto 0) => m_axis_tdata(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_0_xpm_memory_sprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_xpm_memory_sprom : entity is "xpm_memory_sprom";
end design_1_ram_re_0_0_xpm_memory_sprom;

architecture STRUCTURE of design_1_ram_re_0_0_xpm_memory_sprom is
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
xpm_memory_base_inst: entity work.design_1_ram_re_0_0_xpm_memory_base
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
+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
5cI=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_0_ram_re_xlsprom is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_ram_re_xlsprom : entity is "ram_re_xlsprom";
end design_1_ram_re_0_0_ram_re_xlsprom;

architecture STRUCTURE of design_1_ram_re_0_0_ram_re_xlsprom is
begin
xpm_memory_sprom_inst: entity work.design_1_ram_re_0_0_xpm_memory_sprom
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
+Xd3vAwpO+Ii8hcAHv0CNJxo+KOOdxwYWxqzzno8kXs6luv+YvkELNZ6Hc4nXftGQFDa7wiTrv1H
ysXcbOpIu4VL3hCFG5Z9HWMkt+WAErVEHYLNvgxkbbkjxmXUkeGWcFYaBRL+AZkbB84XNUkCySXx
/69EvXX81vOad4qsodanYxirhw3/krWme/NVJm3Z+mVx82Qf8vJw0Gu82l5hv8sStIoTDCZe3rxB
ywhXXzlbJahS5gBK8Whj1hmLzgcHC8SZJufpw2QYcXpvLdXlT45SGpmRHr4kQvt1cTB/VmwncVzp
+6YNiuFu+9FCQqyZ1t+DLC58vkQ/+JAx36UURtgKGdoGgw434qPpPbOMxHyD+3K0JaL81g9uMBcB
IYP6Y/+MmhRO+JPdeq15A0oGthyvJxjLKAwXPxBwnGYI2oAPrA9SRKc/DSQQvY4IobVhk72eiPMW
9vlnDew4J8KP0LMPkGjrC1PcdeYBeu8fU270ZwMn6xhC638nrr36ENVuEw13Vm0CnlHtWDoNGSt+
ugNcb1hCmgrRg0lDOv5vZ0oEc3e0d+z9AaUl+pC3CJHjEP9wLK+OQoIb01EFAWLitx7WQR9YZJZk
/YQSh90orS8/SE+Ao/zDrMw8Z4asEBjqqRbXfLfMN0sLik8uj5ZLc3kJskIvj9eWIGdwIymNIhea
wY3XFSFUAGL151El4xUDdCglnvM4GctsSIIIMd+4bSUJcJcQpqYqyUFTrjKHm3RTk0ncGwwUPRRi
TvMeKHnwC9TyyKgGTTNkW4QjHYLZwgrkrQi1ldHix6mHQOrx0kd0tZ9q39XqUvg3uN8QRkhyemU9
Mv9dHRkw64bYxXCo880ZLvBUBMiWqWVoMNfbgP/Sqy2R/jfWfKjZJyTFDZyqUmiTKEtIwSlVvOhc
jIVHSjnbuCYKxe0pK2jTpchMe/BgVgsOTYAsPzx38iiN9/nbpWIs84/p81RisrRzTag8v4N1KYn7
nsMVOmE/diasEV8D0deQHwrzYvfw74zUyjf1T/DGRqgsuKvz518UMYvo3lckFyEJTQFJQICaHKvr
r8Mj9RwzhyF6h7L9TlWi2sH46VP0vw585Xtji/r61+MxWbG3Kxc5zsr7f0PJKXGb3y7gteipfjDd
Z+ju/EfSi1zmopg5Qd5w5ooRjXzmpX5xmCj3UiHBx+59qRQQtSJGSy5gtZLM3Ef251aX9SnjrRpu
wLuOs1Em/M1f9aJraQmfIRRrHbBYGbPYsygehX9Cn+h6owz7sJ98UCP7Q0fNWEe5fm0iv5Ph2Xkb
+uKk75eQ0MWN6rWUsZ6Oo/ZvidQZAhcm0/lW5HYKC442RGq5DQQL0E8Tnh8m5zFZgueOiOE0s0cp
bmhnvSwWnaASmv8KwGbi48n44S45oH2GzCrwTVgUKex+KJhUAwW/WiExDrAnCRm2wkMhtAiQqV6o
j10wJnBUR/Nh8j769pr3XxGHVtyKk1Z48wVsk8Xt68s6xfaAH/fRP/qkAZlwQi/3/c924j1BLphv
NL/EWMiCFEE55G224QZ0t9ZeJuI+Cy4WfHM3jQjv5A3hEEVvJoX7V1GfHDJmZpUBsz2IF/+ZTmzp
d0T8G0kVoWVh7t0sYWqy1pUCyL+DpFyIg8gLyie332t7lWAjvDjuy5X5FUmtu+wfw6uXkMEAwnS5
7TjgF4jBdTk0FtPR26nl71Yet82v4fQAeBS2msVTNTBpGbfeK/96ufkVE0H5ayTdSarZ7R7DqTTK
vsgDy8T1n4Jqd2ebpud7G6mP5MoOGp7IAf3oSzvgernlTooWdp4/wc9otrOLzOr83oyNhpinNU4d
moOCtFdLZJr3VOxLgyN5LyK7s1fp2w1Hw9ep0/cNIi6MSm5AVoqKivI82NL8q6vo7548ApjsMpAH
8PJOzR/avj3aSsurlascCpajaesKsaXyPQJiEHS56nUsSSM/MFjxfR9vzxs5wp/zmFT6Tci6wPi1
3ffVo11TthOvXhrOHlsW4SrfyQaKEC1UQwXwC6YwFanBWXdb7jMzsow82sBKF/PHl+BshKQhpl/M
JvKsWt7RjeEkDM1r6vhHIkcRpKaniVEMubFORA3rzPXOflHGjKxw6GSTesAAYjl3eMqbfDee5eAO
kPcpX7Yt0X1cb7FQEnfeI3ez7qanYYs0bLyuiEWCF4gLaouludkqucqANLMbn0H3q+LnxrU5P46r
sXfDevJBd8q9ZbOV6hF/DWiLjHkluDK1HlRgN0XjNVgUzVvHnVjq20Rgn2LXDVh6wh1effTh9//5
/IdDRHg3/tPdfnuK6Q5UhXxbsqQvCTA0OMsytbZciJa2cuKSdHbreaPj3UCxG3cTX2xkNc/k/lT5
sruukNJq7kiYuTwoj1n0/HxCCTcamjC3geez5a39H+3xkK5KL8ZVkBgO3x5gGgS5P2QzljPEoDxm
rNk1eDQpqiqG4dbXeBRL51+GPsKGk7k06XbEHEH2wiOXinWxynwDonHtvdhqv3S3IqOlPwAdQzex
vdcm5Lj/HVdOcFVbue/muNs0sDgDPO8H4R90NwIEU1vDl+E3HsOnkSDWZrtHzfYo+tMOwsCsDOMS
aQ0/m9dM0NAp6Kyg40GxajO4lNUjQqb3xr2/AZ/BBx/N82jSLehOTWy/u59bUsbsR1f0VuYNWaRf
smw9jqNI1WFanqPGgeb51TKi1fEwNv59d3ziYQ85jGyE82jEzeKoWAgudmTCwcFOIuyJAAVuZhzn
1zc6oFg209kfn5R1jBHBCcaN1XF5iVaDZ7tC3Qb2AxgmCJd6C5MsxdyozZ74cC5tpA7qx8pbMWzH
dhJWzVJFwzXbhf1e+CkQtcZtZ9w0tUb6LuKMdMQWWzM3OHxVk+PXGKwis32g5rrB8CnyQ5A+8sv9
HVml4XdoFnWLTnpvv2tPazFn4+34ZiYHO7VniWXjozzOHEkUAYypIa7+K7G4Mxx1UgYF+L+dGSlI
YRndLlrs299KxSNTGfzbgWHc3glTHYjflv3TKwViYJGbAFWnJALbaY/YRK6baF4K9slr1kfPkc/6
5yF0geGeKbeHEkjdJ4uIp5ISPBHy1HrwrmKUaRx3+gjZ8MiuueHMYWlSxYAuUcd7tjs/MT0yL96i
WWRgMvO2qBasbxjAnusqa15PAnTaJvVWvLvDNCyyMaRkKRy0A1xTxcypAioIr3sXG+XAvmmQ/bK1
0rYJAyhzOdhYsuKeTYZaCAtgx16fs4EBnCACli8DUWwtSyzRAR4VzgYM7NuOUrhFfCtYzNxxAUuZ
PnguCxAWU4NWZTSnJVE7kDQs+x5gXgIE4ZRpdcW0RqrhZ8j+JVrhOk6s0fIa7z3dpfqUoMyGzH12
XkEHhnyPEOfUSEGCPS79H020Qj/Z/XkhAekUu+tF3bu7YCVpqDx1KNd6mJLIXz/nbSUmWPKIQeeT
kZz7lYSBo2hpkcy6gS9v76f4o1pBBMWJRKqZ6zHA0TrKQAm6xePHymMgBcsVBYdxezkfPRcqXrZN
79aXvyV2swVao58IN54f9qUg0x9t0EUIYPratIQELrhewO0GCQ0xWsgWxh3ahjQ03vaFg8kAi/MK
aGEHKCQE/w9L6Zo2uiW967IA1FoOAsLkNS3oNXYV7NoEmG5sZjXfVUQ4jPfBNVp8FBSzu3+pWt2D
9eSgpLcFh9OtXnr94y1joUvB2cj2MfczNe/+R9nNXirMF4ctVWtj40yYGHRDxtt8boSQNaoWHihz
F/vCMC/C2+yfel0kA8gGorHG5RbvbsZ9V8YEmM6o4aE6zXPQXp7tRUekyHzGrzWOzscqdVn93Mbg
BTVJ/ZfjyNA1Ph8Iius/z96PrPkQSxPxc2412aPIYsEeST5+dTyBHFGaGyMv4wShQTSUz8l/dub/
e6rYCX+i9snaf4dHC1gffNLb6B0X/3DsO3jdU0yOZ0PTf0jDSvrTnTguy4eh/Sb5KbEKH6FvxYyB
TF/e1yJX8MsBRZIn6kB3BnM1uauAFvuouck2vH6kgQn44GdBL+9+jI0H4cRQHxQRMcpBZz/1uc9J
IGSOLRwICff4AmvJVAl0dn1Ykz1h4LgzWjs4YLs+Upen9E4M5baskku9xy3qS88+vFadAOA7aJkb
NmsYAEj/WDlX29Qt2x7zMOh/8xMGqRIihWhuHu12D2ckg3dyUAM+BE7/ozmGCLNKIH1K1QDQT42/
F82URz22bJLjeofaR1UDCL2OEcpzCtStVEhr/KYprA+nWfUxJq5T7z93FEbHywg7W8ey98yUe3sV
pJymmAEPrI/Qznh6lL3wAQES5YcHjBoMUryn2oGyTrtn1MKwIjuZvUMwLI62Dq2vI7r2Fj1+3qGR
13L8HocUuhOTwuaatPG4rmygUxSfy/AvTcfr+8lIaU7oSg/gFneKpUc3YDbum00BHSNzbBWSUCJR
0jOQoPoTOII7jfan3kJ8ZQX21KashZWOsYPT5ML8d8Hq1tjUq1EwmO/LWeyZjnQbrw2+1X9DjvBF
d95dLzU4N3AffRrOcrdK0ZK1pcbYZdjLhuB99MTwreK48XAtkMqNoGo3+Zk+1AKjhjq9CTX/wGWp
9QvHyP0RjjgEZZevHi5fGToBzGmau/FqpblTqNHsFkR0DGjzXyA32YUFUYhYNnyMSg1PVIFel2MA
vEK0wTzF0SNRixACxjNMejDCEzho/LJPBpcYwCC2Z2zbNWVkO50c09CJBwa3k/Yq/hnMw4h41rdp
8keIfBXzFJJ/VwsD89nrsgmQN2TqEQtpH8kWh9jjtm8zCV5w2Dylh7ieAVikELr10NlH57kUEYbi
BcK5fEi9QRKi/8YdY0zxAr3skuxsNnZx/uiINXzBOAoCFVMS+UY2M3RpjZH3qAA1CNFMhI4iGRUR
gw0bvZXFgMK88ZjMbMKYPiW0DVExCeIb2KbJzba+k+616c2teX/dgoi8WGFO6iev0361MFYn5sVq
CGN4WUcYRay4yQGcv0KZ/34jLNXVDILTRRGk3Mf3ODcyXDwGUpRdXyvZ7kTU1yBuWTyMXVbwwYUI
3lm57sbFHN4aFIzWldfH3EExgL5ZUR4/tV4nDRxXGnTwjS6AgGlz9r2w0ofxN0sOl83uR+CF1OjA
D/56j6gAWb/XNO1hEAfrPTE8ZSxkj+JXpzIJE5feG6aU2MCgljFjEs6bz7x70SI9jKumsekS4ixe
g+vsJ4rPQgXevYK0imCGRgmYxk0umJrnKSk96wCxet7J/YeDG54jp/HIJB/HMm6RYrsWqyYYTPDs
6XSymfNZe0HEIE7p2XY7xC23JeqIr4r3FEeEzomKncDmVCQwUHFKl58W14vd2C6Redz24bS1+Y9n
GfsrQIxq0q7yPQcBEuzmk3kLZhpXZyxms6vRpW42v/OI5vvJncAmpLQPgRxvSGxvSsBcXGVkPCL3
aEaMrlk29WOxDP5O7Wpzp6x5FNtTfetl6QCviw2YCaE86dOTPCDhpil8gxqLopPkbVH7IWLxZVCb
epWF30si2higa1LQ4rX7UcGQ3SjZF2sD1x7caLdYvG0R9wuVgcMldNjZAIvcLG9FBiPCqt/h4aGo
3TbmYm9FMYhhkYJf14UuKAUXBS5Xo9RnPrdPO+wciMt/kGiNOqoOimOjlUNJEMWv2fV6r/PEociv
6RHQauSoRysG98KoYN2d/Oss8OW+gEYD8tkf17QI3ZvZZbUIY7jIItQPIa/WR0Bs08TGpOYkn1Ui
IKKDmPasQztYdatL3KxaV8C3OwWxe0qZbJUbe5b4cOwQpVQvCJ/UcexRwKNZnT8jI+WeCiDacDFt
Wi8nk3z3JRRPLGpa2WUP0/aHfE6duUeygHPUvQ4wr5CuK/hxXp9uVVv+v7I5Pbnwtd91imxEtgb4
/NppJugwXMxmEQo7TX89Df772ip4HXcz6jidU4PKuN8OmKyPJ04nyOo1rWHh2aBSVuT5Ds0K8/fO
rfhMpHBGqW39GD1l9q/NSJ8W+YR6Gjx92s1Vmdxa/YQCUhWsSmQi66I4Oh41DnDc+JGyrfxbYhre
hYqBBx3xCDPN0tNTNu9f5y31z1POetGlIJ9NZgwr3XQeYxjFhmOLaQEUD/RsIb0ZkN4ie8FPqy4g
ebp9uVYk+amdgG//YIKGR/lcPRN+JLGSElyZhxznVBlR/nYZv/r7z7i2X6SQsMXLjlM4o5DUn72p
vIigO8y/k8SBR5oDOCAsZPpGw5atZAucetHDNFDmi9wUhhC0ixwHeVXOKucEwkNg/RaNTec7Yomy
xZP1pl47B1PBfxma9ulw0heBVqrXtFlctD4rcCIDu0xlt5BaXiCtyt0ydBVjwQ6OfxLehH1b4cFc
rBmozWIKFQLF3sNidpCRThhTVhSMF+uYzEeB57gWxAFL0N9h5IURMKdDrh59iuVZygI5NCn2h7pB
0ja6K8ywUyIZkORhkDOMt3JQlOGozbaulE3fxxnS6GmnoP40WKMZMbvbXqFCsI5qtuHYhj3nvYAJ
vjsB7FAMkiJ8LX1gb0k44/Gl4AG5ZuOlK78VepLgkhcYC1O30WaSvyQB09YOEo7WLh2hQEfj1Ant
cKrHRs9qPbHZ0BZGtorHUV/G7mWzxachHLsQT7OUXwRh1soQfFcgtuHEah8DruEplcKglqvViMdp
aQFuG14ApmVMUNyZvYqmkUz8M/rdwYY1N9Xx2fQkc2KWilx+Vn2R6tGUAGjuNFLiNsFzKHVQDAAl
dWgoroXYJ9+fSvK3+2nqLPqNxejf5as4IpWxoLD+oCpb/rDfnwnIpmzMiswr1V6EkIE5rrvqjHLv
z7qoWlEEGwJc5rkmRy2cScft+p6go+Tm/QI1iuGmHkNv10x/AfWsQ+FB+ldJXeh1mt3wKK/xe2QS
J2eRKpZen+54qitkgLhCNMfsMWHXOwblkZ5inPFu5kSbA3yDRPuq8O/yFQkQ5XYmICd09sYgalPG
6f0PPw5l63KEBb8CMzqp8qPdNuaLwb55AlC4AVsoAd2ciC+FoDrzYVySwhPhkWnTMRZpBps4Wf33
Qf2BdRn0z4Ck/VgJqaUtVjUrUa0aE4CE/z03zJwY0S1uz9ObYXwnbMgqVnlegkP4bvtAkyCrJwZt
GPjE350YucgaqeWPumYuLCp4Xtd3uiY8u5cMu1k9SyJTDDojxnixCjE7vl2rf9wc2rr1WxYovTM/
D+hwJGCO3KrUGq3zAhwYmrUKsf2jo8PJdtvpjQ+n/6wzt50KdsmHcwZWc0htWhsjSpCxmY5ngN7M
difl5e4+5G55Aj88dxGlvSTtoH9DoLrxDXRVGmVQ0xmIoQaP+TCLmOK5ZC6V84NcCU4sHUWlcdBt
TDuqImyTBjNMtS+5pC0Mz+IEaa3Zco3XUezBlmzJ6AOOAgup29Lr6ERrMhliGuKD4QUWTUCVxwSf
2p8oDK38gk/5OpWidBTVSU23D50S8mOMaCxXXfGIcDeOFiAtWoFjb33fOumTOKnuOoA8mo4lWvLZ
8Fwzs04QxOlmqquXqjXrMcU+4iE5G9kQX6XT9Ky3uwxSB59Lc49GJJNMnuA/sU5TUAQ35Aq6T98T
eIAnrUosBdqzspNTZX/dP/cSNYybJTaNnTSlWuF6QZ1jH0eLzCdNOFBOQgkUAcmgYkJ2S76V0HtL
hA0PYQG24DrCeF/L+7iMIyehFraU4NSLkyqkMOLrS6shvyQCW1qy+60+bozv37dNQpR/J5+pFU4V
IHnXSXqC+aY3X2ZxF/WCvamWqXEgn+xxQuOEY7yql7ehb+MsPErZ0/ZMBnTOrxw3JeDkinziCvj7
1ysPOAXculUTq88m9pc41/wHIQXUZPfrQgT6NSwfZqsSvOrg2KA7RawN4hTQw16k2TXM4h9s4S0P
6dw7x9KR4r8VcG1N4bZSNxKJeaXpK8bQML9R8cAmIjFbbSNUxrh9y4QAet4HfmQCf8DXrIukLuXE
lYO8LZ8p80e/lU4F2AvlT/sar6dbLv3lYQGzkaOfqXiTmFbaz4BoeVY9iInARAFbqIyUU/SYTI1u
fMtmT4wLfX9LYTetjFnYvpoUFOoYmHvk9/IBUzCfQQhB/zma1BELiIDxa3ciciIcyiBnhf48vqck
VsN/ftO+vIPEY0iKr/7ZgJXyGVYUHRb7hbTaQq04k8LPPCSwoq1NWYhDbgUYruAIdPsDpSYAYXd4
IRSVjKD/JheDTebI150VhV0krx7Qeo59QA47gRk69Ie8lIYn6vkzO0ZcCUwcVNAOuwNBa0YT7LQO
RPSP+qObmbH+hz15+GqbDgT+5rPNfYXF6nFFV+j+yg4AW96lJD2PO320nuEhEF4qJUgu7q2MsbS3
JSOc17oz+kG+duC8rvKeEyfIksLj46ZvVOqLGePWNSxmS91KReUlYQzMyqy38sTa7lKb2qkgffme
7NU4lKz6IktuQGMroYw8uueYddHidQpq8D1xuYzTJHPQGRohFRQ9OPzDiwFbJjzbmm0iT4dg+K5D
BzLzL22tQU0197LurBkSmodUiS7rwX+gsfQV/2S/yIihIEolGOr7NYbkbvBl7EMpgeGHxecwJaGw
FVbBCbxWo1qmp9bvJizJNfJUkJmbOG23W91a5fb9d1YyfPUs6DjA3ba3heiETIIi86FRS+VD8s6F
t92j2TaRQxuihbqlao2sdq1Jjo6GeNfVUio4TBj1JnldZT1OCtXYyO94a8XnxX23ntZM/DxMLJHT
yVzd/PUaMVSq9JLygIgGiAIN3r7tExJskszSx+A75hjftJcHtATsXWjCnuwg+WJZ3c55+ouF2HxL
E5Sf/EHJ9pTEl97acMeYgEE7qSiCDO0ZvU7fteBTHEF3SpbV9GaPzXLPXDW290GZ5o9vMjjVz16p
YVLriOHFfSks14yi4+DsHqeieowZZghNVDt3i8IrN7m4WZnA1SDPtgBBPhKm8u6x3dGFWOL8CVOJ
pg5ibeFB9C4/0RrSO8KfF3QvYM7RhFcs9tzLJBeToqtfwj8LifG2Pgpaeew1WWpAfLRFEVcIw0HA
gljE5W/+VNxWMpJtSqVt12SikyWh0vNYRi2ut7i9jG9dlCvs+w+YBSdgtcWZLBI0ZeNed0Y5Mvel
aGcbMIsFONRc5jxbSjIzOV5Iep6FXrmO9Wi7HXZqreptd3wE0iiUP+FNAjvKeH6OBGsJXyCS9q8k
XasQ9KB5TTHA5k6i0zurJJi1mG/Tz3KrDlQ8TmmNa6IDGmtizbFZP18ED2v9mhMRNaboJKGfrmD/
BXxj45caUTfyH9Ftsf8BhrDcYtFAE8Fu+jnnKkZMaf5GhSQFCIvGS6G/Ajp3pNOjDBbvMRVX45TJ
XB0eQFP/Uj28MLY7lJoNT1BKb12XLlf/9OygTNUlYLZegkMoR6S6hN5QzaBgdNqy5C0D/AMnGCEP
YyEixiyDqF0chVFFiOxYmgUoUvoHlA1WXKGFugkQq1rQKDnkFKLlCqy2MEJ2+ryheEqj8yGV12xQ
KVO9dxJfMOEI4wzv6EMI6p1Xg6lWj2p8qBuIgfs805WMmlkJ
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
entity design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0 : entity is "ram_re_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0 : entity is "ram_re_c_counter_binary_v12_0_i0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0 : entity is "c_counter_binary_v12_0_19,Vivado 2024.1";
end design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0;

architecture STRUCTURE of design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0 is
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
U0: entity work.design_1_ram_re_0_0_c_counter_binary_v12_0_19
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
entity design_1_ram_re_0_0_ram_re_xlcounter_limit is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    ctrl_ip : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_ram_re_xlcounter_limit : entity is "ram_re_xlcounter_limit";
end design_1_ram_re_0_0_ram_re_xlcounter_limit;

architecture STRUCTURE of design_1_ram_re_0_0_ram_re_xlcounter_limit is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SINIT : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \comp0.core_instance0\ : label is "ram_re_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \comp0.core_instance0\ : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \comp0.core_instance0\ : label is "c_counter_binary_v12_0_19,Vivado 2024.1";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\comp0.core_instance0\: entity work.design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0
     port map (
      CE => ctrl_ip(0),
      CLK => clk,
      Q(4 downto 0) => \^q\(4 downto 0),
      SINIT => SINIT
    );
\comp0.core_instance0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => ctrl_ip(0),
      O => SINIT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_0_ram_re_struct is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ctrl_ip : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_ram_re_struct : entity is "ram_re_struct";
end design_1_ram_re_0_0_ram_re_struct;

architecture STRUCTURE of design_1_ram_re_0_0_ram_re_struct is
  signal counter_op_net : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rom_data_net : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
  m_axis_tdata(15 downto 0) <= \^m_axis_tdata\(15 downto 0);
convert: entity work.design_1_ram_re_0_0_ram_re_xlconvert
     port map (
      douta(15) => \^m_axis_tdata\(15),
      douta(14 downto 0) => rom_data_net(14 downto 0),
      m_axis_tdata(13 downto 0) => \^m_axis_tdata\(14 downto 1)
    );
counter: entity work.design_1_ram_re_0_0_ram_re_xlcounter_limit
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      ctrl_ip(0) => ctrl_ip(0)
    );
relational: entity work.design_1_ram_re_0_0_sysgen_relational_a5722cb7a4
     port map (
      Q(4 downto 0) => counter_op_net(4 downto 0),
      clk => clk,
      m_axis_tlast(0) => m_axis_tlast(0)
    );
rom: entity work.design_1_ram_re_0_0_ram_re_xlsprom
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
entity design_1_ram_re_0_0_ram_re is
  port (
    ctrl_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ram_re_0_0_ram_re : entity is "ram_re";
end design_1_ram_re_0_0_ram_re;

architecture STRUCTURE of design_1_ram_re_0_0_ram_re is
  signal \^ctrl_ip\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^ctrl_ip\(0) <= ctrl_ip(0);
  m_axis_tvalid(0) <= \^ctrl_ip\(0);
ram_re_struct: entity work.design_1_ram_re_0_0_ram_re_struct
     port map (
      clk => clk,
      ctrl_ip(0) => \^ctrl_ip\(0),
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ram_re_0_0 is
  port (
    ctrl_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ram_re_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ram_re_0_0 : entity is "design_1_ram_re_0_0,ram_re,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ram_re_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ram_re_0_0 : entity is "sysgen";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ram_re_0_0 : entity is "ram_re,Vivado 2024.1";
end design_1_ram_re_0_0;

architecture STRUCTURE of design_1_ram_re_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of ctrl_ip : signal is "xilinx.com:signal:data:1.0 ctrl_ip DATA";
  attribute x_interface_parameter of ctrl_ip : signal is "XIL_INTERFACENAME ctrl_ip, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
begin
U0: entity work.design_1_ram_re_0_0_ram_re
     port map (
      clk => clk,
      ctrl_ip(31 downto 1) => B"0000000000000000000000000000000",
      ctrl_ip(0) => ctrl_ip(0),
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
end STRUCTURE;
