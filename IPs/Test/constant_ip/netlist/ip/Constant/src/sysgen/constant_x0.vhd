-- Generated from Simulink block constant_ip/Constant_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity constant_struct is
  port (
    constant_in_nan : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    constant_out : out std_logic_vector( 32-1 downto 0 )
  );
end constant_struct;
architecture structural of constant_struct is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant_in_nan_net : std_logic_vector( 1-1 downto 0 );
begin
  constant_in_nan_net <= constant_in_nan;
  constant_out <= constant_op_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x1 : entity xil_defaultlib.sysgen_constant_76fbebb465 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity constant_default_clock_driver is
  port (
    constant_sysclk : in std_logic;
    constant_sysce : in std_logic;
    constant_sysclr : in std_logic;
    constant_clk1 : out std_logic;
    constant_ce1 : out std_logic
  );
end constant_default_clock_driver;
architecture structural of constant_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => constant_sysclk,
    sysce => constant_sysce,
    sysclr => constant_sysclr,
    clk => constant_clk1,
    ce => constant_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity constant_x0 is
  port (
    constant_in_nan : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    constant_out : out std_logic_vector( 32-1 downto 0 )
  );
end constant_x0;
architecture structural of constant_x0 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "constant_x0,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.01,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1e-07,constant=1,counter=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  constant_default_clock_driver : entity xil_defaultlib.constant_default_clock_driver 
  port map (
    constant_sysclk => clk,
    constant_sysce => '1',
    constant_sysclr => '0',
    constant_clk1 => clk_1_net,
    constant_ce1 => ce_1_net
  );
  constant_struct : entity xil_defaultlib.constant_struct 
  port map (
    constant_in_nan => constant_in_nan,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    constant_out => constant_out
  );
end structural;
