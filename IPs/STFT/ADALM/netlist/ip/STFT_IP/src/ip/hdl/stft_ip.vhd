-- Generated from Simulink block STFT_Log_IP/STFT_IP_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stft_ip_struct is
  port (
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end stft_ip_struct;
architecture structural of stft_ip_struct is 
  signal delay9_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay15_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 11-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay14_q_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal fast_fourier_transform_9_1_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal reset1_op_net : std_logic_vector( 1-1 downto 0 );
  signal enable1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 11-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal fast_fourier_transform_9_1_m_axis_data_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal fast_fourier_transform_9_1_s_axis_data_tready_net : std_logic;
  signal fast_fourier_transform_9_1_event_status_channel_halt_net : std_logic;
  signal fast_fourier_transform_9_1_s_axis_config_tready_net : std_logic;
  signal fast_fourier_transform_9_1_m_axis_data_tdata_xn_im_0_net : std_logic_vector( 16-1 downto 0 );
  signal fast_fourier_transform_9_1_event_frame_started_net : std_logic;
  signal rom1_data_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 16-1 downto 0 );
  signal fast_fourier_transform_9_1_event_tlast_unexpected_net : std_logic;
  signal mult4_p_net : std_logic_vector( 16-1 downto 0 );
  signal fast_fourier_transform_9_1_event_data_out_channel_halt_net : std_logic;
  signal imaginary1_y_net : std_logic_vector( 16-1 downto 0 );
  signal fast_fourier_transform_9_1_event_tlast_missing_net : std_logic;
  signal fast_fourier_transform_9_1_event_data_in_channel_halt_net : std_logic;
  signal fast_fourier_transform_9_1_m_axis_data_tdata_xn_re_0_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal real1_y_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal log2_10_p_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay22_q_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 12-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 11-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal natural_logarithm2_op_net : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
