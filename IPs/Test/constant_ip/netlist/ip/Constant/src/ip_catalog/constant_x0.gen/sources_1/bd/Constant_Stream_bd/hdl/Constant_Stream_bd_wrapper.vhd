--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Thu Apr  3 14:40:56 2025
--Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
--Command     : generate_target Constant_Stream_bd_wrapper.bd
--Design      : Constant_Stream_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Constant_Stream_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    constant_in_nan : in STD_LOGIC_VECTOR ( 0 to 0 );
    constant_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end Constant_Stream_bd_wrapper;

architecture STRUCTURE of Constant_Stream_bd_wrapper is
  component Constant_Stream_bd is
  port (
    clk : in STD_LOGIC;
    constant_in_nan : in STD_LOGIC_VECTOR ( 0 to 0 );
    constant_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Constant_Stream_bd;
begin
Constant_Stream_bd_i: component Constant_Stream_bd
     port map (
      clk => clk,
      constant_in_nan(0) => constant_in_nan(0),
      constant_out(31 downto 0) => constant_out(31 downto 0)
    );
end STRUCTURE;
