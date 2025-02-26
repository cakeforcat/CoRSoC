--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Wed Feb 26 14:45:08 2025
--Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
--Command     : generate_target dsp_stream_re_bd.bd
--Design      : dsp_stream_re_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dsp_stream_re_bd is
  port (
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of dsp_stream_re_bd : entity is "dsp_stream_re_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dsp_stream_re_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of dsp_stream_re_bd : entity is "dsp_stream_re_bd.hwdef";
end dsp_stream_re_bd;

architecture STRUCTURE of dsp_stream_re_bd is
  component dsp_stream_re_bd_dsp_stream_re_1_0 is
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
  end component dsp_stream_re_bd_dsp_stream_re_1_0;
  signal clk_1 : STD_LOGIC;
  signal dsp_stream_re_1_m_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dsp_stream_re_1_m_axis_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dsp_stream_re_1_m_axis_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dsp_stream_re_1_m_axis_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dsp_stream_re_1_m_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_1_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_1_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_1_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF m_axis:s_axis, CLK_DOMAIN dsp_stream_re_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, CLK_DOMAIN dsp_stream_re_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, CLK_DOMAIN dsp_stream_re_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
begin
  clk_1 <= clk;
  dsp_stream_re_1_m_axis_TREADY(0) <= m_axis_tready(0);
  m_axis_tdata(15 downto 0) <= dsp_stream_re_1_m_axis_TDATA(15 downto 0);
  m_axis_tlast(0) <= dsp_stream_re_1_m_axis_TLAST(0);
  m_axis_tuser(0) <= dsp_stream_re_1_m_axis_TUSER(0);
  m_axis_tvalid(0) <= dsp_stream_re_1_m_axis_TVALID(0);
  s_axis_1_TDATA(31 downto 0) <= s_axis_tdata(31 downto 0);
  s_axis_1_TLAST(0) <= s_axis_tlast(0);
  s_axis_1_TUSER(0) <= s_axis_tuser(0);
  s_axis_1_TVALID(0) <= s_axis_tvalid(0);
  s_axis_tready(0) <= s_axis_1_TREADY(0);
dsp_stream_re_1: component dsp_stream_re_bd_dsp_stream_re_1_0
     port map (
      clk => clk_1,
      m_axis_tdata(15 downto 0) => dsp_stream_re_1_m_axis_TDATA(15 downto 0),
      m_axis_tlast(0) => dsp_stream_re_1_m_axis_TLAST(0),
      m_axis_tready(0) => dsp_stream_re_1_m_axis_TREADY(0),
      m_axis_tuser(0) => dsp_stream_re_1_m_axis_TUSER(0),
      m_axis_tvalid(0) => dsp_stream_re_1_m_axis_TVALID(0),
      s_axis_tdata(31 downto 0) => s_axis_1_TDATA(31 downto 0),
      s_axis_tlast(0) => s_axis_1_TLAST(0),
      s_axis_tready(0) => s_axis_1_TREADY(0),
      s_axis_tuser(0) => s_axis_1_TUSER(0),
      s_axis_tvalid(0) => s_axis_1_TVALID(0)
    );
end STRUCTURE;
