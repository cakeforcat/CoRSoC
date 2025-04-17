--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Wed Apr 16 16:41:37 2025
--Host        : Laptopiszcze running 64-bit major release  (build 9200)
--Command     : generate_target Broadcast_bd.bd
--Design      : Broadcast_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Broadcast_bd is
  port (
    clk : in STD_LOGIC;
    m_0_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_0_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_0_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_1_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_1_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_1_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Broadcast_bd : entity is "Broadcast_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Broadcast_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Broadcast_bd : entity is "Broadcast_bd.hwdef";
end Broadcast_bd;

architecture STRUCTURE of Broadcast_bd is
  component Broadcast_bd_Broadcast_1_0 is
  port (
    m_0_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_1_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_0_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_0_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_1_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_1_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Broadcast_bd_Broadcast_1_0;
  signal Broadcast_1_m_0_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Broadcast_1_m_0_axis_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Broadcast_1_m_0_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Broadcast_1_m_1_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Broadcast_1_m_1_axis_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Broadcast_1_m_1_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal s_axis_1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axis_1_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_1_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF m_0_axis:m_1_axis:s_axis, CLK_DOMAIN Broadcast_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of m_0_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_0_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_0_axis_tdata : signal is "XIL_INTERFACENAME m_0_axis, CLK_DOMAIN Broadcast_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of m_0_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_0_axis TREADY";
  attribute X_INTERFACE_INFO of m_0_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_0_axis TVALID";
  attribute X_INTERFACE_INFO of m_1_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_1_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_1_axis_tdata : signal is "XIL_INTERFACENAME m_1_axis, CLK_DOMAIN Broadcast_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of m_1_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_1_axis TREADY";
  attribute X_INTERFACE_INFO of m_1_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_1_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, CLK_DOMAIN Broadcast_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
begin
  Broadcast_1_m_0_axis_TREADY(0) <= m_0_axis_tready(0);
  Broadcast_1_m_1_axis_TREADY(0) <= m_1_axis_tready(0);
  clk_1 <= clk;
  m_0_axis_tdata(15 downto 0) <= Broadcast_1_m_0_axis_TDATA(15 downto 0);
  m_0_axis_tvalid(0) <= Broadcast_1_m_0_axis_TVALID(0);
  m_1_axis_tdata(15 downto 0) <= Broadcast_1_m_1_axis_TDATA(15 downto 0);
  m_1_axis_tvalid(0) <= Broadcast_1_m_1_axis_TVALID(0);
  s_axis_1_TDATA(15 downto 0) <= s_axis_tdata(15 downto 0);
  s_axis_1_TVALID(0) <= s_axis_tvalid(0);
  s_axis_tready(0) <= s_axis_1_TREADY(0);
Broadcast_1: component Broadcast_bd_Broadcast_1_0
     port map (
      clk => clk_1,
      m_0_axis_tdata(15 downto 0) => Broadcast_1_m_0_axis_TDATA(15 downto 0),
      m_0_axis_tready(0) => Broadcast_1_m_0_axis_TREADY(0),
      m_0_axis_tvalid(0) => Broadcast_1_m_0_axis_TVALID(0),
      m_1_axis_tdata(15 downto 0) => Broadcast_1_m_1_axis_TDATA(15 downto 0),
      m_1_axis_tready(0) => Broadcast_1_m_1_axis_TREADY(0),
      m_1_axis_tvalid(0) => Broadcast_1_m_1_axis_TVALID(0),
      s_axis_tdata(15 downto 0) => s_axis_1_TDATA(15 downto 0),
      s_axis_tready(0) => s_axis_1_TREADY(0),
      s_axis_tvalid(0) => s_axis_1_TVALID(0)
    );
end STRUCTURE;
