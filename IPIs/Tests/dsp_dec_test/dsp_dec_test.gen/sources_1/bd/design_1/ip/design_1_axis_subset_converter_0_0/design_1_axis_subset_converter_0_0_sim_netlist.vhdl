-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Feb 28 16:44:31 2025
-- Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/andre/CoRSoC/IPIs/Tests/dsp_dec/dsp_dec.gen/sources_1/bd/design_1/ip/design_1_axis_subset_converter_0_0/design_1_axis_subset_converter_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_subset_converter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    transfer_dropped : out STD_LOGIC;
    sparse_tkeep_removed : out STD_LOGIC
  );
  attribute C_DEFAULT_TLAST : integer;
  attribute C_DEFAULT_TLAST of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is "zynquplus";
  attribute C_M_AXIS_SIGNAL_SET : integer;
  attribute C_M_AXIS_SIGNAL_SET of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 2;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 32;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute C_S_AXIS_SIGNAL_SET : integer;
  attribute C_S_AXIS_SIGNAL_SET of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 2;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 48;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 : entity is "top_design_1_axis_subset_converter_0_0";
end design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0;

architecture STRUCTURE of design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
begin
  \^s_axis_tdata\(40) <= s_axis_tdata(40);
  \^s_axis_tdata\(38 downto 24) <= s_axis_tdata(38 downto 24);
  \^s_axis_tdata\(16) <= s_axis_tdata(16);
  \^s_axis_tdata\(14 downto 0) <= s_axis_tdata(14 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(31) <= \^s_axis_tdata\(40);
  m_axis_tdata(30 downto 16) <= \^s_axis_tdata\(38 downto 24);
  m_axis_tdata(15) <= \^s_axis_tdata\(16);
  m_axis_tdata(14 downto 0) <= \^s_axis_tdata\(14 downto 0);
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \<const0>\;
  sparse_tkeep_removed <= \<const0>\;
  transfer_dropped <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_subset_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_subset_converter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_subset_converter_0_0 : entity is "design_1_axis_subset_converter_0_0,top_design_1_axis_subset_converter_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_subset_converter_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_subset_converter_0_0 : entity is "top_design_1_axis_subset_converter_0_0,Vivado 2024.1";
end design_1_axis_subset_converter_0_0;

architecture STRUCTURE of design_1_axis_subset_converter_0_0 is
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sparse_tkeep_removed_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_transfer_dropped_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_DEFAULT_TLAST : integer;
  attribute C_DEFAULT_TLAST of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_M_AXIS_SIGNAL_SET : integer;
  attribute C_M_AXIS_SIGNAL_SET of inst : label is 2;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_SIGNAL_SET : integer;
  attribute C_S_AXIS_SIGNAL_SET of inst : label is 2;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 48;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 41} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 48} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 41} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value path} size {attribs {resolve_type generated dependency path_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type generated dependency path_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency out_width format long minimum {} maximum {}} value 17} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency out_fractwidth format long minimum {} maximum {}} value 14} signed {attribs {resolve_type generated dependency out_signed format bool minimum {} maximum {}} value true}}}}}}}}} TDATA_WIDTH 48 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_data_valid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_valid} enabled {attribs {resolve_type generated dependency data_valid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_valid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chanid_bitoffset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
begin
inst: entity work.design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0
     port map (
      aclk => '0',
      aclken => '1',
      aresetn => '0',
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(3 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '1',
      m_axis_tstrb(3 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(47 downto 41) => B"0000000",
      s_axis_tdata(40) => s_axis_tdata(40),
      s_axis_tdata(39) => '0',
      s_axis_tdata(38 downto 24) => s_axis_tdata(38 downto 24),
      s_axis_tdata(23 downto 17) => B"0000000",
      s_axis_tdata(16) => s_axis_tdata(16),
      s_axis_tdata(15) => '0',
      s_axis_tdata(14 downto 0) => s_axis_tdata(14 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(5 downto 0) => B"111111",
      s_axis_tlast => '1',
      s_axis_tready => NLW_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(5 downto 0) => B"111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sparse_tkeep_removed => NLW_inst_sparse_tkeep_removed_UNCONNECTED,
      transfer_dropped => NLW_inst_transfer_dropped_UNCONNECTED
    );
end STRUCTURE;
