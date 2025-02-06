-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity dut_ip_stub is
  port (
    s_axis_im_tdata : in std_logic_vector( 128-1 downto 0 );
    s_axis_im_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_re_tdata : in std_logic_vector( 128-1 downto 0 );
    s_axis_re_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    out2 : out std_logic_vector( 1-1 downto 0 );
    out3 : out std_logic_vector( 32-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dut_ip_stub;
architecture structural of dut_ip_stub is 
begin
  sysgen_dut : entity xil_defaultlib.dut_ip 
  port map (
    s_axis_im_tdata => s_axis_im_tdata,
    s_axis_im_tvalid => s_axis_im_tvalid,
    s_axis_re_tdata => s_axis_re_tdata,
    s_axis_re_tvalid => s_axis_re_tvalid,
    clk => clk,
    out2 => out2,
    out3 => out3,
    s_axis_tready => s_axis_tready
  );
end structural;
