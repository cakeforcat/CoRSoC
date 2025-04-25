-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Apr  4 11:55:17 2025
-- Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/andre/CoRSoC/IPIs/Tests/integration_test/integration_test.gen/sources_1/bd/design_1/ip/design_1_Constant_Stream_0_0/design_1_Constant_Stream_0_0_sim_netlist.vhdl
-- Design      : design_1_Constant_Stream_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Constant_Stream_0_0 is
  port (
    constant_in_nan : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    constant_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Constant_Stream_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Constant_Stream_0_0 : entity is "design_1_Constant_Stream_0_0,constant_x0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Constant_Stream_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Constant_Stream_0_0 : entity is "sysgen";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Constant_Stream_0_0 : entity is "constant_x0,Vivado 2024.1";
end design_1_Constant_Stream_0_0;

architecture STRUCTURE of design_1_Constant_Stream_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of constant_in_nan : signal is "xilinx.com:signal:data:1.0 constant_in_nan DATA";
  attribute x_interface_parameter of constant_in_nan : signal is "XIL_INTERFACENAME constant_in_nan, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute x_interface_info of constant_out : signal is "xilinx.com:signal:data:1.0 constant_out DATA";
  attribute x_interface_parameter of constant_out : signal is "XIL_INTERFACENAME constant_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  constant_out(31) <= \<const0>\;
  constant_out(30) <= \<const0>\;
  constant_out(29) <= \<const0>\;
  constant_out(28) <= \<const0>\;
  constant_out(27) <= \<const0>\;
  constant_out(26) <= \<const0>\;
  constant_out(25) <= \<const0>\;
  constant_out(24) <= \<const0>\;
  constant_out(23) <= \<const0>\;
  constant_out(22) <= \<const0>\;
  constant_out(21) <= \<const0>\;
  constant_out(20) <= \<const0>\;
  constant_out(19) <= \<const0>\;
  constant_out(18) <= \<const0>\;
  constant_out(17) <= \<const0>\;
  constant_out(16) <= \<const0>\;
  constant_out(15) <= \<const0>\;
  constant_out(14) <= \<const1>\;
  constant_out(13) <= \<const0>\;
  constant_out(12) <= \<const0>\;
  constant_out(11) <= \<const0>\;
  constant_out(10) <= \<const0>\;
  constant_out(9) <= \<const0>\;
  constant_out(8) <= \<const0>\;
  constant_out(7) <= \<const0>\;
  constant_out(6) <= \<const0>\;
  constant_out(5) <= \<const0>\;
  constant_out(4) <= \<const0>\;
  constant_out(3) <= \<const0>\;
  constant_out(2) <= \<const0>\;
  constant_out(1) <= \<const0>\;
  constant_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
