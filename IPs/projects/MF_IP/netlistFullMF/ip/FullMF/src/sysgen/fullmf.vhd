-- Generated from Simulink block fullMF/FullMF_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fullmf_struct is
  port (
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata1 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata2 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata3 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata4 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata5 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata6 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata7 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 16-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end fullmf_struct;
architecture structural of fullmf_struct is 
  signal s_axis_tdata4_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_1_m_axis_dout_tdata_real_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 64-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 25-1 downto 0 );
  signal s_axis_tdata1_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata3_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal s_axis_tdata5_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal s_axis_tuser_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata7_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata6_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net_x0 : std_logic;
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata2_net : std_logic_vector( 16-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 64-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 64-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 35-1 downto 0 );
  signal cordic_6_2_m_axis_dout_tdata_real_net : std_logic_vector( 25-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 34-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 36-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 35-1 downto 0 );
  signal relational11_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 36-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 35-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 35-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 35-1 downto 0 );
  signal time_division_demultiplexer3_q1_net : std_logic_vector( 35-1 downto 0 );
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_3_m_axis_dout_tdata_real_net : std_logic_vector( 25-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 34-1 downto 0 );
  signal time_division_demultiplexer2_q1_net : std_logic_vector( 35-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 36-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 64-1 downto 0 );
  signal time_division_demultiplexer_q1_net : std_logic_vector( 34-1 downto 0 );
  signal time_division_demultiplexer1_q1_net : std_logic_vector( 34-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 34-1 downto 0 );
  signal time_division_demultiplexer5_q1_net : std_logic_vector( 35-1 downto 0 );
  signal multadd_p_net : std_logic_vector( 48-1 downto 0 );
  signal cordic_6_1_m_axis_dout_tvalid_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 35-1 downto 0 );
  signal constant7_op_net : std_logic;
  signal multadd1_p_net : std_logic_vector( 48-1 downto 0 );
  signal multadd2_p_net : std_logic_vector( 48-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 35-1 downto 0 );
  signal time_division_demultiplexer4_q1_net : std_logic_vector( 35-1 downto 0 );
  signal time_division_demultiplexer7_q1_net : std_logic_vector( 34-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 36-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal constant1_op_net : std_logic;
  signal delay12_q_net : std_logic_vector( 34-1 downto 0 );
  signal cordic_6_2_m_axis_dout_tvalid_net : std_logic;
  signal time_division_demultiplexer6_q1_net : std_logic_vector( 34-1 downto 0 );
  signal constant2_op_net : std_logic;
  signal delay9_q_net : std_logic_vector( 35-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_3_m_axis_dout_tvalid_net : std_logic;
  signal constant13_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant10_op_net : std_logic;
  signal concat_y_net : std_logic_vector( 4-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational9_op_net : std_logic_vector( 1-1 downto 0 );
  signal multadd3_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter6_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter5_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer7_q0_net : std_logic_vector( 34-1 downto 0 );
  signal time_division_demultiplexer6_q0_net : std_logic_vector( 34-1 downto 0 );
  signal time_division_demultiplexer1_q0_net : std_logic_vector( 34-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 35-1 downto 0 );
  signal counter7_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 35-1 downto 0 );
  signal time_division_demultiplexer2_q0_net : std_logic_vector( 35-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 36-1 downto 0 );
  signal time_division_demultiplexer_q0_net : std_logic_vector( 34-1 downto 0 );
  signal data_y_net : std_logic_vector( 15-1 downto 0 );
  signal fir_compiler_7_1_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_1_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_1_m_axis_data_tvalid_net : std_logic;
  signal time_division_demultiplexer5_q0_net : std_logic_vector( 35-1 downto 0 );
  signal relational1_op_net : std_logic;
  signal fir_compiler_7_1_s_axis_config_tready_net : std_logic;
  signal time_division_demultiplexer4_q0_net : std_logic_vector( 35-1 downto 0 );
  signal fir_compiler_7_1_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_1_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 36-1 downto 0 );
  signal time_division_multiplexer_q_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer3_q0_net : std_logic_vector( 35-1 downto 0 );
  signal fir_compiler_7_3_m_axis_data_tdata_real_net : std_logic_vector( 35-1 downto 0 );
  signal fir_compiler_7_2_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_3_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_4_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_4_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_4_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_2_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_3_event_s_config_tlast_unexpected_net : std_logic;
  signal relational4_op_net : std_logic;
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_4_m_axis_data_tdata_real_net : std_logic_vector( 35-1 downto 0 );
  signal fir_compiler_7_2_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_2_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_4_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_4_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_3_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_3_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_3_event_s_config_tlast_missing_net : std_logic;
  signal time_division_multiplexer1_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_7_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_7_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_7_event_s_config_tlast_unexpected_net : std_logic;
  signal relational10_op_net : std_logic;
  signal relational7_op_net : std_logic;
  signal fir_compiler_7_6_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_6_m_axis_data_tdata_real_net : std_logic_vector( 35-1 downto 0 );
  signal fir_compiler_7_7_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_6_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_5_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_7_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_7_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_6_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_5_m_axis_data_tdata_real_net : std_logic_vector( 35-1 downto 0 );
  signal time_division_multiplexer3_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_6_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_5_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_5_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_5_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_6_event_s_config_tlast_unexpected_net : std_logic;
  signal time_division_multiplexer2_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_5_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_8_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_8_event_s_config_tlast_missing_net : std_logic;
  signal mult1_p_net : std_logic_vector( 72-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 70-1 downto 0 );
  signal fir_compiler_7_8_m_axis_data_tdata_real_net : std_logic_vector( 34-1 downto 0 );
  signal fir_compiler_7_8_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_8_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_8_event_s_config_tlast_unexpected_net : std_logic;
  signal single_port_ram_data_out_net : std_logic_vector( 15-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 70-1 downto 0 );
  signal write_y_net : std_logic_vector( 1-1 downto 0 );
begin
  m_axis_tdata <= convert1_dout_net;
  m_axis_tlast <= s_axis_tlast_net;
  m_axis_tvalid <= s_axis_tvalid_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tdata1_net <= s_axis_tdata1;
  s_axis_tdata2_net <= s_axis_tdata2;
  s_axis_tdata3_net <= s_axis_tdata3;
  s_axis_tdata4_net <= s_axis_tdata4;
  s_axis_tdata5_net <= s_axis_tdata5;
  s_axis_tdata6_net <= s_axis_tdata6;
  s_axis_tdata7_net <= s_axis_tdata7;
  s_axis_tlast_net <= s_axis_tlast;
  s_axis_tuser_net <= s_axis_tuser;
  s_axis_tvalid_net <= s_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_2;
  ce_net_x0 <= ce_2;
  accumulator : entity xil_defaultlib.sysgen_accum_52dd964f51 
  port map (
    clr => '0',
    b => cordic_6_0_m_axis_dout_tdata_real_net,
    rst => relational2_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator_q_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_52dd964f51 
  port map (
    clr => '0',
    b => cordic_6_1_m_axis_dout_tdata_real_net,
    rst => relational5_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator1_q_net
  );
  accumulator2 : entity xil_defaultlib.sysgen_accum_52dd964f51 
  port map (
    clr => '0',
    b => cordic_6_2_m_axis_dout_tdata_real_net,
    rst => relational8_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator2_q_net
  );
  accumulator3 : entity xil_defaultlib.sysgen_accum_52dd964f51 
  port map (
    clr => '0',
    b => cordic_6_3_m_axis_dout_tdata_real_net,
    rst => relational11_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator3_q_net
  );
  addsub : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 34,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 34,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 35,
    core_name0 => "fullmf_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 35,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => time_division_demultiplexer_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 34,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 34,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 35,
    core_name0 => "fullmf_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 35,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => time_division_demultiplexer1_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "fullmf_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 36
  )
  port map (
    clr => '0',
    en => "1",
    a => delay4_q_net,
    b => time_division_demultiplexer2_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "fullmf_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 36
  )
  port map (
    clr => '0',
    en => "1",
    a => delay6_q_net,
    b => time_division_demultiplexer3_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "fullmf_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 36
  )
  port map (
    clr => '0',
    en => "1",
    a => delay7_q_net,
    b => time_division_demultiplexer4_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "fullmf_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 36
  )
  port map (
    clr => '0',
    en => "1",
    a => delay9_q_net,
    b => time_division_demultiplexer5_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 34,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 34,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 35,
    core_name0 => "fullmf_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 35,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay10_q_net,
    b => time_division_demultiplexer6_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.fullmf_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 34,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 34,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 35,
    core_name0 => "fullmf_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 35,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay12_q_net,
    b => time_division_demultiplexer7_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub7_s_net
  );
  cordic_6_0 : entity xil_defaultlib.xlcordic_720fc9b75931b9486e1f57d9d7ffc9e8 
  port map (
    s_axis_cartesian_tvalid => constant2_op_net,
    s_axis_cartesian_tdata_real => multadd_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  cordic_6_1 : entity xil_defaultlib.xlcordic_720fc9b75931b9486e1f57d9d7ffc9e8 
  port map (
    s_axis_cartesian_tvalid => constant1_op_net,
    s_axis_cartesian_tdata_real => multadd1_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_real => cordic_6_1_m_axis_dout_tdata_real_net
  );
  cordic_6_2 : entity xil_defaultlib.xlcordic_720fc9b75931b9486e1f57d9d7ffc9e8 
  port map (
    s_axis_cartesian_tvalid => constant7_op_net,
    s_axis_cartesian_tdata_real => multadd2_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_real => cordic_6_2_m_axis_dout_tdata_real_net
  );
  cordic_6_3 : entity xil_defaultlib.xlcordic_720fc9b75931b9486e1f57d9d7ffc9e8 
  port map (
    s_axis_cartesian_tvalid => constant10_op_net,
    s_axis_cartesian_tdata_real => multadd3_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    m_axis_dout_tvalid => cordic_6_3_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_real => cordic_6_3_m_axis_dout_tdata_real_net
  );
  concat : entity xil_defaultlib.sysgen_concat_1ab649ab86 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => relational_op_net,
    in1 => relational3_op_net,
    in2 => relational6_op_net,
    in3 => relational9_op_net,
    y => concat_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_a048f052d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_a048f052d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant10_op_net
  );
  constant11 : entity xil_defaultlib.sysgen_constant_f28d213891 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant12 : entity xil_defaultlib.sysgen_constant_23dfa9a31d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant12_op_net
  );
  constant13 : entity xil_defaultlib.sysgen_constant_a048f052d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_a048f052d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_f28d213891 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_f28d213891 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_23dfa9a31d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_23dfa9a31d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_a048f052d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_f28d213891 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_23dfa9a31d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  convert1 : entity xil_defaultlib.fullmf_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 4,
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
    din => concat_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert1_dout_net
  );
  counter : entity xil_defaultlib.sysgen_counter_0549a5bc78 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter1 : entity xil_defaultlib.fullmf_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "fullmf_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => counter1_op_net
  );
  counter2 : entity xil_defaultlib.sysgen_counter_0549a5bc78 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.fullmf_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "fullmf_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => counter3_op_net
  );
  counter4 : entity xil_defaultlib.sysgen_counter_0549a5bc78 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter4_op_net
  );
  counter5 : entity xil_defaultlib.fullmf_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "fullmf_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => counter5_op_net
  );
  counter6 : entity xil_defaultlib.sysgen_counter_0549a5bc78 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter6_op_net
  );
  counter7 : entity xil_defaultlib.fullmf_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "fullmf_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => counter7_op_net
  );
  data : entity xil_defaultlib.fullmf_xlslice 
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
  delay1 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 34
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  delay10 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 34
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer6_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay10_q_net
  );
  delay11 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub6_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay11_q_net
  );
  delay12 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 34
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer7_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay12_q_net
  );
  delay2 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 34
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer1_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer2_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 36
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer3_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer4_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 36
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub4_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.fullmf_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer5_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay9_q_net
  );
  fir_compiler_7_1 : entity xil_defaultlib.xlfir_compiler_fadf7e6b6e431ca3acfaf082327b8349 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational1_op_net,
    s_axis_config_tdata_fsel => counter_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_1_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_1_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_1_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_1_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_1_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_1_event_s_config_tlast_unexpected_net
  );
  fir_compiler_7_2 : entity xil_defaultlib.xlfir_compiler_e2284dbe37e4f7aa0855d8db7c2fc35d 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational1_op_net,
    s_axis_config_tdata_fsel => counter_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_2_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_2_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_2_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_2_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_2_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_2_event_s_config_tlast_unexpected_net
  );
  fir_compiler_7_3 : entity xil_defaultlib.xlfir_compiler_554c5100481f2da9f23f0bb15bf50881 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer1_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational4_op_net,
    s_axis_config_tdata_fsel => counter2_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_3_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_3_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_3_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_3_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_3_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_3_event_s_config_tlast_unexpected_net
  );
  fir_compiler_7_4 : entity xil_defaultlib.xlfir_compiler_230e8149522c7fc52b255cfd92ae8748 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer1_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational4_op_net,
    s_axis_config_tdata_fsel => counter2_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_4_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_4_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_4_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_4_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_4_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_4_event_s_config_tlast_unexpected_net
  );
  fir_compiler_7_5 : entity xil_defaultlib.xlfir_compiler_05ba1e09d52229d96dd33352a6ff8a69 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer2_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational7_op_net,
    s_axis_config_tdata_fsel => counter4_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_5_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_5_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_5_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_5_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_5_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_5_event_s_config_tlast_unexpected_net
  );
  fir_compiler_7_6 : entity xil_defaultlib.xlfir_compiler_f43317009f6719505fdac52dae4150ac 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer2_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational7_op_net,
    s_axis_config_tdata_fsel => counter4_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_6_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_6_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_6_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_6_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_6_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_6_event_s_config_tlast_unexpected_net
  );
  fir_compiler_7_7 : entity xil_defaultlib.xlfir_compiler_c654e93b442d6933bab87f9d58947406 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer3_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational10_op_net,
    s_axis_config_tdata_fsel => counter6_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_7_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_7_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_7_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_7_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_7_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_7_event_s_config_tlast_unexpected_net
  );
  fir_compiler_7_8 : entity xil_defaultlib.xlfir_compiler_79b97e41be82132b3161b87cbaa61b00 
  port map (
    s_axis_data_tdata_real => time_division_multiplexer3_q_net,
    s_axis_config_tvalid => s_axis_tvalid_net(0),
    s_axis_config_tlast => relational10_op_net,
    s_axis_config_tdata_fsel => counter6_op_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_8_s_axis_data_tready_net,
    s_axis_config_tready => fir_compiler_7_8_s_axis_config_tready_net,
    m_axis_data_tvalid => fir_compiler_7_8_m_axis_data_tvalid_net,
    m_axis_data_tdata_real => fir_compiler_7_8_m_axis_data_tdata_real_net,
    event_s_config_tlast_missing => fir_compiler_7_8_event_s_config_tlast_missing_net,
    event_s_config_tlast_unexpected => fir_compiler_7_8_event_s_config_tlast_unexpected_net
  );
  mult : entity xil_defaultlib.fullmf_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 0,
    c_b_width => 35,
    c_baat => 35,
    c_output_width => 70,
    c_type => 0,
    core_name0 => "fullmf_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 56,
    p_width => 70,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub1_s_net,
    b => addsub1_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.fullmf_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 36,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 36,
    c_a_type => 0,
    c_a_width => 36,
    c_b_type => 0,
    c_b_width => 36,
    c_baat => 36,
    c_output_width => 72,
    c_type => 0,
    core_name0 => "fullmf_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 56,
    p_width => 72,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    b => addsub3_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.fullmf_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 36,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 36,
    c_a_type => 0,
    c_a_width => 36,
    c_b_type => 0,
    c_b_width => 36,
    c_baat => 36,
    c_output_width => 72,
    c_type => 0,
    core_name0 => "fullmf_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 56,
    p_width => 72,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub5_s_net,
    b => addsub5_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.fullmf_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 0,
    c_b_width => 35,
    c_baat => 35,
    c_output_width => 70,
    c_type => 0,
    core_name0 => "fullmf_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 56,
    p_width => 70,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub7_s_net,
    b => addsub7_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult3_p_net
  );
  multadd : entity xil_defaultlib.fullmf_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_arith => xlSigned,
    c_bin_pt => 56,
    c_width => 70,
    core_name0 => "fullmf_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 56,
    output_type => 2,
    output_width => 71,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay2_q_net,
    b => delay2_q_net,
    c => mult_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd_p_net
  );
  multadd1 : entity xil_defaultlib.fullmf_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 36,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 36,
    c_arith => xlSigned,
    c_bin_pt => 56,
    c_width => 72,
    core_name0 => "fullmf_xbip_multadd_v3_0_i1",
    latency => 0,
    output_bin_pt => 56,
    output_type => 2,
    output_width => 73,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay5_q_net,
    b => delay5_q_net,
    c => mult1_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd1_p_net
  );
  multadd2 : entity xil_defaultlib.fullmf_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 36,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 36,
    c_arith => xlSigned,
    c_bin_pt => 56,
    c_width => 72,
    core_name0 => "fullmf_xbip_multadd_v3_0_i1",
    latency => 0,
    output_bin_pt => 56,
    output_type => 2,
    output_width => 73,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay8_q_net,
    b => delay8_q_net,
    c => mult2_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd2_p_net
  );
  multadd3 : entity xil_defaultlib.fullmf_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 28,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 28,
    b_width => 35,
    c_arith => xlSigned,
    c_bin_pt => 56,
    c_width => 70,
    core_name0 => "fullmf_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 56,
    output_type => 2,
    output_width => 71,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay11_q_net,
    b => delay11_q_net,
    c => mult3_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd3_p_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_5f952b198a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => data_y_net,
    output_port => reinterpret2_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_ad01d59360 
  port map (
    clr => '0',
    a => accumulator_q_net,
    b => single_port_ram_data_out_net,
    en => relational2_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_914d75d5d9 
  port map (
    clr => '0',
    a => constant5_op_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational1_op_net
  );
  relational10 : entity xil_defaultlib.sysgen_relational_914d75d5d9 
  port map (
    clr => '0',
    a => constant12_op_net,
    b => counter6_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational10_op_net
  );
  relational11 : entity xil_defaultlib.sysgen_relational_9335f477bd 
  port map (
    clr => '0',
    a => counter7_op_net,
    b => constant11_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational11_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_9335f477bd 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant3_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_ad01d59360 
  port map (
    clr => '0',
    a => accumulator1_q_net,
    b => single_port_ram_data_out_net,
    en => relational5_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational3_op_net
  );
  relational4 : entity xil_defaultlib.sysgen_relational_914d75d5d9 
  port map (
    clr => '0',
    a => constant6_op_net,
    b => counter2_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational4_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_9335f477bd 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant4_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational5_op_net
  );
  relational6 : entity xil_defaultlib.sysgen_relational_ad01d59360 
  port map (
    clr => '0',
    a => accumulator2_q_net,
    b => single_port_ram_data_out_net,
    en => relational8_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational6_op_net
  );
  relational7 : entity xil_defaultlib.sysgen_relational_914d75d5d9 
  port map (
    clr => '0',
    a => constant9_op_net,
    b => counter4_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational7_op_net
  );
  relational8 : entity xil_defaultlib.sysgen_relational_9335f477bd 
  port map (
    clr => '0',
    a => counter5_op_net,
    b => constant8_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational8_op_net
  );
  relational9 : entity xil_defaultlib.sysgen_relational_ad01d59360 
  port map (
    clr => '0',
    a => accumulator3_q_net,
    b => single_port_ram_data_out_net,
    en => relational11_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational9_op_net
  );
  single_port_ram : entity xil_defaultlib.fullmf_xlspram_dist 
  generic map (
    addr_width => 1,
    c_address_width => 4,
    c_width => 15,
    core_name0 => "fullmf_dist_mem_gen_i0",
    latency => 1,
    write_mode => 1
  )
  port map (
    en => "1",
    addr => constant13_op_net,
    data_in => reinterpret2_output_port_net,
    we => write_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    data_out => single_port_ram_data_out_net
  );
  time_division_demultiplexer : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 34,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_1_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer_q0_net,
    q1 => time_division_demultiplexer_q1_net
  );
  time_division_demultiplexer1 : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 34,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_2_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer1_q0_net,
    q1 => time_division_demultiplexer1_q1_net
  );
  time_division_demultiplexer2 : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 35,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_3_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer2_q0_net,
    q1 => time_division_demultiplexer2_q1_net
  );
  time_division_demultiplexer3 : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 35,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_4_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer3_q0_net,
    q1 => time_division_demultiplexer3_q1_net
  );
  time_division_demultiplexer4 : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 35,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_5_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer4_q0_net,
    q1 => time_division_demultiplexer4_q1_net
  );
  time_division_demultiplexer5 : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 35,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_6_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer5_q0_net,
    q1 => time_division_demultiplexer5_q1_net
  );
  time_division_demultiplexer6 : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 34,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_7_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer6_q0_net,
    q1 => time_division_demultiplexer6_q1_net
  );
  time_division_demultiplexer7 : entity xil_defaultlib.fullmf_xltdd_multich 
  generic map (
    data_width => 34,
    frame_length => 2
  )
  port map (
    src_clr => '0',
    dest_clr => '0',
    d => fir_compiler_7_8_m_axis_data_tdata_real_net,
    src_clk => clk_net,
    src_ce => ce_net,
    dest_clk => clk_net_x0,
    dest_ce => ce_net_x0,
    q0 => time_division_demultiplexer7_q0_net,
    q1 => time_division_demultiplexer7_q1_net
  );
  time_division_multiplexer : entity xil_defaultlib.fullmf_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => s_axis_tdata_net,
    d1 => s_axis_tdata1_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer_q_net
  );
  time_division_multiplexer1 : entity xil_defaultlib.fullmf_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => s_axis_tdata2_net,
    d1 => s_axis_tdata3_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer1_q_net
  );
  time_division_multiplexer2 : entity xil_defaultlib.fullmf_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => s_axis_tdata4_net,
    d1 => s_axis_tdata5_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer2_q_net
  );
  time_division_multiplexer3 : entity xil_defaultlib.fullmf_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => s_axis_tdata6_net,
    d1 => s_axis_tdata7_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer3_q_net
  );
  write : entity xil_defaultlib.fullmf_xlslice 
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
entity fullmf_default_clock_driver is
  port (
    fullmf_sysclk : in std_logic;
    fullmf_sysce : in std_logic;
    fullmf_sysclr : in std_logic;
    fullmf_clk1 : out std_logic;
    fullmf_ce1 : out std_logic;
    fullmf_clk2 : out std_logic;
    fullmf_ce2 : out std_logic
  );
