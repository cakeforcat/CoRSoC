-- Generated from Simulink block ram_re_ip/ram_re_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ram_re_struct is
  port (
    ctrl_ip : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end ram_re_struct;
architecture structural of ram_re_struct is 
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ctrl_ip_net : std_logic_vector( 32-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal rom_data_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 5-1 downto 0 );
  signal ce_net : std_logic;
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  ctrl_ip_net <= ctrl_ip;
  m_axis_tdata <= convert_dout_net;
  m_axis_tlast <= relational_op_net;
  m_axis_tvalid <= convert5_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_873a35a42e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  convert : entity xil_defaultlib.ram_re_xlconvert 
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
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert5 : entity xil_defaultlib.ram_re_xlconvert 
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
    din => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  counter : entity xil_defaultlib.ram_re_xlcounter_limit 
  generic map (
    cnt_15_0 => 24,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "ram_re_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    rst => "0",
    clr => '0',
    en => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  rom : entity xil_defaultlib.ram_re_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 16,
    latency => 1,
    mem_init_file => "xpm_50d221_vivado.mem",
    mem_size => 512,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    data => rom_data_net
  );
  relational : entity xil_defaultlib.sysgen_relational_a5722cb7a4 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice : entity xil_defaultlib.ram_re_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => ctrl_ip_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ram_re_default_clock_driver is
  port (
    ram_re_sysclk : in std_logic;
    ram_re_sysce : in std_logic;
    ram_re_sysclr : in std_logic;
    ram_re_clk1 : out std_logic;
    ram_re_ce1 : out std_logic
  );
end ram_re_default_clock_driver;
architecture structural of ram_re_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => ram_re_sysclk,
    sysce => ram_re_sysce,
    sysclr => ram_re_sysclr,
    clk => ram_re_clk1,
    ce => ram_re_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ram_re is
  port (
    ctrl_ip : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end ram_re;
architecture structural of ram_re is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "ram_re,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.01,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0002,constant=1,convert=2,counter=1,relational=1,slice=1,sprom=1,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  ram_re_default_clock_driver : entity xil_defaultlib.ram_re_default_clock_driver 
  port map (
    ram_re_sysclk => clk,
    ram_re_sysce => '1',
    ram_re_sysclr => '0',
    ram_re_clk1 => clk_1_net,
    ram_re_ce1 => ce_1_net
  );
  ram_re_struct : entity xil_defaultlib.ram_re_struct 
  port map (
    ctrl_ip => ctrl_ip,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid
  );
end structural;
