--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Feb  6 11:23:51 2025
--Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
--Command     : generate_target Decimator_bd_wrapper.bd
--Design      : Decimator_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decimator_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_im_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_im_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_re_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_re_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Decimator_bd_wrapper;

architecture STRUCTURE of Decimator_bd_wrapper is
  component Decimator_bd is
  port (
    clk : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_im_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_im_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_re_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_re_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Decimator_bd;
begin
Decimator_bd_i: component Decimator_bd
     port map (
      clk => clk,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axis_im_tdata(127 downto 0) => s_axis_im_tdata(127 downto 0),
      s_axis_im_tvalid(0) => s_axis_im_tvalid(0),
      s_axis_re_tdata(127 downto 0) => s_axis_re_tdata(127 downto 0),
      s_axis_re_tvalid(0) => s_axis_re_tvalid(0),
      s_axis_tready(0) => s_axis_tready(0)
    );
end STRUCTURE;
