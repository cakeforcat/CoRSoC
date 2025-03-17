--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Fri Mar  7 17:54:02 2025
--Host        : Laptopiszcze running 64-bit major release  (build 9200)
--Command     : generate_target Interleave64to128_bd_wrapper.bd
--Design      : Interleave64to128_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Interleave64to128_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_i_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_i_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_i_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_q_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_q_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_q_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Interleave64to128_bd_wrapper;

architecture STRUCTURE of Interleave64to128_bd_wrapper is
  component Interleave64to128_bd is
  port (
    clk : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_i_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_i_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_i_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_q_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_q_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_q_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Interleave64to128_bd;
begin
Interleave64to128_bd_i: component Interleave64to128_bd
     port map (
      clk => clk,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_i_axis_tdata(63 downto 0) => s_i_axis_tdata(63 downto 0),
      s_i_axis_tready(0) => s_i_axis_tready(0),
      s_i_axis_tvalid(0) => s_i_axis_tvalid(0),
      s_q_axis_tdata(63 downto 0) => s_q_axis_tdata(63 downto 0),
      s_q_axis_tready(0) => s_q_axis_tready(0),
      s_q_axis_tvalid(0) => s_q_axis_tvalid(0)
    );
end STRUCTURE;
