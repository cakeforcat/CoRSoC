-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity finn_convert_stub is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_i_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_i_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_q_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_q_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    m_full_axis_tready : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_i_axis_tready : out std_logic_vector( 1-1 downto 0 );
    s_q_axis_tready : out std_logic_vector( 1-1 downto 0 );
    m_full_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_full_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end finn_convert_stub;
architecture structural of finn_convert_stub is 
begin
  sysgen_dut : entity xil_defaultlib.FINNconvert_0 
  port map (
    m_axis_tready => m_axis_tready,
    s_i_axis_tdata => s_i_axis_tdata,
    s_i_axis_tvalid => s_i_axis_tvalid,
    s_q_axis_tdata => s_q_axis_tdata,
    s_q_axis_tvalid => s_q_axis_tvalid,
    m_full_axis_tready => m_full_axis_tready,
    clk => clk,
    m_axis_tdata => m_axis_tdata,
    m_axis_tvalid => m_axis_tvalid,
    s_i_axis_tready => s_i_axis_tready,
    s_q_axis_tready => s_q_axis_tready,
    m_full_axis_tdata => m_full_axis_tdata,
    m_full_axis_tvalid => m_full_axis_tvalid
  );
end structural;
