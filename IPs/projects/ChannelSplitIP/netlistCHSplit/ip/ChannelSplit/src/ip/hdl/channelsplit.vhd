-- Generated from Simulink block ChannelSplit/ChannelSplit_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity channelsplit_struct is
  port (
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata_real : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 32-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata2 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata3 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata4 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata5 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata6 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata7 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata8 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tuser : out std_logic_vector( 32-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end channelsplit_struct;
architecture structural of channelsplit_struct is 
  signal fir_compiler_7_8_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_8_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_8_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_8_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_8_event_s_config_tlast_missing_net : std_logic;
  signal time_division_multiplexer3_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_8_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_7_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_7_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_7_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_7_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_7_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_7_event_s_config_tlast_missing_net : std_logic;
  signal relational10_op_net : std_logic;
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tuser_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer2_q1_net : std_logic_vector( 32-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 32-1 downto 0 );
  signal time_division_demultiplexer_q1_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal delay9_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal time_division_demultiplexer4_q1_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal time_division_demultiplexer3_q1_net : std_logic_vector( 32-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 33-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 33-1 downto 0 );
  signal time_division_demultiplexer1_q1_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 33-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 33-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal time_division_demultiplexer6_q1_net : std_logic_vector( 32-1 downto 0 );
  signal delay15_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 33-1 downto 0 );
  signal delay20_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 32-1 downto 0 );
  signal constant16_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer7_q1_net : std_logic_vector( 32-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer5_q1_net : std_logic_vector( 32-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 33-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 33-1 downto 0 );
  signal time_division_demultiplexer_q0_net : std_logic_vector( 32-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter6_op_net : std_logic_vector( 1-1 downto 0 );
  signal time_division_demultiplexer1_q0_net : std_logic_vector( 32-1 downto 0 );
  signal time_division_demultiplexer5_q0_net : std_logic_vector( 32-1 downto 0 );
  signal time_division_demultiplexer4_q0_net : std_logic_vector( 32-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer7_q0_net : std_logic_vector( 32-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer2_q0_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_demultiplexer3_q0_net : std_logic_vector( 32-1 downto 0 );
  signal time_division_demultiplexer6_q0_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_2_event_s_config_tlast_missing_net : std_logic;
  signal time_division_multiplexer1_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_1_event_s_config_tlast_unexpected_net : std_logic;
  signal relational1_op_net : std_logic;
  signal fir_compiler_7_1_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_1_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_1_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_1_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_2_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_2_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_3_event_s_config_tlast_unexpected_net : std_logic;
  signal fir_compiler_7_3_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_3_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_2_s_axis_data_tready_net : std_logic;
  signal time_division_multiplexer_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_3_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_3_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_3_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_1_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal relational4_op_net : std_logic;
  signal fir_compiler_7_5_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_6_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_4_event_s_config_tlast_unexpected_net : std_logic;
  signal time_division_multiplexer2_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_4_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_4_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_5_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_5_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_5_event_s_config_tlast_unexpected_net : std_logic;
  signal relational7_op_net : std_logic;
  signal fir_compiler_7_4_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_4_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_4_s_axis_config_tready_net : std_logic;
  signal fir_compiler_7_5_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_6_s_axis_data_tready_net : std_logic;
  signal fir_compiler_7_6_m_axis_data_tvalid_net : std_logic;
  signal fir_compiler_7_5_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_6_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_6_event_s_config_tlast_missing_net : std_logic;
  signal fir_compiler_7_6_event_s_config_tlast_unexpected_net : std_logic;
begin
  m_axis_tdata <= convert_dout_net;
  m_axis_tdata2 <= convert1_dout_net;
  m_axis_tdata3 <= convert2_dout_net;
  m_axis_tdata4 <= convert3_dout_net;
  m_axis_tdata5 <= convert4_dout_net;
  m_axis_tdata6 <= convert5_dout_net;
  m_axis_tdata7 <= convert6_dout_net;
  m_axis_tdata8 <= convert7_dout_net;
  m_axis_tlast <= s_axis_tlast_net;
  m_axis_tuser <= s_axis_tuser_net;
  m_axis_tvalid <= s_axis_tvalid_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tdata_real_net <= s_axis_tdata_real;
  s_axis_tlast_net <= s_axis_tlast;
  s_axis_tuser_net <= s_axis_tuser;
  s_axis_tvalid_net <= s_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_2;
  ce_net_x0 <= ce_2;
  addsub : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
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
  addsub1 : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
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
  addsub2 : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
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
  addsub3 : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => delay8_q_net,
    b => time_division_demultiplexer3_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => delay9_q_net,
    b => time_division_demultiplexer4_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => delay15_q_net,
    b => time_division_demultiplexer5_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => delay16_q_net,
    b => time_division_demultiplexer6_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.channelsplit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "channelsplit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 29,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => delay20_q_net,
    b => time_division_demultiplexer7_q1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    s => addsub7_s_net
  );
  constant12 : entity xil_defaultlib.sysgen_constant_476a62c064 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant12_op_net
  );
  constant16 : entity xil_defaultlib.sysgen_constant_476a62c064 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant16_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_476a62c064 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_476a62c064 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub1_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub2_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub3_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub4_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub5_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub6_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert6_dout_net
  );
  convert7 : entity xil_defaultlib.channelsplit_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 29,
    din_width => 33,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => addsub7_s_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert7_dout_net
  );
  counter : entity xil_defaultlib.sysgen_counter_64e5346fd9 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter2 : entity xil_defaultlib.sysgen_counter_64e5346fd9 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter4 : entity xil_defaultlib.sysgen_counter_64e5346fd9 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter4_op_net
  );
  counter6 : entity xil_defaultlib.sysgen_counter_64e5346fd9 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter6_op_net
  );
  delay1 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  delay11 : entity xil_defaultlib.channelsplit_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay11_q_net
  );
  delay12 : entity xil_defaultlib.channelsplit_xldelay 
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay12_q_net
  );
  delay15 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer5_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay15_q_net
  );
  delay16 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer6_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay16_q_net
  );
  delay20 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer7_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay20_q_net
  );
  delay3 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer1_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer2_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay4_q_net
  );
  delay8 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer3_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.channelsplit_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_demultiplexer4_q0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay9_q_net
  );
  fir_compiler_7_1 : entity xil_defaultlib.xlfir_compiler_a64f453cbf1772a383c914943e4b77c2 
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
  fir_compiler_7_2 : entity xil_defaultlib.xlfir_compiler_3b3f4bacdbf40745ea36a868a16264ec 
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
  fir_compiler_7_3 : entity xil_defaultlib.xlfir_compiler_d0ad490850d48f1adf09d072f3c541f8 
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
  fir_compiler_7_4 : entity xil_defaultlib.xlfir_compiler_4e1453da6436c0e7b9c8c4e9f23b3ae3 
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
  fir_compiler_7_5 : entity xil_defaultlib.xlfir_compiler_91333a2b5ba0bd2a13a6f3fb623da5f2 
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
  fir_compiler_7_6 : entity xil_defaultlib.xlfir_compiler_cd1a16421d4b0c82312a34ba8a568266 
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
  fir_compiler_7_7 : entity xil_defaultlib.xlfir_compiler_039d3506c0c7caf43f14a10f0ff35f3b 
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
  fir_compiler_7_8 : entity xil_defaultlib.xlfir_compiler_23f807376aa6037b5b06398345a58e5e 
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
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_ff3b4e6fdc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => s_axis_tdata_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_ff3b4e6fdc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => s_axis_tdata_real_net,
    output_port => reinterpret7_output_port_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_b0799198d6 
  port map (
    clr => '0',
    a => constant5_op_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational1_op_net
  );
  relational10 : entity xil_defaultlib.sysgen_relational_b0799198d6 
  port map (
    clr => '0',
    a => constant16_op_net,
    b => counter6_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational10_op_net
  );
  relational4 : entity xil_defaultlib.sysgen_relational_b0799198d6 
  port map (
    clr => '0',
    a => constant8_op_net,
    b => counter2_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational4_op_net
  );
  relational7 : entity xil_defaultlib.sysgen_relational_b0799198d6 
  port map (
    clr => '0',
    a => constant12_op_net,
    b => counter4_op_net,
    clk => clk_net,
    ce => ce_net,
    op(0) => relational7_op_net
  );
  time_division_demultiplexer : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_demultiplexer1 : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_demultiplexer2 : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_demultiplexer3 : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_demultiplexer4 : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_demultiplexer5 : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_demultiplexer6 : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_demultiplexer7 : entity xil_defaultlib.channelsplit_xltdd_multich 
  generic map (
    data_width => 32,
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
  time_division_multiplexer : entity xil_defaultlib.channelsplit_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => delay11_q_net,
    d1 => delay12_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer_q_net
  );
  time_division_multiplexer1 : entity xil_defaultlib.channelsplit_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => delay11_q_net,
    d1 => delay12_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer1_q_net
  );
  time_division_multiplexer2 : entity xil_defaultlib.channelsplit_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => delay11_q_net,
    d1 => delay12_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer2_q_net
  );
  time_division_multiplexer3 : entity xil_defaultlib.channelsplit_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 2
  )
  port map (
    d0 => delay11_q_net,
    d1 => delay12_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer3_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity channelsplit_default_clock_driver is
  port (
    channelsplit_sysclk : in std_logic;
    channelsplit_sysce : in std_logic;
    channelsplit_sysclr : in std_logic;
    channelsplit_clk1 : out std_logic;
    channelsplit_ce1 : out std_logic;
    channelsplit_clk2 : out std_logic;
    channelsplit_ce2 : out std_logic
  );
end channelsplit_default_clock_driver;
architecture structural of channelsplit_default_clock_driver is 
begin
  clockdriver_x0 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => channelsplit_sysclk,
    sysce => channelsplit_sysce,
    sysclr => channelsplit_sysclr,
    clk => channelsplit_clk1,
    ce => channelsplit_ce1
  );
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 2,
    log_2_period => 2
  )
  port map (
    sysclk => channelsplit_sysclk,
    sysce => channelsplit_sysce,
    sysclr => channelsplit_sysclr,
    clk => channelsplit_clk2,
    ce => channelsplit_ce2
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity channelsplit is
  port (
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata_real : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 32-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata2 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata3 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata4 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata5 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata6 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata7 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tdata8 : out std_logic_vector( 16-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tuser : out std_logic_vector( 32-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end channelsplit;
architecture structural of channelsplit is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "channelsplit,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.0390625,system_simulink_period=1.95313e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.000117187,addsub=8,constant=4,convert=8,counter=4,delay=10,fir_compiler_v7_2=8,reinterpret=2,relational=4,tdd=8,tdm=4,}";
  signal clk_2_net : std_logic;
  signal ce_2_net : std_logic;
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  channelsplit_default_clock_driver : entity xil_defaultlib.channelsplit_default_clock_driver 
  port map (
    channelsplit_sysclk => clk,
    channelsplit_sysce => '1',
    channelsplit_sysclr => '0',
    channelsplit_clk1 => clk_1_net,
    channelsplit_ce1 => ce_1_net,
    channelsplit_clk2 => clk_2_net,
    channelsplit_ce2 => ce_2_net
  );
  channelsplit_struct : entity xil_defaultlib.channelsplit_struct 
  port map (
    s_axis_tdata => s_axis_tdata,
    s_axis_tdata_real => s_axis_tdata_real,
    s_axis_tlast => s_axis_tlast,
    s_axis_tuser => s_axis_tuser,
    s_axis_tvalid => s_axis_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_2 => clk_2_net,
    ce_2 => ce_2_net,
    m_axis_tdata => m_axis_tdata,
    m_axis_tdata2 => m_axis_tdata2,
    m_axis_tdata3 => m_axis_tdata3,
    m_axis_tdata4 => m_axis_tdata4,
    m_axis_tdata5 => m_axis_tdata5,
    m_axis_tdata6 => m_axis_tdata6,
    m_axis_tdata7 => m_axis_tdata7,
    m_axis_tdata8 => m_axis_tdata8,
    m_axis_tlast => m_axis_tlast,
    m_axis_tuser => m_axis_tuser,
    m_axis_tvalid => m_axis_tvalid
  );
end structural;
