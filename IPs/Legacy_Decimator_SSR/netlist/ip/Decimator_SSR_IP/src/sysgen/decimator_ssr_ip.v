`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_SSR/Decimator_SSR_IP/Vector Delay
module decimator_ssr_ip_vector_delay (
  input [16-1:0] d_1,
  input [16-1:0] d_2,
  input [16-1:0] d_3,
  input [16-1:0] d_4,
  input [16-1:0] d_5,
  input [16-1:0] d_6,
  input [16-1:0] d_7,
  input [16-1:0] d_8,
  input clk_1,
  input ce_1,
  output [16-1:0] q_1,
  output [16-1:0] q_2,
  output [16-1:0] q_3,
  output [16-1:0] q_4,
  output [16-1:0] q_5,
  output [16-1:0] q_6,
  output [16-1:0] q_7,
  output [16-1:0] q_8
);
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] s_axis_im_tdata_2_net;
  wire [16-1:0] s_axis_im_tdata_4_net;
  wire [16-1:0] s_axis_im_tdata_5_net;
  wire [16-1:0] s_axis_im_tdata_3_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay6_q_net;
  wire [16-1:0] delay0_q_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] delay7_q_net;
  wire [16-1:0] s_axis_im_tdata_0_net;
  wire [16-1:0] s_axis_im_tdata_1_net;
  wire ce_net;
  wire [16-1:0] s_axis_im_tdata_6_net;
  wire [16-1:0] s_axis_im_tdata_7_net;
  wire clk_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign s_axis_im_tdata_0_net = d_1;
  assign s_axis_im_tdata_1_net = d_2;
  assign s_axis_im_tdata_2_net = d_3;
  assign s_axis_im_tdata_3_net = d_4;
  assign s_axis_im_tdata_4_net = d_5;
  assign s_axis_im_tdata_5_net = d_6;
  assign s_axis_im_tdata_6_net = d_7;
  assign s_axis_im_tdata_7_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay0 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay0_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_1_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_2_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_3_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_4_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_5_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_6_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tdata_7_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_SSR/Decimator_SSR_IP/Vector Delay1
module decimator_ssr_ip_vector_delay1 (
  input [16-1:0] d_1,
  input [16-1:0] d_2,
  input [16-1:0] d_3,
  input [16-1:0] d_4,
  input [16-1:0] d_5,
  input [16-1:0] d_6,
  input [16-1:0] d_7,
  input [16-1:0] d_8,
  input clk_1,
  input ce_1,
  output [16-1:0] q_1,
  output [16-1:0] q_2,
  output [16-1:0] q_3,
  output [16-1:0] q_4,
  output [16-1:0] q_5,
  output [16-1:0] q_6,
  output [16-1:0] q_7,
  output [16-1:0] q_8
);
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] delay0_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay7_q_net;
  wire [16-1:0] s_axis_re_tdata_0_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay6_q_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] s_axis_re_tdata_4_net;
  wire [16-1:0] s_axis_re_tdata_7_net;
  wire [16-1:0] s_axis_re_tdata_3_net;
  wire [16-1:0] s_axis_re_tdata_6_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] s_axis_re_tdata_2_net;
  wire [16-1:0] s_axis_re_tdata_1_net;
  wire [16-1:0] s_axis_re_tdata_5_net;
  assign q_1 = delay0_q_net;
  assign q_2 = delay1_q_net;
  assign q_3 = delay2_q_net;
  assign q_4 = delay3_q_net;
  assign q_5 = delay4_q_net;
  assign q_6 = delay5_q_net;
  assign q_7 = delay6_q_net;
  assign q_8 = delay7_q_net;
  assign s_axis_re_tdata_0_net = d_1;
  assign s_axis_re_tdata_1_net = d_2;
  assign s_axis_re_tdata_2_net = d_3;
  assign s_axis_re_tdata_3_net = d_4;
  assign s_axis_re_tdata_4_net = d_5;
  assign s_axis_re_tdata_5_net = d_6;
  assign s_axis_re_tdata_6_net = d_7;
  assign s_axis_re_tdata_7_net = d_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay0 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay0_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_1_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_2_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_3_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_4_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_5_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_6_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tdata_7_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay7_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_SSR/Decimator_SSR_IP/Vector FIR
module decimator_ssr_ip_vector_fir (
  input [1-1:0] tvi,
  input [16-1:0] tdi_1,
  input [16-1:0] tdi_2,
  input [16-1:0] tdi_3,
  input [16-1:0] tdi_4,
  input [16-1:0] tdi_5,
  input [16-1:0] tdi_6,
  input [16-1:0] tdi_7,
  input [16-1:0] tdi_8,
  input clk_1,
  input ce_1,
  output trdyo,
  output tvo,
  output [35-1:0] tdo
);
  wire ce_net;
  wire [16-1:0] delay7_q_net;
  wire clk_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay6_q_net;
  wire [16-1:0] delay5_q_net;
  wire [35-1:0] fir_compiler_7_2_m_axis_data_tdata_real_net;
  wire [1-1:0] delay1_q_net_x0;
  wire [16-1:0] delay0_q_net;
  wire fir_compiler_7_2_m_axis_data_tvalid_net;
  wire [16-1:0] delay1_q_net;
  wire fir_compiler_7_2_s_axis_data_tready_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] delay3_q_net;
  assign trdyo = fir_compiler_7_2_s_axis_data_tready_net;
  assign tvo = fir_compiler_7_2_m_axis_data_tvalid_net;
  assign tdo = fir_compiler_7_2_m_axis_data_tdata_real_net;
  assign delay1_q_net_x0 = tvi;
  assign delay0_q_net = tdi_1;
  assign delay1_q_net = tdi_2;
  assign delay2_q_net = tdi_3;
  assign delay3_q_net = tdi_4;
  assign delay4_q_net = tdi_5;
  assign delay5_q_net = tdi_6;
  assign delay6_q_net = tdi_7;
  assign delay7_q_net = tdi_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlfir_compiler_696afa25b595ab5ad2ae900748a3bf4c fir_compiler_7_2 (
    .s_axis_data_tvalid(delay1_q_net_x0),
    .s_axis_data_tdata_vect7(delay7_q_net),
    .s_axis_data_tdata_vect6(delay6_q_net),
    .s_axis_data_tdata_vect5(delay5_q_net),
    .s_axis_data_tdata_vect4(delay4_q_net),
    .s_axis_data_tdata_vect3(delay3_q_net),
    .s_axis_data_tdata_vect2(delay2_q_net),
    .s_axis_data_tdata_vect1(delay1_q_net),
    .s_axis_data_tdata_vect0(delay0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_data_tready(fir_compiler_7_2_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_2_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_2_m_axis_data_tdata_real_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_SSR/Decimator_SSR_IP/Vector FIR1
module decimator_ssr_ip_vector_fir1 (
  input [1-1:0] tvi,
  input [16-1:0] tdi_1,
  input [16-1:0] tdi_2,
  input [16-1:0] tdi_3,
  input [16-1:0] tdi_4,
  input [16-1:0] tdi_5,
  input [16-1:0] tdi_6,
  input [16-1:0] tdi_7,
  input [16-1:0] tdi_8,
  input clk_1,
  input ce_1,
  output trdyo,
  output tvo,
  output [35-1:0] tdo
);
  wire [16-1:0] delay5_q_net;
  wire fir_compiler_7_2_m_axis_data_tvalid_net;
  wire [16-1:0] delay2_q_net;
  wire clk_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay4_q_net;
  wire [1-1:0] delay2_q_net_x0;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay7_q_net;
  wire [35-1:0] fir_compiler_7_2_m_axis_data_tdata_real_net;
  wire fir_compiler_7_2_s_axis_data_tready_net;
  wire [16-1:0] delay0_q_net;
  wire [16-1:0] delay6_q_net;
  wire ce_net;
  assign trdyo = fir_compiler_7_2_s_axis_data_tready_net;
  assign tvo = fir_compiler_7_2_m_axis_data_tvalid_net;
  assign tdo = fir_compiler_7_2_m_axis_data_tdata_real_net;
  assign delay2_q_net_x0 = tvi;
  assign delay0_q_net = tdi_1;
  assign delay1_q_net = tdi_2;
  assign delay2_q_net = tdi_3;
  assign delay3_q_net = tdi_4;
  assign delay4_q_net = tdi_5;
  assign delay5_q_net = tdi_6;
  assign delay6_q_net = tdi_7;
  assign delay7_q_net = tdi_8;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlfir_compiler_696afa25b595ab5ad2ae900748a3bf4c fir_compiler_7_2 (
    .s_axis_data_tvalid(delay2_q_net_x0),
    .s_axis_data_tdata_vect7(delay7_q_net),
    .s_axis_data_tdata_vect6(delay6_q_net),
    .s_axis_data_tdata_vect5(delay5_q_net),
    .s_axis_data_tdata_vect4(delay4_q_net),
    .s_axis_data_tdata_vect3(delay3_q_net),
    .s_axis_data_tdata_vect2(delay2_q_net),
    .s_axis_data_tdata_vect1(delay1_q_net),
    .s_axis_data_tdata_vect0(delay0_q_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_data_tready(fir_compiler_7_2_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_2_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_2_m_axis_data_tdata_real_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_SSR/Decimator_SSR_IP/s_axis_im_tdata
module decimator_ssr_ip_s_axis_im_tdata (
  input [16-1:0] s_axis_im_tdata_0,
  input [16-1:0] s_axis_im_tdata_1,
  input [16-1:0] s_axis_im_tdata_2,
  input [16-1:0] s_axis_im_tdata_3,
  input [16-1:0] s_axis_im_tdata_4,
  input [16-1:0] s_axis_im_tdata_5,
  input [16-1:0] s_axis_im_tdata_6,
  input [16-1:0] s_axis_im_tdata_7
);
  wire [16-1:0] s_axis_im_tdata_3_net;
  wire [16-1:0] s_axis_im_tdata_0_net;
  wire [16-1:0] s_axis_im_tdata_1_net;
  wire [16-1:0] s_axis_im_tdata_7_net;
  wire [16-1:0] s_axis_im_tdata_6_net;
  wire [16-1:0] s_axis_im_tdata_5_net;
  wire [16-1:0] s_axis_im_tdata_2_net;
  wire [16-1:0] s_axis_im_tdata_4_net;
  assign s_axis_im_tdata_0_net = s_axis_im_tdata_0;
  assign s_axis_im_tdata_1_net = s_axis_im_tdata_1;
  assign s_axis_im_tdata_2_net = s_axis_im_tdata_2;
  assign s_axis_im_tdata_3_net = s_axis_im_tdata_3;
  assign s_axis_im_tdata_4_net = s_axis_im_tdata_4;
  assign s_axis_im_tdata_5_net = s_axis_im_tdata_5;
  assign s_axis_im_tdata_6_net = s_axis_im_tdata_6;
  assign s_axis_im_tdata_7_net = s_axis_im_tdata_7;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_SSR/Decimator_SSR_IP/s_axis_re_tdata
module decimator_ssr_ip_s_axis_re_tdata (
  input [16-1:0] s_axis_re_tdata_0,
  input [16-1:0] s_axis_re_tdata_1,
  input [16-1:0] s_axis_re_tdata_2,
  input [16-1:0] s_axis_re_tdata_3,
  input [16-1:0] s_axis_re_tdata_4,
  input [16-1:0] s_axis_re_tdata_5,
  input [16-1:0] s_axis_re_tdata_6,
  input [16-1:0] s_axis_re_tdata_7
);
  wire [16-1:0] s_axis_re_tdata_5_net;
  wire [16-1:0] s_axis_re_tdata_6_net;
  wire [16-1:0] s_axis_re_tdata_3_net;
  wire [16-1:0] s_axis_re_tdata_1_net;
  wire [16-1:0] s_axis_re_tdata_0_net;
  wire [16-1:0] s_axis_re_tdata_2_net;
  wire [16-1:0] s_axis_re_tdata_7_net;
  wire [16-1:0] s_axis_re_tdata_4_net;
  assign s_axis_re_tdata_0_net = s_axis_re_tdata_0;
  assign s_axis_re_tdata_1_net = s_axis_re_tdata_1;
  assign s_axis_re_tdata_2_net = s_axis_re_tdata_2;
  assign s_axis_re_tdata_3_net = s_axis_re_tdata_3;
  assign s_axis_re_tdata_4_net = s_axis_re_tdata_4;
  assign s_axis_re_tdata_5_net = s_axis_re_tdata_5;
  assign s_axis_re_tdata_6_net = s_axis_re_tdata_6;
  assign s_axis_re_tdata_7_net = s_axis_re_tdata_7;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_SSR/Decimator_SSR_IP_struct
module decimator_ssr_ip_struct (
  input [1-1:0] s_axis_im_tvalid,
  input [1-1:0] s_axis_re_tvalid,
  input [16-1:0] s_axis_im_tdata_0,
  input [16-1:0] s_axis_im_tdata_1,
  input [16-1:0] s_axis_im_tdata_2,
  input [16-1:0] s_axis_im_tdata_3,
  input [16-1:0] s_axis_im_tdata_4,
  input [16-1:0] s_axis_im_tdata_5,
  input [16-1:0] s_axis_im_tdata_6,
  input [16-1:0] s_axis_im_tdata_7,
  input [16-1:0] s_axis_re_tdata_0,
  input [16-1:0] s_axis_re_tdata_1,
  input [16-1:0] s_axis_re_tdata_2,
  input [16-1:0] s_axis_re_tdata_3,
  input [16-1:0] s_axis_re_tdata_4,
  input [16-1:0] s_axis_re_tdata_5,
  input [16-1:0] s_axis_re_tdata_6,
  input [16-1:0] s_axis_re_tdata_7,
  input clk_1,
  input ce_1,
  output [32-1:0] m_axis_tdata,
  output [1-1:0] m_axis_tvalid,
  output [1-1:0] s_axis_tready
);
  wire [16-1:0] s_axis_re_tdata_0_net;
  wire [16-1:0] s_axis_re_tdata_7_net;
  wire [16-1:0] s_axis_re_tdata_3_net;
  wire [16-1:0] s_axis_re_tdata_2_net;
  wire clk_net;
  wire [16-1:0] s_axis_re_tdata_4_net;
  wire [16-1:0] delay0_q_net_x0;
  wire [16-1:0] delay1_q_net_x0;
  wire [16-1:0] s_axis_re_tdata_1_net;
  wire [16-1:0] delay4_q_net_x0;
  wire [16-1:0] delay5_q_net_x1;
  wire [16-1:0] delay2_q_net_x0;
  wire [16-1:0] delay6_q_net_x0;
  wire ce_net;
  wire [16-1:0] delay3_q_net_x0;
  wire [16-1:0] delay7_q_net_x0;
  wire [16-1:0] s_axis_im_tdata_7_net;
  wire [16-1:0] s_axis_re_tdata_5_net;
  wire [16-1:0] s_axis_re_tdata_6_net;
  wire [16-1:0] delay0_q_net;
  wire [35-1:0] fir_compiler_7_2_m_axis_data_tdata_real_net_x0;
  wire fir_compiler_7_2_s_axis_data_tready_net;
  wire fir_compiler_7_2_s_axis_data_tready_net_x0;
  wire [16-1:0] convert_dout_net;
  wire [35-1:0] delay4_q_net_x1;
  wire [16-1:0] reinterpret17_output_port_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay7_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay5_q_net;
  wire fir_compiler_7_2_m_axis_data_tvalid_net_x0;
  wire [35-1:0] fir_compiler_7_2_m_axis_data_tdata_real_net;
  wire [16-1:0] delay4_q_net;
  wire [1-1:0] delay1_q_net_x1;
  wire [16-1:0] delay6_q_net;
  wire [1-1:0] delay2_q_net_x1;
  wire [16-1:0] reinterpret_output_port_net;
  wire [16-1:0] delay2_q_net;
  wire fir_compiler_7_2_m_axis_data_tvalid_net;
  wire [1-1:0] convert3_dout_net;
  wire [1-1:0] delay7_q_net_x1;
  wire [1-1:0] delay8_q_net;
  wire [16-1:0] convert1_dout_net;
  wire [1-1:0] delay9_q_net;
  wire [35-1:0] delay5_q_net_x0;
  wire [1-1:0] convert2_dout_net;
  wire [1-1:0] delay10_q_net;
  wire [1-1:0] convert5_dout_net;
  wire [1-1:0] convert4_dout_net;
  wire [16-1:0] delay11_q_net;
  wire [16-1:0] delay14_q_net;
  wire [16-1:0] delay12_q_net;
  wire [16-1:0] delay13_q_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] relational1_op_net;
  wire [16-1:0] s_axis_im_tdata_6_net;
  wire [16-1:0] s_axis_im_tdata_1_net;
  wire [16-1:0] s_axis_im_tdata_3_net;
  wire [16-1:0] s_axis_im_tdata_2_net;
  wire [1-1:0] delay3_q_net_x1;
  wire [1-1:0] s_axis_im_tvalid_net;
  wire [1-1:0] delay6_q_net_x1;
  wire [32-1:0] concat_y_net;
  wire [1-1:0] s_axis_re_tvalid_net;
  wire [16-1:0] s_axis_im_tdata_0_net;
  wire [16-1:0] s_axis_im_tdata_4_net;
  wire [16-1:0] s_axis_im_tdata_5_net;
  assign m_axis_tdata = concat_y_net;
  assign m_axis_tvalid = delay3_q_net_x1;
  assign s_axis_im_tvalid_net = s_axis_im_tvalid;
  assign s_axis_re_tvalid_net = s_axis_re_tvalid;
  assign s_axis_tready = delay6_q_net_x1;
  assign s_axis_im_tdata_0_net = s_axis_im_tdata_0;
  assign s_axis_im_tdata_1_net = s_axis_im_tdata_1;
  assign s_axis_im_tdata_2_net = s_axis_im_tdata_2;
  assign s_axis_im_tdata_3_net = s_axis_im_tdata_3;
  assign s_axis_im_tdata_4_net = s_axis_im_tdata_4;
  assign s_axis_im_tdata_5_net = s_axis_im_tdata_5;
  assign s_axis_im_tdata_6_net = s_axis_im_tdata_6;
  assign s_axis_im_tdata_7_net = s_axis_im_tdata_7;
  assign s_axis_re_tdata_0_net = s_axis_re_tdata_0;
  assign s_axis_re_tdata_1_net = s_axis_re_tdata_1;
  assign s_axis_re_tdata_2_net = s_axis_re_tdata_2;
  assign s_axis_re_tdata_3_net = s_axis_re_tdata_3;
  assign s_axis_re_tdata_4_net = s_axis_re_tdata_4;
  assign s_axis_re_tdata_5_net = s_axis_re_tdata_5;
  assign s_axis_re_tdata_6_net = s_axis_re_tdata_6;
  assign s_axis_re_tdata_7_net = s_axis_re_tdata_7;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  decimator_ssr_ip_vector_delay vector_delay (
    .d_1(s_axis_im_tdata_0_net),
    .d_2(s_axis_im_tdata_1_net),
    .d_3(s_axis_im_tdata_2_net),
    .d_4(s_axis_im_tdata_3_net),
    .d_5(s_axis_im_tdata_4_net),
    .d_6(s_axis_im_tdata_5_net),
    .d_7(s_axis_im_tdata_6_net),
    .d_8(s_axis_im_tdata_7_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(delay0_q_net_x0),
    .q_2(delay1_q_net_x0),
    .q_3(delay2_q_net_x0),
    .q_4(delay3_q_net_x0),
    .q_5(delay4_q_net_x0),
    .q_6(delay5_q_net_x1),
    .q_7(delay6_q_net_x0),
    .q_8(delay7_q_net_x0)
  );
  decimator_ssr_ip_vector_delay1 vector_delay1 (
    .d_1(s_axis_re_tdata_0_net),
    .d_2(s_axis_re_tdata_1_net),
    .d_3(s_axis_re_tdata_2_net),
    .d_4(s_axis_re_tdata_3_net),
    .d_5(s_axis_re_tdata_4_net),
    .d_6(s_axis_re_tdata_5_net),
    .d_7(s_axis_re_tdata_6_net),
    .d_8(s_axis_re_tdata_7_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .q_1(delay0_q_net),
    .q_2(delay1_q_net),
    .q_3(delay2_q_net),
    .q_4(delay3_q_net),
    .q_5(delay4_q_net),
    .q_6(delay5_q_net),
    .q_7(delay6_q_net),
    .q_8(delay7_q_net)
  );
  decimator_ssr_ip_vector_fir vector_fir (
    .tvi(delay1_q_net_x1),
    .tdi_1(delay0_q_net),
    .tdi_2(delay1_q_net),
    .tdi_3(delay2_q_net),
    .tdi_4(delay3_q_net),
    .tdi_5(delay4_q_net),
    .tdi_6(delay5_q_net),
    .tdi_7(delay6_q_net),
    .tdi_8(delay7_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .trdyo(fir_compiler_7_2_s_axis_data_tready_net_x0),
    .tvo(fir_compiler_7_2_m_axis_data_tvalid_net_x0),
    .tdo(fir_compiler_7_2_m_axis_data_tdata_real_net_x0)
  );
  decimator_ssr_ip_vector_fir1 vector_fir1 (
    .tvi(delay2_q_net_x1),
    .tdi_1(delay0_q_net_x0),
    .tdi_2(delay1_q_net_x0),
    .tdi_3(delay2_q_net_x0),
    .tdi_4(delay3_q_net_x0),
    .tdi_5(delay4_q_net_x0),
    .tdi_6(delay5_q_net_x1),
    .tdi_7(delay6_q_net_x0),
    .tdi_8(delay7_q_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .trdyo(fir_compiler_7_2_s_axis_data_tready_net),
    .tvo(fir_compiler_7_2_m_axis_data_tvalid_net),
    .tdo(fir_compiler_7_2_m_axis_data_tdata_real_net)
  );
  decimator_ssr_ip_s_axis_im_tdata s_axis_im_tdata (
    .s_axis_im_tdata_0(s_axis_im_tdata_0_net),
    .s_axis_im_tdata_1(s_axis_im_tdata_1_net),
    .s_axis_im_tdata_2(s_axis_im_tdata_2_net),
    .s_axis_im_tdata_3(s_axis_im_tdata_3_net),
    .s_axis_im_tdata_4(s_axis_im_tdata_4_net),
    .s_axis_im_tdata_5(s_axis_im_tdata_5_net),
    .s_axis_im_tdata_6(s_axis_im_tdata_6_net),
    .s_axis_im_tdata_7(s_axis_im_tdata_7_net)
  );
  decimator_ssr_ip_s_axis_re_tdata s_axis_re_tdata (
    .s_axis_re_tdata_0(s_axis_re_tdata_0_net),
    .s_axis_re_tdata_1(s_axis_re_tdata_1_net),
    .s_axis_re_tdata_2(s_axis_re_tdata_2_net),
    .s_axis_re_tdata_3(s_axis_re_tdata_3_net),
    .s_axis_re_tdata_4(s_axis_re_tdata_4_net),
    .s_axis_re_tdata_5(s_axis_re_tdata_5_net),
    .s_axis_re_tdata_6(s_axis_re_tdata_6_net),
    .s_axis_re_tdata_7(s_axis_re_tdata_7_net)
  );
  sysgen_concat_710b9c9162 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret_output_port_net),
    .in1(reinterpret17_output_port_net),
    .y(concat_y_net)
  );
  decimator_ssr_ip_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(32),
    .din_width(35),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(1),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(delay4_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert_dout_net)
  );
  decimator_ssr_ip_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(32),
    .din_width(35),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(1),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(delay5_q_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  decimator_ssr_ip_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(1),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(delay10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  decimator_ssr_ip_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(1),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(delay8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
  decimator_ssr_ip_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(1),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(delay9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net)
  );
  decimator_ssr_ip_xlconvert #(
    .bool_conversion(0),
    .din_arith(1),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(1),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(1),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert5 (
    .clr(1'b0),
    .en(1'b1),
    .din(delay7_q_net_x1),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert5_dout_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_re_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net_x1)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay10 (
    .en(1'b1),
    .rst(1'b0),
    .d(fir_compiler_7_2_s_axis_data_tready_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay10_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay11 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay11_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay12 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay12_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay13 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay13_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay14 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay14_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(s_axis_im_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net_x1)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net_x1)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(35)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(fir_compiler_7_2_m_axis_data_tdata_real_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net_x1)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(35)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(fir_compiler_7_2_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net_x0)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net_x1)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(fir_compiler_7_2_m_axis_data_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay7_q_net_x1)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay8 (
    .en(1'b1),
    .rst(1'b0),
    .d(fir_compiler_7_2_m_axis_data_tvalid_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay8_q_net)
  );
  decimator_ssr_ip_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay9 (
    .en(1'b1),
    .rst(1'b0),
    .d(fir_compiler_7_2_s_axis_data_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay9_q_net)
  );
  sysgen_reinterpret_f0db4de68d reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(delay14_q_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_f0db4de68d reinterpret17 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(delay13_q_net),
    .output_port(reinterpret17_output_port_net)
  );
  sysgen_relational_deae35469f relational (
    .clr(1'b0),
    .a(convert3_dout_net),
    .b(convert5_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational_op_net)
  );
  sysgen_relational_deae35469f relational1 (
    .clr(1'b0),
    .a(convert2_dout_net),
    .b(convert4_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module decimator_ssr_ip_default_clock_driver (
  input decimator_ssr_ip_sysclk,
  input decimator_ssr_ip_sysce,
  input decimator_ssr_ip_sysclr,
  output decimator_ssr_ip_clk1,
  output decimator_ssr_ip_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(decimator_ssr_ip_sysclk),
    .sysce(decimator_ssr_ip_sysce),
    .sysclr(decimator_ssr_ip_sysclr),
    .clk(decimator_ssr_ip_clk1),
    .ce(decimator_ssr_ip_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "decimator_ssr_ip,sysgen_core_2024_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=0.015625,system_simulink_period=1.5625e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=9.375e-05,concat=1,convert=6,delay=30,fir_compiler_v7_2=2,reinterpret=2,relational=2,}" *)
module decimator_ssr_ip (
  input [1-1:0] s_axis_im_tvalid,
  input [1-1:0] s_axis_re_tvalid,
  input [16-1:0] s_axis_im_tdata_0,
  input [16-1:0] s_axis_im_tdata_1,
  input [16-1:0] s_axis_im_tdata_2,
  input [16-1:0] s_axis_im_tdata_3,
  input [16-1:0] s_axis_im_tdata_4,
  input [16-1:0] s_axis_im_tdata_5,
  input [16-1:0] s_axis_im_tdata_6,
  input [16-1:0] s_axis_im_tdata_7,
  input [16-1:0] s_axis_re_tdata_0,
  input [16-1:0] s_axis_re_tdata_1,
  input [16-1:0] s_axis_re_tdata_2,
  input [16-1:0] s_axis_re_tdata_3,
  input [16-1:0] s_axis_re_tdata_4,
  input [16-1:0] s_axis_re_tdata_5,
  input [16-1:0] s_axis_re_tdata_6,
  input [16-1:0] s_axis_re_tdata_7,
  input clk,
  output [32-1:0] m_axis_tdata,
  output [1-1:0] m_axis_tvalid,
  output [1-1:0] s_axis_tready
);
  wire ce_1_net;
  wire clk_1_net;
  decimator_ssr_ip_default_clock_driver decimator_ssr_ip_default_clock_driver (
    .decimator_ssr_ip_sysclk(clk),
    .decimator_ssr_ip_sysce(1'b1),
    .decimator_ssr_ip_sysclr(1'b0),
    .decimator_ssr_ip_clk1(clk_1_net),
    .decimator_ssr_ip_ce1(ce_1_net)
  );
  decimator_ssr_ip_struct decimator_ssr_ip_struct (
    .s_axis_im_tvalid(s_axis_im_tvalid),
    .s_axis_re_tvalid(s_axis_re_tvalid),
    .s_axis_im_tdata_0(s_axis_im_tdata_0),
    .s_axis_im_tdata_1(s_axis_im_tdata_1),
    .s_axis_im_tdata_2(s_axis_im_tdata_2),
    .s_axis_im_tdata_3(s_axis_im_tdata_3),
    .s_axis_im_tdata_4(s_axis_im_tdata_4),
    .s_axis_im_tdata_5(s_axis_im_tdata_5),
    .s_axis_im_tdata_6(s_axis_im_tdata_6),
    .s_axis_im_tdata_7(s_axis_im_tdata_7),
    .s_axis_re_tdata_0(s_axis_re_tdata_0),
    .s_axis_re_tdata_1(s_axis_re_tdata_1),
    .s_axis_re_tdata_2(s_axis_re_tdata_2),
    .s_axis_re_tdata_3(s_axis_re_tdata_3),
    .s_axis_re_tdata_4(s_axis_re_tdata_4),
    .s_axis_re_tdata_5(s_axis_re_tdata_5),
    .s_axis_re_tdata_6(s_axis_re_tdata_6),
    .s_axis_re_tdata_7(s_axis_re_tdata_7),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .s_axis_tready(s_axis_tready)
  );
endmodule