begin
  m_axis_tdata <= log2_10_p_net;
  m_axis_tlast <= convert1_dout_net;
  m_axis_tvalid <= delay22_q_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tlast_net <= s_axis_tlast;
  s_axis_tvalid_net <= s_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  log2_10 : entity xil_defaultlib.stft_ip_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 22,
    a_width => 32,
    b_bin_pt => 16,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 20,
    c_output_width => 52,
    core_name0 => "stft_ip_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => log2_10_p_net
  );
  addsub1 : entity xil_defaultlib.stft_ip_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 31,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 31,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "stft_ip_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 33,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_add90200b7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_add90200b7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_1b6ce75a6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_02716caad6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  convert1 : entity xil_defaultlib.stft_ip_xlconvert 
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
    din => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert3 : entity xil_defaultlib.stft_ip_xlfpconvert 
  generic map (
    c_latency => 1,
    core_name0 => "stft_ip_floating_point_v7_1_i0",
    din_arith => xlSigned,
    din_bin_pt => 29,
    din_tdata_width => 32,
    din_width => 32,
    dout_arith => xlFloat,
    dout_bin_pt => 24,
    dout_tdata_width => 32,
    dout_width => 32,
    extra_registers => 0,
    latency => 1,
    overflow => 1,
    quantization => 1
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.stft_ip_xlfpconvert 
  generic map (
    c_latency => 1,
    core_name0 => "stft_ip_floating_point_v7_1_i1",
    din_arith => xlFloat,
    din_bin_pt => 24,
    din_tdata_width => 32,
    din_width => 32,
    dout_arith => xlSigned,
    dout_bin_pt => 22,
    dout_tdata_width => 32,
    dout_width => 32,
    extra_registers => 0,
    latency => 1,
    overflow => 2,
    quantization => 2
  )
  port map (
    clr => '0',
    en => "1",
    din => natural_logarithm2_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  counter1 : entity xil_defaultlib.stft_ip_xlcounter_limit 
  generic map (
    cnt_15_0 => 2047,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "stft_ip_c_counter_binary_v12_0_i0",
    count_limited => 0,
    op_arith => xlUnsigned,
    op_width => 11
  )
  port map (
    clr => '0',
    rst => reset1_op_net,
    en => enable1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  counter3 : entity xil_defaultlib.stft_ip_xlcounter_limit 
  generic map (
    cnt_15_0 => 2047,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "stft_ip_c_counter_binary_v12_0_i0",
    count_limited => 0,
    op_arith => xlUnsigned,
    op_width => 11
  )
  port map (
    clr => '0',
    rst => reset1_op_net,
    en => enable1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay1 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay10 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay10_q_net
  );
  delay11 : entity xil_defaultlib.stft_ip_xldelay 
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
  delay12 : entity xil_defaultlib.stft_ip_xldelay 
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
  delay14 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay9_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay14_q_net
  );
  delay15 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => fast_fourier_transform_9_1_m_axis_data_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => delay15_q_net
  );
  delay16 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => fast_fourier_transform_9_1_m_axis_data_tlast_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay18 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay10_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay14_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  delay22 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay19_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay22_q_net
  );
  delay3 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay15_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay18_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay17_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay9 : entity xil_defaultlib.stft_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay9_q_net
  );
  enable1 : entity xil_defaultlib.sysgen_constant_9eb6b8b610 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => enable1_op_net
  );
  fast_fourier_transform_9_1 : entity xil_defaultlib.xlfast_fourier_transform_0f2eb2c83ca51adc1cdfd7557e5b4a7a 
  port map (
    s_axis_config_tdata_scale_sch => constant7_op_net,
    s_axis_config_tdata_fwd_inv => constant2_op_net,
    s_axis_config_tvalid => constant3_op_net(0),
    s_axis_data_tdata_xn_im_0 => mult4_p_net,
    s_axis_data_tdata_xn_re_0 => mult3_p_net,
    s_axis_data_tvalid => s_axis_tvalid_net(0),
    s_axis_data_tlast => delay1_q_net(0),
    m_axis_data_tready => s_axis_tvalid_net(0),
    rst => enable1_op_net(0),
    en => enable1_op_net(0),
    clk => clk_net,
    ce => ce_net,
    s_axis_config_tready => fast_fourier_transform_9_1_s_axis_config_tready_net,
    s_axis_data_tready => fast_fourier_transform_9_1_s_axis_data_tready_net,
    m_axis_data_tdata_xn_im_0 => fast_fourier_transform_9_1_m_axis_data_tdata_xn_im_0_net,
    m_axis_data_tdata_xn_re_0 => fast_fourier_transform_9_1_m_axis_data_tdata_xn_re_0_net,
    m_axis_data_tvalid => fast_fourier_transform_9_1_m_axis_data_tvalid_net(0),
    m_axis_data_tlast => fast_fourier_transform_9_1_m_axis_data_tlast_net(0),
    event_frame_started => fast_fourier_transform_9_1_event_frame_started_net,
    event_tlast_unexpected => fast_fourier_transform_9_1_event_tlast_unexpected_net,
    event_tlast_missing => fast_fourier_transform_9_1_event_tlast_missing_net,
    event_data_in_channel_halt => fast_fourier_transform_9_1_event_data_in_channel_halt_net,
    event_status_channel_halt => fast_fourier_transform_9_1_event_status_channel_halt_net,
    event_data_out_channel_halt => fast_fourier_transform_9_1_event_data_out_channel_halt_net
  );
  imaginary1 : entity xil_defaultlib.stft_ip_xlslice 
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
  mult3 : entity xil_defaultlib.stft_ip_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 15,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 15,
    b_width => 16,
    c_a_type => 1,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stft_ip_mult_gen_v12_0_i1",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 16,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => rom1_data_net,
    b => delay11_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.stft_ip_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 15,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 15,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stft_ip_mult_gen_v12_0_i2",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 15,
    p_width => 16,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay12_q_net,
    b => rom1_data_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.stft_ip_xlmult 
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
    core_name0 => "stft_ip_mult_gen_v12_0_i3",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 31,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => reinterpret4_output_port_net,
    b => reinterpret4_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.stft_ip_xlmult 
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
    core_name0 => "stft_ip_mult_gen_v12_0_i3",
    extra_registers => 1,
    multsign => 2,
    overflow => 2,
    p_arith => xlUnsigned,
    p_bin_pt => 31,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => reinterpret2_output_port_net,
    b => reinterpret2_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  natural_logarithm2 : entity xil_defaultlib.stft_ip_xlfpnaturallog 
  generic map (
    a_arith => xlFloat,
    a_bin_pt => 24,
    a_tdata_width => 32,
    a_width => 32,
    c_latency => 1,
    core_name0 => "stft_ip_floating_point_v7_1_i2",
    extra_registers => 0,
    latency => 1,
    op_arith => xlFloat,
    op_bin_pt => 24,
    op_tdata_width => 32,
    op_width => 32,
    overflow => 0,
    quantization => 0
  )
  port map (
    clr => '0',
    en => "1",
    a => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => natural_logarithm2_op_net
  );
  rom1 : entity xil_defaultlib.stft_ip_xlsprom 
  generic map (
    c_address_width => 11,
    c_width => 16,
    latency => 1,
    mem_init_file => "xpm_0d0dad_vivado.mem",
    mem_size => 32768,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    rst => "0",
    addr => counter3_op_net,
    en => enable1_op_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  real1 : entity xil_defaultlib.stft_ip_xlslice 
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
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_ba8a7cbecb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => imaginary1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_3f430db64f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => fast_fourier_transform_9_1_m_axis_data_tdata_xn_re_0_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_3f430db64f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => fast_fourier_transform_9_1_m_axis_data_tdata_xn_im_0_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_ba8a7cbecb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => real1_y_net,
    output_port => reinterpret7_output_port_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_b5c97ba8e9 
  port map (
    clr => '0',
    a => constant5_op_net,
    b => counter1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  reset1 : entity xil_defaultlib.sysgen_constant_add90200b7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => reset1_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stft_ip_default_clock_driver is
  port (
    stft_ip_sysclk : in std_logic;
    stft_ip_sysce : in std_logic;
    stft_ip_sysclr : in std_logic;
    stft_ip_clk1 : out std_logic;
    stft_ip_ce1 : out std_logic
  );
end stft_ip_default_clock_driver;
architecture structural of stft_ip_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => stft_ip_sysclk,
    sysce => stft_ip_sysce,
    sysclr => stft_ip_sysclr,
    clk => stft_ip_clk1,
    ce => stft_ip_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stft_ip is
  port (
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end stft_ip;
architecture structural of stft_ip is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "stft_ip,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.0625,system_simulink_period=6.25e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.110592,addsub=1,cmult=1,constant=6,convert=3,counter=2,delay=19,mult=4,natlog=1,reinterpret=4,relational=1,slice=2,sprom=1,xfft_v9_1=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  stft_ip_default_clock_driver : entity xil_defaultlib.stft_ip_default_clock_driver 
  port map (
    stft_ip_sysclk => clk,
    stft_ip_sysce => '1',
    stft_ip_sysclr => '0',
    stft_ip_clk1 => clk_1_net,
    stft_ip_ce1 => ce_1_net
  );
  stft_ip_struct : entity xil_defaultlib.stft_ip_struct 
  port map (
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tvalid => s_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid
  );
end structural;
