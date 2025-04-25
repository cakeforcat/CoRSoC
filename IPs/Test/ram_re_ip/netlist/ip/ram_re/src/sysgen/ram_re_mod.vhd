-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity ram_re_stub is
  port (
    ctrl_ip : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end ram_re_stub;
architecture structural of ram_re_stub is 
begin
  sysgen_dut : entity xil_defaultlib.ram_re_0 
  port map (
    ctrl_ip => ctrl_ip,
    clk => clk,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid
  );
end structural;
