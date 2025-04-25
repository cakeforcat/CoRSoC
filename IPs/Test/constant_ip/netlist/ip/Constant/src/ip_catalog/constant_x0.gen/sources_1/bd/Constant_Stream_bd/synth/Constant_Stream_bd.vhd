--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Apr  3 14:40:56 2025
--Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
--Command     : generate_target Constant_Stream_bd.bd
--Design      : Constant_Stream_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Constant_Stream_bd is
  port (
    clk : in STD_LOGIC;
    constant_in_nan : in STD_LOGIC_VECTOR ( 0 to 0 );
    constant_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Constant_Stream_bd : entity is "Constant_Stream_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Constant_Stream_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Constant_Stream_bd : entity is "Constant_Stream_bd.hwdef";
end Constant_Stream_bd;

architecture STRUCTURE of Constant_Stream_bd is
  component Constant_Stream_bd_Constant_Stream_1_0 is
  port (
    constant_in_nan : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    constant_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Constant_Stream_bd_Constant_Stream_1_0;
  signal Constant_Stream_1_constant_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal constant_in_nan_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Constant_Stream_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of constant_in_nan : signal is "xilinx.com:signal:data:1.0 DATA.CONSTANT_IN_NAN DATA";
  attribute X_INTERFACE_PARAMETER of constant_in_nan : signal is "XIL_INTERFACENAME DATA.CONSTANT_IN_NAN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of constant_out : signal is "xilinx.com:signal:data:1.0 DATA.CONSTANT_OUT DATA";
  attribute X_INTERFACE_PARAMETER of constant_out : signal is "XIL_INTERFACENAME DATA.CONSTANT_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  clk_1 <= clk;
  constant_in_nan_1(0) <= constant_in_nan(0);
  constant_out(31 downto 0) <= Constant_Stream_1_constant_out(31 downto 0);
Constant_Stream_1: component Constant_Stream_bd_Constant_Stream_1_0
     port map (
      clk => clk_1,
      constant_in_nan(0) => constant_in_nan_1(0),
      constant_out(31 downto 0) => Constant_Stream_1_constant_out(31 downto 0)
    );
end STRUCTURE;
