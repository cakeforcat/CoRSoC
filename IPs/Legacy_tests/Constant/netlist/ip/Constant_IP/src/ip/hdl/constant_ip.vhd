-- Generated from Simulink block Constant/Constant_IP_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity constant_ip_struct is
  port (
    gateway_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    gateway_out : out std_logic_vector( 32-1 downto 0 )
  );
end constant_ip_struct;
architecture structural of constant_ip_struct is 
  signal clk_net : std_logic;
  signal constant_op_net : std_logic_vector( 32-1 downto 0 );
  signal gateway_in_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
begin
  gateway_out <= constant_op_net;
  gateway_in_net <= gateway_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_e5c195bd01 
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
entity constant_ip_default_clock_driver is
  port (
    constant_ip_sysclk : in std_logic;
    constant_ip_sysce : in std_logic;
    constant_ip_sysclr : in std_logic;
    constant_ip_clk1 : out std_logic;
    constant_ip_ce1 : out std_logic
  );
end constant_ip_default_clock_driver;
architecture structural of constant_ip_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => constant_ip_sysclk,
    sysce => constant_ip_sysce,
    sysclr => constant_ip_sysclr,
    clk => constant_ip_clk1,
    ce => constant_ip_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity constant_ip is
  port (
    gateway_in : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    constant_ip_aresetn : in std_logic;
    constant_ip_s_axi_awaddr : in std_logic;
    constant_ip_s_axi_awvalid : in std_logic;
    constant_ip_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    constant_ip_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    constant_ip_s_axi_wvalid : in std_logic;
    constant_ip_s_axi_bready : in std_logic;
    constant_ip_s_axi_araddr : in std_logic;
    constant_ip_s_axi_arvalid : in std_logic;
    constant_ip_s_axi_rready : in std_logic;
    constant_ip_s_axi_awready : out std_logic;
    constant_ip_s_axi_wready : out std_logic;
    constant_ip_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    constant_ip_s_axi_bvalid : out std_logic;
    constant_ip_s_axi_arready : out std_logic;
    constant_ip_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    constant_ip_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    constant_ip_s_axi_rvalid : out std_logic
  );
end constant_ip;
architecture structural of constant_ip is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "constant_ip,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.01,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1e-07,constant=1,counter=1,}";
  signal ce_1_net : std_logic;
  signal gateway_out : std_logic_vector( 32-1 downto 0 );
  signal clk_1_net : std_logic;
  signal clk_net : std_logic;
begin
  constant_ip_axi_lite_interface : entity xil_defaultlib.constant_ip_axi_lite_interface 
  port map (
    gateway_out => gateway_out,
    constant_ip_s_axi_awaddr => constant_ip_s_axi_awaddr,
    constant_ip_s_axi_awvalid => constant_ip_s_axi_awvalid,
    constant_ip_s_axi_wdata => constant_ip_s_axi_wdata,
    constant_ip_s_axi_wstrb => constant_ip_s_axi_wstrb,
    constant_ip_s_axi_wvalid => constant_ip_s_axi_wvalid,
    constant_ip_s_axi_bready => constant_ip_s_axi_bready,
    constant_ip_s_axi_araddr => constant_ip_s_axi_araddr,
    constant_ip_s_axi_arvalid => constant_ip_s_axi_arvalid,
    constant_ip_s_axi_rready => constant_ip_s_axi_rready,
    constant_ip_aresetn => constant_ip_aresetn,
    constant_ip_aclk => clk,
    constant_ip_s_axi_awready => constant_ip_s_axi_awready,
    constant_ip_s_axi_wready => constant_ip_s_axi_wready,
    constant_ip_s_axi_bresp => constant_ip_s_axi_bresp,
    constant_ip_s_axi_bvalid => constant_ip_s_axi_bvalid,
    constant_ip_s_axi_arready => constant_ip_s_axi_arready,
    constant_ip_s_axi_rdata => constant_ip_s_axi_rdata,
    constant_ip_s_axi_rresp => constant_ip_s_axi_rresp,
    constant_ip_s_axi_rvalid => constant_ip_s_axi_rvalid,
    clk => clk_net
  );
  constant_ip_default_clock_driver : entity xil_defaultlib.constant_ip_default_clock_driver 
  port map (
    constant_ip_sysclk => clk_net,
    constant_ip_sysce => '1',
    constant_ip_sysclr => '0',
    constant_ip_clk1 => clk_1_net,
    constant_ip_ce1 => ce_1_net
  );
  constant_ip_struct : entity xil_defaultlib.constant_ip_struct 
  port map (
    gateway_in => gateway_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    gateway_out => gateway_out
  );
end structural;
