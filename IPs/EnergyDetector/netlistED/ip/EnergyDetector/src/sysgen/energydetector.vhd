-- Generated from Simulink block EnergyDetect/EnergyDetector_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity energydetector_struct is
  port (
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 32-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end energydetector_struct;
architecture structural of energydetector_struct is 
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tuser_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 64-1 downto 0 );
  signal ce_net : std_logic;
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 64-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal multadd_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal imaginary1_y_net : std_logic_vector( 16-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal data_y_net : std_logic_vector( 15-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 16-1 downto 0 );
  signal divide_op_net : std_logic_vector( 80-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 16-1 downto 0 );
  signal write_y_net : std_logic_vector( 1-1 downto 0 );
  signal real1_y_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 15-1 downto 0 );
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
  accumulator : entity xil_defaultlib.sysgen_accum_dcc75ebdb1 
  port map (
    clr => '0',
    b => mult1_p_net,
    rst => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  cordic_6_0 : entity xil_defaultlib.xlcordic_fc862c8fae890d8710c54a36d37678b8 
  port map (
    s_axis_cartesian_tvalid => s_axis_tvalid_net(0),
    s_axis_cartesian_tdata_real => multadd_p_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_6fe6e42c38 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_6fe6e42c38 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_960c78a86f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert : entity xil_defaultlib.energydetector_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 2,
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
  counter1 : entity xil_defaultlib.energydetector_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "energydetector_c_counter_binary_v12_0_i0",
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
  data : entity xil_defaultlib.energydetector_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 15,
    x_width => 32,
    y_width => 15
  )
  port map (
    x => s_axis_tuser_net,
    y => data_y_net
  );
  delay11 : entity xil_defaultlib.energydetector_xldelay 
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
  delay12 : entity xil_defaultlib.energydetector_xldelay 
  generic map (
    latency => 4,
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
  divide : entity xil_defaultlib.xldivider_generator_687ee9272aafdc148a5243acd99ef590 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => accumulator_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  imaginary1 : entity xil_defaultlib.energydetector_xlslice 
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
  mult : entity xil_defaultlib.energydetector_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "energydetector_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 30,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay11_q_net,
    b => delay11_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.energydetector_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 31,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 31,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "energydetector_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 32,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  multadd : entity xil_defaultlib.energydetector_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 16,
    c_arith => xlSigned,
    c_bin_pt => 30,
    c_width => 32,
    core_name0 => "energydetector_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 30,
    output_type => 2,
    output_width => 33,
    p_arith => xlUnsigned,
    p_bin_pt => 47,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay12_q_net,
    b => delay12_q_net,
    c => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    p => multadd_p_net
  );
  real1 : entity xil_defaultlib.energydetector_xlslice 
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
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_3f0c252736 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => imaginary1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f332946d89 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => data_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_3f0c252736 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => real1_y_net,
    output_port => reinterpret7_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_f805eeef37 
  port map (
    clr => '0',
    a => divide_op_net,
    b => single_port_ram_data_out_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_5358f180cf 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  single_port_ram : entity xil_defaultlib.energydetector_xlspram_dist 
  generic map (
    addr_width => 1,
    c_address_width => 4,
    c_width => 15,
    core_name0 => "energydetector_dist_mem_gen_i0",
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
  write : entity xil_defaultlib.energydetector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => s_axis_tuser_net,
    y => write_y_net
  );
  delay1 : entity xil_defaultlib.energydetector_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity energydetector_default_clock_driver is
  port (
    energydetector_sysclk : in std_logic;
    energydetector_sysce : in std_logic;
    energydetector_sysclr : in std_logic;
    energydetector_clk1 : out std_logic;
    energydetector_ce1 : out std_logic
  );
end energydetector_default_clock_driver;
architecture structural of energydetector_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => energydetector_sysclk,
    sysce => energydetector_sysce,
    sysclr => energydetector_sysclr,
    clk => energydetector_clk1,
    ce => energydetector_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity energydetector is
  port (
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 32-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end energydetector;
architecture structural of energydetector is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "energydetector,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.0625,system_simulink_period=6.25e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0001875,accum=1,constant=3,convert=1,cordic_v6_0=1,counter=1,delay=3,divide=1,mult=2,multadd=1,reinterpret=3,relational=2,slice=4,spram=1,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  energydetector_default_clock_driver : entity xil_defaultlib.energydetector_default_clock_driver 
  port map (
    energydetector_sysclk => clk,
    energydetector_sysce => '1',
    energydetector_sysclr => '0',
    energydetector_clk1 => clk_1_net,
    energydetector_ce1 => ce_1_net
  );
  energydetector_struct : entity xil_defaultlib.energydetector_struct 
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
