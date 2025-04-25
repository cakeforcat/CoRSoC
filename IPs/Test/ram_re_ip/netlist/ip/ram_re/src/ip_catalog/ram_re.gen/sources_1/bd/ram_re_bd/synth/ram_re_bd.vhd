--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Apr  3 14:34:54 2025
--Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
--Command     : generate_target ram_re_bd.bd
--Design      : ram_re_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram_re_bd is
  port (
    clk : in STD_LOGIC;
    ctrl_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ram_re_bd : entity is "ram_re_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ram_re_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ram_re_bd : entity is "ram_re_bd.hwdef";
end ram_re_bd;

architecture STRUCTURE of ram_re_bd is
  component ram_re_bd_ram_re_1_0 is
  port (
    ctrl_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ram_re_bd_ram_re_1_0;
  signal clk_1 : STD_LOGIC;
  signal ctrl_ip_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_re_1_m_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ram_re_1_m_axis_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ram_re_1_m_axis_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF m_axis, CLK_DOMAIN ram_re_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ctrl_ip : signal is "xilinx.com:signal:data:1.0 DATA.CTRL_IP DATA";
  attribute X_INTERFACE_PARAMETER of ctrl_ip : signal is "XIL_INTERFACENAME DATA.CTRL_IP, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, CLK_DOMAIN ram_re_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
begin
  clk_1 <= clk;
  ctrl_ip_1(31 downto 0) <= ctrl_ip(31 downto 0);
  m_axis_tdata(15 downto 0) <= ram_re_1_m_axis_TDATA(15 downto 0);
  m_axis_tlast(0) <= ram_re_1_m_axis_TLAST(0);
  m_axis_tvalid(0) <= ram_re_1_m_axis_TVALID(0);
ram_re_1: component ram_re_bd_ram_re_1_0
     port map (
      clk => clk_1,
      ctrl_ip(31 downto 0) => ctrl_ip_1(31 downto 0),
      m_axis_tdata(15 downto 0) => ram_re_1_m_axis_TDATA(15 downto 0),
      m_axis_tlast(0) => ram_re_1_m_axis_TLAST(0),
      m_axis_tvalid(0) => ram_re_1_m_axis_TVALID(0)
    );
end STRUCTURE;
