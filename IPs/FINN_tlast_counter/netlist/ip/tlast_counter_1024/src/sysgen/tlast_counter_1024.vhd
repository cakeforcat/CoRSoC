-- Generated from Simulink block tlast_counter/tlast_counter_1024_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity tlast_counter_1024_struct is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 8-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 8-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end tlast_counter_1024_struct;
architecture structural of tlast_counter_1024_struct is 
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 8-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 10-1 downto 0 );
begin
  m_axis_tdata <= delay_q_net;
  m_axis_tlast <= relational_op_net;
  m_axis_tready_net <= m_axis_tready;
  m_axis_tvalid <= delay1_q_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tready <= delay2_q_net;
  s_axis_tvalid_net <= s_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_de46705d32 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.tlast_counter_1024_xlcounter_free 
  generic map (
    core_name0 => "tlast_counter_1024_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity xil_defaultlib.tlast_counter_1024_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.tlast_counter_1024_xldelay 
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
  delay2 : entity xil_defaultlib.tlast_counter_1024_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => m_axis_tready_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a437206569 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay2_q_net,
    d1 => s_axis_tvalid_net,
    y => logical_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_7fc0408c72 
  port map (
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity tlast_counter_1024_default_clock_driver is
  port (
    tlast_counter_1024_sysclk : in std_logic;
    tlast_counter_1024_sysce : in std_logic;
    tlast_counter_1024_sysclr : in std_logic;
    tlast_counter_1024_clk1 : out std_logic;
    tlast_counter_1024_ce1 : out std_logic
  );
end tlast_counter_1024_default_clock_driver;
architecture structural of tlast_counter_1024_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => tlast_counter_1024_sysclk,
    sysce => tlast_counter_1024_sysce,
    sysclr => tlast_counter_1024_sysclr,
    clk => tlast_counter_1024_clk1,
    ce => tlast_counter_1024_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity tlast_counter_1024 is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 8-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 8-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end tlast_counter_1024;
architecture structural of tlast_counter_1024 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "tlast_counter_1024,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=5,system_simulink_period=6.25e-08,waveform_viewer=1,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=3.125e-07,constant=1,counter=1,delay=3,logical=1,relational=1,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  tlast_counter_1024_default_clock_driver : entity xil_defaultlib.tlast_counter_1024_default_clock_driver 
  port map (
    tlast_counter_1024_sysclk => clk,
    tlast_counter_1024_sysce => '1',
    tlast_counter_1024_sysclr => '0',
    tlast_counter_1024_clk1 => clk_1_net,
    tlast_counter_1024_ce1 => ce_1_net
  );
  tlast_counter_1024_struct : entity xil_defaultlib.tlast_counter_1024_struct 
  port map (
    m_axis_tready => m_axis_tready,
    s_axis_tdata => s_axis_tdata,
    s_axis_tvalid => s_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    s_axis_tready => s_axis_tready
  );
end structural;
