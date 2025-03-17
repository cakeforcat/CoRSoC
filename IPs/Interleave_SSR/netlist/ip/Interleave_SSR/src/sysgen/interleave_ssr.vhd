-- Generated from Simulink block interleave/Interleave_SSR_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity interleave_ssr_struct is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_i_axis_tdata : in std_logic_vector( 64-1 downto 0 );
    s_i_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_q_axis_tdata : in std_logic_vector( 64-1 downto 0 );
    s_q_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    s_q_axis_tready : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 128-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_i_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end interleave_ssr_struct;
architecture structural of interleave_ssr_struct is 
  signal s_i_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 128-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal s_i_axis_tdata_net : std_logic_vector( 64-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal expression_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal s_q_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal s_q_axis_tdata_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal slice_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 16-1 downto 0 );
begin
  s_q_axis_tready <= delay9_q_net;
  m_axis_tdata <= concat_y_net;
  m_axis_tready_net <= m_axis_tready;
  m_axis_tvalid <= delay8_q_net;
  s_i_axis_tdata_net <= s_i_axis_tdata;
  s_i_axis_tready <= delay9_q_net;
  s_i_axis_tvalid_net <= s_i_axis_tvalid;
  s_q_axis_tdata_net <= s_q_axis_tdata;
  s_q_axis_tvalid_net <= s_q_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_1d6a768881 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => delay7_q_net,
    in1 => delay6_q_net,
    in2 => delay5_q_net,
    in3 => delay4_q_net,
    in4 => delay3_q_net,
    in5 => delay2_q_net,
    in6 => delay1_q_net,
    in7 => delay_q_net,
    y => concat_y_net
  );
  expression : entity xil_defaultlib.sysgen_expr_d0c3b55d6b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => s_i_axis_tvalid_net,
    b => s_q_axis_tvalid_net,
    dout => expression_dout_net
  );
  slice : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 48,
    new_msb => 63,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_i_axis_tdata_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 32,
    new_msb => 47,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_i_axis_tdata_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 31,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_i_axis_tdata_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_i_axis_tdata_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 48,
    new_msb => 63,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_q_axis_tdata_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 32,
    new_msb => 47,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_q_axis_tdata_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 31,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_q_axis_tdata_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.interleave_ssr_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 64,
    y_width => 16
  )
  port map (
    x => s_q_axis_tdata_net,
    y => slice7_y_net
  );
  delay : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice5_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.interleave_ssr_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => expression_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.interleave_ssr_xldelay 
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
    q => delay9_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity interleave_ssr_default_clock_driver is
  port (
    interleave_ssr_sysclk : in std_logic;
    interleave_ssr_sysce : in std_logic;
    interleave_ssr_sysclr : in std_logic;
    interleave_ssr_clk1 : out std_logic;
    interleave_ssr_ce1 : out std_logic
  );
end interleave_ssr_default_clock_driver;
architecture structural of interleave_ssr_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => interleave_ssr_sysclk,
    sysce => interleave_ssr_sysce,
    sysclr => interleave_ssr_sysclr,
    clk => interleave_ssr_clk1,
    ce => interleave_ssr_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity interleave_ssr is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_i_axis_tdata : in std_logic_vector( 64-1 downto 0 );
    s_i_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_q_axis_tdata : in std_logic_vector( 64-1 downto 0 );
    s_q_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    s_q_axis_tready : out std_logic_vector( 1-1 downto 0 );
    m_axis_tdata : out std_logic_vector( 128-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_i_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end interleave_ssr;
architecture structural of interleave_ssr is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "interleave_ssr,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=5,system_simulink_period=7.8125e-09,waveform_viewer=1,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=3.90625e-08,concat=1,delay=10,expr=1,slice=8,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  interleave_ssr_default_clock_driver : entity xil_defaultlib.interleave_ssr_default_clock_driver 
  port map (
    interleave_ssr_sysclk => clk,
    interleave_ssr_sysce => '1',
    interleave_ssr_sysclr => '0',
    interleave_ssr_clk1 => clk_1_net,
    interleave_ssr_ce1 => ce_1_net
  );
  interleave_ssr_struct : entity xil_defaultlib.interleave_ssr_struct 
  port map (
    m_axis_tready => m_axis_tready,
    s_i_axis_tdata => s_i_axis_tdata,
    s_i_axis_tvalid => s_i_axis_tvalid,
    s_q_axis_tdata => s_q_axis_tdata,
    s_q_axis_tvalid => s_q_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    s_q_axis_tready => s_q_axis_tready,
    m_axis_tdata => m_axis_tdata,
    m_axis_tvalid => m_axis_tvalid,
    s_i_axis_tready => s_i_axis_tready
  );
end structural;
