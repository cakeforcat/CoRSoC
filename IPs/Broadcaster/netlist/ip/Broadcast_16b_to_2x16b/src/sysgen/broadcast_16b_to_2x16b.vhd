-- Generated from Simulink block Broadcast/Broadcast_16b_to_2x16b_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity broadcast_16b_to_2x16b_struct is
  port (
    m_0_axis_tready : in std_logic_vector( 1-1 downto 0 );
    m_1_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_0_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_0_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    m_1_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_1_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end broadcast_16b_to_2x16b_struct;
architecture structural of broadcast_16b_to_2x16b_struct is 
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal m_0_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal m_1_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal s_axis_tdata_net : std_logic_vector( 16-1 downto 0 );
  signal expression_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  m_0_axis_tdata <= delay_q_net;
  m_0_axis_tready_net <= m_0_axis_tready;
  m_0_axis_tvalid <= delay1_q_net;
  m_1_axis_tdata <= delay_q_net;
  m_1_axis_tready_net <= m_1_axis_tready;
  m_1_axis_tvalid <= delay1_q_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tready <= expression_dout_net;
  s_axis_tvalid_net <= s_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.broadcast_16b_to_2x16b_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.broadcast_16b_to_2x16b_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  expression : entity xil_defaultlib.sysgen_expr_c9133a5438 
  port map (
    clr => '0',
    a => m_0_axis_tready_net,
    b => m_1_axis_tready_net,
    clk => clk_net,
    ce => ce_net,
    dout => expression_dout_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity broadcast_16b_to_2x16b_default_clock_driver is
  port (
    broadcast_16b_to_2x16b_sysclk : in std_logic;
    broadcast_16b_to_2x16b_sysce : in std_logic;
    broadcast_16b_to_2x16b_sysclr : in std_logic;
    broadcast_16b_to_2x16b_clk1 : out std_logic;
    broadcast_16b_to_2x16b_ce1 : out std_logic
  );
end broadcast_16b_to_2x16b_default_clock_driver;
architecture structural of broadcast_16b_to_2x16b_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => broadcast_16b_to_2x16b_sysclk,
    sysce => broadcast_16b_to_2x16b_sysce,
    sysclr => broadcast_16b_to_2x16b_sysclr,
    clk => broadcast_16b_to_2x16b_clk1,
    ce => broadcast_16b_to_2x16b_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity broadcast_16b_to_2x16b is
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
end broadcast_16b_to_2x16b;
architecture structural of broadcast_16b_to_2x16b is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "broadcast_16b_to_2x16b,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=5,system_simulink_period=7.8125e-09,waveform_viewer=1,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=3.90625e-08,delay=2,expr=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  broadcast_16b_to_2x16b_default_clock_driver : entity xil_defaultlib.broadcast_16b_to_2x16b_default_clock_driver 
  port map (
    broadcast_16b_to_2x16b_sysclk => clk,
    broadcast_16b_to_2x16b_sysce => '1',
    broadcast_16b_to_2x16b_sysclr => '0',
    broadcast_16b_to_2x16b_clk1 => clk_1_net,
    broadcast_16b_to_2x16b_ce1 => ce_1_net
  );
  broadcast_16b_to_2x16b_struct : entity xil_defaultlib.broadcast_16b_to_2x16b_struct 
  port map (
    m_0_axis_tready => m_0_axis_tready,
    m_1_axis_tready => m_1_axis_tready,
    s_axis_tdata => s_axis_tdata,
    s_axis_tvalid => s_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_0_axis_tdata => m_0_axis_tdata,
    m_0_axis_tvalid => m_0_axis_tvalid,
    m_1_axis_tdata => m_1_axis_tdata,
    m_1_axis_tvalid => m_1_axis_tvalid,
    s_axis_tready => s_axis_tready
  );
end structural;
