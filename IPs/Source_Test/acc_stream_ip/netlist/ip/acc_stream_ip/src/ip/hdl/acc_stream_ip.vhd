-- Generated from Simulink block acc_stream/acc_stream_ip_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity acc_stream_ip_struct is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tuser : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end acc_stream_ip_struct;
architecture structural of acc_stream_ip_struct is 
  signal axi_fifo_m_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal axi_fifo_m_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal axi_fifo_m_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
  signal s_axis_tuser_net : std_logic_vector( 1-1 downto 0 );
  signal axi_fifo_s_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 8-1 downto 0 );
  signal s_aclk_net : std_logic;
  signal delay3_q_net : std_logic;
  signal delay2_q_net : std_logic;
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal axi_fifo_m_axis_tuser_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic;
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
begin
  m_axis_tdata <= axi_fifo_m_axis_tdata_net;
  m_axis_tlast <= axi_fifo_m_axis_tlast_net;
  m_axis_tready_net <= m_axis_tready;
  m_axis_tuser <= convert3_dout_net;
  m_axis_tvalid <= axi_fifo_m_axis_tvalid_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  s_axis_tready <= axi_fifo_s_axis_tready_net;
  s_axis_tuser_net <= s_axis_tuser;
  s_axis_tvalid_net <= s_axis_tvalid;
  s_aclk_net <= clk_1;
  ce_net <= ce_1;
  axi_fifo : entity xil_defaultlib.acc_stream_ip_xlaxis 
  generic map (
    depth => 128,
    depth_bits => 8,
    has_aresetn => 0,
    mem_type => "distributed",
    tdata_width => 32,
    tdata_width_net => 32,
    tdest_width => 4,
    tid_width => 8,
    tuser_width => 1
  )
  port map (
    aresetn => '1',
    m_axis_tready => delay_q_net,
    s_axis_tvalid => delay2_q_net,
    s_axis_tdata => convert1_dout_net,
    s_axis_tlast => delay3_q_net,
    s_axis_tuser => convert2_dout_net,
    s_aclk => s_aclk_net,
    ce => ce_net,
    m_axis_tvalid => axi_fifo_m_axis_tvalid_net(0),
    m_axis_tdata => axi_fifo_m_axis_tdata_net,
    m_axis_tlast => axi_fifo_m_axis_tlast_net(0),
    m_axis_tuser => axi_fifo_m_axis_tuser_net,
    s_axis_tready => axi_fifo_s_axis_tready_net(0)
  );
  addsub : entity xil_defaultlib.acc_stream_ip_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 10,
    core_name0 => "acc_stream_ip_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 10,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 8
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => convert_dout_net,
    clk => s_aclk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  convert : entity xil_defaultlib.acc_stream_ip_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => s_axis_tdata_net,
    clk => s_aclk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.acc_stream_ip_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 8,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub_s_net,
    clk => s_aclk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.acc_stream_ip_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay4_q_net,
    clk => s_aclk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.acc_stream_ip_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => axi_fifo_m_axis_tuser_net,
    clk => s_aclk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  delay : entity xil_defaultlib.acc_stream_ip_xldelay 
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
    clk => s_aclk_net,
    ce => ce_net,
    q(0) => delay_q_net
  );
  delay1 : entity xil_defaultlib.acc_stream_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => s_aclk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.acc_stream_ip_xldelay 
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
    clk => s_aclk_net,
    ce => ce_net,
    q(0) => delay2_q_net
  );
  delay3 : entity xil_defaultlib.acc_stream_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tlast_net,
    clk => s_aclk_net,
    ce => ce_net,
    q(0) => delay3_q_net
  );
  delay4 : entity xil_defaultlib.acc_stream_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tuser_net,
    clk => s_aclk_net,
    ce => ce_net,
    q => delay4_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity acc_stream_ip_default_clock_driver is
  port (
    acc_stream_ip_sysclk : in std_logic;
    acc_stream_ip_sysce : in std_logic;
    acc_stream_ip_sysclr : in std_logic;
    acc_stream_ip_clk1 : out std_logic;
    acc_stream_ip_ce1 : out std_logic
  );
end acc_stream_ip_default_clock_driver;
architecture structural of acc_stream_ip_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => acc_stream_ip_sysclk,
    sysce => acc_stream_ip_sysce,
    sysclr => acc_stream_ip_sysclr,
    clk => acc_stream_ip_clk1,
    ce => acc_stream_ip_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity acc_stream_ip is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tuser : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end acc_stream_ip;
architecture structural of acc_stream_ip is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "acc_stream_ip,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=1e+06,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1000,addsub=1,axi_fifo=1,convert=4,delay=5,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  acc_stream_ip_default_clock_driver : entity xil_defaultlib.acc_stream_ip_default_clock_driver 
  port map (
    acc_stream_ip_sysclk => clk,
    acc_stream_ip_sysce => '1',
    acc_stream_ip_sysclr => '0',
    acc_stream_ip_clk1 => clk_1_net,
    acc_stream_ip_ce1 => ce_1_net
  );
  acc_stream_ip_struct : entity xil_defaultlib.acc_stream_ip_struct 
  port map (
    m_axis_tready => m_axis_tready,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tuser => s_axis_tuser,
    s_axis_tvalid => s_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tuser => m_axis_tuser,
    m_axis_tvalid => m_axis_tvalid,
    s_axis_tready => s_axis_tready
  );
end structural;
