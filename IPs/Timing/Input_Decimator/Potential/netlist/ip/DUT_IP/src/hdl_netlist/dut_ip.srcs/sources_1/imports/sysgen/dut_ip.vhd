-- Generated from Simulink block Decimator/DUT_IP_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_ip_struct is
  port (
    s_axis_im_tdata : in std_logic_vector( 128-1 downto 0 );
    s_axis_im_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_re_tdata : in std_logic_vector( 128-1 downto 0 );
    s_axis_re_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    clk_8 : in std_logic;
    ce_8 : in std_logic;
    out2 : out std_logic_vector( 1-1 downto 0 );
    out3 : out std_logic_vector( 32-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dut_ip_struct;
architecture structural of dut_ip_struct is 
  signal delay16_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay14_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay15_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_multiplexer1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay20_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay24_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay22_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay23_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay25_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay26_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay28_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay27_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret16_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay29_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay30_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay31_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay33_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay34_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay32_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_1_s_axis_data_tready_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net_x0 : std_logic;
  signal ce_net_x0 : std_logic;
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal s_axis_re_tdata_net : std_logic_vector( 128-1 downto 0 );
  signal clk_net : std_logic;
  signal s_axis_im_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_re_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal s_axis_im_tdata_net : std_logic_vector( 128-1 downto 0 );
  signal fir_compiler_7_1_m_axis_data_tdata_path1_net : std_logic_vector( 32-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_1_m_axis_data_tdata_path0_net : std_logic_vector( 32-1 downto 0 );
  signal data_im_1_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_im_6_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_im_8_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_re_1_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_re_3_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_im_2_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_im_3_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_im_4_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_im_7_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_im_5_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal data_re_2_y_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal data_re_4_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_re_5_y_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret17_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal data_re_7_y_net : std_logic_vector( 16-1 downto 0 );
  signal data_re_6_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_1_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal data_re_8_y_net : std_logic_vector( 16-1 downto 0 );
  signal time_division_multiplexer_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay13_q_net : std_logic_vector( 16-1 downto 0 );
begin
  out2 <= delay_q_net;
  out3 <= concat_y_net;
  s_axis_im_tdata_net <= s_axis_im_tdata;
  s_axis_im_tvalid_net <= s_axis_im_tvalid;
  s_axis_re_tdata_net <= s_axis_re_tdata;
  s_axis_re_tvalid_net <= s_axis_re_tvalid;
  s_axis_tready <= fir_compiler_7_1_s_axis_data_tready_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  clk_net_x0 <= clk_8;
  ce_net_x0 <= ce_8;
  concat : entity xil_defaultlib.sysgen_concat_159522082c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret_output_port_net,
    in1 => reinterpret17_output_port_net,
    y => concat_y_net
  );
  convert : entity xil_defaultlib.dut_ip_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 30,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => fir_compiler_7_1_m_axis_data_tdata_path1_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.dut_ip_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 30,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => fir_compiler_7_1_m_axis_data_tdata_path0_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    dout => convert1_dout_net
  );
  data_im_1 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 112,
    new_msb => 127,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_1_y_net
  );
  data_im_2 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 96,
    new_msb => 111,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_2_y_net
  );
  data_im_3 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 80,
    new_msb => 95,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_3_y_net
  );
  data_im_4 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 64,
    new_msb => 79,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_4_y_net
  );
  data_im_5 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 48,
    new_msb => 63,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_5_y_net
  );
  data_im_6 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 32,
    new_msb => 47,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_6_y_net
  );
  data_im_7 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 31,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_7_y_net
  );
  data_im_8 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_im_tdata_net,
    y => data_im_8_y_net
  );
  data_re_1 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 112,
    new_msb => 127,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_1_y_net
  );
  data_re_2 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 96,
    new_msb => 111,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_2_y_net
  );
  data_re_3 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 80,
    new_msb => 95,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_3_y_net
  );
  data_re_4 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 64,
    new_msb => 79,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_4_y_net
  );
  data_re_5 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 48,
    new_msb => 63,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_5_y_net
  );
  data_re_6 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 32,
    new_msb => 47,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_6_y_net
  );
  data_re_7 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 31,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_7_y_net
  );
  data_re_8 : entity xil_defaultlib.dut_ip_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 128,
    y_width => 16
  )
  port map (
    x => s_axis_re_tdata_net,
    y => data_re_8_y_net
  );
  delay : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => fir_compiler_7_1_m_axis_data_tvalid_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_multiplexer_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay10 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_8_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay10_q_net
  );
  delay11 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_8_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay11_q_net
  );
  delay12 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_1_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay12_q_net
  );
  delay13 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_2_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay13_q_net
  );
  delay14 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_3_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay14_q_net
  );
  delay15 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_4_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay15_q_net
  );
  delay16 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_5_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_6_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay17_q_net
  );
  delay18 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_re_7_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret8_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => time_division_multiplexer1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay20 : entity xil_defaultlib.dut_ip_xldelay 
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
    q => delay20_q_net
  );
  delay21 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret2_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay21_q_net
  );
  delay22 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret3_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay22_q_net
  );
  delay23 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret4_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay23_q_net
  );
  delay24 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret5_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay24_q_net
  );
  delay25 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret6_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay25_q_net
  );
  delay26 : entity xil_defaultlib.dut_ip_xldelay 
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
    q => delay26_q_net
  );
  delay27 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret16_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay27_q_net
  );
  delay28 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret9_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay28_q_net
  );
  delay29 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret10_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay29_q_net
  );
  delay3 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_1_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay3_q_net
  );
  delay30 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret11_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay30_q_net
  );
  delay31 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret12_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay31_q_net
  );
  delay32 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret13_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay32_q_net
  );
  delay33 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret14_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay33_q_net
  );
  delay34 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret15_output_port_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay34_q_net
  );
  delay4 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_2_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_3_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_4_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_5_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_6_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.dut_ip_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => data_im_7_y_net,
    clk => clk_net_x0,
    ce => ce_net_x0,
    q => delay9_q_net
  );
  fir_compiler_7_1 : entity xil_defaultlib.xlfir_compiler_43ad13552cf71aa111aca21096c047b3 
  port map (
    s_axis_data_tdata_path1 => delay1_q_net,
    s_axis_data_tdata_path0 => delay2_q_net,
    src_clk => clk_net,
    src_ce => ce_net,
    clk => clk_net,
    ce => ce_net,
    clk_8 => clk_net_x0,
    ce_8 => ce_net_x0,
    clk_logic_1 => clk_net,
    ce_logic_1 => ce_net,
    s_axis_data_tready => fir_compiler_7_1_s_axis_data_tready_net(0),
    m_axis_data_tvalid => fir_compiler_7_1_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_path1 => fir_compiler_7_1_m_axis_data_tdata_path1_net,
    m_axis_data_tdata_path0 => fir_compiler_7_1_m_axis_data_tdata_path0_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_a69cd80706 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_dout_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay3_q_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret10 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay13_q_net,
    output_port => reinterpret10_output_port_net
  );
  reinterpret11 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay14_q_net,
    output_port => reinterpret11_output_port_net
  );
  reinterpret12 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay15_q_net,
    output_port => reinterpret12_output_port_net
  );
  reinterpret13 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay16_q_net,
    output_port => reinterpret13_output_port_net
  );
  reinterpret14 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay17_q_net,
    output_port => reinterpret14_output_port_net
  );
  reinterpret15 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay18_q_net,
    output_port => reinterpret15_output_port_net
  );
  reinterpret16 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay11_q_net,
    output_port => reinterpret16_output_port_net
  );
  reinterpret17 : entity xil_defaultlib.sysgen_reinterpret_a69cd80706 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert1_dout_net,
    output_port => reinterpret17_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay4_q_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay5_q_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay6_q_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay7_q_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay8_q_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay9_q_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay10_q_net,
    output_port => reinterpret8_output_port_net
  );
  reinterpret9 : entity xil_defaultlib.sysgen_reinterpret_e6ebf6f0f3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay12_q_net,
    output_port => reinterpret9_output_port_net
  );
  time_division_multiplexer : entity xil_defaultlib.dut_ip_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 8
  )
  port map (
    d0 => delay20_q_net,
    d1 => delay21_q_net,
    d2 => delay22_q_net,
    d3 => delay23_q_net,
    d4 => delay24_q_net,
    d5 => delay25_q_net,
    d6 => delay26_q_net,
    d7 => delay19_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer_q_net
  );
  time_division_multiplexer1 : entity xil_defaultlib.dut_ip_xltdm 
  generic map (
    data_width => 16,
    hasValid => 0,
    num_inputs => 8
  )
  port map (
    d0 => delay28_q_net,
    d1 => delay29_q_net,
    d2 => delay30_q_net,
    d3 => delay31_q_net,
    d4 => delay32_q_net,
    d5 => delay33_q_net,
    d6 => delay34_q_net,
    d7 => delay27_q_net,
    src_clk => clk_net_x0,
    src_ce => ce_net_x0,
    dest_clk => clk_net,
    dest_ce => ce_net,
    q => time_division_multiplexer1_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_ip_default_clock_driver is
  port (
    dut_ip_sysclk : in std_logic;
    dut_ip_sysce : in std_logic;
    dut_ip_sysclr : in std_logic;
    dut_ip_clk1 : out std_logic;
    dut_ip_ce1 : out std_logic;
    dut_ip_clk8 : out std_logic;
    dut_ip_ce8 : out std_logic
  );
end dut_ip_default_clock_driver;
architecture structural of dut_ip_default_clock_driver is 
begin
  clockdriver_x0 : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => dut_ip_sysclk,
    sysce => dut_ip_sysce,
    sysclr => dut_ip_sysclr,
    clk => dut_ip_clk1,
    ce => dut_ip_ce1
  );
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 8,
    log_2_period => 4
  )
  port map (
    sysclk => dut_ip_sysclk,
    sysce => dut_ip_sysce,
    sysclr => dut_ip_sysclr,
    clk => dut_ip_clk8,
    ce => dut_ip_ce8
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity dut_ip is
  port (
    s_axis_im_tdata : in std_logic_vector( 128-1 downto 0 );
    s_axis_im_tvalid : in std_logic_vector( 1-1 downto 0 );
    s_axis_re_tdata : in std_logic_vector( 128-1 downto 0 );
    s_axis_re_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    out2 : out std_logic_vector( 1-1 downto 0 );
    out3 : out std_logic_vector( 32-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 )
  );
end dut_ip;
architecture structural of dut_ip is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "dut_ip,sysgen_core_2024_1,{,compilation=HDL Netlist,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.015625,system_simulink_period=1.95312e-09,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1.95313e-06,concat=1,convert=2,delay=35,fir_compiler_v7_2=1,reinterpret=18,slice=16,tdm=2,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_8_net : std_logic;
  signal ce_8_net : std_logic;
begin
  dut_ip_default_clock_driver : entity xil_defaultlib.dut_ip_default_clock_driver 
  port map (
    dut_ip_sysclk => clk,
    dut_ip_sysce => '1',
    dut_ip_sysclr => '0',
    dut_ip_clk1 => clk_1_net,
    dut_ip_ce1 => ce_1_net,
    dut_ip_clk8 => clk_8_net,
    dut_ip_ce8 => ce_8_net
  );
  dut_ip_struct : entity xil_defaultlib.dut_ip_struct 
  port map (
    s_axis_im_tdata => s_axis_im_tdata,
    s_axis_im_tvalid => s_axis_im_tvalid,
    s_axis_re_tdata => s_axis_re_tdata,
    s_axis_re_tvalid => s_axis_re_tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    clk_8 => clk_8_net,
    ce_8 => ce_8_net,
    out2 => out2,
    out3 => out3,
    s_axis_tready => s_axis_tready
  );
end structural;
