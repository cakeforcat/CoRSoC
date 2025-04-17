-- Generated from Simulink block FINNconvert/FINN_convert_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity finn_convert_struct is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_i_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_i_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_q_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_q_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_i_axis_tready : out std_logic_vector( 1-1 downto 0 );
    s_q_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end finn_convert_struct;
architecture structural of finn_convert_struct is 
  signal s_q_axis_tdata_net : std_logic_vector( 16-1 downto 0 );
  signal s_q_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal s_i_axis_tdata_net : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 8-1 downto 0 );
  signal s_i_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal expression_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  m_axis_tdata <= concat_y_net;
  m_axis_tready_net <= m_axis_tready;
  m_axis_tvalid <= expression_dout_net;
  s_i_axis_tdata_net <= s_i_axis_tdata;
  s_i_axis_tready <= delay_q_net;
  s_i_axis_tvalid_net <= s_i_axis_tvalid;
  s_q_axis_tdata_net <= s_q_axis_tdata;
  s_q_axis_tready <= delay_q_net;
  s_q_axis_tvalid_net <= s_q_axis_tvalid;
  clk_net <= clk_8;
  ce_net <= ce_8;
  concat : entity xil_defaultlib.sysgen_concat_f088e8a911 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => convert1_dout_net,
    in1 => convert_dout_net,
    y => concat_y_net
  );
  convert : entity xil_defaultlib.finn_convert_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 16,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => s_i_axis_tdata_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.finn_convert_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 16,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => s_q_axis_tdata_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  delay : entity xil_defaultlib.finn_convert_xldelay 
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
    q => delay_q_net
  );
  expression : entity xil_defaultlib.sysgen_expr_5b8aa52045 
  port map (
    clr => '0',
    a => s_i_axis_tvalid_net,
    b => s_q_axis_tvalid_net,
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
entity finn_convert_default_clock_driver is
  port (
    finn_convert_sysclk : in std_logic;
    finn_convert_sysce : in std_logic;
    finn_convert_sysclr : in std_logic;
    finn_convert_clk8 : out std_logic;
    finn_convert_ce8 : out std_logic
  );
end finn_convert_default_clock_driver;
architecture structural of finn_convert_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 8,
    log_2_period => 4
  )
  port map (
    sysclk => finn_convert_sysclk,
    sysce => finn_convert_sysce,
    sysclr => finn_convert_sysclr,
    clk => finn_convert_clk8,
    ce => finn_convert_ce8
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity finn_convert is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_i_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_i_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_q_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_q_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_i_axis_tready : out std_logic_vector( 1-1 downto 0 );
    s_q_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end finn_convert;
architecture structural of finn_convert is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "finn_convert,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=5,system_simulink_period=7.8125e-09,waveform_viewer=1,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=3.90625e-08,concat=1,convert=2,delay=1,expr=1,}";
  signal ce_8_net : std_logic;
  signal clk_8_net : std_logic;
begin
  finn_convert_default_clock_driver : entity xil_defaultlib.finn_convert_default_clock_driver 
  port map (
    finn_convert_sysclk => clk,
    finn_convert_sysce => '1',
    finn_convert_sysclr => '0',
    finn_convert_clk8 => clk_8_net,
    finn_convert_ce8 => ce_8_net
  );
  finn_convert_struct : entity xil_defaultlib.finn_convert_struct 
  port map (
    m_axis_tready => m_axis_tready,
    s_i_axis_tdata => s_i_axis_tdata,
    s_i_axis_tvalid => s_i_axis_tvalid,
    s_q_axis_tdata => s_q_axis_tdata,
    s_q_axis_tvalid => s_q_axis_tvalid,
    clk_8 => clk_8_net,
    ce_8 => ce_8_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tvalid => m_axis_tvalid,
    s_i_axis_tready => s_i_axis_tready,
    s_q_axis_tready => s_q_axis_tready
  );
end structural;
