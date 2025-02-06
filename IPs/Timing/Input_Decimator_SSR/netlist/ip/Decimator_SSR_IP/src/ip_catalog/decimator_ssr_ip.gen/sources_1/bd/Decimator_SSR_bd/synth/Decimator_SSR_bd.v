//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Feb  6 18:02:22 2025
//Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
//Command     : generate_target Decimator_SSR_bd.bd
//Design      : Decimator_SSR_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Decimator_SSR_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Decimator_SSR_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Decimator_SSR_bd.hwdef" *) 
module Decimator_SSR_bd
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF m_axis, CLK_DOMAIN Decimator_SSR_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN Decimator_SSR_bd_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_0, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_1, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_2, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_3, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_4, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_5, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_6, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TDATA_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TDATA_7, LAYERED_METADATA undef" *) input [15:0]s_axis_im_tdata_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_IM_TVALID DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_IM_TVALID, LAYERED_METADATA undef" *) input [0:0]s_axis_im_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_0, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_1, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_2, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_3, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_4, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_5, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_6, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TDATA_7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TDATA_7, LAYERED_METADATA undef" *) input [15:0]s_axis_re_tdata_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_RE_TVALID DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_RE_TVALID, LAYERED_METADATA undef" *) input [0:0]s_axis_re_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_TREADY DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_TREADY, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]s_axis_tready;

  wire [31:0]Decimator_SSR_1_m_axis_TDATA;
  wire [0:0]Decimator_SSR_1_m_axis_TVALID;
  wire [0:0]Decimator_SSR_1_s_axis_tready;
  wire clk_1;
  wire [15:0]s_axis_im_tdata_0_1;
  wire [15:0]s_axis_im_tdata_1_1;
  wire [15:0]s_axis_im_tdata_2_1;
  wire [15:0]s_axis_im_tdata_3_1;
  wire [15:0]s_axis_im_tdata_4_1;
  wire [15:0]s_axis_im_tdata_5_1;
  wire [15:0]s_axis_im_tdata_6_1;
  wire [15:0]s_axis_im_tdata_7_1;
  wire [0:0]s_axis_im_tvalid_1;
  wire [15:0]s_axis_re_tdata_0_1;
  wire [15:0]s_axis_re_tdata_1_1;
  wire [15:0]s_axis_re_tdata_2_1;
  wire [15:0]s_axis_re_tdata_3_1;
  wire [15:0]s_axis_re_tdata_4_1;
  wire [15:0]s_axis_re_tdata_5_1;
  wire [15:0]s_axis_re_tdata_6_1;
  wire [15:0]s_axis_re_tdata_7_1;
  wire [0:0]s_axis_re_tvalid_1;

  assign clk_1 = clk;
  assign m_axis_tdata[31:0] = Decimator_SSR_1_m_axis_TDATA;
  assign m_axis_tvalid[0] = Decimator_SSR_1_m_axis_TVALID;
  assign s_axis_im_tdata_0_1 = s_axis_im_tdata_0[15:0];
  assign s_axis_im_tdata_1_1 = s_axis_im_tdata_1[15:0];
  assign s_axis_im_tdata_2_1 = s_axis_im_tdata_2[15:0];
  assign s_axis_im_tdata_3_1 = s_axis_im_tdata_3[15:0];
  assign s_axis_im_tdata_4_1 = s_axis_im_tdata_4[15:0];
  assign s_axis_im_tdata_5_1 = s_axis_im_tdata_5[15:0];
  assign s_axis_im_tdata_6_1 = s_axis_im_tdata_6[15:0];
  assign s_axis_im_tdata_7_1 = s_axis_im_tdata_7[15:0];
  assign s_axis_im_tvalid_1 = s_axis_im_tvalid[0];
  assign s_axis_re_tdata_0_1 = s_axis_re_tdata_0[15:0];
  assign s_axis_re_tdata_1_1 = s_axis_re_tdata_1[15:0];
  assign s_axis_re_tdata_2_1 = s_axis_re_tdata_2[15:0];
  assign s_axis_re_tdata_3_1 = s_axis_re_tdata_3[15:0];
  assign s_axis_re_tdata_4_1 = s_axis_re_tdata_4[15:0];
  assign s_axis_re_tdata_5_1 = s_axis_re_tdata_5[15:0];
  assign s_axis_re_tdata_6_1 = s_axis_re_tdata_6[15:0];
  assign s_axis_re_tdata_7_1 = s_axis_re_tdata_7[15:0];
  assign s_axis_re_tvalid_1 = s_axis_re_tvalid[0];
  assign s_axis_tready[0] = Decimator_SSR_1_s_axis_tready;
  Decimator_SSR_bd_Decimator_SSR_1_0 Decimator_SSR_1
       (.clk(clk_1),
        .m_axis_tdata(Decimator_SSR_1_m_axis_TDATA),
        .m_axis_tvalid(Decimator_SSR_1_m_axis_TVALID),
        .s_axis_im_tdata_0(s_axis_im_tdata_0_1),
        .s_axis_im_tdata_1(s_axis_im_tdata_1_1),
        .s_axis_im_tdata_2(s_axis_im_tdata_2_1),
        .s_axis_im_tdata_3(s_axis_im_tdata_3_1),
        .s_axis_im_tdata_4(s_axis_im_tdata_4_1),
        .s_axis_im_tdata_5(s_axis_im_tdata_5_1),
        .s_axis_im_tdata_6(s_axis_im_tdata_6_1),
        .s_axis_im_tdata_7(s_axis_im_tdata_7_1),
        .s_axis_im_tvalid(s_axis_im_tvalid_1),
        .s_axis_re_tdata_0(s_axis_re_tdata_0_1),
        .s_axis_re_tdata_1(s_axis_re_tdata_1_1),
        .s_axis_re_tdata_2(s_axis_re_tdata_2_1),
        .s_axis_re_tdata_3(s_axis_re_tdata_3_1),
        .s_axis_re_tdata_4(s_axis_re_tdata_4_1),
        .s_axis_re_tdata_5(s_axis_re_tdata_5_1),
        .s_axis_re_tdata_6(s_axis_re_tdata_6_1),
        .s_axis_re_tdata_7(s_axis_re_tdata_7_1),
        .s_axis_re_tvalid(s_axis_re_tvalid_1),
        .s_axis_tready(Decimator_SSR_1_s_axis_tready));
endmodule
