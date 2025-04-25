--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Apr  3 14:34:54 2025
--Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
--Command     : generate_target ram_re_bd_wrapper.bd
--Design      : ram_re_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram_re_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    ctrl_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ram_re_bd_wrapper;

architecture STRUCTURE of ram_re_bd_wrapper is
  component ram_re_bd is
  port (
    clk : in STD_LOGIC;
    ctrl_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ram_re_bd;
begin
ram_re_bd_i: component ram_re_bd
     port map (
      clk => clk,
      ctrl_ip(31 downto 0) => ctrl_ip(31 downto 0),
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
end STRUCTURE;
