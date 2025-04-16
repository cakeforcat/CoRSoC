-- Generated from Simulink block FullED/EnergyDetect_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity energydetect_struct is
  port (
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata2 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata3 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata4 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata5 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata6 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata7 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata8 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 32-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_2 : in std_logic;
    ce_2 : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end energydetect_struct;
architecture structural of energydetect_struct is 
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal single_port_ram3_data_out_net : std_logic_vector( 15-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal write3_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 16-1 downto 0 );
  signal data3_y_net : std_logic_vector( 15-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 16-1 downto 0 );
  signal counter4_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 16-1 downto 0 );
  signal divide_op_net : std_logic_vector( 80-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal divide2_op_net : std_logic_vector( 80-1 downto 0 );
  signal divide1_op_net : std_logic_vector( 80-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal divide3_op_net : std_logic_vector( 80-1 downto 0 );
  signal s_axis_tuser_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tdata8_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net_x0 : std_logic;
  signal s_axis_tdata5_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal s_axis_tdata6_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata7_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net_x0 : std_logic;
  signal multadd2_p_net : std_logic_vector( 48-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 64-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 64-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 64-1 downto 0 );
  signal multadd_p_net : std_logic_vector( 48-1 downto 0 );
  signal multadd1_p_net : std_logic_vector( 48-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 64-1 downto 0 );
  signal multadd3_p_net : std_logic_vector( 48-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 4-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_tlast_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata4_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_tdata2_net : std_logic_vector( 16-1 downto 0 );
  signal s_axis_tdata3_net : std_logic_vector( 16-1 downto 0 );
begin
  m_axis_tdata <= convert1_dout_net;
  m_axis_tlast <= s_axis_tlast_net;
  m_axis_tvalid <= s_axis_tvalid_net;
  s_axis_tdata_net <= s_axis_tdata;
  s_axis_tdata2_net <= s_axis_tdata2;
  s_axis_tdata3_net <= s_axis_tdata3;
  s_axis_tdata4_net <= s_axis_tdata4;
  s_axis_tdata5_net <= s_axis_tdata5;
  s_axis_tdata6_net <= s_axis_tdata6;
  s_axis_tdata7_net <= s_axis_tdata7;
  s_axis_tdata8_net <= s_axis_tdata8;
  s_axis_tlast_net <= s_axis_tlast;
  s_axis_tuser_net <= s_axis_tuser;
  s_axis_tvalid_net <= s_axis_tvalid;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_2;
  ce_net_x0 <= ce_2;
  accumulator : entity xil_defaultlib.sysgen_accum_3d4d6a817c 
  port map (
    clr => '0',
    b => multadd_p_net,
    rst => relational2_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator_q_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_3d4d6a817c 
  port map (
    clr => '0',
    b => multadd1_p_net,
    rst => relational3_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator1_q_net
  );
  accumulator2 : entity xil_defaultlib.sysgen_accum_3d4d6a817c 
  port map (
    clr => '0',
    b => multadd2_p_net,
    rst => relational5_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator2_q_net
  );
  accumulator3 : entity xil_defaultlib.sysgen_accum_3d4d6a817c 
  port map (
    clr => '0',
    b => multadd3_p_net,
    rst => relational7_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => accumulator3_q_net
  );
  concat : entity xil_defaultlib.sysgen_concat_25e24de659 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => relational_op_net,
    in1 => relational1_op_net,
    in2 => relational4_op_net,
    in3 => relational6_op_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant11 : entity xil_defaultlib.sysgen_constant_614c824d98 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_8b564fc4fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  convert1 : entity xil_defaultlib.energydetect_xlconvert 
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
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter1 : entity xil_defaultlib.energydetect_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "energydetect_c_counter_binary_v12_0_i0",
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
  counter2 : entity xil_defaultlib.energydetect_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "energydetect_c_counter_binary_v12_0_i0",
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
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.energydetect_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "energydetect_c_counter_binary_v12_0_i0",
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
  counter4 : entity xil_defaultlib.energydetect_xlcounter_limit 
  generic map (
    cnt_15_0 => 512,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "energydetect_c_counter_binary_v12_0_i0",
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
    op => counter4_op_net
  );
  data3 : entity xil_defaultlib.energydetect_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 15,
    x_width => 32,
    y_width => 15
  )
  port map (
    x => s_axis_tuser_net,
    y => data3_y_net
  );
  delay1 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata4_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay1_q_net
  );
  delay11 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata2_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay11_q_net
  );
  delay12 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay12_q_net
  );
  delay2 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata3_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata6_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata5_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata8_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.energydetect_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => s_axis_tdata7_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay6_q_net
  );
  divide : entity xil_defaultlib.xldivider_generator_154d5742fafd67cc248ce8446c0a55e8 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => accumulator_q_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  divide1 : entity xil_defaultlib.xldivider_generator_154d5742fafd67cc248ce8446c0a55e8 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => accumulator1_q_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide1_op_net
  );
  divide2 : entity xil_defaultlib.xldivider_generator_154d5742fafd67cc248ce8446c0a55e8 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => accumulator2_q_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide2_op_net
  );
  divide3 : entity xil_defaultlib.xldivider_generator_154d5742fafd67cc248ce8446c0a55e8 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => accumulator3_q_net,
    b => constant9_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide3_op_net
  );
  mult : entity xil_defaultlib.energydetect_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "energydetect_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 28,
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
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.energydetect_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "energydetect_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 28,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    b => delay1_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.energydetect_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "energydetect_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 28,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay3_q_net,
    b => delay3_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.energydetect_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "energydetect_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 28,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay5_q_net,
    b => delay5_q_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    core_clk => clk_net_x0,
    core_ce => ce_net_x0,
    p => mult3_p_net
  );
  multadd : entity xil_defaultlib.energydetect_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_arith => xlSigned,
    c_bin_pt => 28,
    c_width => 32,
    core_name0 => "energydetect_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 28,
    output_type => 2,
    output_width => 33,
    p_arith => xlUnsigned,
    p_bin_pt => 40,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay12_q_net,
    b => delay12_q_net,
    c => mult_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd_p_net
  );
  multadd1 : entity xil_defaultlib.energydetect_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_arith => xlSigned,
    c_bin_pt => 28,
    c_width => 32,
    core_name0 => "energydetect_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 28,
    output_type => 2,
    output_width => 33,
    p_arith => xlUnsigned,
    p_bin_pt => 40,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay2_q_net,
    b => delay2_q_net,
    c => mult1_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd1_p_net
  );
  multadd2 : entity xil_defaultlib.energydetect_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_arith => xlSigned,
    c_bin_pt => 28,
    c_width => 32,
    core_name0 => "energydetect_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 28,
    output_type => 2,
    output_width => 33,
    p_arith => xlUnsigned,
    p_bin_pt => 40,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay4_q_net,
    b => delay4_q_net,
    c => mult2_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd2_p_net
  );
  multadd3 : entity xil_defaultlib.energydetect_xlmultadd 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_arith => xlSigned,
    c_bin_pt => 28,
    c_width => 32,
    core_name0 => "energydetect_xbip_multadd_v3_0_i0",
    latency => 0,
    output_bin_pt => 28,
    output_type => 2,
    output_width => 33,
    p_arith => xlUnsigned,
    p_bin_pt => 40,
    p_width => 48
  )
  port map (
    sclr => '0',
    subtract => "0",
    en => "1",
    a => delay6_q_net,
    b => delay6_q_net,
    c => mult3_p_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    p => multadd3_p_net
  );
  reinterpret11 : entity xil_defaultlib.sysgen_reinterpret_1f42116449 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => data3_y_net,
    output_port => reinterpret11_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_29f3440658 
  port map (
    clr => '0',
    a => divide_op_net,
    b => single_port_ram3_data_out_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_29f3440658 
  port map (
    clr => '0',
    a => divide1_op_net,
    b => single_port_ram3_data_out_net,
    en => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_04285b37eb 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant2_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_04285b37eb 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => constant3_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational3_op_net
  );
  relational4 : entity xil_defaultlib.sysgen_relational_29f3440658 
  port map (
    clr => '0',
    a => divide2_op_net,
    b => single_port_ram3_data_out_net,
    en => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_04285b37eb 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant7_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational5_op_net
  );
  relational6 : entity xil_defaultlib.sysgen_relational_29f3440658 
  port map (
    clr => '0',
    a => divide3_op_net,
    b => single_port_ram3_data_out_net,
    en => relational7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
  relational7 : entity xil_defaultlib.sysgen_relational_04285b37eb 
  port map (
    clr => '0',
    a => counter4_op_net,
    b => constant10_op_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    op => relational7_op_net
  );
  single_port_ram3 : entity xil_defaultlib.energydetect_xlspram_dist 
  generic map (
    addr_width => 1,
    c_address_width => 4,
    c_width => 15,
    core_name0 => "energydetect_dist_mem_gen_i0",
    latency => 1,
    write_mode => 1
  )
  port map (
    en => "1",
    addr => constant11_op_net,
    data_in => reinterpret11_output_port_net,
    we => write3_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    data_out => single_port_ram3_data_out_net
  );
  write3 : entity xil_defaultlib.energydetect_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => s_axis_tuser_net,
    y => write3_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity energydetect_default_clock_driver is
  port (
    energydetect_sysclk : in std_logic;
    energydetect_sysce : in std_logic;
    energydetect_sysclr : in std_logic;
    energydetect_clk1 : out std_logic;
    energydetect_ce1 : out std_logic;
    energydetect_clk2 : out std_logic;
    energydetect_ce2 : out std_logic
  );
end energydetect_default_clock_driver;
architecture structural of energydetect_default_clock_driver is 
begin
  clockdriver_x0 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => energydetect_sysclk,
    sysce => energydetect_sysce,
    sysclr => energydetect_sysclr,
    clk => energydetect_clk1,
    ce => energydetect_ce1
  );
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 2,
    log_2_period => 2
  )
  port map (
    sysclk => energydetect_sysclk,
    sysce => energydetect_sysce,
    sysclr => energydetect_sysclr,
    clk => energydetect_clk2,
    ce => energydetect_ce2
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity energydetect is
  port (
    s_axis_tdata : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata2 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata3 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata4 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata5 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata6 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata7 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tdata8 : in std_logic_vector( 16-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tuser : in std_logic_vector( 32-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end energydetect;
architecture structural of energydetect is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "energydetect,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.0390625,system_simulink_period=1.95313e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.000117187,accum=4,concat=1,constant=9,convert=1,counter=4,delay=8,divide=4,mult=4,multadd=4,reinterpret=1,relational=8,slice=2,spram=1,}";
  signal clk_2_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
  signal ce_2_net : std_logic;
begin
  energydetect_default_clock_driver : entity xil_defaultlib.energydetect_default_clock_driver 
  port map (
    energydetect_sysclk => clk,
    energydetect_sysce => '1',
    energydetect_sysclr => '0',
    energydetect_clk1 => clk_1_net,
    energydetect_ce1 => ce_1_net,
    energydetect_clk2 => clk_2_net,
    energydetect_ce2 => ce_2_net
  );
  energydetect_struct : entity xil_defaultlib.energydetect_struct 
  port map (
    s_axis_tdata => s_axis_tdata,
    s_axis_tdata2 => s_axis_tdata2,
    s_axis_tdata3 => s_axis_tdata3,
    s_axis_tdata4 => s_axis_tdata4,
    s_axis_tdata5 => s_axis_tdata5,
    s_axis_tdata6 => s_axis_tdata6,
    s_axis_tdata7 => s_axis_tdata7,
    s_axis_tdata8 => s_axis_tdata8,
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
