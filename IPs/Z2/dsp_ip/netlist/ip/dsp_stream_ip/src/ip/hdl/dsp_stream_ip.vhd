-- Generated from Simulink block dsp_stream/dsp_stream_ip_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dsp_stream_ip_struct is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tuser : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_stream_ip_struct;
architecture structural of dsp_stream_ip_struct is 
  signal ce_net : std_logic;
  signal axi_fifo_m_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal m_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal axi_fifo_m_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal axi_fifo_s_axis_tready_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tuser_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal s_aclk_net : std_logic;
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic;
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal rom_data_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal delay_q_net : std_logic;
  signal axi_fifo_m_axis_tuser_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic;
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal axi_fifo_m_axis_tdata_net : std_logic_vector( 16-1 downto 0 );
begin
  m_axis_tdata <= reinterpret1_output_port_net;
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
  axi_fifo : entity xil_defaultlib.dsp_stream_ip_xlaxis 
  generic map (
    depth => 256,
    depth_bits => 9,
    has_aresetn => 0,
    mem_type => "distributed",
    tdata_width => 16,
    tdata_width_net => 16,
    tdest_width => 4,
    tid_width => 8,
    tuser_width => 1
  )
  port map (
    aresetn => '1',
    m_axis_tready => delay_q_net,
    s_axis_tvalid => delay2_q_net,
    s_axis_tdata => reinterpret_output_port_net,
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
  convert1 : entity xil_defaultlib.dsp_stream_ip_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 14,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 0,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => rom_data_net,
    clk => s_aclk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.dsp_stream_ip_xlconvert 
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
  convert3 : entity xil_defaultlib.dsp_stream_ip_xlconvert 
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
  convert4 : entity xil_defaultlib.dsp_stream_ip_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => s_axis_tdata_net,
    clk => s_aclk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.dsp_stream_ip_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => convert4_dout_net,
    clk => s_aclk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  counter : entity xil_defaultlib.dsp_stream_ip_xlcounter_limit 
  generic map (
    cnt_15_0 => 17,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "dsp_stream_ip_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    rst => "0",
    clr => '0',
    en => convert5_dout_net,
    clk => s_aclk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity xil_defaultlib.dsp_stream_ip_xldelay 
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
  delay2 : entity xil_defaultlib.dsp_stream_ip_xldelay 
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
  delay3 : entity xil_defaultlib.dsp_stream_ip_xldelay 
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
  delay4 : entity xil_defaultlib.dsp_stream_ip_xldelay 
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
  rom : entity xil_defaultlib.dsp_stream_ip_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 16,
    latency => 1,
    mem_init_file => "xpm_6a4a8c_vivado.mem",
    mem_size => 512,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    clk => s_aclk_net,
    ce => ce_net,
    data => rom_data_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_e545bba2f5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert1_dout_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f3b73edc2e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => axi_fifo_m_axis_tdata_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dsp_stream_ip_default_clock_driver is
  port (
    dsp_stream_ip_sysclk : in std_logic;
    dsp_stream_ip_sysce : in std_logic;
    dsp_stream_ip_sysclr : in std_logic;
    dsp_stream_ip_clk1 : out std_logic;
    dsp_stream_ip_ce1 : out std_logic
  );
end dsp_stream_ip_default_clock_driver;
architecture structural of dsp_stream_ip_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => dsp_stream_ip_sysclk,
    sysce => dsp_stream_ip_sysce,
    sysclr => dsp_stream_ip_sysclr,
    clk => dsp_stream_ip_clk1,
    ce => dsp_stream_ip_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dsp_stream_ip is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tuser : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dsp_stream_ip;
architecture structural of dsp_stream_ip is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "dsp_stream_ip,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.00333333,system_simulink_period=3.33333e-09,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=3.33333e-06,axi_fifo=1,convert=5,counter=1,delay=4,reinterpret=2,sprom=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  dsp_stream_ip_default_clock_driver : entity xil_defaultlib.dsp_stream_ip_default_clock_driver 
  port map (
    dsp_stream_ip_sysclk => clk,
    dsp_stream_ip_sysce => '1',
    dsp_stream_ip_sysclr => '0',
    dsp_stream_ip_clk1 => clk_1_net,
    dsp_stream_ip_ce1 => ce_1_net
  );
  dsp_stream_ip_struct : entity xil_defaultlib.dsp_stream_ip_struct 
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
