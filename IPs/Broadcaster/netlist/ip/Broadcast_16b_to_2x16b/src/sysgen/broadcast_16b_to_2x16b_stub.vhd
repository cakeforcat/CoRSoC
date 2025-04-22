-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity broadcast_16b_to_2x16b_stub is
  port (
    m_0_axis_tready : in std_logic_vector( 1-1 downto 0 );
    m_1_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_0_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_0_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_1_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_1_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end broadcast_16b_to_2x16b_stub;
architecture structural of broadcast_16b_to_2x16b_stub is 
begin
  sysgen_dut : entity xil_defaultlib.broadcast_16b_to_2x16b 
  port map (
    m_0_axis_tready => m_0_axis_tready,
    m_1_axis_tready => m_1_axis_tready,
    s_axis_tdata => s_axis_tdata,
    s_axis_tvalid => s_axis_tvalid,
    clk => clk,
    m_0_axis_tdata => m_0_axis_tdata,
    m_0_axis_tvalid => m_0_axis_tvalid,
    m_1_axis_tdata => m_1_axis_tdata,
    m_1_axis_tvalid => m_1_axis_tvalid,
    s_axis_tready => s_axis_tready
  );
end structural;
