-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity constant_x0_stub is
  port (
    constant_in_nan : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    constant_out : out std_logic_vector( 32-1 downto 0 )
  );
end constant_x0_stub;
architecture structural of constant_x0_stub is 
begin
  sysgen_dut : entity xil_defaultlib.Constant_Stream_0 
  port map (
    constant_in_nan => constant_in_nan,
    clk => clk,
    constant_out => constant_out
  );
end structural;
