-- Generated from Simulink block Matchedfilter/Matched Filter_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity matched_filter_struct is
  port (
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 16-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end matched_filter_struct;
architecture structural of matched_filter_struct is 
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal constant2_op_net : std_logic;
  signal fir_compiler_7_4_m_axis_data_tdata_real_net : std_logic_vector( 36-1 downto 0 );
  signal multadd_p_net : std_logic_vector( 48-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 25-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal data_y_net : std_logic_vector( 15-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 37-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal imaginary1_y_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_4_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_3_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_1_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_3_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_4_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_1_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_2_s_axis_data_tready_net : std_logic;
  signal mult_p_net : std_logic_vector( 74-1 downto 0 );
  signal real1_y_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 15-1 downto 0 );
  signal write_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 37-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 36-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal fir_compiler_7_1_m_axis_data_tdata_real_net : std_logic_vector( 36-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tuser_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 37-1 downto 0 );
  signal fir_compiler_7_3_m_axis_data_tdata_real_net : std_logic_vector( 36-1 downto 0 );
begin
  m_axis_tdata <= convert_dout_net;
  m_axis_tlast <= s_axis_tlast_net;
  m_axis_tvalid <= s_axis_tvalid_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  s_axis_tuser_net <= s_axis_tuser;
  s_axis_tvalid_net <= s_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.matched_filter_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 36,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 36,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 37,
    core_name0 => "matched_filter_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 37,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 37
  )
  port map (
    clr => '0',
    en => "1",
    a => fir_compiler_7_1_m_axis_data_tdata_real_net,
    b => fir_compiler_7_2_m_axis_data_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.matched_filter_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 36,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 36,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 37,
    core_name0 => "matched_filter_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 37,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 37
  )
  port map (
    clr => '0',
    en => "1",
    a => fir_compiler_7_3_m_axis_data_tdata_real_net,
    b => fir_compiler_7_4_m_axis_data_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  cordic_6_0 : entity xil_defaultlib.xlcordic_2eb7664e9b68ddd24ab54b78af8ed621 
  port map (
    s_axis_cartesian_tvalid => constant2_op_net,
    s_axis_cartesian_tdata_real => multadd_p_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_d952f5262c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_df9ee34cc3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_d952f5262c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert : entity xil_defaultlib.matched_filter_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 16,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  counter1 : entity xil_defaultlib.matched_filter_xlcounter_limit 
  generic map (
    cnt_15_0 => 6,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "matched_filter_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  data : entity xil_defaultlib.matched_filter_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 15,
    x_width => 16,
    y_width => 15
  )
  port map (
    x => s_axis_tuser_net,
    y => data_y_net
  );
  delay1 : entity xil_defaultlib.matched_filter_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 37
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay11 : entity xil_defaultlib.matched_filter_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret7_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay11_q_net
  );
  delay12 : entity xil_defaultlib.matched_filter_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret1_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay12_q_net
  );
  fir_compiler_7_1 : entity xil_defaultlib.xlfir_compiler_b2a449b6b779b63a3b83dfc27ea5f2e6 
  port map (
    s_axis_data_tdata_real => delay11_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_1_s_axis_data_tready_net,
    m_axis_data_tvalid => fir_compiler_7_1_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_1_m_axis_data_tdata_real_net
  );
  fir_compiler_7_2 : entity xil_defaultlib.xlfir_compiler_3165e696d318fbd3aae79950460a084b 
  port map (
    s_axis_data_tdata_real => delay12_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_2_s_axis_data_tready_net,
    m_axis_data_tvalid => fir_compiler_7_2_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_2_m_axis_data_tdata_real_net
  );
  fir_compiler_7_3 : entity xil_defaultlib.xlfir_compiler_3165e696d318fbd3aae79950460a084b 
  port map (
    s_axis_data_tdata_real => delay11_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_3_s_axis_data_tready_net,
    m_axis_data_tvalid => fir_compiler_7_3_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_3_m_axis_data_tdata_real_net
  );
  fir_compiler_7_4 : entity xil_defaultlib.xlfir_compiler_b2a449b6b779b63a3b83dfc27ea5f2e6 
  port map (
    s_axis_data_tdata_real => delay12_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_4_s_axis_data_tready_net,
    m_axis_data_tvalid => fir_compiler_7_4_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_4_m_axis_data_tdata_real_net
  );
  imaginary1 : entity xil_defaultlib.matched_filter_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 31,
    x_width => 32,
    y_width => 16
  )
  port map (
    x => s_axis_tdata_net,
    y => imaginary1_y_net
  );
  mult : entity xil_defaultlib.matched_filter_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 37,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 37,
    c_a_type => 0,
    c_a_width => 37,
    c_b_type => 0,
    c_b_width => 37,
    c_baat => 37,
    c_output_width => 74,
    c_type => 0,
    core_name0 => "matched_filter_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 58,
    p_width => 74,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub1_s_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  multadd : entity xil_defaultlib.matched_filter_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 37,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 37,
    c_arith => xlSigned,
    c_bin_pt => 58,
    c_width => 74,
    core_name0 => "matched_filter_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 58,
    output_type => 2,
    output_width => 75,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay1_q_net,
    b => delay1_q_net,
    c => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    p => multadd_p_net
  );
  real1 : entity xil_defaultlib.matched_filter_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 32,
    y_width => 16
  )
  port map (
    x => s_axis_tdata_net,
    y => real1_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_ae710b4e09 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => imaginary1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c8c4b295f6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => data_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_ae710b4e09 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => real1_y_net,
    output_port => reinterpret7_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_5c7721a55e 
  port map (
    clr => '0',
    a => cordic_6_0_m_axis_dout_tdata_real_net,
    b => single_port_ram_data_out_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_98666e431a 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  single_port_ram : entity xil_defaultlib.matched_filter_xlspram_dist 
  generic map (
    addr_width => 1,
    c_address_width => 4,
    c_width => 15,
    core_name0 => "matched_filter_dist_mem_gen_i0",
    latency => 1,
    write_mode => 1
  )
  port map (
    en => "1",
    addr => constant4_op_net,
    data_in => reinterpret2_output_port_net,
    we => write_y_net,
    clk => clk_net,
    ce => ce_net,
    data_out => single_port_ram_data_out_net
  );
  write : entity xil_defaultlib.matched_filter_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => s_axis_tuser_net,
    y => write_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity matched_filter_default_clock_driver is
  port (
    matched_filter_sysclk : in std_logic;
    matched_filter_sysce : in std_logic;
    matched_filter_sysclr : in std_logic;
    matched_filter_clk1 : out std_logic;
    matched_filter_ce1 : out std_logic
  );
end matched_filter_default_clock_driver;
architecture structural of matched_filter_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => matched_filter_sysclk,
    sysce => matched_filter_sysce,
    sysclr => matched_filter_sysclr,
    clk => matched_filter_clk1,
    ce => matched_filter_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity matched_filter is
  port (
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 16-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end matched_filter;
architecture structural of matched_filter is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "matched_filter,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.0625,system_simulink_period=6.25e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00025,addsub=2,constant=3,convert=1,cordic_v6_0=1,counter=1,delay=3,fir_compiler_v7_2=4,mult=1,multadd=1,reinterpret=3,relational=2,slice=4,spram=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  matched_filter_default_clock_driver : entity xil_defaultlib.matched_filter_default_clock_driver 
  port map (
    matched_filter_sysclk => clk,
    matched_filter_sysce => '1',
    matched_filter_sysclr => '0',
    matched_filter_clk1 => clk_1_net,
    matched_filter_ce1 => ce_1_net
  );
  matched_filter_struct : entity xil_defaultlib.matched_filter_struct 
  port map (
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tuser => s_axis_tuser,
    s_axis_tvalid => s_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid
  );
end structural;