end fullmf_default_clock_driver;
architecture structural of fullmf_default_clock_driver is 
begin
  clockdriver_x0 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => fullmf_sysclk,
    sysce => fullmf_sysce,
    sysclr => fullmf_sysclr,
    clk => fullmf_clk1,
    ce => fullmf_ce1
  );
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 2,
    log_2_period => 2
  )
  port map (
    sysclk => fullmf_sysclk,
    sysce => fullmf_sysce,
    sysclr => fullmf_sysclr,
    clk => fullmf_clk2,
    ce => fullmf_ce2
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fullmf is
  port (
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata1 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata2 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata3 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata4 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata5 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata6 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata7 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 16-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end fullmf;
architecture structural of fullmf is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "fullmf,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.0390625,system_simulink_period=1.95313e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.000117187,accum=4,addsub=8,concat=1,constant=13,convert=1,cordic_v6_0=4,counter=8,delay=12,fir_compiler_v7_2=8,mult=4,multadd=4,reinterpret=1,relational=12,slice=2,spram=1,tdd=8,tdm=4,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
  signal clk_2_net : std_logic;
  signal ce_2_net : std_logic;
begin
  fullmf_default_clock_driver : entity xil_defaultlib.fullmf_default_clock_driver 
  port map (
    fullmf_sysclk => clk,
    fullmf_sysce => '1',
    fullmf_sysclr => '0',
    fullmf_clk1 => clk_1_net,
    fullmf_ce1 => ce_1_net,
    fullmf_clk2 => clk_2_net,
    fullmf_ce2 => ce_2_net
  );
  fullmf_struct : entity xil_defaultlib.fullmf_struct 
  port map (
    s_axis_tdata => s_axis_tdata,
    s_axis_tdata1 => s_axis_tdata1,
    s_axis_tdata2 => s_axis_tdata2,
    s_axis_tdata3 => s_axis_tdata3,
    s_axis_tdata4 => s_axis_tdata4,
    s_axis_tdata5 => s_axis_tdata5,
    s_axis_tdata6 => s_axis_tdata6,
    s_axis_tdata7 => s_axis_tdata7,
    s_axis_tlast => s_axis_tlast,
    s_axis_tuser => s_axis_tuser,
    s_axis_tvalid => s_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_2 => clk_2_net,
    ce_2 => ce_2_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid
  );
end structural;
