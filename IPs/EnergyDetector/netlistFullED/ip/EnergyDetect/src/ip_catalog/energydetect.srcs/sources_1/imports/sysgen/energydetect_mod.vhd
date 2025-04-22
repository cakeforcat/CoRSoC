-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity energydetect_stub is
  port (
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata2 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata3 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata4 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata5 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata6 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata7 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata8 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 32-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 )
  );
end energydetect_stub;
architecture structural of energydetect_stub is 
begin
  sysgen_dut : entity xil_defaultlib.EnergyDetect_0 
  port map (
    s_axis_tdata => s_axis_tdata,
    s_axis_tdata2 => s_axis_tdata2,
    s_axis_tdata3 => s_axis_tdata3,
    s_axis_tdata4 => s_axis_tdata4,
    s_axis_tdata5 => s_axis_tdata5,
    s_axis_tdata6 => s_axis_tdata6,
    s_axis_tdata7 => s_axis_tdata7,
    s_axis_tdata8 => s_axis_tdata8,
    s_axis_tlast => s_axis_tlast,
    s_axis_tuser => s_axis_tuser,
    s_axis_tvalid => s_axis_tvalid,
    clk => clk,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    m_axis_tdata => m_axis_tdata
  );
end structural;
