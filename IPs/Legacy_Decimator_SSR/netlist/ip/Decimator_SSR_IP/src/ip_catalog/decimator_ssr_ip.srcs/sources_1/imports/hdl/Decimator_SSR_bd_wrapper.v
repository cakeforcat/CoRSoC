//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Feb 12 14:40:36 2025
//Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
//Command     : generate_target Decimator_SSR_bd_wrapper.bd
//Design      : Decimator_SSR_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Decimator_SSR_bd_wrapper
   (clk,
    m_axis_tdata,
    m_axis_tvalid,
    s_axis_im_tdata_0,
    s_axis_im_tdata_1,
    s_axis_im_tdata_2,
    s_axis_im_tdata_3,
    s_axis_im_tdata_4,
    s_axis_im_tdata_5,
    s_axis_im_tdata_6,
    s_axis_im_tdata_7,
    s_axis_im_tvalid,
    s_axis_re_tdata_0,
    s_axis_re_tdata_1,
    s_axis_re_tdata_2,
    s_axis_re_tdata_3,
    s_axis_re_tdata_4,
    s_axis_re_tdata_5,
    s_axis_re_tdata_6,
    s_axis_re_tdata_7,
    s_axis_re_tvalid,
    s_axis_tready);
  input clk;
  output [31:0]m_axis_tdata;
  output [0:0]m_axis_tvalid;
  input [15:0]s_axis_im_tdata_0;
  input [15:0]s_axis_im_tdata_1;
  input [15:0]s_axis_im_tdata_2;
  input [15:0]s_axis_im_tdata_3;
  input [15:0]s_axis_im_tdata_4;
  input [15:0]s_axis_im_tdata_5;
  input [15:0]s_axis_im_tdata_6;
  input [15:0]s_axis_im_tdata_7;
  input [0:0]s_axis_im_tvalid;
  input [15:0]s_axis_re_tdata_0;
  input [15:0]s_axis_re_tdata_1;
  input [15:0]s_axis_re_tdata_2;
  input [15:0]s_axis_re_tdata_3;
  input [15:0]s_axis_re_tdata_4;
  input [15:0]s_axis_re_tdata_5;
  input [15:0]s_axis_re_tdata_6;
  input [15:0]s_axis_re_tdata_7;
  input [0:0]s_axis_re_tvalid;
  output [0:0]s_axis_tready;

  wire clk;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tvalid;
  wire [15:0]s_axis_im_tdata_0;
  wire [15:0]s_axis_im_tdata_1;
  wire [15:0]s_axis_im_tdata_2;
  wire [15:0]s_axis_im_tdata_3;
  wire [15:0]s_axis_im_tdata_4;
  wire [15:0]s_axis_im_tdata_5;
  wire [15:0]s_axis_im_tdata_6;
  wire [15:0]s_axis_im_tdata_7;
  wire [0:0]s_axis_im_tvalid;
  wire [15:0]s_axis_re_tdata_0;
  wire [15:0]s_axis_re_tdata_1;
  wire [15:0]s_axis_re_tdata_2;
  wire [15:0]s_axis_re_tdata_3;
  wire [15:0]s_axis_re_tdata_4;
  wire [15:0]s_axis_re_tdata_5;
  wire [15:0]s_axis_re_tdata_6;
  wire [15:0]s_axis_re_tdata_7;
  wire [0:0]s_axis_re_tvalid;
  wire [0:0]s_axis_tready;

  Decimator_SSR_bd Decimator_SSR_bd_i
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_im_tdata_0(s_axis_im_tdata_0),
        .s_axis_im_tdata_1(s_axis_im_tdata_1),
        .s_axis_im_tdata_2(s_axis_im_tdata_2),
        .s_axis_im_tdata_3(s_axis_im_tdata_3),
        .s_axis_im_tdata_4(s_axis_im_tdata_4),
        .s_axis_im_tdata_5(s_axis_im_tdata_5),
        .s_axis_im_tdata_6(s_axis_im_tdata_6),
        .s_axis_im_tdata_7(s_axis_im_tdata_7),
        .s_axis_im_tvalid(s_axis_im_tvalid),
        .s_axis_re_tdata_0(s_axis_re_tdata_0),
        .s_axis_re_tdata_1(s_axis_re_tdata_1),
        .s_axis_re_tdata_2(s_axis_re_tdata_2),
        .s_axis_re_tdata_3(s_axis_re_tdata_3),
        .s_axis_re_tdata_4(s_axis_re_tdata_4),
        .s_axis_re_tdata_5(s_axis_re_tdata_5),
        .s_axis_re_tdata_6(s_axis_re_tdata_6),
        .s_axis_re_tdata_7(s_axis_re_tdata_7),
        .s_axis_re_tvalid(s_axis_re_tvalid),
        .s_axis_tready(s_axis_tready));
endmodule
