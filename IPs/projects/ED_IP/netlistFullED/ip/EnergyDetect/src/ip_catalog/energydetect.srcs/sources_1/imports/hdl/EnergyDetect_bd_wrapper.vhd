--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Wed Apr 16 03:20:10 2025
--Host        : DESKTOP-A4M58OC running 64-bit major release  (build 9200)
--Command     : generate_target EnergyDetect_bd_wrapper.bd
--Design      : EnergyDetect_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EnergyDetect_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end EnergyDetect_bd_wrapper;

architecture STRUCTURE of EnergyDetect_bd_wrapper is
  component EnergyDetect_bd is
  port (
    clk : in STD_LOGIC;
    s_axis_tdata2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdata8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component EnergyDetect_bd;
begin
EnergyDetect_bd_i: component EnergyDetect_bd
     port map (
      clk => clk,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tdata2(15 downto 0) => s_axis_tdata2(15 downto 0),
      s_axis_tdata3(15 downto 0) => s_axis_tdata3(15 downto 0),
      s_axis_tdata4(15 downto 0) => s_axis_tdata4(15 downto 0),
      s_axis_tdata5(15 downto 0) => s_axis_tdata5(15 downto 0),
      s_axis_tdata6(15 downto 0) => s_axis_tdata6(15 downto 0),
      s_axis_tdata7(15 downto 0) => s_axis_tdata7(15 downto 0),
      s_axis_tdata8(15 downto 0) => s_axis_tdata8(15 downto 0),
      s_axis_tlast(0) => s_axis_tlast(0),
      s_axis_tuser(31 downto 0) => s_axis_tuser(31 downto 0),
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
