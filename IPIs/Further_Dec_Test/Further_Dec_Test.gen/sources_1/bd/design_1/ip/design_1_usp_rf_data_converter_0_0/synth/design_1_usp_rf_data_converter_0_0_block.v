//----------------------------------------------------------------------------
// Title : Block Level
// Project : UltraScale+ RF Data Converter
//----------------------------------------------------------------------------
//
// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


`timescale 1ns / 1ps

// Speed up the functional simulation by reducing the waiting times in
// the power on state machine and by shortening the ADC foreground
// calibration
// synthesis translate_off
`define HS_SIM_SPEEDUP 1
// synthesis translate_on

//***********************************Entity Declaration************************
(* DowngradeIPIdentifiedWarnings="yes" *)
module design_1_usp_rf_data_converter_0_0_block (
  // AXI-Lite Control/Status
  input             s_axi_aclk,
  input             s_axi_aresetn,
  input   [17:0]    s_axi_awaddr,
  input             s_axi_awvalid,
  output            s_axi_awready,
  input   [31:0]    s_axi_wdata,
  input    [3:0]    s_axi_wstrb,
  input             s_axi_wvalid,
  output            s_axi_wready,
  output   [1:0]    s_axi_bresp,
  output            s_axi_bvalid,
  input             s_axi_bready,
  input   [17:0]    s_axi_araddr,
  input             s_axi_arvalid,
  output            s_axi_arready,
  output  [31:0]    s_axi_rdata,
  output   [1:0]    s_axi_rresp,
  output            s_axi_rvalid,
  input             s_axi_rready,

  // External SYSREF input
  input             sysref_in_p,
  input             sysref_in_n,

  // ADC Reference Clock for Tile 0
  input             adc0_clk_p,
  input             adc0_clk_n,

  // ADC Fabric Feedback Clock for Tile 0
  output            clk_adc0,

  // ADC AXI Streaming Clock and Reset for ADC0
  input             m0_axis_aclk,
  input             m0_axis_aresetn,

  // ADC Reference Clock for Tile 1
  input             adc1_clk_p,
  input             adc1_clk_n,

  // ADC Fabric Feedback Clock for Tile 1
  output            clk_adc1,

  // ADC AXI Streaming Clock and Reset for ADC1
  input             m1_axis_aclk,
  input             m1_axis_aresetn,

  input             vin0_01_p,
  input             vin0_01_n,

  // ADC Signal Lost Indicator for ADC0_01
  input             adc00_int_cal_freeze,
  output            adc00_cal_frozen,


  input             vin1_01_p,
  input             vin1_01_n,

  // ADC Signal Lost Indicator for ADC1_01
  input             adc10_int_cal_freeze,
  output            adc10_cal_frozen,






  // ADC AXI Streaming Data for ADC00
  output [127:0]    m00_axis_tdata,
  output            m00_axis_tvalid,
  input             m00_axis_tready,

  // ADC AXI Streaming Data for ADC01
  output [127:0]    m01_axis_tdata,
  output            m01_axis_tvalid,
  input             m01_axis_tready,

  // ADC AXI Streaming Data for ADC02
  output [127:0]    m02_axis_tdata,
  output            m02_axis_tvalid,
  input             m02_axis_tready,

  // ADC AXI Streaming Data for ADC03
  output [127:0]    m03_axis_tdata,
  output            m03_axis_tvalid,
  input             m03_axis_tready,

  // ADC AXI Streaming Data for ADC10
  output [127:0]    m10_axis_tdata,
  output            m10_axis_tvalid,
  input             m10_axis_tready,

  // ADC AXI Streaming Data for ADC11
  output [127:0]    m11_axis_tdata,
  output            m11_axis_tvalid,
  input             m11_axis_tready,

  // ADC AXI Streaming Data for ADC12
  output [127:0]    m12_axis_tdata,
  output            m12_axis_tvalid,
  input             m12_axis_tready,

  // ADC AXI Streaming Data for ADC13
  output [127:0]    m13_axis_tdata,
  output            m13_axis_tvalid,
  input             m13_axis_tready,

  // DAC Reference Clock for Tile 0
  input             dac0_clk_p,
  input             dac0_clk_n,

  // DAC Fabric Feedback Clock for Tile 0
  output            clk_dac0,

  // DAC AXI Streaming and Reset for DAC0
  input             s0_axis_aclk,
  input             s0_axis_aresetn,

  output            vout00_p,
  output            vout00_n,

  // DAC AXI Streaming Data for DAC00
  input  [255:0]    s00_axis_tdata,
  input             s00_axis_tvalid,
  output            s00_axis_tready,

  // DAC AXI Streaming Data for DAC01
  input  [255:0]    s01_axis_tdata,
  input             s01_axis_tvalid,
  output            s01_axis_tready,

  // DAC AXI Streaming Data for DAC02
  input  [255:0]    s02_axis_tdata,
  input             s02_axis_tvalid,
  output            s02_axis_tready,

  // DAC AXI Streaming Data for DAC03
  input  [255:0]    s03_axis_tdata,
  input             s03_axis_tvalid,
  output            s03_axis_tready,

  // DAC Debug Ports
  // DAC0
  input   [14:0]    dac0_cmn_control,

  output  [15:0]    dac00_status,
  output  [15:0]    dac01_status,
  output  [15:0]    dac02_status,
  output  [15:0]    dac03_status,

  output            dac0_pll_dmon,
  output            dac0_pll_lock,
  output   [3:0]    dac0_status,
  output            dac0_done,
  output            dac0_powerup_state,

  output  [11:0]   dac0_daddr_mon,
  output  [15:0]   dac0_di_mon,
  output           dac0_den_mon,
  output           dac0_dwe_mon,
  output  [15:0]   dac0_do_mon,
  output           dac0_drdy_mon,
  output           dac0_dreq_mon,
  output           dac0_dgnt_mon,

  // DAC1
  input   [14:0]    dac1_cmn_control,

  output  [15:0]    dac10_status,
  output  [15:0]    dac11_status,
  output  [15:0]    dac12_status,
  output  [15:0]    dac13_status,

  output            dac1_pll_dmon,
  output            dac1_pll_lock,
  output   [3:0]    dac1_status,
  output            dac1_done,
  output            dac1_powerup_state,

  output  [11:0]   dac1_daddr_mon,
  output  [15:0]   dac1_di_mon,
  output           dac1_den_mon,
  output           dac1_dwe_mon,
  output  [15:0]   dac1_do_mon,
  output           dac1_drdy_mon,
  output           dac1_dreq_mon,
  output           dac1_dgnt_mon,

  // ADC Debug Ports
  // ADC0
  input   [14:0]   adc0_cmn_control,

  output  [15:0]   adc00_status,
  output  [15:0]   adc01_status,
  output  [15:0]   adc02_status,
  output  [15:0]   adc03_status,

  output           adc0_pll_dmon,
  output           adc0_pll_lock,
  output   [3:0]   adc0_status,
  output           adc0_done,
  output           adc0_powerup_state,

  output  [11:0]   adc0_daddr_mon,
  output  [15:0]   adc0_di_mon,
  output           adc0_den_mon,
  output           adc0_dwe_mon,
  output  [15:0]   adc0_do_mon,
  output           adc0_drdy_mon,
  output           adc0_dreq_mon,
  output           adc0_dgnt_mon,

  // ADC1
  input   [14:0]   adc1_cmn_control,

  output  [15:0]   adc10_status,
  output  [15:0]   adc11_status,
  output  [15:0]   adc12_status,
  output  [15:0]   adc13_status,

  output           adc1_pll_dmon,
  output           adc1_pll_lock,
  output   [3:0]   adc1_status,
  output           adc1_done,
  output           adc1_powerup_state,

  output  [11:0]   adc1_daddr_mon,
  output  [15:0]   adc1_di_mon,
  output           adc1_den_mon,
  output           adc1_dwe_mon,
  output  [15:0]   adc1_do_mon,
  output           adc1_drdy_mon,
  output           adc1_dreq_mon,
  output           adc1_dgnt_mon,

  // ADC2
  input   [14:0]   adc2_cmn_control,

  output  [15:0]   adc20_status,
  output  [15:0]   adc21_status,
  output  [15:0]   adc22_status,
  output  [15:0]   adc23_status,

  output           adc2_pll_dmon,
  output           adc2_pll_lock,
  output   [3:0]   adc2_status,
  output           adc2_done,
  output           adc2_powerup_state,

  output  [11:0]   adc2_daddr_mon,
  output  [15:0]   adc2_di_mon,
  output           adc2_den_mon,
  output           adc2_dwe_mon,
  output  [15:0]   adc2_do_mon,
  output           adc2_drdy_mon,
  output           adc2_dreq_mon,
  output           adc2_dgnt_mon,

  // ADC3
  input   [14:0]   adc3_cmn_control,

  output  [15:0]   adc30_status,
  output  [15:0]   adc31_status,
  output  [15:0]   adc32_status,
  output  [15:0]   adc33_status,

  output           adc3_pll_dmon,
  output           adc3_pll_lock,
  output   [3:0]   adc3_status,
  output           adc3_done,
  output           adc3_powerup_state,

  output  [11:0]   adc3_daddr_mon,
  output  [15:0]   adc3_di_mon,
  output           adc3_den_mon,
  output           adc3_dwe_mon,
  output  [15:0]   adc3_do_mon,
  output           adc3_drdy_mon,
  output           adc3_dreq_mon,
  output           adc3_dgnt_mon,









  // Interrupt
  output            irq
);

  // DAC Default Configuration Settings
  // NO NOT MODIFY
  localparam       dac00_enable        = 1'b1;
  localparam       dac00_data_type     = 1'b0;
  localparam [5:0] dac00_interpolation = 6'd8;
  localparam [1:0] dac00_mixer         = 2'd0;
  localparam       dac00_sinc          = 1'b0;
  localparam       dac01_enable        = 1'b0;
  localparam       dac01_data_type     = 1'b0;
  localparam [5:0] dac01_interpolation = 6'd8;
  localparam [1:0] dac01_mixer         = 2'd0;
  localparam       dac01_sinc          = 1'b0;
  localparam       dac02_enable        = 1'b0;
  localparam       dac02_data_type     = 1'b0;
  localparam [5:0] dac02_interpolation = 6'd8;
  localparam [1:0] dac02_mixer         = 2'd0;
  localparam       dac02_sinc          = 1'b0;
  localparam       dac03_enable        = 1'b0;
  localparam       dac03_data_type     = 1'b0;
  localparam [5:0] dac03_interpolation = 6'd8;
  localparam [1:0] dac03_mixer         = 2'd0;
  localparam       dac03_sinc          = 1'b0;
  localparam       dac10_enable        = 1'b0;
  localparam       dac10_data_type     = 1'b0;
  localparam [5:0] dac10_interpolation = 6'd0;
  localparam [1:0] dac10_mixer         = 2'd2;
  localparam       dac10_sinc          = 1'b0;
  localparam       dac11_enable        = 1'b0;
  localparam       dac11_data_type     = 1'b0;
  localparam [5:0] dac11_interpolation = 6'd0;
  localparam [1:0] dac11_mixer         = 2'd2;
  localparam       dac11_sinc          = 1'b0;
  localparam       dac12_enable        = 1'b0;
  localparam       dac12_data_type     = 1'b0;
  localparam [5:0] dac12_interpolation = 6'd0;
  localparam [1:0] dac12_mixer         = 2'd2;
  localparam       dac12_sinc          = 1'b0;
  localparam       dac13_enable        = 1'b0;
  localparam       dac13_data_type     = 1'b0;
  localparam [5:0] dac13_interpolation = 6'd0;
  localparam [1:0] dac13_mixer         = 2'd2;
  localparam       dac13_sinc          = 1'b0;

  // ADC Default Configuration Settings
  // NO NOT MODIFY
  localparam       adc00_enable        = 1'b1;
  localparam       adc00_data_type     = 1'b1;
  localparam [5:0] adc00_decimation    = 6'd8;
  localparam [1:0] adc00_mixer         = 2'd0;
  localparam       adc01_enable        = 1'b1;
  localparam       adc01_data_type     = 1'b1;
  localparam [5:0] adc01_decimation    = 6'd8;
  localparam [1:0] adc01_mixer         = 2'd0;
  localparam       adc02_enable        = 1'b0;
  localparam       adc02_data_type     = 1'b1;
  localparam [5:0] adc02_decimation    = 6'd8;
  localparam [1:0] adc02_mixer         = 2'd0;
  localparam       adc03_enable        = 1'b0;
  localparam       adc03_data_type     = 1'b1;
  localparam [5:0] adc03_decimation    = 6'd8;
  localparam [1:0] adc03_mixer         = 2'd0;
  localparam       adc10_enable        = 1'b1;
  localparam       adc10_data_type     = 1'b1;
  localparam [5:0] adc10_decimation    = 6'd8;
  localparam [1:0] adc10_mixer         = 2'd0;
  localparam       adc11_enable        = 1'b1;
  localparam       adc11_data_type     = 1'b1;
  localparam [5:0] adc11_decimation    = 6'd8;
  localparam [1:0] adc11_mixer         = 2'd0;
  localparam       adc12_enable        = 1'b0;
  localparam       adc12_data_type     = 1'b1;
  localparam [5:0] adc12_decimation    = 6'd8;
  localparam [1:0] adc12_mixer         = 2'd0;
  localparam       adc13_enable        = 1'b0;
  localparam       adc13_data_type     = 1'b1;
  localparam [5:0] adc13_decimation    = 6'd8;
  localparam [1:0] adc13_mixer         = 2'd0;
  localparam       adc20_enable        = 1'b0;
  localparam       adc20_data_type     = 1'b0;
  localparam [5:0] adc20_decimation    = 6'd0;
  localparam [1:0] adc20_mixer         = 2'd2;
  localparam       adc21_enable        = 1'b0;
  localparam       adc21_data_type     = 1'b0;
  localparam [5:0] adc21_decimation    = 6'd0;
  localparam [1:0] adc21_mixer         = 2'd2;
  localparam       adc22_enable        = 1'b0;
  localparam       adc22_data_type     = 1'b0;
  localparam [5:0] adc22_decimation    = 6'd0;
  localparam [1:0] adc22_mixer         = 2'd2;
  localparam       adc23_enable        = 1'b0;
  localparam       adc23_data_type     = 1'b0;
  localparam [5:0] adc23_decimation    = 6'd0;
  localparam [1:0] adc23_mixer         = 2'd2;
  localparam       adc30_enable        = 1'b0;
  localparam       adc30_data_type     = 1'b0;
  localparam [5:0] adc30_decimation    = 6'd0;
  localparam [1:0] adc30_mixer         = 2'd2;
  localparam       adc31_enable        = 1'b0;
  localparam       adc31_data_type     = 1'b0;
  localparam [5:0] adc31_decimation    = 6'd0;
  localparam [1:0] adc31_mixer         = 2'd2;
  localparam       adc32_enable        = 1'b0;
  localparam       adc32_data_type     = 1'b0;
  localparam [5:0] adc32_decimation    = 6'd0;
  localparam [1:0] adc32_mixer         = 2'd2;
  localparam       adc33_enable        = 1'b0;
  localparam       adc33_data_type     = 1'b0;
  localparam [5:0] adc33_decimation    = 6'd0;
  localparam [1:0] adc33_mixer         = 2'd2;


  reg   [11:0]     drp_addr;
  reg   [15:0]     drp_di;

  wire             dac0_drp_en;
  wire             dac0_drp_we;
  wire  [15:0]     dac0_drp_do;
  wire             dac0_drp_rdy;
  wire             dac0_drp_req;
  wire             dac0_drp_gnt;
  wire             dac1_drp_en;
  wire             dac1_drp_we;
  wire  [15:0]     dac1_drp_do;
  wire             dac1_drp_rdy;
  wire             dac1_drp_req;
  wire             dac1_drp_gnt;

  wire             adc0_drp_en;
  wire             adc0_drp_we;
  wire  [15:0]     adc0_drp_do;
  wire             adc0_drp_rdy;
  wire             adc0_drp_req;
  wire             adc0_drp_gnt;
  wire             adc1_drp_en;
  wire             adc1_drp_we;
  wire  [15:0]     adc1_drp_do;
  wire             adc1_drp_rdy;
  wire             adc1_drp_req;
  wire             adc1_drp_gnt;
  wire             adc2_drp_en;
  wire             adc2_drp_we;
  wire  [15:0]     adc2_drp_do;
  wire             adc2_drp_rdy;
  wire             adc2_drp_req;
  wire             adc2_drp_gnt;
  wire             adc3_drp_en;
  wire             adc3_drp_we;
  wire  [15:0]     adc3_drp_do;
  wire             adc3_drp_rdy;
  wire             adc3_drp_req;
  wire             adc3_drp_gnt;

  wire   [15:0]    dac00_control_i;
  wire   [15:0]    dac01_control_i;
  wire   [15:0]    dac02_control_i;
  wire   [15:0]    dac03_control_i;
  wire    [1:0]    dac00_tdd_mode_i;
  wire    [1:0]    dac01_tdd_mode_i;
  wire    [1:0]    dac02_tdd_mode_i;
  wire    [1:0]    dac03_tdd_mode_i;
  reg     [1:0]    dac00_tdd_mode_gated;
  reg     [1:0]    dac01_tdd_mode_gated;
  reg     [1:0]    dac02_tdd_mode_gated;
  reg     [1:0]    dac03_tdd_mode_gated;
  
  wire    [2:0]    dac00_fast_shutdown_i;
  wire    [2:0]    dac01_fast_shutdown_i;
  wire    [2:0]    dac02_fast_shutdown_i;
  wire    [2:0]    dac03_fast_shutdown_i;
  wire             dac00_pl_event_i;
  wire             dac01_pl_event_i;
  wire             dac02_pl_event_i;
  wire             dac03_pl_event_i;
  wire   [15:0]    dac10_control_i;
  wire   [15:0]    dac11_control_i;
  wire   [15:0]    dac12_control_i;
  wire   [15:0]    dac13_control_i;
  wire    [1:0]    dac10_tdd_mode_i;
  wire    [1:0]    dac11_tdd_mode_i;
  wire    [1:0]    dac12_tdd_mode_i;
  wire    [1:0]    dac13_tdd_mode_i;
  reg     [1:0]    dac10_tdd_mode_gated;
  reg     [1:0]    dac11_tdd_mode_gated;
  reg     [1:0]    dac12_tdd_mode_gated;
  reg     [1:0]    dac13_tdd_mode_gated;
  
  wire    [2:0]    dac10_fast_shutdown_i;
  wire    [2:0]    dac11_fast_shutdown_i;
  wire    [2:0]    dac12_fast_shutdown_i;
  wire    [2:0]    dac13_fast_shutdown_i;
  wire             dac10_pl_event_i;
  wire             dac11_pl_event_i;
  wire             dac12_pl_event_i;
  wire             dac13_pl_event_i;

  wire   [15:0]    adc00_control_i;
  wire   [15:0]    adc01_control_i;
  wire   [15:0]    adc02_control_i;
  wire   [15:0]    adc03_control_i;
  wire   [15:0]    adc10_control_i;
  wire   [15:0]    adc11_control_i;
  wire   [15:0]    adc12_control_i;
  wire   [15:0]    adc13_control_i;
  wire   [15:0]    adc20_control_i;
  wire   [15:0]    adc21_control_i;
  wire   [15:0]    adc22_control_i;
  wire   [15:0]    adc23_control_i;
  wire   [15:0]    adc30_control_i;
  wire   [15:0]    adc31_control_i;
  wire   [15:0]    adc32_control_i;
  wire   [15:0]    adc33_control_i;

  wire             adc00_signal_lost_i;
  wire             adc01_signal_lost_i;
  wire             adc02_signal_lost_i;
  wire             adc03_signal_lost_i;
  wire             adc00_bg_cal_off_i;
  wire             adc01_bg_cal_off_i;
  wire             adc02_bg_cal_off_i;
  wire             adc03_bg_cal_off_i;
  wire             adc00_cal_freeze;
  wire             adc01_cal_freeze;
  wire             adc02_cal_freeze;
  wire             adc03_cal_freeze;
  reg              adc00_cal_freeze_reg;
  reg              adc01_cal_freeze_reg;
  reg              adc02_cal_freeze_reg;
  reg              adc03_cal_freeze_reg;
  reg              adc00_disable_cal_freeze_input;
  reg              adc01_disable_cal_freeze_input;
  reg              adc02_disable_cal_freeze_input;
  reg              adc03_disable_cal_freeze_input;
  wire             adc00_sig_lost_i;
  wire             adc01_sig_lost_i;
  wire             adc02_sig_lost_i;
  wire             adc03_sig_lost_i;
  wire             adc00_pl_event_i;
  wire             adc01_pl_event_i;
  wire             adc02_pl_event_i;
  wire             adc03_pl_event_i;
  wire             adc10_signal_lost_i;
  wire             adc11_signal_lost_i;
  wire             adc12_signal_lost_i;
  wire             adc13_signal_lost_i;
  wire             adc10_bg_cal_off_i;
  wire             adc11_bg_cal_off_i;
  wire             adc12_bg_cal_off_i;
  wire             adc13_bg_cal_off_i;
  wire             adc10_cal_freeze;
  wire             adc11_cal_freeze;
  wire             adc12_cal_freeze;
  wire             adc13_cal_freeze;
  reg              adc10_cal_freeze_reg;
  reg              adc11_cal_freeze_reg;
  reg              adc12_cal_freeze_reg;
  reg              adc13_cal_freeze_reg;
  reg              adc10_disable_cal_freeze_input;
  reg              adc11_disable_cal_freeze_input;
  reg              adc12_disable_cal_freeze_input;
  reg              adc13_disable_cal_freeze_input;
  wire             adc10_sig_lost_i;
  wire             adc11_sig_lost_i;
  wire             adc12_sig_lost_i;
  wire             adc13_sig_lost_i;
  wire             adc10_pl_event_i;
  wire             adc11_pl_event_i;
  wire             adc12_pl_event_i;
  wire             adc13_pl_event_i;
  wire             adc20_signal_lost_i;
  wire             adc21_signal_lost_i;
  wire             adc22_signal_lost_i;
  wire             adc23_signal_lost_i;
  wire             adc20_bg_cal_off_i;
  wire             adc21_bg_cal_off_i;
  wire             adc22_bg_cal_off_i;
  wire             adc23_bg_cal_off_i;
  wire             adc20_cal_freeze;
  wire             adc21_cal_freeze;
  wire             adc22_cal_freeze;
  wire             adc23_cal_freeze;
  reg              adc20_cal_freeze_reg;
  reg              adc21_cal_freeze_reg;
  reg              adc22_cal_freeze_reg;
  reg              adc23_cal_freeze_reg;
  reg              adc20_disable_cal_freeze_input;
  reg              adc21_disable_cal_freeze_input;
  reg              adc22_disable_cal_freeze_input;
  reg              adc23_disable_cal_freeze_input;
  wire             adc20_sig_lost_i;
  wire             adc21_sig_lost_i;
  wire             adc22_sig_lost_i;
  wire             adc23_sig_lost_i;
  wire             adc20_pl_event_i;
  wire             adc21_pl_event_i;
  wire             adc22_pl_event_i;
  wire             adc23_pl_event_i;
  wire             adc30_signal_lost_i;
  wire             adc31_signal_lost_i;
  wire             adc32_signal_lost_i;
  wire             adc33_signal_lost_i;
  wire             adc30_bg_cal_off_i;
  wire             adc31_bg_cal_off_i;
  wire             adc32_bg_cal_off_i;
  wire             adc33_bg_cal_off_i;
  wire             adc30_cal_freeze;
  wire             adc31_cal_freeze;
  wire             adc32_cal_freeze;
  wire             adc33_cal_freeze;
  reg              adc30_cal_freeze_reg;
  reg              adc31_cal_freeze_reg;
  reg              adc32_cal_freeze_reg;
  reg              adc33_cal_freeze_reg;
  reg              adc30_disable_cal_freeze_input;
  reg              adc31_disable_cal_freeze_input;
  reg              adc32_disable_cal_freeze_input;
  reg              adc33_disable_cal_freeze_input;
  wire             adc30_sig_lost_i;
  wire             adc31_sig_lost_i;
  wire             adc32_sig_lost_i;
  wire             adc33_sig_lost_i;
  wire             adc30_pl_event_i;
  wire             adc31_pl_event_i;
  wire             adc32_pl_event_i;
  wire             adc33_pl_event_i;

  // AXI Signals
  wire             Bus2IP_Clk;
  wire             Bus2IP_Resetn;
  wire   [3:0]     Bus2IP_BE;
  wire             Bus2IP_RdCE;
  wire             Bus2IP_WrCE;
  wire  [31:0]     Bus2IP_Data;

  wire  [31:0]     IP2Bus_Data_control;
  wire  [31:0]     IP2Bus_Data_DAC0_Control;
  wire  [15:0]     IP2Bus_Data_DAC0_DRP;
  wire  [31:0]     IP2Bus_Data_DAC1_Control;
  wire  [15:0]     IP2Bus_Data_DAC1_DRP;
  wire  [31:0]     IP2Bus_Data_ADC0_Control;
  wire  [15:0]     IP2Bus_Data_ADC0_DRP;
  wire  [31:0]     IP2Bus_Data_ADC1_Control;
  wire  [15:0]     IP2Bus_Data_ADC1_DRP;
  wire  [31:0]     IP2Bus_Data_ADC2_Control;
  wire  [15:0]     IP2Bus_Data_ADC2_DRP;
  wire  [31:0]     IP2Bus_Data_ADC3_Control;
  wire  [15:0]     IP2Bus_Data_ADC3_DRP;
  wire  [17:0]     Bus2IP_Addr;
  reg   [31:0]     IP2Bus_Data;
  wire             IP2Bus_RdAck;
  wire             IP2Bus_WrAck;
  reg              axi_RdAck;
  reg              axi_RdAck_r;
  reg              drp_RdAck_r;
  wire   [7:0]     drp_RdAck;
  wire   [7:0]     drp_WrAck;
  wire  [17:0]     chip_select;
  wire  [65:0]     bank0_read;
  wire [200:0]     bank1_read;
  wire             bank2_read;
  wire [200:0]     bank3_read;
  wire             bank4_read;
  wire [200:0]     bank5_read;
  wire             bank6_read;
  wire [200:0]     bank7_read;
  wire             bank8_read;
  wire [200:0]     bank9_read;
  wire             bank10_read;
  wire [200:0]     bank11_read;
  wire             bank12_read;
  wire [200:0]     bank13_read;
  wire             bank14_read;
  wire [200:0]     bank15_read;
  wire             bank16_read;
  wire  [65:0]     bank0_write;
  wire [200:0]     bank1_write;
  wire             bank2_write;
  wire [200:0]     bank3_write;
  wire             bank4_write;
  wire [200:0]     bank5_write;
  wire             bank6_write;
  wire [200:0]     bank7_write;
  wire             bank8_write;
  wire [200:0]     bank9_write;
  wire             bank10_write;
  wire [200:0]     bank11_write;
  wire             bank12_write;
  wire [200:0]     bank13_write;
  wire             bank14_write;
  wire [200:0]     bank15_write;
  wire             bank16_write;
  wire             axi_rdce;
  wire             axi_wrce;
  wire             adc_disable;
  wire             dac_disable;

  reg              master_reset;
  wire             sm_start;
  wire             axi_timeout;
  reg              axi_timeout_r;
  reg              axi_timeout_r2;
  reg              got_timeout;
  reg              axi_timeout_en;
  reg    [15:0]    startup_delay;
  wire   [31:0]    tile_irq_i;
  wire   [31:0]    tile_irq2axi;
  wire   [31:0]    irq_enables;
  wire             tile_irq_ack;

  reg    [3:0]     dac0_start_stage;
  reg    [3:0]     dac0_end_stage;
  wire   [3:0]     dac0_current_stage;
  reg              dac0_reset;
  reg              dac0_restart;
  reg              dac0_irq_en;
  reg    [1:0]     dac0_sim_level;
  wire  [23:0]     dac0_supply_timer;
  wire  [23:0]     dac0_regulator_timer;
  wire             dac0_done_i;
  wire  [15:0]     dac0_common_stat;
  reg              dac0_cmn_irq_en;
  reg   [15:0]     dac0_cmn_en;
  wire             dac0_cmn_irq_i;
  reg              dac0_cmn_irq_r;
  wire             dac0_powerup_state_interrupt;
  wire             dac0_powerup_state_ack;
  wire             dac0_powerup_state_irq;
  reg   [15:0]     dac0_fifo_disable;
  reg   [31:0]     dac0_ref_clk_freq;
  reg   [31:0]     dac0_sample_rate;
  reg    [2:0]     dac0_multi_band;
  reg   [15:0]     dac0_slice0_irq_en;
  reg   [15:0]     dac0_slice1_irq_en;
  reg   [15:0]     dac0_slice2_irq_en;
  reg   [15:0]     dac0_slice3_irq_en;
  wire   [4:0]     dac0_irq;
  wire             dac0_master_irq;
  wire             dac0_pll_lock_i;
  wire             dac0_sm_reset_i;
  wire   [7:0]     dac0_reset_cnt;

  reg    [3:0]     dac1_start_stage;
  reg    [3:0]     dac1_end_stage;
  wire   [3:0]     dac1_current_stage;
  reg              dac1_reset;
  reg              dac1_restart;
  reg              dac1_irq_en;
  reg    [1:0]     dac1_sim_level;
  wire  [23:0]     dac1_supply_timer;
  wire  [23:0]     dac1_regulator_timer;
  wire             dac1_done_i;
  wire  [15:0]     dac1_common_stat;
  reg              dac1_cmn_irq_en;
  reg   [15:0]     dac1_cmn_en;
  wire             dac1_cmn_irq_i;
  reg              dac1_cmn_irq_r;
  wire             dac1_powerup_state_interrupt;
  wire             dac1_powerup_state_ack;
  wire             dac1_powerup_state_irq;
  reg   [15:0]     dac1_fifo_disable;
  reg   [31:0]     dac1_ref_clk_freq;
  reg   [31:0]     dac1_sample_rate;
  reg    [2:0]     dac1_multi_band;
  reg   [15:0]     dac1_slice0_irq_en;
  reg   [15:0]     dac1_slice1_irq_en;
  reg   [15:0]     dac1_slice2_irq_en;
  reg   [15:0]     dac1_slice3_irq_en;
  wire   [4:0]     dac1_irq;
  wire             dac1_master_irq;
  wire             dac1_pll_lock_i;
  wire             dac1_sm_reset_i;
  wire   [7:0]     dac1_reset_cnt;

  wire   [0:0]     dac_reset_cnt_ack;
  wire               dac_reset_cnt_ack_i;

  reg    [3:0]     adc0_start_stage;
  reg    [3:0]     adc0_end_stage;
  wire   [3:0]     adc0_current_stage;
  reg              adc0_reset;
  reg              adc0_restart;
  reg              adc0_irq_en;
  reg    [1:0]     adc0_sim_level;
  wire  [23:0]     adc0_supply_timer;
  wire  [23:0]     adc0_regulator_timer;
  wire  [23:0]     adc0_calibration_timer;
  wire             adc0_const_speedup;
  wire             adc0_done_i;
  wire  [15:0]     adc0_common_stat;
  reg   [15:0]     adc0_cmn_en;
  wire             adc0_cmn_irq_i;
  reg              adc0_cmn_irq_r;
  reg              adc0_cmn_irq_en;
  wire             adc0_powerup_state_interrupt;
  wire             adc0_powerup_state_ack;
  wire             adc0_powerup_state_irq;
  reg   [15:0]     adc0_fifo_disable;
  reg   [31:0]     adc0_ref_clk_freq;
  reg   [31:0]     adc0_sample_rate;
  reg    [2:0]     adc0_multi_band;
  reg   [31:0]     adc0_calibration_timer_i;
  wire  [31:0]     adc0_calibration_timer0;
  wire  [31:0]     adc0_calibration_timer1;
  wire  [31:0]     adc0_calibration_timer2;
  wire  [31:0]     adc0_calibration_timer3;
  wire  [31:0]     adc0_calibration_timer4;
  reg   [15:0]     adc0_slice0_irq_en;
  reg   [15:0]     adc0_slice1_irq_en;
  reg   [15:0]     adc0_slice2_irq_en;
  reg   [15:0]     adc0_slice3_irq_en;
  wire   [4:0]     adc0_irq;
  wire             adc0_master_irq;
  wire             adc0_pll_lock_i;
  wire             adc0_sm_reset_i;
  wire             adc0_overvol_ack;
  wire             adc0_read;
  wire   [7:0]     adc0_reset_cnt;

  reg    [3:0]     adc1_start_stage;
  reg    [3:0]     adc1_end_stage;
  wire   [3:0]     adc1_current_stage;
  reg              adc1_reset;
  reg              adc1_restart;
  reg              adc1_irq_en;
  reg    [1:0]     adc1_sim_level;
  wire  [23:0]     adc1_supply_timer;
  wire  [23:0]     adc1_regulator_timer;
  wire  [23:0]     adc1_calibration_timer;
  wire             adc1_const_speedup;
  wire             adc1_done_i;
  wire  [15:0]     adc1_common_stat;
  reg   [15:0]     adc1_cmn_en;
  wire             adc1_cmn_irq_i;
  reg              adc1_cmn_irq_r;
  reg              adc1_cmn_irq_en;
  wire             adc1_powerup_state_interrupt;
  wire             adc1_powerup_state_ack;
  wire             adc1_powerup_state_irq;
  reg   [15:0]     adc1_fifo_disable;
  reg   [31:0]     adc1_ref_clk_freq;
  reg   [31:0]     adc1_sample_rate;
  reg    [2:0]     adc1_multi_band;
  reg   [31:0]     adc1_calibration_timer_i;
  wire  [31:0]     adc1_calibration_timer0;
  wire  [31:0]     adc1_calibration_timer1;
  wire  [31:0]     adc1_calibration_timer2;
  wire  [31:0]     adc1_calibration_timer3;
  wire  [31:0]     adc1_calibration_timer4;
  reg   [15:0]     adc1_slice0_irq_en;
  reg   [15:0]     adc1_slice1_irq_en;
  reg   [15:0]     adc1_slice2_irq_en;
  reg   [15:0]     adc1_slice3_irq_en;
  wire   [4:0]     adc1_irq;
  wire             adc1_master_irq;
  wire             adc1_pll_lock_i;
  wire             adc1_sm_reset_i;
  wire             adc1_overvol_ack;
  wire             adc1_read;
  wire   [7:0]     adc1_reset_cnt;

  reg    [3:0]     adc2_start_stage;
  reg    [3:0]     adc2_end_stage;
  wire   [3:0]     adc2_current_stage;
  reg              adc2_reset;
  reg              adc2_restart;
  reg              adc2_irq_en;
  reg    [1:0]     adc2_sim_level;
  wire  [23:0]     adc2_supply_timer;
  wire  [23:0]     adc2_regulator_timer;
  wire  [23:0]     adc2_calibration_timer;
  wire             adc2_const_speedup;
  wire             adc2_done_i;
  wire  [15:0]     adc2_common_stat;
  reg   [15:0]     adc2_cmn_en;
  wire             adc2_cmn_irq_i;
  reg              adc2_cmn_irq_r;
  reg              adc2_cmn_irq_en;
  wire             adc2_powerup_state_interrupt;
  wire             adc2_powerup_state_ack;
  wire             adc2_powerup_state_irq;
  reg   [15:0]     adc2_fifo_disable;
  reg   [31:0]     adc2_ref_clk_freq;
  reg   [31:0]     adc2_sample_rate;
  reg    [2:0]     adc2_multi_band;
  reg   [31:0]     adc2_calibration_timer_i;
  wire  [31:0]     adc2_calibration_timer0;
  wire  [31:0]     adc2_calibration_timer1;
  wire  [31:0]     adc2_calibration_timer2;
  wire  [31:0]     adc2_calibration_timer3;
  wire  [31:0]     adc2_calibration_timer4;
  reg   [15:0]     adc2_slice0_irq_en;
  reg   [15:0]     adc2_slice1_irq_en;
  reg   [15:0]     adc2_slice2_irq_en;
  reg   [15:0]     adc2_slice3_irq_en;
  wire   [4:0]     adc2_irq;
  wire             adc2_master_irq;
  wire             adc2_pll_lock_i;
  wire             adc2_sm_reset_i;
  wire             adc2_overvol_ack;
  wire             adc2_read;
  wire   [7:0]     adc2_reset_cnt;

  reg    [3:0]     adc3_start_stage;
  reg    [3:0]     adc3_end_stage;
  wire   [3:0]     adc3_current_stage;
  reg              adc3_reset;
  reg              adc3_restart;
  reg              adc3_irq_en;
  reg    [1:0]     adc3_sim_level;
  wire  [23:0]     adc3_supply_timer;
  wire  [23:0]     adc3_regulator_timer;
  wire  [23:0]     adc3_calibration_timer;
  wire             adc3_const_speedup;
  wire             adc3_done_i;
  wire  [15:0]     adc3_common_stat;
  reg   [15:0]     adc3_cmn_en;
  wire             adc3_cmn_irq_i;
  reg              adc3_cmn_irq_r;
  reg              adc3_cmn_irq_en;
  wire             adc3_powerup_state_interrupt;
  wire             adc3_powerup_state_ack;
  wire             adc3_powerup_state_irq;
  reg   [15:0]     adc3_fifo_disable;
  reg   [31:0]     adc3_ref_clk_freq;
  reg   [31:0]     adc3_sample_rate;
  reg    [2:0]     adc3_multi_band;
  reg   [31:0]     adc3_calibration_timer_i;
  wire  [31:0]     adc3_calibration_timer0;
  wire  [31:0]     adc3_calibration_timer1;
  wire  [31:0]     adc3_calibration_timer2;
  wire  [31:0]     adc3_calibration_timer3;
  wire  [31:0]     adc3_calibration_timer4;
  reg   [15:0]     adc3_slice0_irq_en;
  reg   [15:0]     adc3_slice1_irq_en;
  reg   [15:0]     adc3_slice2_irq_en;
  reg   [15:0]     adc3_slice3_irq_en;
  wire   [4:0]     adc3_irq;
  wire             adc3_master_irq;
  wire             adc3_pll_lock_i;
  wire             adc3_sm_reset_i;
  wire             adc3_overvol_ack;
  wire             adc3_read;
  wire   [7:0]     adc3_reset_cnt;

  wire   [1:0]     adc_reset_cnt_ack;
  wire               adc_reset_cnt_ack_i;

  wire             clk_dac0_i;
  wire             s0_axis_aclk_val_sync;

  wire             clk_adc0_i;
  wire             m0_axis_aclk_val_sync;
  wire             clk_adc1_i;
  wire             m1_axis_aclk_val_sync;

  wire  [15:0]     adc00_stat;
  wire   [3:0]     adc00_stat_sync;
  wire   [3:0]     adc00_irq_i;
  reg              adc00_irq_en;
  wire             adc00_overvol_irq;
  wire             adc00_overvol_ack;
  wire  [15:0]     adc01_stat;
  wire   [3:0]     adc01_stat_sync;
  wire   [3:0]     adc01_irq_i;
  reg              adc01_irq_en;
  wire             adc01_overvol_irq;
  wire             adc01_overvol_ack;
  wire  [15:0]     adc02_stat;
  wire   [3:0]     adc02_stat_sync;
  wire   [3:0]     adc02_irq_i;
  reg              adc02_irq_en;
  wire             adc02_overvol_irq;
  wire             adc02_overvol_ack;
  wire  [15:0]     adc03_stat;
  wire   [3:0]     adc03_stat_sync;
  wire   [3:0]     adc03_irq_i;
  reg              adc03_irq_en;
  wire             adc03_overvol_irq;
  wire             adc03_overvol_ack;
  wire  [15:0]     adc10_stat;
  wire   [3:0]     adc10_stat_sync;
  wire   [3:0]     adc10_irq_i;
  reg              adc10_irq_en;
  wire             adc10_overvol_irq;
  wire             adc10_overvol_ack;
  wire  [15:0]     adc11_stat;
  wire   [3:0]     adc11_stat_sync;
  wire   [3:0]     adc11_irq_i;
  reg              adc11_irq_en;
  wire             adc11_overvol_irq;
  wire             adc11_overvol_ack;
  wire  [15:0]     adc12_stat;
  wire   [3:0]     adc12_stat_sync;
  wire   [3:0]     adc12_irq_i;
  reg              adc12_irq_en;
  wire             adc12_overvol_irq;
  wire             adc12_overvol_ack;
  wire  [15:0]     adc13_stat;
  wire   [3:0]     adc13_stat_sync;
  wire   [3:0]     adc13_irq_i;
  reg              adc13_irq_en;
  wire             adc13_overvol_irq;
  wire             adc13_overvol_ack;
  wire  [15:0]     adc20_stat;
  wire   [3:0]     adc20_stat_sync;
  wire   [3:0]     adc20_irq_i;
  reg              adc20_irq_en;
  wire             adc20_overvol_irq;
  wire             adc20_overvol_ack;
  wire  [15:0]     adc21_stat;
  wire   [3:0]     adc21_stat_sync;
  wire   [3:0]     adc21_irq_i;
  reg              adc21_irq_en;
  wire             adc21_overvol_irq;
  wire             adc21_overvol_ack;
  wire  [15:0]     adc22_stat;
  wire   [3:0]     adc22_stat_sync;
  wire   [3:0]     adc22_irq_i;
  reg              adc22_irq_en;
  wire             adc22_overvol_irq;
  wire             adc22_overvol_ack;
  wire  [15:0]     adc23_stat;
  wire   [3:0]     adc23_stat_sync;
  wire   [3:0]     adc23_irq_i;
  reg              adc23_irq_en;
  wire             adc23_overvol_irq;
  wire             adc23_overvol_ack;
  wire  [15:0]     adc30_stat;
  wire   [3:0]     adc30_stat_sync;
  wire   [3:0]     adc30_irq_i;
  reg              adc30_irq_en;
  wire             adc30_overvol_irq;
  wire             adc30_overvol_ack;
  wire  [15:0]     adc31_stat;
  wire   [3:0]     adc31_stat_sync;
  wire   [3:0]     adc31_irq_i;
  reg              adc31_irq_en;
  wire             adc31_overvol_irq;
  wire             adc31_overvol_ack;
  wire  [15:0]     adc32_stat;
  wire   [3:0]     adc32_stat_sync;
  wire   [3:0]     adc32_irq_i;
  reg              adc32_irq_en;
  wire             adc32_overvol_irq;
  wire             adc32_overvol_ack;
  wire  [15:0]     adc33_stat;
  wire   [3:0]     adc33_stat_sync;
  wire   [3:0]     adc33_irq_i;
  reg              adc33_irq_en;
  wire             adc33_overvol_irq;
  wire             adc33_overvol_ack;

  wire  [15:0]     dac00_stat;
  wire   [1:0]     dac00_stat_sync;
  wire   [1:0]     dac00_irq_i;
  reg              dac00_irq_en;
  wire  [15:0]     dac01_stat;
  wire   [1:0]     dac01_stat_sync;
  wire   [1:0]     dac01_irq_i;
  reg              dac01_irq_en;
  wire  [15:0]     dac02_stat;
  wire   [1:0]     dac02_stat_sync;
  wire   [1:0]     dac02_irq_i;
  reg              dac02_irq_en;
  wire  [15:0]     dac03_stat;
  wire   [1:0]     dac03_stat_sync;
  wire   [1:0]     dac03_irq_i;
  reg              dac03_irq_en;
  wire  [15:0]     dac10_stat;
  wire   [1:0]     dac10_stat_sync;
  wire   [1:0]     dac10_irq_i;
  reg              dac10_irq_en;
  wire  [15:0]     dac11_stat;
  wire   [1:0]     dac11_stat_sync;
  wire   [1:0]     dac11_irq_i;
  reg              dac11_irq_en;
  wire  [15:0]     dac12_stat;
  wire   [1:0]     dac12_stat_sync;
  wire   [1:0]     dac12_irq_i;
  reg              dac12_irq_en;
  wire  [15:0]     dac13_stat;
  wire   [1:0]     dac13_stat_sync;
  wire   [1:0]     dac13_irq_i;
  reg              dac13_irq_en;

  wire  [255:0]    dac00_data_i;
  wire  [255:0]    dac01_data_i;
  wire  [255:0]    dac02_data_i;
  wire  [255:0]    dac03_data_i;

  wire  [127:0]    adc00_data_i;
  wire  [127:0]    adc01_data_i;
  wire  [127:0]    adc02_data_i;
  wire  [127:0]    adc03_data_i;
  wire  [127:0]    adc10_data_i;
  wire  [127:0]    adc11_data_i;
  wire  [127:0]    adc12_data_i;
  wire  [127:0]    adc13_data_i;

  assign  dac00_data_i  =  s00_axis_tdata;
  assign  dac01_data_i  =  s01_axis_tdata;
  assign  dac02_data_i  =  s02_axis_tdata;
  assign  dac03_data_i  =  s03_axis_tdata;

  design_1_usp_rf_data_converter_0_0_rf_wrapper
  design_1_usp_rf_data_converter_0_0_rf_wrapper_i(
    // ADC Reference Clock for Tile 0
    .adc0_clk_p            (adc0_clk_p),
    .adc0_clk_n            (adc0_clk_n),

    // ADC PLL Reference Clock for Tile 0
    .adc0_pll_clk          (1'b0),

    // ADC Fabric Feedback Clock for Tile 0
    .clk_adc0              (clk_adc0_i),

    // ADC0 Fabric Clock
    .adc0_fabricclk        (m0_axis_aclk),
    .adc0_fabricclk_val    (m0_axis_aclk_val_sync),

    // ADC Common Status for Tile 0
    .adc0_common_stat      (adc0_common_stat),

    // ADC Reference Clock for Tile 1
    .adc1_clk_p            (adc1_clk_p),
    .adc1_clk_n            (adc1_clk_n),

    // ADC PLL Reference Clock for Tile 1
    .adc1_pll_clk          (1'b0),

    // ADC Fabric Feedback Clock for Tile 1
    .clk_adc1              (clk_adc1_i),

    // ADC1 Fabric Clock
    .adc1_fabricclk        (m1_axis_aclk),
    .adc1_fabricclk_val    (m1_axis_aclk_val_sync),

    // ADC Common Status for Tile 1
    .adc1_common_stat      (adc1_common_stat),

    // ADC Reference Clock for Tile 2
    .adc2_clk_p            (1'b0),
    .adc2_clk_n            (1'b0),

    // ADC PLL Reference Clock for Tile 2
    .adc2_pll_clk          (1'b0),

    // ADC Fabric Feedback Clock for Tile 2
    .clk_adc2              (),

    // ADC2 Fabric Clock
    .adc2_fabricclk        (1'b0),
    .adc2_fabricclk_val    (1'b0),

    // ADC2 Observation Clock
    .adc2_clk_fifo_lm      (1'b0),

    // ADC Common Status for Tile 2
    .adc2_common_stat      (adc2_common_stat),

    // ADC Reference Clock for Tile 3
    .adc3_clk_p            (1'b0),
    .adc3_clk_n            (1'b0),

    // ADC PLL Reference Clock for Tile 3
    .adc3_pll_clk          (1'b0),

    // ADC Fabric Feedback Clock for Tile 3
    .clk_adc3              (),

    // ADC3 Fabric Clock
    .adc3_fabricclk        (1'b0),
    .adc3_fabricclk_val    (1'b0),

    // ADC3 Observation Clock
    .adc3_clk_fifo_lm      (1'b0),

    // ADC Common Status for Tile 3
    .adc3_common_stat      (adc3_common_stat),

  .vin0_01_p             (vin0_01_p),
  .vin0_01_n             (vin0_01_n),


  .vin1_01_p             (vin1_01_p),
  .vin1_01_n             (vin1_01_n),






    // ADC AXI Streaming Data for ADC00
    .adc00_data_out        (adc00_data_i),
    .adc00_valid_out       (m00_axis_tvalid),
    .adc00_ready_in        (m00_axis_tready),

    .adc00_stat            (adc00_stat),
    // ADC AXI Streaming Data for ADC01
    .adc01_data_out        (adc01_data_i),
    .adc01_valid_out       (m01_axis_tvalid),
    .adc01_ready_in        (m01_axis_tready),

    .adc01_stat            (adc01_stat),
    // ADC AXI Streaming Data for ADC02
    .adc02_data_out        (adc02_data_i),
    .adc02_valid_out       (m02_axis_tvalid),
    .adc02_ready_in        (m02_axis_tready),

    .adc02_stat            (adc02_stat),
    // ADC AXI Streaming Data for ADC03
    .adc03_data_out        (adc03_data_i),
    .adc03_valid_out       (m03_axis_tvalid),
    .adc03_ready_in        (m03_axis_tready),

    .adc03_stat            (adc03_stat),
    // ADC AXI Streaming Data for ADC10
    .adc10_data_out        (adc10_data_i),
    .adc10_valid_out       (m10_axis_tvalid),
    .adc10_ready_in        (m10_axis_tready),

    .adc10_stat            (adc10_stat),
    // ADC AXI Streaming Data for ADC11
    .adc11_data_out        (adc11_data_i),
    .adc11_valid_out       (m11_axis_tvalid),
    .adc11_ready_in        (m11_axis_tready),

    .adc11_stat            (adc11_stat),
    // ADC AXI Streaming Data for ADC12
    .adc12_data_out        (adc12_data_i),
    .adc12_valid_out       (m12_axis_tvalid),
    .adc12_ready_in        (m12_axis_tready),

    .adc12_stat            (adc12_stat),
    // ADC AXI Streaming Data for ADC13
    .adc13_data_out        (adc13_data_i),
    .adc13_valid_out       (m13_axis_tvalid),
    .adc13_ready_in        (m13_axis_tready),

    .adc13_stat            (adc13_stat),
    .adc20_stat            (adc20_stat),
    .adc21_stat            (adc21_stat),
    .adc22_stat            (adc22_stat),
    .adc23_stat            (adc23_stat),
    .adc30_stat            (adc30_stat),
    .adc31_stat            (adc31_stat),
    .adc32_stat            (adc32_stat),
    .adc33_stat            (adc33_stat),
    // DAC Reference Clock for Tile 0
    .dac0_clk_p            (dac0_clk_p),
    .dac0_clk_n            (dac0_clk_n),

    // DAC PLL Reference Clock for Tile 0
    // TODO. How to connect this?
    .dac0_pll_clk          (1'b0),

    .dac0_fabricclk        (s0_axis_aclk),
    .dac0_fabricclk_val    (s0_axis_aclk_val_sync),

    // DAC Fabric Feedback Clock for Tile 0
    .clk_dac0              (clk_dac0_i),

    // DAC Common Status for Tile 0
    .dac0_common_stat      (dac0_common_stat),

    // DAC Reference Clock for Tile 1
    .dac1_clk_p            (1'b0),
    .dac1_clk_n            (1'b0),

    // DAC PLL Reference Clock for Tile 1
    .dac1_pll_clk          (1'b0),

    .dac1_fabricclk        (1'b0),
    .dac1_fabricclk_val    (1'b0),

    // DAC Fabric Feedback Clock for Tile 1
    .clk_dac1              (),

    // DAC Common Status for Tile 1
    .dac1_common_stat      (dac1_common_stat),

    .vout00_p              (vout00_p),
    .vout00_n              (vout00_n),

    // DAC data for DAC00
    .dac00_data_in         (dac00_data_i),
    .dac00_valid_in        (s00_axis_tvalid),
    .dac00_ready_out       (s00_axis_tready),

    // DAC data for DAC01
    .dac01_data_in         (dac01_data_i),
    .dac01_valid_in        (s01_axis_tvalid),
    .dac01_ready_out       (s01_axis_tready),

    // DAC data for DAC02
    .dac02_data_in         (dac02_data_i),
    .dac02_valid_in        (s02_axis_tvalid),
    .dac02_ready_out       (s02_axis_tready),

    // DAC data for DAC03
    .dac03_data_in         (dac03_data_i),
    .dac03_valid_in        (s03_axis_tvalid),
    .dac03_ready_out       (s03_axis_tready),

    // DAC data for DAC10
    .dac10_data_in         (256'b0),
    .dac10_valid_in        (1'b0),
    .dac10_ready_out       (),

    // DAC data for DAC11
    .dac11_data_in         (256'b0),
    .dac11_valid_in        (1'b0),
    .dac11_ready_out       (),

    // DAC data for DAC12
    .dac12_data_in         (256'b0),
    .dac12_valid_in        (1'b0),
    .dac12_ready_out       (),

    // DAC data for DAC13
    .dac13_data_in         (256'b0),
    .dac13_valid_in        (1'b0),
    .dac13_ready_out       (),

    .drp_addr              (drp_addr),
    .drp_di                (drp_di),

    .dac0_drp_en           (dac0_drp_en),
    .dac0_drp_we           (dac0_drp_we ),
    .dac0_drp_do           (dac0_drp_do),
    .dac0_drp_rdy          (dac0_drp_rdy),
    .dac0_drp_req          (dac0_drp_req),
    .dac0_drp_gnt          (dac0_drp_gnt),

    .dac1_drp_en           (dac1_drp_en),
    .dac1_drp_we           (dac1_drp_we ),
    .dac1_drp_do           (dac1_drp_do),
    .dac1_drp_rdy          (dac1_drp_rdy),
    .dac1_drp_req          (dac1_drp_req),
    .dac1_drp_gnt          (dac1_drp_gnt),

    .adc0_drp_en           (adc0_drp_en),
    .adc0_drp_we           (adc0_drp_we),
    .adc0_drp_do           (adc0_drp_do),
    .adc0_drp_rdy          (adc0_drp_rdy),
    .adc0_drp_req          (adc0_drp_req),
    .adc0_drp_gnt          (adc0_drp_gnt),

    .adc1_drp_en           (adc1_drp_en),
    .adc1_drp_we           (adc1_drp_we),
    .adc1_drp_do           (adc1_drp_do),
    .adc1_drp_rdy          (adc1_drp_rdy),
    .adc1_drp_req          (adc1_drp_req),
    .adc1_drp_gnt          (adc1_drp_gnt),

    .adc2_drp_en           (adc2_drp_en),
    .adc2_drp_we           (adc2_drp_we),
    .adc2_drp_do           (adc2_drp_do),
    .adc2_drp_rdy          (adc2_drp_rdy),
    .adc2_drp_req          (adc2_drp_req),
    .adc2_drp_gnt          (adc2_drp_gnt),

    .adc3_drp_en           (adc3_drp_en),
    .adc3_drp_we           (adc3_drp_we),
    .adc3_drp_do           (adc3_drp_do),
    .adc3_drp_rdy          (adc3_drp_rdy),
    .adc3_drp_req          (adc3_drp_req),
    .adc3_drp_gnt          (adc3_drp_gnt),

    .adc0_reset            (adc0_reset),
    .adc0_restart          (adc0_restart),
    .adc0_done             (adc0_done_i),
    .adc0_status           (adc0_current_stage),
    .adc0_pll_lock         (adc0_pll_lock_i),
    .adc0_pll_error        (),
    .adc0_sm_reset         (adc0_sm_reset_i),

    .adc1_reset            (adc1_reset),
    .adc1_restart          (adc1_restart),
    .adc1_done             (adc1_done_i),
    .adc1_status           (adc1_current_stage),
    .adc1_pll_lock         (adc1_pll_lock_i),
    .adc1_pll_error        (),
    .adc1_sm_reset         (adc1_sm_reset_i),

    .adc2_reset            (adc2_reset),
    .adc2_restart          (adc2_restart),
    .adc2_done             (adc2_done_i),
    .adc2_status           (adc2_current_stage),
    .adc2_pll_lock         (adc2_pll_lock_i),
    .adc2_pll_error        (),
    .adc2_sm_reset         (adc2_sm_reset_i),

    .adc3_reset            (adc3_reset),
    .adc3_restart          (adc3_restart),
    .adc3_done             (adc3_done_i),
    .adc3_status           (adc3_current_stage),
    .adc3_pll_lock         (adc3_pll_lock_i),
    .adc3_pll_error        (),
    .adc3_sm_reset         (adc3_sm_reset_i),

    .dac0_reset            (dac0_reset),
    .dac0_restart          (dac0_restart),
    .dac0_done             (dac0_done_i),
    .dac0_status           (dac0_current_stage),
    .dac0_pll_lock         (dac0_pll_lock_i),
    .dac0_pll_error        (),
    .dac0_sm_reset         (dac0_sm_reset_i),

    .dac1_reset            (dac1_reset),
    .dac1_restart          (dac1_restart),
    .dac1_done             (dac1_done_i),
    .dac1_status           (dac1_current_stage),
    .dac1_pll_lock         (dac1_pll_lock_i),
    .dac1_pll_error        (),
    .dac1_sm_reset         (dac1_sm_reset_i),

    .dac0_start_stage      (dac0_start_stage),
    .dac0_end_stage        (dac0_end_stage),
    .dac0_supply_timer     (dac0_supply_timer),
    .dac0_regulator_timer  (dac0_regulator_timer),
    .dac0_fifo_disable     (dac0_fifo_disable[0]),

    .dac1_start_stage      (dac1_start_stage),
    .dac1_end_stage        (dac1_end_stage),
    .dac1_supply_timer     (dac1_supply_timer),
    .dac1_regulator_timer  (dac1_regulator_timer),
    .dac1_fifo_disable     (dac1_fifo_disable[0]),

    .adc0_start_stage       (adc0_start_stage),
    .adc0_end_stage         (adc0_end_stage),
    .adc0_supply_timer      (adc0_supply_timer),
    .adc0_regulator_timer   (adc0_regulator_timer),
    .adc0_calibration_timer (adc0_calibration_timer),
    .adc0_const_speedup     (adc0_const_speedup),
    .adc0_fifo_disable      (adc0_fifo_disable[0]),
    .adc0_obs_fifo_disable  (adc0_fifo_disable[1]),

    .adc1_start_stage       (adc1_start_stage),
    .adc1_end_stage         (adc1_end_stage),
    .adc1_supply_timer      (adc1_supply_timer),
    .adc1_regulator_timer   (adc1_regulator_timer),
    .adc1_calibration_timer (adc1_calibration_timer),
    .adc1_const_speedup     (adc1_const_speedup),
    .adc1_fifo_disable      (adc1_fifo_disable[0]),
    .adc1_obs_fifo_disable  (adc1_fifo_disable[1]),

    .adc2_start_stage       (adc2_start_stage),
    .adc2_end_stage         (adc2_end_stage),
    .adc2_supply_timer      (adc2_supply_timer),
    .adc2_regulator_timer   (adc2_regulator_timer),
    .adc2_calibration_timer (adc2_calibration_timer),
    .adc2_const_speedup     (adc2_const_speedup),
    .adc2_fifo_disable      (adc2_fifo_disable[0]),
    .adc2_obs_fifo_disable  (adc2_fifo_disable[1]),

    .adc3_start_stage       (adc3_start_stage),
    .adc3_end_stage         (adc3_end_stage),
    .adc3_supply_timer      (adc3_supply_timer),
    .adc3_regulator_timer   (adc3_regulator_timer),
    .adc3_calibration_timer (adc3_calibration_timer),
    .adc3_const_speedup     (adc3_const_speedup),
    .adc3_fifo_disable      (adc3_fifo_disable[0]),
    .adc3_obs_fifo_disable  (adc3_fifo_disable[1]),

    .sysref_in_p            (sysref_in_p),
    .sysref_in_n            (sysref_in_n),

    .user_sysref_adc        (1'b0),
    .mt_adc_fifo_en         (1'b0),
    .mt_adc_fifo_src        (1'b0),

    .user_sysref_dac        (1'b0),
    .mt_dac_fifo_en         (1'b0),
    .mt_dac_fifo_src        (1'b0),

    // DAC Debug Ports
    // DAC0
    .dac0_cmn_control       (dac0_cmn_control),
    .dac0_sysref_gate       (1'b0),


    .dac00_control          (dac00_control_i),
    .dac01_control          (dac01_control_i),
    .dac02_control          (dac02_control_i),
    .dac03_control          (dac03_control_i),

    .dac00_status           (dac00_stat),
    .dac01_status           (dac01_stat),
    .dac02_status           (dac02_stat),
    .dac03_status           (dac03_stat),

    .dac0_pll_dmon          (dac0_pll_dmon),

    .dac0_daddr_mon         (dac0_daddr_mon),
    .dac0_di_mon            (dac0_di_mon),
    .dac0_den_mon           (dac0_den_mon),
    .dac0_dwe_mon           (dac0_dwe_mon),
    .dac0_do_mon            (dac0_do_mon),
    .dac0_drdy_mon          (dac0_drdy_mon),
    .dac0_dreq_mon          (dac0_dreq_mon),
    .dac0_dgnt_mon          (dac0_dgnt_mon),

    .dac0_powerup_state_interrupt (dac0_powerup_state_interrupt),

    // DAC1
    .dac1_cmn_control       (dac1_cmn_control),
    .dac1_sysref_gate       (1'b0),


    .dac10_control          (dac10_control_i),
    .dac11_control          (dac11_control_i),
    .dac12_control          (dac12_control_i),
    .dac13_control          (dac13_control_i),

    .dac10_status           (dac10_stat),
    .dac11_status           (dac11_stat),
    .dac12_status           (dac12_stat),
    .dac13_status           (dac13_stat),

    .dac1_pll_dmon          (dac1_pll_dmon),

    .dac1_daddr_mon         (dac1_daddr_mon),
    .dac1_di_mon            (dac1_di_mon),
    .dac1_den_mon           (dac1_den_mon),
    .dac1_dwe_mon           (dac1_dwe_mon),
    .dac1_do_mon            (dac1_do_mon),
    .dac1_drdy_mon          (dac1_drdy_mon),
    .dac1_dreq_mon          (dac1_dreq_mon),
    .dac1_dgnt_mon          (dac1_dgnt_mon),

    .dac1_powerup_state_interrupt (dac1_powerup_state_interrupt),

    .adc00_signal_lost      (adc00_signal_lost_i),
    .adc01_signal_lost      (adc01_signal_lost_i),
    .adc02_signal_lost      (adc02_signal_lost_i),
    .adc03_signal_lost      (adc03_signal_lost_i),
    .adc00_bg_cal_off       (adc00_bg_cal_off_i),
    .adc01_bg_cal_off       (adc01_bg_cal_off_i),
    .adc02_bg_cal_off       (adc02_bg_cal_off_i),
    .adc03_bg_cal_off       (adc03_bg_cal_off_i),

    .adc10_signal_lost      (adc10_signal_lost_i),
    .adc11_signal_lost      (adc11_signal_lost_i),
    .adc12_signal_lost      (adc12_signal_lost_i),
    .adc13_signal_lost      (adc13_signal_lost_i),
    .adc10_bg_cal_off       (adc10_bg_cal_off_i),
    .adc11_bg_cal_off       (adc11_bg_cal_off_i),
    .adc12_bg_cal_off       (adc12_bg_cal_off_i),
    .adc13_bg_cal_off       (adc13_bg_cal_off_i),

    .adc20_signal_lost      (adc20_signal_lost_i),
    .adc21_signal_lost      (adc21_signal_lost_i),
    .adc22_signal_lost      (adc22_signal_lost_i),
    .adc23_signal_lost      (adc23_signal_lost_i),
    .adc20_bg_cal_off       (adc20_bg_cal_off_i),
    .adc21_bg_cal_off       (adc21_bg_cal_off_i),
    .adc22_bg_cal_off       (adc22_bg_cal_off_i),
    .adc23_bg_cal_off       (adc23_bg_cal_off_i),

    .adc30_signal_lost      (adc30_signal_lost_i),
    .adc31_signal_lost      (adc31_signal_lost_i),
    .adc32_signal_lost      (adc32_signal_lost_i),
    .adc33_signal_lost      (adc33_signal_lost_i),
    .adc30_bg_cal_off       (adc30_bg_cal_off_i),
    .adc31_bg_cal_off       (adc31_bg_cal_off_i),
    .adc32_bg_cal_off       (adc32_bg_cal_off_i),
    .adc33_bg_cal_off       (adc33_bg_cal_off_i),

  // ADC Debug Ports
    // ADC0
    .adc0_cmn_control       (adc0_cmn_control[14:0]),
    .adc00_control          (adc00_control_i),
    .adc01_control          (adc01_control_i),
    .adc02_control          (adc02_control_i),
    .adc03_control          (adc03_control_i),

    .adc0_pll_dmon          (adc0_pll_dmon),

    .adc0_daddr_mon         (adc0_daddr_mon),
    .adc0_di_mon            (adc0_di_mon),
    .adc0_den_mon           (adc0_den_mon),
    .adc0_dwe_mon           (adc0_dwe_mon),
    .adc0_do_mon            (adc0_do_mon),
    .adc0_drdy_mon          (adc0_drdy_mon),
    .adc0_dreq_mon          (adc0_dreq_mon),
    .adc0_dgnt_mon          (adc0_dgnt_mon),

    .adc0_powerup_state_interrupt (adc0_powerup_state_interrupt),

    // ADC1
    .adc1_cmn_control       (adc1_cmn_control[14:0]),
    .adc10_control          (adc10_control_i),
    .adc11_control          (adc11_control_i),
    .adc12_control          (adc12_control_i),
    .adc13_control          (adc13_control_i),

    .adc1_pll_dmon          (adc1_pll_dmon),

    .adc1_daddr_mon         (adc1_daddr_mon),
    .adc1_di_mon            (adc1_di_mon),
    .adc1_den_mon           (adc1_den_mon),
    .adc1_dwe_mon           (adc1_dwe_mon),
    .adc1_do_mon            (adc1_do_mon),
    .adc1_drdy_mon          (adc1_drdy_mon),
    .adc1_dreq_mon          (adc1_dreq_mon),
    .adc1_dgnt_mon          (adc1_dgnt_mon),

    .adc1_powerup_state_interrupt (adc1_powerup_state_interrupt),

    // ADC2
    .adc2_cmn_control       (adc2_cmn_control[14:0]),
    .adc20_control          (adc20_control_i),
    .adc21_control          (adc21_control_i),
    .adc22_control          (adc22_control_i),
    .adc23_control          (adc23_control_i),

    .adc2_pll_dmon          (adc2_pll_dmon),

    .adc2_daddr_mon         (adc2_daddr_mon),
    .adc2_di_mon            (adc2_di_mon),
    .adc2_den_mon           (adc2_den_mon),
    .adc2_dwe_mon           (adc2_dwe_mon),
    .adc2_do_mon            (adc2_do_mon),
    .adc2_drdy_mon          (adc2_drdy_mon),
    .adc2_dreq_mon          (adc2_dreq_mon),
    .adc2_dgnt_mon          (adc2_dgnt_mon),

    .adc2_powerup_state_interrupt (adc2_powerup_state_interrupt),

    // ADC3
    .adc3_cmn_control       (adc3_cmn_control[14:0]),
    .adc30_control          (adc30_control_i),
    .adc31_control          (adc31_control_i),
    .adc32_control          (adc32_control_i),
    .adc33_control          (adc33_control_i),

    .adc3_pll_dmon          (adc3_pll_dmon),

    .adc3_daddr_mon         (adc3_daddr_mon),
    .adc3_di_mon            (adc3_di_mon),
    .adc3_den_mon           (adc3_den_mon),
    .adc3_dwe_mon           (adc3_dwe_mon),
    .adc3_do_mon            (adc3_do_mon),
    .adc3_drdy_mon          (adc3_drdy_mon),
    .adc3_dreq_mon          (adc3_dreq_mon),
    .adc3_dgnt_mon          (adc3_dgnt_mon),

    .adc3_powerup_state_interrupt (adc3_powerup_state_interrupt),

    .adc0_sysref_gate       (1'b0),
    .adc1_sysref_gate       (1'b0),
    .adc2_sysref_gate       (1'b0),
    .adc3_sysref_gate       (1'b0),
    .startup_delay          (startup_delay),
    .drpclk                 (s_axi_aclk),
    .sm_start               (sm_start),
    .reset                  (master_reset)
 );

  assign  m00_axis_tdata  =  adc00_data_i[127:0];

  assign  m01_axis_tdata  =  adc01_data_i[127:0];

  assign  m02_axis_tdata  =  adc02_data_i[127:0];

  assign  m03_axis_tdata  =  adc03_data_i[127:0];

  assign  m10_axis_tdata  =  adc10_data_i[127:0];

  assign  m11_axis_tdata  =  adc11_data_i[127:0];

  assign  m12_axis_tdata  =  adc12_data_i[127:0];

  assign  m13_axis_tdata  =  adc13_data_i[127:0];









  assign  adc00_status  =  adc00_stat;
  assign  adc01_status  =  adc01_stat;
  assign  adc02_status  =  adc02_stat;
  assign  adc03_status  =  adc03_stat;
  assign  adc10_status  =  adc10_stat;
  assign  adc11_status  =  adc11_stat;
  assign  adc12_status  =  adc12_stat;
  assign  adc13_status  =  adc13_stat;
  assign  adc20_status  =  adc20_stat;
  assign  adc21_status  =  adc21_stat;
  assign  adc22_status  =  adc22_stat;
  assign  adc23_status  =  adc23_stat;
  assign  adc30_status  =  adc30_stat;
  assign  adc31_status  =  adc31_stat;
  assign  adc32_status  =  adc32_stat;
  assign  adc33_status  =  adc33_stat;

  assign  dac00_status  =  dac00_stat;
  assign  dac01_status  =  dac01_stat;
  assign  dac02_status  =  dac02_stat;
  assign  dac03_status  =  dac03_stat;
  assign  dac10_status  =  dac10_stat;
  assign  dac11_status  =  dac11_stat;
  assign  dac12_status  =  dac12_stat;
  assign  dac13_status  =  dac13_stat;

  // Synchronize the asynchronous ADC clock valid inputs onto the DRP clock
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc0_clk_valid_i (
      .src_clk  (1'b0                              ),
      .src_in   (m0_axis_aresetn      ),
      .dest_clk (s_axi_aclk                        ),
      .dest_out (m0_axis_aclk_val_sync)
    );
  // Synchronize the asynchronous ADC clock valid inputs onto the DRP clock
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_adc1_clk_valid_i (
      .src_clk  (1'b0                              ),
      .src_in   (m1_axis_aresetn      ),
      .dest_clk (s_axi_aclk                        ),
      .dest_out (m1_axis_aclk_val_sync)
    );
  // Synchronize the asynchronous ADC clock valid inputs onto the DRP clock
  // Synchronize the asynchronous ADC clock valid inputs onto the DRP clock
  // Synchronize the asynchronous DAC clock valid inputs onto the DRP clock
  xpm_cdc_single #(.SRC_INPUT_REG(0))
    cdc_dac0_clk_valid_i (
      .src_clk  (1'b0                              ),
      .src_in   (s0_axis_aresetn      ),
      .dest_clk (s_axi_aclk                        ),
      .dest_out (s0_axis_aclk_val_sync)
    );
  // Synchronize the asynchronous DAC clock valid inputs onto the DRP clock

  design_1_usp_rf_data_converter_0_0_axi_lite_ipif #(
    .C_S_AXI_DATA_WIDTH           (32),
    .C_S_AXI_MIN_SIZE             (32'h0003_FFFC),
    .C_DPHASE_TIMEOUT             (2048),
    .C_NUM_ADDRESS_RANGES         (1),
    .C_TOTAL_NUM_CE               (1),
    .C_USE_WSTRB                  (0),
    .C_ARD_ADDR_RANGE_ARRAY       ({32'h0000_0000,32'h0003_FFFC}),
    .C_ARD_NUM_CE_ARRAY           ({8'd1}),
    .C_FAMILY                     ("zynquplus")
  ) i_axi_lite_ipif (
    .S_AXI_ACLK                   (s_axi_aclk),
    .S_AXI_ARESETN                (s_axi_aresetn),
    .S_AXI_AWADDR                 (s_axi_awaddr),
    .S_AXI_AWVALID                (s_axi_awvalid),
    .S_AXI_AWREADY                (s_axi_awready),
    .S_AXI_WDATA                  (s_axi_wdata),
    .S_AXI_WSTRB                  (4'hF),
    .S_AXI_WVALID                 (s_axi_wvalid),
    .S_AXI_WREADY                 (s_axi_wready),
    .S_AXI_BRESP                  (s_axi_bresp),
    .S_AXI_BVALID                 (s_axi_bvalid),
    .S_AXI_BREADY                 (s_axi_bready),
    .S_AXI_ARADDR                 (s_axi_araddr),
    .S_AXI_ARVALID                (s_axi_arvalid),
    .S_AXI_ARREADY                (s_axi_arready),
    .S_AXI_RDATA                  (s_axi_rdata),
    .S_AXI_RRESP                  (s_axi_rresp),
    .S_AXI_RVALID                 (s_axi_rvalid),
    .S_AXI_RREADY                 (s_axi_rready),

    // Controls to the IP/ipif
    .Bus2IP_Clk                   (Bus2IP_Clk),
    .Bus2IP_Resetn                (Bus2IP_Resetn),
    .Bus2IP_Addr                  (Bus2IP_Addr),
    .Bus2IP_RNW                   (),
    .Bus2IP_BE                    (Bus2IP_BE),
    .Bus2IP_CS                    (),
    .Bus2IP_RdCE                  (Bus2IP_RdCE),
    .Bus2IP_WrCE                  (Bus2IP_WrCE),
    .Bus2IP_Data                  (Bus2IP_Data),
    .IP2Bus_Data                  (IP2Bus_Data),
    .IP2Bus_WrAck                 (IP2Bus_WrAck),
    .IP2Bus_RdAck                 (IP2Bus_RdAck),
    .IP2Bus_Error                 (1'b0),
    .timeout                      (axi_timeout)
  );

  design_1_usp_rf_data_converter_0_0_register_decode i_register_decode (
    .bus2ip_addr                  (Bus2IP_Addr),
    .bus2ip_rdce                  (Bus2IP_RdCE),
    .bus2ip_wrce                  (Bus2IP_WrCE),
    .chip_select                  (chip_select),
    .bank0_read                   (bank0_read),
    .bank1_read                   (bank1_read),
    .bank2_read                   (bank2_read),
    .bank3_read                   (bank3_read),
    .bank4_read                   (bank4_read),
    .bank5_read                   (bank5_read),
    .bank6_read                   (bank6_read),
    .bank7_read                   (bank7_read),
    .bank8_read                   (bank8_read),
    .bank9_read                   (bank9_read),
    .bank10_read                  (bank10_read),
    .bank11_read                  (bank11_read),
    .bank12_read                  (bank12_read),
    .bank13_read                  (bank13_read),
    .bank14_read                  (bank14_read),
    .bank15_read                  (bank15_read),
    .bank16_read                  (bank16_read),
    .bank0_write                  (bank0_write),
    .bank1_write                  (bank1_write),
    .bank2_write                  (bank2_write),
    .bank3_write                  (bank3_write),
    .bank4_write                  (bank4_write),
    .bank5_write                  (bank5_write),
    .bank6_write                  (bank6_write),
    .bank7_write                  (bank7_write),
    .bank8_write                  (bank8_write),
    .bank9_write                  (bank9_write),
    .bank10_write                 (bank10_write),
    .bank11_write                 (bank11_write),
    .bank12_write                 (bank12_write),
    .bank13_write                 (bank13_write),
    .bank14_write                 (bank14_write),
    .bank15_write                 (bank15_write),
    .bank16_write                 (bank16_write),
    .axi_rdce                     (axi_rdce),
    .axi_wrce                     (axi_wrce)
  );

  design_1_usp_rf_data_converter_0_0_drp_access_ctrl i_drp_access_ctrl(
    .adc_write                    (|({bank10_write, bank12_write, bank14_write, bank16_write})),
    .dac_write                    (|({bank2_write, bank4_write, bank6_write, bank8_write})),
    .drp_addr                     (drp_addr),
    .adc_disable                  (adc_disable),
    .dac_disable                  (dac_disable)
  );

  design_1_usp_rf_data_converter_0_0_drp_control_top i_drp_control_top(
    .clk                          (s_axi_aclk),
    .reset                        (~s_axi_aresetn),

    .dac0_read_req                (bank2_read),
    .dac0_write_req               (bank2_write),
    .dac0_drp_gnt                 (dac0_drp_gnt),
    .dac0_drp_rdy                 (dac0_drp_rdy),
    .dac0_drp_req                 (dac0_drp_req),
    .dac0_drp_en                  (dac0_drp_en),
    .dac0_drp_we                  (dac0_drp_we),
    .dac0_rd_ack                  (drp_RdAck[0]),
    .dac0_wr_ack                  (drp_WrAck[0]),

    .dac1_read_req                (bank4_read),
    .dac1_write_req               (bank4_write),
    .dac1_drp_gnt                 (dac1_drp_gnt),
    .dac1_drp_rdy                 (dac1_drp_rdy),
    .dac1_drp_req                 (dac1_drp_req),
    .dac1_drp_en                  (dac1_drp_en),
    .dac1_drp_we                  (dac1_drp_we),
    .dac1_rd_ack                  (drp_RdAck[1]),
    .dac1_wr_ack                  (drp_WrAck[1]),

    .dac_bypass                   (dac_disable),

    .adc_bypass                   (adc_disable),

    .adc0_read_req                (bank10_read),
    .adc0_write_req               (bank10_write),
    .adc0_drp_gnt                 (adc0_drp_gnt),
    .adc0_drp_rdy                 (adc0_drp_rdy),
    .adc0_drp_req                 (adc0_drp_req),
    .adc0_drp_en                  (adc0_drp_en),
    .adc0_drp_we                  (adc0_drp_we),
    .adc0_rd_ack                  (drp_RdAck[4]),
    .adc0_wr_ack                  (drp_WrAck[4]),

    .adc1_read_req                (bank12_read),
    .adc1_write_req               (bank12_write),
    .adc1_drp_gnt                 (adc1_drp_gnt),
    .adc1_drp_rdy                 (adc1_drp_rdy),
    .adc1_drp_req                 (adc1_drp_req),
    .adc1_drp_en                  (adc1_drp_en),
    .adc1_drp_we                  (adc1_drp_we),
    .adc1_rd_ack                  (drp_RdAck[5]),
    .adc1_wr_ack                  (drp_WrAck[5]),

    .adc2_read_req                (bank14_read),
    .adc2_write_req               (bank14_write),
    .adc2_drp_gnt                 (adc2_drp_gnt),
    .adc2_drp_rdy                 (adc2_drp_rdy),
    .adc2_drp_req                 (adc2_drp_req),
    .adc2_drp_en                  (adc2_drp_en),
    .adc2_drp_we                  (adc2_drp_we),
    .adc2_rd_ack                  (drp_RdAck[6]),
    .adc2_wr_ack                  (drp_WrAck[6]),

    .adc3_read_req                (bank16_read),
    .adc3_write_req               (bank16_write),
    .adc3_drp_gnt                 (adc3_drp_gnt),
    .adc3_drp_rdy                 (adc3_drp_rdy),
    .adc3_drp_req                 (adc3_drp_req),
    .adc3_drp_en                  (adc3_drp_en),
    .adc3_drp_we                  (adc3_drp_we),
    .adc3_rd_ack                  (drp_RdAck[7]),
    .adc3_wr_ack                  (drp_WrAck[7]),

    .timeout                      (axi_timeout)
  );
//--------------------- BANK 0 ------------------------------
  // 0x04 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      master_reset   <= 1'b1;
    end
    else if (bank0_write[1])
    begin
      master_reset   <= Bus2IP_Data[0];
    end
    else
    begin
      master_reset   <= 1'b0;
    end

  // 0x08 Startup delay
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      startup_delay   <= 16'h000A;
    end
    else if (bank0_write[2])
    begin
      startup_delay   <= Bus2IP_Data[15:0];
    end

  assign sm_start = 1'b1;

  // 0x104 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      axi_timeout_en <= 1'b0;
      dac0_irq_en    <= 1'b0;
      dac1_irq_en    <= 1'b0;
      adc0_irq_en    <= 1'b0;
      adc1_irq_en    <= 1'b0;
      adc2_irq_en    <= 1'b0;
      adc3_irq_en    <= 1'b0;
    end
    else if (bank0_write[65])
    begin
      dac0_irq_en    <= Bus2IP_Data[0];
      dac1_irq_en    <= Bus2IP_Data[1];
      adc0_irq_en    <= Bus2IP_Data[4];
      adc1_irq_en    <= Bus2IP_Data[5];
      adc2_irq_en    <= Bus2IP_Data[6];
      adc3_irq_en    <= Bus2IP_Data[7];
      axi_timeout_en <= Bus2IP_Data[31];
    end

  //--------------------- BANK 1 ------------------------------
  // 0x00 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_reset       <= 1'b0;
    end
    else if (bank1_write[0])
    begin
      dac0_reset       <= Bus2IP_Data[0];
    end
    else
    begin
      dac0_reset       <= 1'b0;
    end

  // 0x04 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_restart     <= 1'b0;
    end
    else if (bank1_write[1])
    begin
      dac0_restart     <= Bus2IP_Data[0];
    end
    else
    begin
      dac0_restart     <= 1'b0;
    end

  // 0x08 Start and End stage of POR FSM
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_start_stage <= 4'b0000;
      dac0_end_stage   <= 4'b1111;
    end
    else if (master_reset)
    begin
      dac0_start_stage <= 4'b0000;
    end
    else if (bank1_write[2])
    begin
      dac0_end_stage   <= Bus2IP_Data[3:0];
      dac0_start_stage <= Bus2IP_Data[11:8];
    end

  // 0x0100 DAC Simulation level
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
`ifdef HS_SIM_SPEEDUP
      dac0_sim_level <= 2'b01;
`else
      dac0_sim_level <= 2'b00;
`endif
    end
    else if (bank1_write[64])
    begin
      dac0_sim_level <= Bus2IP_Data[1:0];
    end

  assign dac0_supply_timer    = (dac0_sim_level[0] == 1'b0) ? 24'h009897 : 24'h000010;
  assign dac0_regulator_timer = (dac0_sim_level[0] == 1'b0) ? 24'h000C36 : 24'h000010;

  // 0x0204 Tile Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_cmn_irq_en <= 1'b1;
      dac03_irq_en    <= 1'b1;
      dac02_irq_en    <= 1'b1;
      dac01_irq_en    <= 1'b1;
      dac00_irq_en    <= 1'b1;
    end
    else if (bank1_write[129])
    begin
      dac0_cmn_irq_en <= Bus2IP_Data[4];
      dac03_irq_en    <= Bus2IP_Data[3];
      dac02_irq_en    <= Bus2IP_Data[2];
      dac01_irq_en    <= Bus2IP_Data[1];
      dac00_irq_en    <= Bus2IP_Data[0];
    end

  // 0x020C Slice 00 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_slice0_irq_en <= 16'hC000;
    end
    else if (bank1_write[131])
    begin
      dac0_slice0_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac0_slice0_irq_en[13:0]  <= 14'b0;

    end

  // 0x0214 Slice 1 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_slice1_irq_en <= 16'hC000;
    end
    else if (bank1_write[133])
    begin
      dac0_slice1_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac0_slice1_irq_en[13:0]  <= 14'b0;
    end

  // 0x021C Slice 2 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_slice2_irq_en <= 16'hC000;
    end
    else if (bank1_write[135])
    begin
      dac0_slice2_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac0_slice2_irq_en[13:0]  <= 14'b0;
    end

  // 0x0224 Slice 3 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_slice3_irq_en <= 16'hC000;
    end
    else if (bank1_write[137])
    begin
      dac0_slice3_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac0_slice3_irq_en[13:0]  <= 14'b0;
    end

  // 0x022C Common Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_cmn_en <= 16'h0000;
    end
    else if (bank1_write[139])
    begin
      dac0_cmn_en <= Bus2IP_Data[15:0];
    end

  // 0x0230 Common FIFO Disable
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_fifo_disable <= 16'h0000;
    end
    else if (bank1_write[140])
    begin
      dac0_fifo_disable[0] <= Bus2IP_Data[0];
      dac0_fifo_disable[15:1] <= 15'b0;
    end

  // 0x0300 Reference clock frequency
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_ref_clk_freq <= 32'd409600;
    end
    else if (bank1_write[192])
    begin
      dac0_ref_clk_freq <= Bus2IP_Data;
    end

  // 0x0304 Sample rate
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_sample_rate <= 32'd4096000;
    end
    else if (bank1_write[193])
    begin
      dac0_sample_rate <= Bus2IP_Data;
    end
    
  // 0x308 Multi-band setting
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac0_multi_band   <= 3'b100;
    end
    else if (bank1_write[194])
    begin
      dac0_multi_band   <= Bus2IP_Data[2:0];
    end

  //--------------------- BANK 3 ------------------------------
  // 0x00 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_reset       <= 1'b0;
    end
    else if (bank3_write[0])
    begin
      dac1_reset       <= Bus2IP_Data[0];
    end
    else
    begin
      dac1_reset       <= 1'b0;
    end

  // 0x04 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_restart     <= 1'b0;
    end
    else if (bank3_write[1])
    begin
      dac1_restart     <= Bus2IP_Data[0];
    end
    else
    begin
      dac1_restart     <= 1'b0;
    end

  // 0x08 Start and End stage of POR FSM
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_start_stage <= 4'b0000;
      dac1_end_stage   <= 4'b1111;
    end
    else if (master_reset)
    begin
      dac1_start_stage <= 4'b0000;
    end
    else if (bank3_write[2])
    begin
      dac1_end_stage   <= Bus2IP_Data[3:0];
      dac1_start_stage <= Bus2IP_Data[11:8];
    end

  // 0x0100 DAC Simulation level
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
`ifdef HS_SIM_SPEEDUP
      dac1_sim_level <= 2'b01;
`else
      dac1_sim_level <= 2'b00;
`endif
    end
    else if (bank3_write[64])
    begin
      dac1_sim_level <= Bus2IP_Data[1:0];
    end

  assign dac1_supply_timer    = (dac1_sim_level[0] == 1'b0) ? 24'h009897 : 24'h000010;
  assign dac1_regulator_timer = (dac1_sim_level[0] == 1'b0) ? 24'h000C36 : 24'h000010;

  // 0x0204 Tile Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_cmn_irq_en <= 1'b1;
      dac13_irq_en    <= 1'b1;
      dac12_irq_en    <= 1'b1;
      dac11_irq_en    <= 1'b1;
      dac10_irq_en    <= 1'b1;
    end
    else if (bank3_write[129])
    begin
      dac1_cmn_irq_en <= Bus2IP_Data[4];
      dac13_irq_en    <= Bus2IP_Data[3];
      dac12_irq_en    <= Bus2IP_Data[2];
      dac11_irq_en    <= Bus2IP_Data[1];
      dac10_irq_en    <= Bus2IP_Data[0];
    end

  // 0x020C Slice 00 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_slice0_irq_en <= 16'hC000;
    end
    else if (bank3_write[131])
    begin
      dac1_slice0_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac1_slice0_irq_en[13:0]  <= 14'b0;

    end

  // 0x0214 Slice 1 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_slice1_irq_en <= 16'hC000;
    end
    else if (bank3_write[133])
    begin
      dac1_slice1_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac1_slice1_irq_en[13:0]  <= 14'b0;
    end

  // 0x021C Slice 2 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_slice2_irq_en <= 16'hC000;
    end
    else if (bank3_write[135])
    begin
      dac1_slice2_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac1_slice2_irq_en[13:0]  <= 14'b0;
    end

  // 0x0224 Slice 3 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_slice3_irq_en <= 16'hC000;
    end
    else if (bank3_write[137])
    begin
      dac1_slice3_irq_en[15:14] <= Bus2IP_Data[15:14];
      dac1_slice3_irq_en[13:0]  <= 14'b0;
    end

  // 0x022C Common Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_cmn_en <= 16'h0000;
    end
    else if (bank3_write[139])
    begin
      dac1_cmn_en <= Bus2IP_Data[15:0];
    end

  // 0x0230 Common FIFO Disable
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_fifo_disable <= 16'h0000;
    end
    else if (bank3_write[140])
    begin
      dac1_fifo_disable[0] <= Bus2IP_Data[0];
      dac1_fifo_disable[15:1] <= 15'b0;
    end

  // 0x0300 Reference clock frequency
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_ref_clk_freq <= 32'd6400000;
    end
    else if (bank3_write[192])
    begin
      dac1_ref_clk_freq <= Bus2IP_Data;
    end

  // 0x0304 Sample rate
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_sample_rate <= 32'd6400000;
    end
    else if (bank3_write[193])
    begin
      dac1_sample_rate <= Bus2IP_Data;
    end
    
  // 0x308 Multi-band setting
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      dac1_multi_band   <= 3'b000;
    end
    else if (bank3_write[194])
    begin
      dac1_multi_band   <= Bus2IP_Data[2:0];
    end

  //--------------------- BANK 9 ------------------------------
  // 0x00 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_reset       <= 1'b0;
    end
    else if (bank9_write[0])
    begin
      adc0_reset       <= Bus2IP_Data[0];
    end
    else
    begin
      adc0_reset       <= 1'b0;
    end

  // 0x04 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_restart     <= 1'b0;
    end
    else if (bank9_write[1])
    begin
      adc0_restart     <= Bus2IP_Data[0];
    end
    else
    begin
      adc0_restart     <= 1'b0;
    end

  // 0x08 Start and End stage of POR FSM
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_start_stage <= 4'b0000;
      adc0_end_stage   <= 4'b1111;
    end
   else if (master_reset)
    begin
      adc0_start_stage <= 4'b0000;
      adc0_end_stage    <= 4'b1111;
    end
    else if (bank9_write[2])
    begin
      adc0_end_stage   <= Bus2IP_Data[3:0];
      adc0_start_stage <= Bus2IP_Data[11:8];
    end

  // 0x0100 ADC Sim level
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
`ifdef HS_SIM_SPEEDUP
      adc0_sim_level <= 2'b01;
`else
      adc0_sim_level <= 2'b00;
`endif
    end
    else if (bank9_write[64])
    begin
      adc0_sim_level <= Bus2IP_Data[1:0];
    end

  assign adc0_supply_timer      = (adc0_sim_level == 2'b00) ? 24'h009897 : 24'h000010;
  assign adc0_regulator_timer   = (adc0_sim_level == 2'b00) ? 24'h000C36 : 24'h000010;
  assign adc0_calibration_timer = (adc0_sim_level == 2'b00) ? 24'h003D0A : 24'h000010;
  assign adc0_const_speedup    = (adc0_sim_level[0] == 1'b1) ? 1'b1 : 1'b0;

  // 0x0204 Tile Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_cmn_irq_en <= 1'b1;
      adc03_irq_en    <= 1'b1;
      adc02_irq_en    <= 1'b1;
      adc01_irq_en    <= 1'b1;
      adc00_irq_en    <= 1'b1;
    end
    else if (bank9_write[129])
    begin
      adc0_cmn_irq_en <= Bus2IP_Data[4];
      adc03_irq_en    <= Bus2IP_Data[3];
      adc02_irq_en    <= Bus2IP_Data[2];
      adc01_irq_en    <= Bus2IP_Data[1];
      adc00_irq_en    <= Bus2IP_Data[0];
    end

  // 0x020C Slice 0 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_slice0_irq_en <= 16'hC00C;
    end
    else if (bank9_write[131])
    begin
      adc0_slice0_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc0_slice0_irq_en[13:4]  <= 10'b0;
      adc0_slice0_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc0_slice0_irq_en[1:0]   <= 2'b0;
    end

  // 0x0214 Slice 1 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_slice1_irq_en <= 16'hC00C;
    end
    else if (bank9_write[133])
    begin
      adc0_slice1_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc0_slice1_irq_en[13:4]  <= 10'b0;
      adc0_slice1_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc0_slice1_irq_en[1:0]   <= 2'b0;
    end

  // 0x021C Slice 2 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_slice2_irq_en <= 16'hC00C;
    end
    else if (bank9_write[135])
    begin
      adc0_slice2_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc0_slice2_irq_en[13:4]  <= 10'b0;
      adc0_slice2_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc0_slice2_irq_en[1:0]   <= 2'b0;
    end

  // 0x0224 Slice 3 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_slice3_irq_en <= 16'hC00C;
    end
    else if (bank9_write[137])
    begin
      adc0_slice3_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc0_slice3_irq_en[13:4]  <= 10'b0;
      adc0_slice3_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc0_slice3_irq_en[1:0]   <= 2'b0;
    end

  // 0x022C Common Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_cmn_en <= 16'h0000;
    end
    else if (bank9_write[139])
    begin
      adc0_cmn_en <= Bus2IP_Data[15:0];
    end

  // 0x0230 Common FIFO Disable
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_fifo_disable <= 16'h0000;
    end
    else if (bank9_write[140])
    begin
      adc0_fifo_disable[1:0]  <= Bus2IP_Data[1:0];
      adc0_fifo_disable[15:2] <= 14'b0;
    end

  // 0x0300 Reference clock frequency
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_ref_clk_freq <= 32'd409600;
    end
    else if (bank9_write[192])
    begin
      adc0_ref_clk_freq <= Bus2IP_Data;
    end

  // 0x0304 Sample rate
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_sample_rate <= 32'd4096000;
    end
    else if (bank9_write[193])
    begin
      adc0_sample_rate <= Bus2IP_Data;
    end
    
  // 0x308 Multi-band setting
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc0_multi_band   <= 3'b001;
    end
    else if (bank9_write[194])
    begin
      adc0_multi_band   <= Bus2IP_Data[2:0];
    end


  // 0x0234 Slice 0 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc00_cal_freeze_reg <= 1'b0;
      adc00_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank9_write[141])
    begin
      adc00_cal_freeze_reg <= Bus2IP_Data[0];
      adc00_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0238 Slice 1 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc01_cal_freeze_reg <= 1'b0;
      adc01_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank9_write[142])
    begin
      adc01_cal_freeze_reg <= Bus2IP_Data[0];
      adc01_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x023C Slice 2 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc02_cal_freeze_reg <= 1'b0;
      adc02_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank9_write[143])
    begin
      adc02_cal_freeze_reg <= Bus2IP_Data[0];
      adc02_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0240 Slice 3 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc03_cal_freeze_reg <= 1'b0;
      adc03_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank9_write[144])
    begin
      adc03_cal_freeze_reg <= Bus2IP_Data[0];
      adc03_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  //--------------------- BANK 11 ------------------------------
  // 0x00 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_reset       <= 1'b0;
    end
    else if (bank11_write[0])
    begin
      adc1_reset       <= Bus2IP_Data[0];
    end
    else
    begin
      adc1_reset       <= 1'b0;
    end

  // 0x04 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_restart     <= 1'b0;
    end
    else if (bank11_write[1])
    begin
      adc1_restart     <= Bus2IP_Data[0];
    end
    else
    begin
      adc1_restart     <= 1'b0;
    end

  // 0x08 Start and End stage of POR FSM
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_start_stage <= 4'b0000;
      adc1_end_stage   <= 4'b1111;
    end
   else if (master_reset)
    begin
      adc1_start_stage <= 4'b0000;
      adc1_end_stage    <= 4'b1111;
    end
    else if (bank11_write[2])
    begin
      adc1_end_stage   <= Bus2IP_Data[3:0];
      adc1_start_stage <= Bus2IP_Data[11:8];
    end

  // 0x0100 ADC Sim level
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
`ifdef HS_SIM_SPEEDUP
      adc1_sim_level <= 2'b01;
`else
      adc1_sim_level <= 2'b00;
`endif
    end
    else if (bank11_write[64])
    begin
      adc1_sim_level <= Bus2IP_Data[1:0];
    end

  assign adc1_supply_timer      = (adc1_sim_level == 2'b00) ? 24'h009897 : 24'h000010;
  assign adc1_regulator_timer   = (adc1_sim_level == 2'b00) ? 24'h000C36 : 24'h000010;
  assign adc1_calibration_timer = (adc1_sim_level == 2'b00) ? 24'h003D0A : 24'h000010;
  assign adc1_const_speedup    = (adc1_sim_level[0] == 1'b1) ? 1'b1 : 1'b0;

  // 0x0204 Tile Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_cmn_irq_en <= 1'b1;
      adc13_irq_en    <= 1'b1;
      adc12_irq_en    <= 1'b1;
      adc11_irq_en    <= 1'b1;
      adc10_irq_en    <= 1'b1;
    end
    else if (bank11_write[129])
    begin
      adc1_cmn_irq_en <= Bus2IP_Data[4];
      adc13_irq_en    <= Bus2IP_Data[3];
      adc12_irq_en    <= Bus2IP_Data[2];
      adc11_irq_en    <= Bus2IP_Data[1];
      adc10_irq_en    <= Bus2IP_Data[0];
    end

  // 0x020C Slice 0 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_slice0_irq_en <= 16'hC00C;
    end
    else if (bank11_write[131])
    begin
      adc1_slice0_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc1_slice0_irq_en[13:4]  <= 10'b0;
      adc1_slice0_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc1_slice0_irq_en[1:0]   <= 2'b0;
    end

  // 0x0214 Slice 1 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_slice1_irq_en <= 16'hC00C;
    end
    else if (bank11_write[133])
    begin
      adc1_slice1_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc1_slice1_irq_en[13:4]  <= 10'b0;
      adc1_slice1_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc1_slice1_irq_en[1:0]   <= 2'b0;
    end

  // 0x021C Slice 2 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_slice2_irq_en <= 16'hC00C;
    end
    else if (bank11_write[135])
    begin
      adc1_slice2_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc1_slice2_irq_en[13:4]  <= 10'b0;
      adc1_slice2_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc1_slice2_irq_en[1:0]   <= 2'b0;
    end

  // 0x0224 Slice 3 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_slice3_irq_en <= 16'hC00C;
    end
    else if (bank11_write[137])
    begin
      adc1_slice3_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc1_slice3_irq_en[13:4]  <= 10'b0;
      adc1_slice3_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc1_slice3_irq_en[1:0]   <= 2'b0;
    end

  // 0x022C Common Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_cmn_en <= 16'h0000;
    end
    else if (bank11_write[139])
    begin
      adc1_cmn_en <= Bus2IP_Data[15:0];
    end

  // 0x0230 Common FIFO Disable
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_fifo_disable <= 16'h0000;
    end
    else if (bank11_write[140])
    begin
      adc1_fifo_disable[1:0]  <= Bus2IP_Data[1:0];
      adc1_fifo_disable[15:2] <= 14'b0;
    end

  // 0x0300 Reference clock frequency
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_ref_clk_freq <= 32'd409600;
    end
    else if (bank11_write[192])
    begin
      adc1_ref_clk_freq <= Bus2IP_Data;
    end

  // 0x0304 Sample rate
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_sample_rate <= 32'd4096000;
    end
    else if (bank11_write[193])
    begin
      adc1_sample_rate <= Bus2IP_Data;
    end
    
  // 0x308 Multi-band setting
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc1_multi_band   <= 3'b001;
    end
    else if (bank11_write[194])
    begin
      adc1_multi_band   <= Bus2IP_Data[2:0];
    end


  // 0x0234 Slice 0 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc10_cal_freeze_reg <= 1'b0;
      adc10_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank11_write[141])
    begin
      adc10_cal_freeze_reg <= Bus2IP_Data[0];
      adc10_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0238 Slice 1 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc11_cal_freeze_reg <= 1'b0;
      adc11_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank11_write[142])
    begin
      adc11_cal_freeze_reg <= Bus2IP_Data[0];
      adc11_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x023C Slice 2 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc12_cal_freeze_reg <= 1'b0;
      adc12_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank11_write[143])
    begin
      adc12_cal_freeze_reg <= Bus2IP_Data[0];
      adc12_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0240 Slice 3 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc13_cal_freeze_reg <= 1'b0;
      adc13_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank11_write[144])
    begin
      adc13_cal_freeze_reg <= Bus2IP_Data[0];
      adc13_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  //--------------------- BANK 13 ------------------------------
  // 0x00 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_reset       <= 1'b0;
    end
    else if (bank13_write[0])
    begin
      adc2_reset       <= Bus2IP_Data[0];
    end
    else
    begin
      adc2_reset       <= 1'b0;
    end

  // 0x04 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_restart     <= 1'b0;
    end
    else if (bank13_write[1])
    begin
      adc2_restart     <= Bus2IP_Data[0];
    end
    else
    begin
      adc2_restart     <= 1'b0;
    end

  // 0x08 Start and End stage of POR FSM
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_start_stage <= 4'b0000;
      adc2_end_stage   <= 4'b1111;
    end
   else if (master_reset)
    begin
      adc2_start_stage <= 4'b0000;
      adc2_end_stage    <= 4'b1111;
    end
    else if (bank13_write[2])
    begin
      adc2_end_stage   <= Bus2IP_Data[3:0];
      adc2_start_stage <= Bus2IP_Data[11:8];
    end

  // 0x0100 ADC Sim level
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
`ifdef HS_SIM_SPEEDUP
      adc2_sim_level <= 2'b01;
`else
      adc2_sim_level <= 2'b00;
`endif
    end
    else if (bank13_write[64])
    begin
      adc2_sim_level <= Bus2IP_Data[1:0];
    end

  assign adc2_supply_timer      = (adc2_sim_level == 2'b00) ? 24'h009897 : 24'h000010;
  assign adc2_regulator_timer   = (adc2_sim_level == 2'b00) ? 24'h000C36 : 24'h000010;
  assign adc2_calibration_timer = (adc2_sim_level == 2'b00) ? 24'h003D0A : 24'h000010;
  assign adc2_const_speedup    = (adc2_sim_level[0] == 1'b1) ? 1'b1 : 1'b0;

  // 0x0204 Tile Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_cmn_irq_en <= 1'b1;
      adc23_irq_en    <= 1'b1;
      adc22_irq_en    <= 1'b1;
      adc21_irq_en    <= 1'b1;
      adc20_irq_en    <= 1'b1;
    end
    else if (bank13_write[129])
    begin
      adc2_cmn_irq_en <= Bus2IP_Data[4];
      adc23_irq_en    <= Bus2IP_Data[3];
      adc22_irq_en    <= Bus2IP_Data[2];
      adc21_irq_en    <= Bus2IP_Data[1];
      adc20_irq_en    <= Bus2IP_Data[0];
    end

  // 0x020C Slice 0 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_slice0_irq_en <= 16'hC00C;
    end
    else if (bank13_write[131])
    begin
      adc2_slice0_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc2_slice0_irq_en[13:4]  <= 10'b0;
      adc2_slice0_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc2_slice0_irq_en[1:0]   <= 2'b0;
    end

  // 0x0214 Slice 1 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_slice1_irq_en <= 16'hC00C;
    end
    else if (bank13_write[133])
    begin
      adc2_slice1_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc2_slice1_irq_en[13:4]  <= 10'b0;
      adc2_slice1_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc2_slice1_irq_en[1:0]   <= 2'b0;
    end

  // 0x021C Slice 2 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_slice2_irq_en <= 16'hC00C;
    end
    else if (bank13_write[135])
    begin
      adc2_slice2_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc2_slice2_irq_en[13:4]  <= 10'b0;
      adc2_slice2_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc2_slice2_irq_en[1:0]   <= 2'b0;
    end

  // 0x0224 Slice 3 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_slice3_irq_en <= 16'hC00C;
    end
    else if (bank13_write[137])
    begin
      adc2_slice3_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc2_slice3_irq_en[13:4]  <= 10'b0;
      adc2_slice3_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc2_slice3_irq_en[1:0]   <= 2'b0;
    end

  // 0x022C Common Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_cmn_en <= 16'h0000;
    end
    else if (bank13_write[139])
    begin
      adc2_cmn_en <= Bus2IP_Data[15:0];
    end

  // 0x0230 Common FIFO Disable
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_fifo_disable <= 16'h0000;
    end
    else if (bank13_write[140])
    begin
      adc2_fifo_disable[1:0]  <= Bus2IP_Data[1:0];
      adc2_fifo_disable[15:2] <= 14'b0;
    end

  // 0x0300 Reference clock frequency
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_ref_clk_freq <= 32'd2000000;
    end
    else if (bank13_write[192])
    begin
      adc2_ref_clk_freq <= Bus2IP_Data;
    end

  // 0x0304 Sample rate
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_sample_rate <= 32'd2000000;
    end
    else if (bank13_write[193])
    begin
      adc2_sample_rate <= Bus2IP_Data;
    end
    
  // 0x308 Multi-band setting
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc2_multi_band   <= 3'b000;
    end
    else if (bank13_write[194])
    begin
      adc2_multi_band   <= Bus2IP_Data[2:0];
    end


  // 0x0234 Slice 0 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc20_cal_freeze_reg <= 1'b0;
      adc20_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank13_write[141])
    begin
      adc20_cal_freeze_reg <= Bus2IP_Data[0];
      adc20_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0238 Slice 1 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc21_cal_freeze_reg <= 1'b0;
      adc21_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank13_write[142])
    begin
      adc21_cal_freeze_reg <= Bus2IP_Data[0];
      adc21_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x023C Slice 2 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc22_cal_freeze_reg <= 1'b0;
      adc22_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank13_write[143])
    begin
      adc22_cal_freeze_reg <= Bus2IP_Data[0];
      adc22_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0240 Slice 3 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc23_cal_freeze_reg <= 1'b0;
      adc23_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank13_write[144])
    begin
      adc23_cal_freeze_reg <= Bus2IP_Data[0];
      adc23_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  //--------------------- BANK 15 ------------------------------
  // 0x00 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_reset       <= 1'b0;
    end
    else if (bank15_write[0])
    begin
      adc3_reset       <= Bus2IP_Data[0];
    end
    else
    begin
      adc3_reset       <= 1'b0;
    end

  // 0x04 Reset and Restart signals
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_restart     <= 1'b0;
    end
    else if (bank15_write[1])
    begin
      adc3_restart     <= Bus2IP_Data[0];
    end
    else
    begin
      adc3_restart     <= 1'b0;
    end

  // 0x08 Start and End stage of POR FSM
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_start_stage <= 4'b0000;
      adc3_end_stage   <= 4'b1111;
    end
   else if (master_reset)
    begin
      adc3_start_stage <= 4'b0000;
      adc3_end_stage    <= 4'b1111;
    end
    else if (bank15_write[2])
    begin
      adc3_end_stage   <= Bus2IP_Data[3:0];
      adc3_start_stage <= Bus2IP_Data[11:8];
    end

  // 0x0100 ADC Sim level
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
`ifdef HS_SIM_SPEEDUP
      adc3_sim_level <= 2'b01;
`else
      adc3_sim_level <= 2'b00;
`endif
    end
    else if (bank15_write[64])
    begin
      adc3_sim_level <= Bus2IP_Data[1:0];
    end

  assign adc3_supply_timer      = (adc3_sim_level == 2'b00) ? 24'h009897 : 24'h000010;
  assign adc3_regulator_timer   = (adc3_sim_level == 2'b00) ? 24'h000C36 : 24'h000010;
  assign adc3_calibration_timer = (adc3_sim_level == 2'b00) ? 24'h003D0A : 24'h000010;
  assign adc3_const_speedup    = (adc3_sim_level[0] == 1'b1) ? 1'b1 : 1'b0;

  // 0x0204 Tile Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_cmn_irq_en <= 1'b1;
      adc33_irq_en    <= 1'b1;
      adc32_irq_en    <= 1'b1;
      adc31_irq_en    <= 1'b1;
      adc30_irq_en    <= 1'b1;
    end
    else if (bank15_write[129])
    begin
      adc3_cmn_irq_en <= Bus2IP_Data[4];
      adc33_irq_en    <= Bus2IP_Data[3];
      adc32_irq_en    <= Bus2IP_Data[2];
      adc31_irq_en    <= Bus2IP_Data[1];
      adc30_irq_en    <= Bus2IP_Data[0];
    end

  // 0x020C Slice 0 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_slice0_irq_en <= 16'hC00C;
    end
    else if (bank15_write[131])
    begin
      adc3_slice0_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc3_slice0_irq_en[13:4]  <= 10'b0;
      adc3_slice0_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc3_slice0_irq_en[1:0]   <= 2'b0;
    end

  // 0x0214 Slice 1 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_slice1_irq_en <= 16'hC00C;
    end
    else if (bank15_write[133])
    begin
      adc3_slice1_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc3_slice1_irq_en[13:4]  <= 10'b0;
      adc3_slice1_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc3_slice1_irq_en[1:0]   <= 2'b0;
    end

  // 0x021C Slice 2 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_slice2_irq_en <= 16'hC00C;
    end
    else if (bank15_write[135])
    begin
      adc3_slice2_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc3_slice2_irq_en[13:4]  <= 10'b0;
      adc3_slice2_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc3_slice2_irq_en[1:0]   <= 2'b0;
    end

  // 0x0224 Slice 3 Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_slice3_irq_en <= 16'hC00C;
    end
    else if (bank15_write[137])
    begin
      adc3_slice3_irq_en[15:14] <= Bus2IP_Data[15:14];
      adc3_slice3_irq_en[13:4]  <= 10'b0;
      adc3_slice3_irq_en[3:2]   <= Bus2IP_Data[3:2];
      adc3_slice3_irq_en[1:0]   <= 2'b0;
    end

  // 0x022C Common Interrupt Enables
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_cmn_en <= 16'h0000;
    end
    else if (bank15_write[139])
    begin
      adc3_cmn_en <= Bus2IP_Data[15:0];
    end

  // 0x0230 Common FIFO Disable
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_fifo_disable <= 16'h0000;
    end
    else if (bank15_write[140])
    begin
      adc3_fifo_disable[1:0]  <= Bus2IP_Data[1:0];
      adc3_fifo_disable[15:2] <= 14'b0;
    end

  // 0x0300 Reference clock frequency
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_ref_clk_freq <= 32'd2000000;
    end
    else if (bank15_write[192])
    begin
      adc3_ref_clk_freq <= Bus2IP_Data;
    end

  // 0x0304 Sample rate
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_sample_rate <= 32'd2000000;
    end
    else if (bank15_write[193])
    begin
      adc3_sample_rate <= Bus2IP_Data;
    end
    
  // 0x308 Multi-band setting
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc3_multi_band   <= 3'b000;
    end
    else if (bank15_write[194])
    begin
      adc3_multi_band   <= Bus2IP_Data[2:0];
    end


  // 0x0234 Slice 0 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc30_cal_freeze_reg <= 1'b0;
      adc30_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank15_write[141])
    begin
      adc30_cal_freeze_reg <= Bus2IP_Data[0];
      adc30_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0238 Slice 1 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc31_cal_freeze_reg <= 1'b0;
      adc31_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank15_write[142])
    begin
      adc31_cal_freeze_reg <= Bus2IP_Data[0];
      adc31_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x023C Slice 2 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc32_cal_freeze_reg <= 1'b0;
      adc32_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank15_write[143])
    begin
      adc32_cal_freeze_reg <= Bus2IP_Data[0];
      adc32_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // 0x0240 Slice 3 Calibration freeze
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      adc33_cal_freeze_reg <= 1'b0;
      adc33_disable_cal_freeze_input <= 1'b0;
    end
    else if (bank15_write[144])
    begin
      adc33_cal_freeze_reg <= Bus2IP_Data[0];
      adc33_disable_cal_freeze_input <= Bus2IP_Data[2];
    end

  // Always provide data and address to DRP
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn)
    begin
      drp_di       <= 16'h0000;
      drp_addr     <= 12'h000;
    end
    else
    begin
      drp_di       <= Bus2IP_Data[15:0];
      drp_addr     <= {1'b0, Bus2IP_Addr[12:2]};
    end

  // Synchronize all Interrupts to axi clk domain
  design_1_usp_rf_data_converter_0_0_irq_sync i_design_1_usp_rf_data_converter_0_0_irq_sync (
    .dac00_irq          (dac00_stat[15:14]),
    .dac00_irq_sync     (dac00_stat_sync),

    .dac01_irq          (dac01_stat[15:14]),
    .dac01_irq_sync     (dac01_stat_sync),

    .dac02_irq          (dac02_stat[15:14]),
    .dac02_irq_sync     (dac02_stat_sync),

    .dac03_irq          (dac03_stat[15:14]),
    .dac03_irq_sync     (dac03_stat_sync),

    .dac10_irq          (dac10_stat[15:14]),
    .dac10_irq_sync     (dac10_stat_sync),

    .dac11_irq          (dac11_stat[15:14]),
    .dac11_irq_sync     (dac11_stat_sync),

    .dac12_irq          (dac12_stat[15:14]),
    .dac12_irq_sync     (dac12_stat_sync),

    .dac13_irq          (dac13_stat[15:14]),
    .dac13_irq_sync     (dac13_stat_sync),

    .adc00_irq          ({adc00_stat[15:14],adc00_stat[3:2]}),
    .adc00_irq_sync     (adc00_stat_sync),

    .adc01_irq          ({adc01_stat[15:14],adc01_stat[3:2]}),
    .adc01_irq_sync     (adc01_stat_sync),

    .adc02_irq          ({adc02_stat[15:14],adc02_stat[3:2]}),
    .adc02_irq_sync     (adc02_stat_sync),

    .adc03_irq          ({adc03_stat[15:14],adc03_stat[3:2]}),
    .adc03_irq_sync     (adc03_stat_sync),

    .adc10_irq          ({adc10_stat[15:14],adc10_stat[3:2]}),
    .adc10_irq_sync     (adc10_stat_sync),

    .adc11_irq          ({adc11_stat[15:14],adc11_stat[3:2]}),
    .adc11_irq_sync     (adc11_stat_sync),

    .adc12_irq          ({adc12_stat[15:14],adc12_stat[3:2]}),
    .adc12_irq_sync     (adc12_stat_sync),

    .adc13_irq          ({adc13_stat[15:14],adc13_stat[3:2]}),
    .adc13_irq_sync     (adc13_stat_sync),

    .adc20_irq          ({adc20_stat[15:14],adc20_stat[3:2]}),
    .adc20_irq_sync     (adc20_stat_sync),

    .adc21_irq          ({adc21_stat[15:14],adc21_stat[3:2]}),
    .adc21_irq_sync     (adc21_stat_sync),

    .adc22_irq          ({adc22_stat[15:14],adc22_stat[3:2]}),
    .adc22_irq_sync     (adc22_stat_sync),

    .adc23_irq          ({adc23_stat[15:14],adc23_stat[3:2]}),
    .adc23_irq_sync     (adc23_stat_sync),

    .adc30_irq          ({adc30_stat[15:14],adc30_stat[3:2]}),
    .adc30_irq_sync     (adc30_stat_sync),

    .adc31_irq          ({adc31_stat[15:14],adc31_stat[3:2]}),
    .adc31_irq_sync     (adc31_stat_sync),

    .adc32_irq          ({adc32_stat[15:14],adc32_stat[3:2]}),
    .adc32_irq_sync     (adc32_stat_sync),

    .adc33_irq          ({adc33_stat[15:14],adc33_stat[3:2]}),
    .adc33_irq_sync     (adc33_stat_sync),

    .dest_clk           (Bus2IP_Clk)
  );

  // Generate the Interrupt status for each converter in DAC Tile0
  assign dac00_irq_i    = (dac00_stat_sync & dac0_slice0_irq_en[15:14]);
  assign dac01_irq_i    = (dac01_stat_sync & dac0_slice1_irq_en[15:14]);
  assign dac02_irq_i    = (dac02_stat_sync & dac0_slice2_irq_en[15:14]);
  assign dac03_irq_i    = (dac03_stat_sync & dac0_slice3_irq_en[15:14]);

  // Generate the Interrupt status for each converter in DAC Tile1
  assign dac10_irq_i    = (dac10_stat_sync & dac1_slice0_irq_en[15:14]);
  assign dac11_irq_i    = (dac11_stat_sync & dac1_slice1_irq_en[15:14]);
  assign dac12_irq_i    = (dac12_stat_sync & dac1_slice2_irq_en[15:14]);
  assign dac13_irq_i    = (dac13_stat_sync & dac1_slice3_irq_en[15:14]);


  design_1_usp_rf_data_converter_0_0_powerup_state_irq i_design_1_usp_rf_data_converter_0_0_powerup_state_irq(
    .adc0_read_req            (bank9_read[128]),
    .adc0_powerup_state_in    (adc0_powerup_state_interrupt),
    .adc0_powerup_state_ack   (adc0_powerup_state_ack),
    .adc0_powerup_state_out   (adc0_powerup_state_irq),

    .adc1_read_req            (bank11_read[128]),
    .adc1_powerup_state_in    (adc1_powerup_state_interrupt),
    .adc1_powerup_state_ack   (adc1_powerup_state_ack),
    .adc1_powerup_state_out   (adc1_powerup_state_irq),

    .adc2_read_req            (bank13_read[128]),
    .adc2_powerup_state_in    (adc2_powerup_state_interrupt),
    .adc2_powerup_state_ack   (adc2_powerup_state_ack),
    .adc2_powerup_state_out   (adc2_powerup_state_irq),

    .adc3_read_req            (bank15_read[128]),
    .adc3_powerup_state_in    (adc3_powerup_state_interrupt),
    .adc3_powerup_state_ack   (adc3_powerup_state_ack),
    .adc3_powerup_state_out   (adc3_powerup_state_irq),

    .dac0_read_req            (bank1_read[128]),
    .dac0_powerup_state_in    (dac0_powerup_state_interrupt),
    .dac0_powerup_state_ack   (dac0_powerup_state_ack),
    .dac0_powerup_state_out   (dac0_powerup_state_irq),

    .dac1_read_req            (bank3_read[128]),
    .dac1_powerup_state_in    (dac1_powerup_state_interrupt),
    .dac1_powerup_state_ack   (dac1_powerup_state_ack),
    .dac1_powerup_state_out   (dac1_powerup_state_irq),

    .adc0_restart             (adc0_restart),
    .adc1_restart             (adc1_restart),
    .adc2_restart             (adc2_restart),
    .adc3_restart             (adc3_restart),
    .dac0_restart             (dac0_restart),
    .dac1_restart             (dac1_restart),
    .clk                               (Bus2IP_Clk),
    .rst                               (~Bus2IP_Resetn)
  );

  design_1_usp_rf_data_converter_0_0_overvol_irq i_design_1_usp_rf_data_converter_0_0_overvol_irq(
    .adc00_read_req         (bank9_read[130]),
    .adc00_overvol_in       (adc00_stat_sync[0]),
    .adc00_ack              (adc00_overvol_ack),
    .adc00_overvol_out      (adc00_overvol_irq),

    .adc01_read_req         (bank9_read[132]),
    .adc01_overvol_in       (adc01_stat_sync[0]),
    .adc01_ack              (adc01_overvol_ack),
    .adc01_overvol_out      (adc01_overvol_irq),

    .adc02_read_req         (bank9_read[134]),
    .adc02_overvol_in       (adc02_stat_sync[0]),
    .adc02_ack              (adc02_overvol_ack),
    .adc02_overvol_out      (adc02_overvol_irq),

    .adc03_read_req         (bank9_read[136]),
    .adc03_overvol_in       (adc03_stat_sync[0]),
    .adc03_ack              (adc03_overvol_ack),
    .adc03_overvol_out      (adc03_overvol_irq),

    .adc10_read_req         (bank11_read[130]),
    .adc10_overvol_in       (adc10_stat_sync[0]),
    .adc10_ack              (adc10_overvol_ack),
    .adc10_overvol_out      (adc10_overvol_irq),

    .adc11_read_req         (bank11_read[132]),
    .adc11_overvol_in       (adc11_stat_sync[0]),
    .adc11_ack              (adc11_overvol_ack),
    .adc11_overvol_out      (adc11_overvol_irq),

    .adc12_read_req         (bank11_read[134]),
    .adc12_overvol_in       (adc12_stat_sync[0]),
    .adc12_ack              (adc12_overvol_ack),
    .adc12_overvol_out      (adc12_overvol_irq),

    .adc13_read_req         (bank11_read[136]),
    .adc13_overvol_in       (adc13_stat_sync[0]),
    .adc13_ack              (adc13_overvol_ack),
    .adc13_overvol_out      (adc13_overvol_irq),

    .adc20_read_req         (bank13_read[130]),
    .adc20_overvol_in       (adc20_stat_sync[0]),
    .adc20_ack              (adc20_overvol_ack),
    .adc20_overvol_out      (adc20_overvol_irq),

    .adc21_read_req         (bank13_read[132]),
    .adc21_overvol_in       (adc21_stat_sync[0]),
    .adc21_ack              (adc21_overvol_ack),
    .adc21_overvol_out      (adc21_overvol_irq),

    .adc22_read_req         (bank13_read[134]),
    .adc22_overvol_in       (adc22_stat_sync[0]),
    .adc22_ack              (adc22_overvol_ack),
    .adc22_overvol_out      (adc22_overvol_irq),

    .adc23_read_req         (bank13_read[136]),
    .adc23_overvol_in       (adc23_stat_sync[0]),
    .adc23_ack              (adc23_overvol_ack),
    .adc23_overvol_out      (adc23_overvol_irq),

    .adc30_read_req         (bank15_read[130]),
    .adc30_overvol_in       (adc30_stat_sync[0]),
    .adc30_ack              (adc30_overvol_ack),
    .adc30_overvol_out      (adc30_overvol_irq),

    .adc31_read_req         (bank15_read[132]),
    .adc31_overvol_in       (adc31_stat_sync[0]),
    .adc31_ack              (adc31_overvol_ack),
    .adc31_overvol_out      (adc31_overvol_irq),

    .adc32_read_req         (bank15_read[134]),
    .adc32_overvol_in       (adc32_stat_sync[0]),
    .adc32_ack              (adc32_overvol_ack),
    .adc32_overvol_out      (adc32_overvol_irq),

    .adc33_read_req         (bank15_read[136]),
    .adc33_overvol_in       (adc33_stat_sync[0]),
    .adc33_ack              (adc33_overvol_ack),
    .adc33_overvol_out      (adc33_overvol_irq),

    .adc0_done              (adc0_done_i),
    .adc1_done              (adc1_done_i),
    .adc2_done              (adc2_done_i),
    .adc3_done              (adc3_done_i),
    .clk                    (Bus2IP_Clk),
    .rst                    (~Bus2IP_Resetn)
  );

  // Generate the Interrupt status for each converter in ADC Tile0
  assign adc00_irq_i    = ({adc00_stat_sync[3:1], adc00_overvol_irq} & {adc0_slice0_irq_en[15:14], adc0_slice0_irq_en[3:2]});
  assign adc01_irq_i    = ({adc01_stat_sync[3:1], adc01_overvol_irq} & {adc0_slice1_irq_en[15:14], adc0_slice1_irq_en[3:2]});
  assign adc02_irq_i    = ({adc02_stat_sync[3:1], adc02_overvol_irq} & {adc0_slice2_irq_en[15:14], adc0_slice2_irq_en[3:2]});
  assign adc03_irq_i    = ({adc03_stat_sync[3:1], adc03_overvol_irq} & {adc0_slice3_irq_en[15:14], adc0_slice3_irq_en[3:2]});

  // Generate the Interrupt status for each converter in ADC Tile1
  assign adc10_irq_i    = ({adc10_stat_sync[3:1], adc10_overvol_irq} & {adc1_slice0_irq_en[15:14], adc1_slice0_irq_en[3:2]});
  assign adc11_irq_i    = ({adc11_stat_sync[3:1], adc11_overvol_irq} & {adc1_slice1_irq_en[15:14], adc1_slice1_irq_en[3:2]});
  assign adc12_irq_i    = ({adc12_stat_sync[3:1], adc12_overvol_irq} & {adc1_slice2_irq_en[15:14], adc1_slice2_irq_en[3:2]});
  assign adc13_irq_i    = ({adc13_stat_sync[3:1], adc13_overvol_irq} & {adc1_slice3_irq_en[15:14], adc1_slice3_irq_en[3:2]});

  // Generate the Interrupt status for each converter in ADC Tile2
  assign adc20_irq_i    = ({adc20_stat_sync[3:1], adc20_overvol_irq} & {adc2_slice0_irq_en[15:14], adc2_slice0_irq_en[3:2]});
  assign adc21_irq_i    = ({adc21_stat_sync[3:1], adc21_overvol_irq} & {adc2_slice1_irq_en[15:14], adc2_slice1_irq_en[3:2]});
  assign adc22_irq_i    = ({adc22_stat_sync[3:1], adc22_overvol_irq} & {adc2_slice2_irq_en[15:14], adc2_slice2_irq_en[3:2]});
  assign adc23_irq_i    = ({adc23_stat_sync[3:1], adc23_overvol_irq} & {adc2_slice3_irq_en[15:14], adc2_slice3_irq_en[3:2]});

  // Generate the Interrupt status for each converter in ADC Tile3
  assign adc30_irq_i    = ({adc30_stat_sync[3:1], adc30_overvol_irq} & {adc3_slice0_irq_en[15:14], adc3_slice0_irq_en[3:2]});
  assign adc31_irq_i    = ({adc31_stat_sync[3:1], adc31_overvol_irq} & {adc3_slice1_irq_en[15:14], adc3_slice1_irq_en[3:2]});
  assign adc32_irq_i    = ({adc32_stat_sync[3:1], adc32_overvol_irq} & {adc3_slice2_irq_en[15:14], adc3_slice2_irq_en[3:2]});
  assign adc33_irq_i    = ({adc33_stat_sync[3:1], adc33_overvol_irq} & {adc3_slice3_irq_en[15:14], adc3_slice3_irq_en[3:2]});


  // Generate the Interrupt status for each Tile based on the enable signals
  assign dac0_irq[4]     = (dac0_powerup_state_irq & dac0_cmn_irq_en);
  assign dac0_irq[3]     = (|dac03_irq_i & dac03_irq_en);
  assign dac0_irq[2]     = (|dac02_irq_i & dac02_irq_en);
  assign dac0_irq[1]     = (|dac01_irq_i & dac01_irq_en);
  assign dac0_irq[0]     = (|dac00_irq_i & dac00_irq_en);

  assign dac1_irq[4]     = (dac1_powerup_state_irq & dac1_cmn_irq_en);
  assign dac1_irq[3]     = (|dac13_irq_i & dac13_irq_en);
  assign dac1_irq[2]     = (|dac12_irq_i & dac12_irq_en);
  assign dac1_irq[1]     = (|dac11_irq_i & dac11_irq_en);
  assign dac1_irq[0]     = (|dac10_irq_i & dac10_irq_en);


  assign adc0_irq[4]     = (adc0_powerup_state_irq & adc0_cmn_irq_en);
  assign adc0_irq[3]     = (|adc03_irq_i & adc03_irq_en);
  assign adc0_irq[2]     = (|adc02_irq_i & adc02_irq_en);
  assign adc0_irq[1]     = (|adc01_irq_i & adc01_irq_en);
  assign adc0_irq[0]     = (|adc00_irq_i & adc00_irq_en);

  assign adc1_irq[4]     = (adc1_powerup_state_irq & adc1_cmn_irq_en);
  assign adc1_irq[3]     = (|adc13_irq_i & adc13_irq_en);
  assign adc1_irq[2]     = (|adc12_irq_i & adc12_irq_en);
  assign adc1_irq[1]     = (|adc11_irq_i & adc11_irq_en);
  assign adc1_irq[0]     = (|adc10_irq_i & adc10_irq_en);

  assign adc2_irq[4]     = (adc2_powerup_state_irq & adc2_cmn_irq_en);
  assign adc2_irq[3]     = (|adc23_irq_i & adc23_irq_en);
  assign adc2_irq[2]     = (|adc22_irq_i & adc22_irq_en);
  assign adc2_irq[1]     = (|adc21_irq_i & adc21_irq_en);
  assign adc2_irq[0]     = (|adc20_irq_i & adc20_irq_en);

  assign adc3_irq[4]     = (adc3_powerup_state_irq & adc3_cmn_irq_en);
  assign adc3_irq[3]     = (|adc33_irq_i & adc33_irq_en);
  assign adc3_irq[2]     = (|adc32_irq_i & adc32_irq_en);
  assign adc3_irq[1]     = (|adc31_irq_i & adc31_irq_en);
  assign adc3_irq[0]     = (|adc30_irq_i & adc30_irq_en);


  // Register Bank 0 : 0x00000 - 0x1FFFC : Control/Status
  assign IP2Bus_Data_control = bank0_read[0] ? {8'd2, 8'd6, 8'd9, 8'h00} :
                               bank0_read[1] ? {31'b0, master_reset} :
                               bank0_read[2] ? {16'b0, startup_delay} :
                               bank0_read[8] ? {16'b0, 8'd228, 7'b0, 1'b1} :
                               // DAC Tile Config Bit 0:DAC Tile 0 Enable, Bit 1 Tile 0 PLL Enable Bits 3:2 Reserved, Bit 4: DAC Tile 1 Enabled, Bit 5: Tile 1 PLL Enable Bits 7:6 Reserved...
                               bank0_read[9] ? {4'h0, 2'b00, 1'b0, 1'b0, 2'b00, 1'b0, 1'b0, 2'b00, 1'b0, 1'b0, 2'b00, 1'b1, 1'b1} :
                               bank0_read[10] ? {3'b000, dac01_sinc, 2'b00, dac01_mixer, dac01_interpolation, dac01_data_type, dac01_enable,  3'b000, dac00_sinc, 2'b00, dac00_mixer, dac00_interpolation, dac00_data_type, dac00_enable} :
                               bank0_read[11] ? {3'b000, dac03_sinc, 2'b00, dac03_mixer, dac03_interpolation, dac03_data_type, dac03_enable,  3'b000, dac02_sinc, 2'b00, dac02_mixer, dac02_interpolation, dac02_data_type, dac02_enable} :
                               bank0_read[12] ? {3'b000, dac11_sinc, 2'b00, dac11_mixer, dac11_interpolation, dac11_data_type, dac11_enable,  3'b000, dac10_sinc, 2'b00, dac10_mixer, dac10_interpolation, dac10_data_type, dac10_enable} :
                               bank0_read[13] ? {3'b000, dac13_sinc, 2'b00, dac13_mixer, dac13_interpolation, dac13_data_type, dac13_enable,  3'b000, dac12_sinc, 2'b00, dac12_mixer, dac12_interpolation, dac12_data_type, dac12_enable} :
                               // ADC Tile Config Bit 0:ADC Tile 0 Enable, Bit 1 ADC Tile 0 PLL Enable Bits 3:2 Reserved, Bit 4: ADC Tile 1 Enabled, Bit 5: ADC Tile 1 PLL Enable Bits 7:6 Reserved...
                               bank0_read[25] ? {4'h0, 2'b00, 1'b0, 1'b0, 2'b00, 1'b0, 1'b0, 2'b00, 1'b1, 1'b1, 2'b00, 1'b1, 1'b1} :
                               bank0_read[26] ? {6'b0, adc01_mixer, adc01_decimation, adc01_data_type, adc01_enable,  6'b0, adc00_mixer, adc00_decimation, adc00_data_type, adc00_enable} :
                               bank0_read[27] ? {6'b0, adc03_mixer, adc03_decimation, adc03_data_type, adc03_enable,  6'b0, adc02_mixer, adc02_decimation, adc02_data_type, adc02_enable} :
                               bank0_read[28] ? {6'b0, adc11_mixer, adc11_decimation, adc11_data_type, adc11_enable,  6'b0, adc10_mixer, adc10_decimation, adc10_data_type, adc10_enable} :
                               bank0_read[29] ? {6'b0, adc13_mixer, adc13_decimation, adc13_data_type, adc13_enable,  6'b0, adc12_mixer, adc12_decimation, adc12_data_type, adc12_enable} :
                               bank0_read[30] ? {6'b0, adc21_mixer, adc21_decimation, adc21_data_type, adc21_enable,  6'b0, adc20_mixer, adc20_decimation, adc20_data_type, adc20_enable} :
                               bank0_read[31] ? {6'b0, adc23_mixer, adc23_decimation, adc23_data_type, adc23_enable,  6'b0, adc22_mixer, adc22_decimation, adc22_data_type, adc22_enable} :
                               bank0_read[32] ? {6'b0, adc31_mixer, adc31_decimation, adc31_data_type, adc31_enable,  6'b0, adc30_mixer, adc30_decimation, adc30_data_type, adc30_enable} :
                               bank0_read[33] ? {6'b0, adc33_mixer, adc33_decimation, adc33_data_type, adc33_enable,  6'b0, adc32_mixer, adc32_decimation, adc32_data_type, adc32_enable} :
                               bank0_read[40] ? {24'h000000, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1} :
                               bank0_read[41] ? {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1} :
                               bank0_read[42] ? {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1} :
                               bank0_read[64] ? tile_irq2axi :
                               bank0_read[65] ? {axi_timeout_en, 23'b0, adc3_irq_en, adc2_irq_en, adc1_irq_en, adc0_irq_en, 2'b00, dac1_irq_en, dac0_irq_en} :
                               32'h00000000;

  // Register Bank 1: DAC Tile 0 Control and Status
  assign IP2Bus_Data_DAC0_Control = bank1_read[0]    ? {31'b0, dac0_reset} :
                                    bank1_read[1]    ? {31'b0, ~dac0_done_i} :
                                    bank1_read[2]    ? {20'b0, dac0_start_stage, 4'h0, dac0_end_stage} :
                                    bank1_read[3]    ? {28'b0, dac0_current_stage} :
                                    bank1_read[14]   ? {24'b0, dac0_reset_cnt} :
                                    bank1_read[64]   ? {30'b0, dac0_sim_level} :
                                    bank1_read[128]  ? {28'b0, dac0_irq} :
                                    bank1_read[129]  ? {27'b0, dac0_cmn_irq_en, dac03_irq_en, dac02_irq_en, dac01_irq_en, dac00_irq_en} :
                                    bank1_read[130]  ? {16'h0000, dac00_irq_i, 14'h0000} :
                                    bank1_read[131]  ? {16'h0000, dac0_slice0_irq_en} :
                                    bank1_read[132]  ? {16'h0000, dac01_irq_i, 14'h0000} :
                                    bank1_read[133]  ? {16'h0000, dac0_slice1_irq_en} :
                                    bank1_read[134]  ? {16'h0000, dac02_irq_i, 14'h0000} :
                                    bank1_read[135]  ? {16'h0000, dac0_slice2_irq_en} :
                                    bank1_read[136]  ? {16'h0000, dac03_irq_i, 14'h0000} :
                                    bank1_read[137]  ? {16'h0000, dac0_slice3_irq_en} :
                                    bank1_read[138]  ? {16'h0000, dac0_common_stat} :
                                    bank1_read[139]  ? {16'h0000, dac0_cmn_en} :
                                    bank1_read[140]  ? {16'h0000, dac0_fifo_disable} :
                                    bank1_read[192]  ? dac0_ref_clk_freq :
                                    bank1_read[193]  ? dac0_sample_rate :
                                    bank1_read[194]  ? {29'b0, dac0_multi_band} :
                                    32'h00000000;

  // Register Bank 3: DAC Tile 0 DRP
  assign IP2Bus_Data_DAC0_DRP =     bank2_read ? dac0_drp_do :
                                    16'h0000;

  // Register Bank 3: DAC Tile 1 Control and Status
  assign IP2Bus_Data_DAC1_Control = bank3_read[0]    ? {31'b0, dac1_reset} :
                                    bank3_read[1]    ? {31'b0, ~dac1_done_i} :
                                    bank3_read[2]    ? {20'b0, dac1_start_stage, 4'h0, dac1_end_stage} :
                                    bank3_read[3]    ? {28'b0, dac1_current_stage} :
                                    bank3_read[14]   ? {24'b0, dac1_reset_cnt} :
                                    bank3_read[64]   ? {30'b0, dac1_sim_level} :
                                    bank3_read[128]  ? {28'b0, dac1_irq} :
                                    bank3_read[129]  ? {27'b0, dac1_cmn_irq_en, dac13_irq_en, dac12_irq_en, dac11_irq_en, dac10_irq_en} :
                                    bank3_read[130]  ? {16'h0000, dac10_irq_i, 14'h0000} :
                                    bank3_read[131]  ? {16'h0000, dac1_slice0_irq_en} :
                                    bank3_read[132]  ? {16'h0000, dac11_irq_i, 14'h0000} :
                                    bank3_read[133]  ? {16'h0000, dac1_slice1_irq_en} :
                                    bank3_read[134]  ? {16'h0000, dac12_irq_i, 14'h0000} :
                                    bank3_read[135]  ? {16'h0000, dac1_slice2_irq_en} :
                                    bank3_read[136]  ? {16'h0000, dac13_irq_i, 14'h0000} :
                                    bank3_read[137]  ? {16'h0000, dac1_slice3_irq_en} :
                                    bank3_read[138]  ? {16'h0000, dac1_common_stat} :
                                    bank3_read[139]  ? {16'h0000, dac1_cmn_en} :
                                    bank3_read[140]  ? {16'h0000, dac1_fifo_disable} :
                                    bank3_read[192]  ? dac1_ref_clk_freq :
                                    bank3_read[193]  ? dac1_sample_rate :
                                    bank3_read[194]  ? {29'b0, dac1_multi_band} :
                                    32'h00000000;

  // Register Bank 5: DAC Tile 1 DRP
  assign IP2Bus_Data_DAC1_DRP =     bank4_read ? dac1_drp_do :
                                    16'h0000;

  // Register Bank 9: ADC Tile 0 Control and Status
  assign IP2Bus_Data_ADC0_Control = bank9_read[0]   ? {31'b0, adc0_reset} :
                                    bank9_read[1]    ? {31'b0, ~adc0_done_i} :
                                    bank9_read[2]    ? {20'b0, adc0_start_stage, 4'h0, adc0_end_stage} :
                                    bank9_read[3]    ? {28'b0, adc0_current_stage} :
                                    bank9_read[14]   ? {24'b0, adc0_reset_cnt} :
                                    bank9_read[64]   ? {30'b0, adc0_sim_level} :
                                    bank9_read[128]  ? {28'b0, adc0_irq} :
                                    bank9_read[129]  ? {27'b0, adc0_cmn_irq_en, adc03_irq_en, adc02_irq_en, adc01_irq_en, adc00_irq_en} :
                                    bank9_read[130]  ? {16'h0000, adc00_irq_i[3:2], 10'h000, adc00_irq_i[1:0], 2'b00} :
                                    bank9_read[131]  ? {16'h0000, adc0_slice0_irq_en} :
                                    bank9_read[132]  ? {16'h0000, adc01_irq_i[3:2], 10'h000, adc01_irq_i[1:0], 2'b00} :
                                    bank9_read[133]  ? {16'h0000, adc0_slice1_irq_en} :
                                    bank9_read[134]  ? {16'h0000, adc02_irq_i[3:2], 10'h000, adc02_irq_i[1:0], 2'b00} :
                                    bank9_read[135]  ? {16'h0000, adc0_slice2_irq_en} :
                                    bank9_read[136]  ? {16'h0000, adc03_irq_i[3:2], 10'h000, adc03_irq_i[1:0], 2'b00} :
                                    bank9_read[137]  ? {16'h0000, adc0_slice3_irq_en} :
                                    bank9_read[138]  ? {16'h0000, adc0_common_stat} :
                                    bank9_read[139]  ? {16'h0000, adc0_cmn_en} :
                                    bank9_read[140]  ? {16'h0000, adc0_fifo_disable} :
                                    bank9_read[141]  ? {29'b0, adc00_disable_cal_freeze_input, adc00_cal_frozen, adc00_cal_freeze_reg} :
      
                                    bank9_read[192]  ? adc0_ref_clk_freq :
                                    bank9_read[193]  ? adc0_sample_rate :
                                    bank9_read[194]  ? {29'b0, adc0_multi_band} :
                                    32'h00000000;


  // Register Bank 11: ADC Tile 0 DRP
  assign IP2Bus_Data_ADC0_DRP =     bank10_read ? adc0_drp_do :
                                    16'h0000;

  // Register Bank 11: ADC Tile 1 Control and Status
  assign IP2Bus_Data_ADC1_Control = bank11_read[0]   ? {31'b0, adc1_reset} :
                                    bank11_read[1]    ? {31'b0, ~adc1_done_i} :
                                    bank11_read[2]    ? {20'b0, adc1_start_stage, 4'h0, adc1_end_stage} :
                                    bank11_read[3]    ? {28'b0, adc1_current_stage} :
                                    bank11_read[14]   ? {24'b0, adc1_reset_cnt} :
                                    bank11_read[64]   ? {30'b0, adc1_sim_level} :
                                    bank11_read[128]  ? {28'b0, adc1_irq} :
                                    bank11_read[129]  ? {27'b0, adc1_cmn_irq_en, adc13_irq_en, adc12_irq_en, adc11_irq_en, adc10_irq_en} :
                                    bank11_read[130]  ? {16'h0000, adc10_irq_i[3:2], 10'h000, adc10_irq_i[1:0], 2'b00} :
                                    bank11_read[131]  ? {16'h0000, adc1_slice0_irq_en} :
                                    bank11_read[132]  ? {16'h0000, adc11_irq_i[3:2], 10'h000, adc11_irq_i[1:0], 2'b00} :
                                    bank11_read[133]  ? {16'h0000, adc1_slice1_irq_en} :
                                    bank11_read[134]  ? {16'h0000, adc12_irq_i[3:2], 10'h000, adc12_irq_i[1:0], 2'b00} :
                                    bank11_read[135]  ? {16'h0000, adc1_slice2_irq_en} :
                                    bank11_read[136]  ? {16'h0000, adc13_irq_i[3:2], 10'h000, adc13_irq_i[1:0], 2'b00} :
                                    bank11_read[137]  ? {16'h0000, adc1_slice3_irq_en} :
                                    bank11_read[138]  ? {16'h0000, adc1_common_stat} :
                                    bank11_read[139]  ? {16'h0000, adc1_cmn_en} :
                                    bank11_read[140]  ? {16'h0000, adc1_fifo_disable} :
                                    bank11_read[141]  ? {29'b0, adc10_disable_cal_freeze_input, adc10_cal_frozen, adc10_cal_freeze_reg} :
      
                                    bank11_read[192]  ? adc1_ref_clk_freq :
                                    bank11_read[193]  ? adc1_sample_rate :
                                    bank11_read[194]  ? {29'b0, adc1_multi_band} :
                                    32'h00000000;


  // Register Bank 13: ADC Tile 1 DRP
  assign IP2Bus_Data_ADC1_DRP =     bank12_read ? adc1_drp_do :
                                    16'h0000;

  // Register Bank 13: ADC Tile 2 Control and Status
  assign IP2Bus_Data_ADC2_Control = bank13_read[0]   ? {31'b0, adc2_reset} :
                                    bank13_read[1]    ? {31'b0, ~adc2_done_i} :
                                    bank13_read[2]    ? {20'b0, adc2_start_stage, 4'h0, adc2_end_stage} :
                                    bank13_read[3]    ? {28'b0, adc2_current_stage} :
                                    bank13_read[14]   ? {24'b0, adc2_reset_cnt} :
                                    bank13_read[64]   ? {30'b0, adc2_sim_level} :
                                    bank13_read[128]  ? {28'b0, adc2_irq} :
                                    bank13_read[129]  ? {27'b0, adc2_cmn_irq_en, adc23_irq_en, adc22_irq_en, adc21_irq_en, adc20_irq_en} :
                                    bank13_read[130]  ? {16'h0000, adc20_irq_i[3:2], 10'h000, adc20_irq_i[1:0], 2'b00} :
                                    bank13_read[131]  ? {16'h0000, adc2_slice0_irq_en} :
                                    bank13_read[132]  ? {16'h0000, adc21_irq_i[3:2], 10'h000, adc21_irq_i[1:0], 2'b00} :
                                    bank13_read[133]  ? {16'h0000, adc2_slice1_irq_en} :
                                    bank13_read[134]  ? {16'h0000, adc22_irq_i[3:2], 10'h000, adc22_irq_i[1:0], 2'b00} :
                                    bank13_read[135]  ? {16'h0000, adc2_slice2_irq_en} :
                                    bank13_read[136]  ? {16'h0000, adc23_irq_i[3:2], 10'h000, adc23_irq_i[1:0], 2'b00} :
                                    bank13_read[137]  ? {16'h0000, adc2_slice3_irq_en} :
                                    bank13_read[138]  ? {16'h0000, adc2_common_stat} :
                                    bank13_read[139]  ? {16'h0000, adc2_cmn_en} :
                                    bank13_read[140]  ? {16'h0000, adc2_fifo_disable} :
      
                                    bank13_read[192]  ? adc2_ref_clk_freq :
                                    bank13_read[193]  ? adc2_sample_rate :
                                    bank13_read[194]  ? {29'b0, adc2_multi_band} :
                                    32'h00000000;


  // Register Bank 15: ADC Tile 2 DRP
  assign IP2Bus_Data_ADC2_DRP =     bank14_read ? adc2_drp_do :
                                    16'h0000;

  // Register Bank 15: ADC Tile 3 Control and Status
  assign IP2Bus_Data_ADC3_Control = bank15_read[0]   ? {31'b0, adc3_reset} :
                                    bank15_read[1]    ? {31'b0, ~adc3_done_i} :
                                    bank15_read[2]    ? {20'b0, adc3_start_stage, 4'h0, adc3_end_stage} :
                                    bank15_read[3]    ? {28'b0, adc3_current_stage} :
                                    bank15_read[14]   ? {24'b0, adc3_reset_cnt} :
                                    bank15_read[64]   ? {30'b0, adc3_sim_level} :
                                    bank15_read[128]  ? {28'b0, adc3_irq} :
                                    bank15_read[129]  ? {27'b0, adc3_cmn_irq_en, adc33_irq_en, adc32_irq_en, adc31_irq_en, adc30_irq_en} :
                                    bank15_read[130]  ? {16'h0000, adc30_irq_i[3:2], 10'h000, adc30_irq_i[1:0], 2'b00} :
                                    bank15_read[131]  ? {16'h0000, adc3_slice0_irq_en} :
                                    bank15_read[132]  ? {16'h0000, adc31_irq_i[3:2], 10'h000, adc31_irq_i[1:0], 2'b00} :
                                    bank15_read[133]  ? {16'h0000, adc3_slice1_irq_en} :
                                    bank15_read[134]  ? {16'h0000, adc32_irq_i[3:2], 10'h000, adc32_irq_i[1:0], 2'b00} :
                                    bank15_read[135]  ? {16'h0000, adc3_slice2_irq_en} :
                                    bank15_read[136]  ? {16'h0000, adc33_irq_i[3:2], 10'h000, adc33_irq_i[1:0], 2'b00} :
                                    bank15_read[137]  ? {16'h0000, adc3_slice3_irq_en} :
                                    bank15_read[138]  ? {16'h0000, adc3_common_stat} :
                                    bank15_read[139]  ? {16'h0000, adc3_cmn_en} :
                                    bank15_read[140]  ? {16'h0000, adc3_fifo_disable} :
      
                                    bank15_read[192]  ? adc3_ref_clk_freq :
                                    bank15_read[193]  ? adc3_sample_rate :
                                    bank15_read[194]  ? {29'b0, adc3_multi_band} :
                                    32'h00000000;


  // Register Bank 17: ADC Tile 3 DRP
  assign IP2Bus_Data_ADC3_DRP =     bank16_read ? adc3_drp_do :
                                    16'h0000;

  // Assign AXI Bus output depending on CS
  always @(posedge Bus2IP_Clk)
    if (chip_select[0])
      IP2Bus_Data <= IP2Bus_Data_control;
    else if (chip_select[2])
      IP2Bus_Data <= IP2Bus_Data_DAC0_Control;
    else if (chip_select[3])
      IP2Bus_Data <= {16'h0000, IP2Bus_Data_DAC0_DRP};
    else if (chip_select[4])
      IP2Bus_Data <= IP2Bus_Data_DAC1_Control;
    else if (chip_select[5])
      IP2Bus_Data <= {16'h0000, IP2Bus_Data_DAC1_DRP};
    else if (chip_select[10])
      IP2Bus_Data <= IP2Bus_Data_ADC0_Control;
    else if (chip_select[11])
      IP2Bus_Data <= {16'h0000, IP2Bus_Data_ADC0_DRP};
    else if (chip_select[12])
      IP2Bus_Data <= IP2Bus_Data_ADC1_Control;
    else if (chip_select[13])
      IP2Bus_Data <= {16'h0000, IP2Bus_Data_ADC1_DRP};
    else if (chip_select[14])
      IP2Bus_Data <= IP2Bus_Data_ADC2_Control;
    else if (chip_select[15])
      IP2Bus_Data <= {16'h0000, IP2Bus_Data_ADC2_DRP};
    else if (chip_select[16])
      IP2Bus_Data <= IP2Bus_Data_ADC3_Control;
    else if (chip_select[17])
      IP2Bus_Data <= {16'h0000, IP2Bus_Data_ADC3_DRP};

  assign adc0_overvol_ack = adc00_overvol_ack | adc01_overvol_ack | adc02_overvol_ack | adc03_overvol_ack;
  assign adc0_read = bank9_read[130] | bank9_read[132] | bank9_read[134] | bank9_read[136];

  assign adc1_overvol_ack = adc10_overvol_ack | adc11_overvol_ack | adc12_overvol_ack | adc13_overvol_ack;
  assign adc1_read = bank11_read[130] | bank11_read[132] | bank11_read[134] | bank11_read[136];

  assign adc2_overvol_ack = adc20_overvol_ack | adc21_overvol_ack | adc22_overvol_ack | adc23_overvol_ack;
  assign adc2_read = bank13_read[130] | bank13_read[132] | bank13_read[134] | bank13_read[136];

  assign adc3_overvol_ack = adc30_overvol_ack | adc31_overvol_ack | adc32_overvol_ack | adc33_overvol_ack;
  assign adc3_read = bank15_read[130] | bank15_read[132] | bank15_read[134] | bank15_read[136];

  always @(posedge Bus2IP_Clk)
    if (axi_rdce == 1'b1) begin
      axi_RdAck_r    <= ~(bank0_read[64] | bank1_read[14] | bank3_read[14] | bank9_read[14] | bank11_read[14] | bank13_read[14] | bank15_read[14] | adc0_read | adc1_read | adc2_read | adc3_read);

      axi_RdAck      <= axi_RdAck_r | tile_irq_ack | adc0_overvol_ack | adc1_overvol_ack | adc2_overvol_ack | adc3_overvol_ack | adc_reset_cnt_ack_i | dac_reset_cnt_ack_i |
                        adc0_powerup_state_ack | adc1_powerup_state_ack | adc2_powerup_state_ack | adc3_powerup_state_ack |
                        dac0_powerup_state_ack | dac1_powerup_state_ack;
    end
    else
    begin
      axi_RdAck      <= 1'b0;
      axi_RdAck_r    <= 1'b0;
    end

  assign drp_RdAck[3:2] = 2'b00;
  assign drp_WrAck[3:2] = 2'b00;
  always @(posedge Bus2IP_Clk) begin
    drp_RdAck_r    <= |drp_RdAck;
  end

  assign IP2Bus_RdAck = axi_RdAck || (|drp_RdAck_r);
  assign IP2Bus_WrAck = axi_wrce || (|drp_WrAck);

  // Generate a signal to indicate the AXI timed out
  always @(posedge Bus2IP_Clk)
    if (~Bus2IP_Resetn) begin
      axi_timeout_r <= 1'b0;
      axi_timeout_r2 <= 1'b0;
      got_timeout <= 1'b0;
    end
    else begin
      if (tile_irq_ack) begin
        axi_timeout_r <= 1'b0;
        axi_timeout_r2 <= 1'b0;
        got_timeout <= 1'b0;
      end
      else begin
        axi_timeout_r <= axi_timeout;
        axi_timeout_r2 <= (!axi_timeout & axi_timeout_r);
        if (axi_timeout_r2 & axi_timeout_en)
          got_timeout <= 1'b1;
      end
    end

  design_1_usp_rf_data_converter_0_0_irq_req_ack i_design_1_usp_rf_data_converter_0_0_irq_req_ack
  (
    .clk                 (Bus2IP_Clk),
    .reset               (~Bus2IP_Resetn),
    .axi_read_req        (bank0_read[64]),
    .read_ack            (tile_irq_ack)
  );

  // Generate a single bit IRQ signal from each Tile
  assign dac0_master_irq = (|dac0_irq & dac0_irq_en);
  assign dac1_master_irq = (|dac1_irq & dac1_irq_en);

  assign adc0_master_irq = (|adc0_irq & adc0_irq_en);
  assign adc1_master_irq = (|adc1_irq & adc1_irq_en);
  assign adc2_master_irq = (|adc2_irq & adc2_irq_en);
  assign adc3_master_irq = (|adc3_irq & adc3_irq_en);

  assign tile_irq_i = {got_timeout, 23'b0, adc3_master_irq, adc2_master_irq, adc1_master_irq, adc0_master_irq, 2'b00, dac1_master_irq, dac0_master_irq};
  assign irq_enables  = {axi_timeout_en, 23'b0, adc3_irq_en, adc2_irq_en, adc1_irq_en, adc0_irq_en, 2'b00, dac1_irq_en, dac0_irq_en};
  assign tile_irq2axi = tile_irq_i & irq_enables;

  assign irq  =  |tile_irq2axi;

  design_1_usp_rf_data_converter_0_0_bufg_gt_ctrl i_design_1_usp_rf_data_converter_0_0_bufg_gt_ctrl (
  // DAC Fabric Feedback Clock for Tile 0
    .clk_dac0         (clk_dac0_i),
    .clk_dac0_buf     (clk_dac0),
  // ADC Fabric Feedback Clock for Tile 0
    .clk_adc0         (clk_adc0_i),
    .clk_adc0_buf     (clk_adc0),
  // ADC Fabric Feedback Clock for Tile 1
    .clk_adc1         (clk_adc1_i),
    .clk_adc1_buf     (clk_adc1)
  );

  // DAC Reset Module Counter for Tile 0
  design_1_usp_rf_data_converter_0_0_reset_count i_dac0_reset_count (
    .clk          (s_axi_aclk),
    .reset        (~s_axi_aresetn),
    .sm_reset     (dac0_sm_reset_i),
    .axi_read_req (bank1_read[14]),
    .read_ack     (dac_reset_cnt_ack[0]),
    .count        (dac0_reset_cnt)
  );


  assign dac_reset_cnt_ack_i = |dac_reset_cnt_ack;

  // ADC Reset Module Counter for Tile 0
  design_1_usp_rf_data_converter_0_0_reset_count i_adc0_reset_count (
    .clk          (s_axi_aclk),
    .reset        (~s_axi_aresetn),
    .sm_reset     (adc0_sm_reset_i),
    .axi_read_req (bank9_read[14]),
    .read_ack     (adc_reset_cnt_ack[0]),
    .count        (adc0_reset_cnt)
  );

  // ADC Reset Module Counter for Tile 1
  design_1_usp_rf_data_converter_0_0_reset_count i_adc1_reset_count (
    .clk          (s_axi_aclk),
    .reset        (~s_axi_aresetn),
    .sm_reset     (adc1_sm_reset_i),
    .axi_read_req (bank11_read[14]),
    .read_ack     (adc_reset_cnt_ack[1]),
    .count        (adc1_reset_cnt)
  );



  assign adc_reset_cnt_ack_i = |adc_reset_cnt_ack;


  assign dac00_pl_event_i = 3'b00;
  assign dac00_fast_shutdown_i = 3'b000;
  assign dac01_pl_event_i = 3'b00;
  assign dac01_fast_shutdown_i = 3'b000;
  assign dac02_pl_event_i = 3'b00;
  assign dac02_fast_shutdown_i = 3'b000;
  assign dac03_pl_event_i = 3'b00;
  assign dac03_fast_shutdown_i = 3'b000;
  assign dac10_pl_event_i = 3'b00;
  assign dac10_fast_shutdown_i = 3'b000;
  assign dac11_pl_event_i = 3'b00;
  assign dac11_fast_shutdown_i = 3'b000;
  assign dac12_pl_event_i = 3'b00;
  assign dac12_fast_shutdown_i = 3'b000;
  assign dac13_pl_event_i = 3'b00;
  assign dac13_fast_shutdown_i = 3'b000;

  assign dac00_tdd_mode_i = 2'b00;
  assign dac01_tdd_mode_i = 2'b00;
  assign dac02_tdd_mode_i = 2'b00;
  assign dac03_tdd_mode_i = 2'b00;
  assign dac10_tdd_mode_i = 2'b00;
  assign dac11_tdd_mode_i = 2'b00;
  assign dac12_tdd_mode_i = 2'b00;
  assign dac13_tdd_mode_i = 2'b00;

  // Construct DAC control input
  assign dac00_control_i = {1'b0, dac00_tdd_mode_i, 9'd0, dac00_fast_shutdown_i, dac00_pl_event_i};
  assign dac01_control_i = {1'b0, dac01_tdd_mode_i, 9'd0, dac01_fast_shutdown_i, dac01_pl_event_i};
  assign dac02_control_i = {1'b0, dac02_tdd_mode_i, 9'd0, dac02_fast_shutdown_i, dac02_pl_event_i};
  assign dac03_control_i = {1'b0, dac03_tdd_mode_i, 9'd0, dac03_fast_shutdown_i, dac03_pl_event_i};
  assign dac10_control_i = {1'b0, dac10_tdd_mode_i, 9'd0, dac10_fast_shutdown_i, dac10_pl_event_i};
  assign dac11_control_i = {1'b0, dac11_tdd_mode_i, 9'd0, dac11_fast_shutdown_i, dac11_pl_event_i};
  assign dac12_control_i = {1'b0, dac12_tdd_mode_i, 9'd0, dac12_fast_shutdown_i, dac12_pl_event_i};
  assign dac13_control_i = {1'b0, dac13_tdd_mode_i, 9'd0, dac13_fast_shutdown_i, dac13_pl_event_i};
  assign adc00_pl_event_i = 1'b0;
  assign adc01_pl_event_i = 1'b0;
  assign adc02_pl_event_i = 1'b0;
  assign adc03_pl_event_i = 1'b0;
  assign adc10_pl_event_i = 1'b0;
  assign adc11_pl_event_i = 1'b0;
  assign adc12_pl_event_i = 1'b0;
  assign adc13_pl_event_i = 1'b0;
  assign adc20_pl_event_i = 1'b0;
  assign adc21_pl_event_i = 1'b0;
  assign adc22_pl_event_i = 1'b0;
  assign adc23_pl_event_i = 1'b0;
  assign adc30_pl_event_i = 1'b0;
  assign adc31_pl_event_i = 1'b0;
  assign adc32_pl_event_i = 1'b0;
  assign adc33_pl_event_i = 1'b0;
  assign adc00_sig_lost_i = 1'b0;
  assign adc01_sig_lost_i = 1'b0;
  assign adc02_sig_lost_i = 1'b0;
  assign adc03_sig_lost_i = 1'b0;
  assign adc10_sig_lost_i = 1'b0;
  assign adc11_sig_lost_i = 1'b0;
  assign adc12_sig_lost_i = 1'b0;
  assign adc13_sig_lost_i = 1'b0;
  assign adc20_sig_lost_i = 1'b0;
  assign adc21_sig_lost_i = 1'b0;
  assign adc22_sig_lost_i = 1'b0;
  assign adc23_sig_lost_i = 1'b0;
  assign adc30_sig_lost_i = 1'b0;
  assign adc31_sig_lost_i = 1'b0;
  assign adc32_sig_lost_i = 1'b0;
  assign adc33_sig_lost_i = 1'b0;
  assign adc00_tdd_mode_i = 2'b00;
  assign adc01_tdd_mode_i = 2'b00;
  assign adc02_tdd_mode_i = 2'b00;
  assign adc03_tdd_mode_i = 2'b00;
  assign adc10_tdd_mode_i = 2'b00;
  assign adc11_tdd_mode_i = 2'b00;
  assign adc12_tdd_mode_i = 2'b00;
  assign adc13_tdd_mode_i = 2'b00;
  assign adc20_tdd_mode_i = 2'b00;
  assign adc21_tdd_mode_i = 2'b00;
  assign adc22_tdd_mode_i = 2'b00;
  assign adc23_tdd_mode_i = 2'b00;
  assign adc30_tdd_mode_i = 2'b00;
  assign adc31_tdd_mode_i = 2'b00;
  assign adc32_tdd_mode_i = 2'b00;
  assign adc33_tdd_mode_i = 2'b00;
  assign adc00_tdd_obs_i = 1'b0;
  assign adc01_tdd_obs_i = 1'b0;
  assign adc02_tdd_obs_i = 1'b0;
  assign adc03_tdd_obs_i = 1'b0;
  assign adc10_tdd_obs_i = 1'b0;
  assign adc11_tdd_obs_i = 1'b0;
  assign adc12_tdd_obs_i = 1'b0;
  assign adc13_tdd_obs_i = 1'b0;
  assign adc20_tdd_obs_i = 1'b0;
  assign adc21_tdd_obs_i = 1'b0;
  assign adc22_tdd_obs_i = 1'b0;
  assign adc23_tdd_obs_i = 1'b0;
  assign adc30_tdd_obs_i = 1'b0;
  assign adc31_tdd_obs_i = 1'b0;
  assign adc32_tdd_obs_i = 1'b0;
  assign adc33_tdd_obs_i = 1'b0;

  // Construct ADC control input
  assign adc00_control_i = {14'd0, adc00_sig_lost_i, adc00_pl_event_i};
  assign adc01_control_i = {14'd0, adc01_sig_lost_i, adc01_pl_event_i};
  assign adc02_control_i = {14'd0, adc02_sig_lost_i, adc02_pl_event_i};
  assign adc03_control_i = {14'd0, adc03_sig_lost_i, adc03_pl_event_i};
  assign adc10_control_i = {14'd0, adc10_sig_lost_i, adc10_pl_event_i};
  assign adc11_control_i = {14'd0, adc11_sig_lost_i, adc11_pl_event_i};
  assign adc12_control_i = {14'd0, adc12_sig_lost_i, adc12_pl_event_i};
  assign adc13_control_i = {14'd0, adc13_sig_lost_i, adc13_pl_event_i};
  assign adc20_control_i = {14'd0, adc20_sig_lost_i, adc20_pl_event_i};
  assign adc21_control_i = {14'd0, adc21_sig_lost_i, adc21_pl_event_i};
  assign adc22_control_i = {14'd0, adc22_sig_lost_i, adc22_pl_event_i};
  assign adc23_control_i = {14'd0, adc23_sig_lost_i, adc23_pl_event_i};
  assign adc30_control_i = {14'd0, adc30_sig_lost_i, adc30_pl_event_i};
  assign adc31_control_i = {14'd0, adc31_sig_lost_i, adc31_pl_event_i};
  assign adc32_control_i = {14'd0, adc32_sig_lost_i, adc32_pl_event_i};
  assign adc33_control_i = {14'd0, adc33_sig_lost_i, adc33_pl_event_i};

  assign adc00_signal_lost_i = adc00_cal_freeze_reg;
  assign adc00_cal_frozen = adc00_bg_cal_off_i;
  assign adc01_signal_lost_i = adc00_cal_freeze_reg;
  assign adc01_cal_frozen = adc00_bg_cal_off_i;
  assign adc02_signal_lost_i = 1'b0;
  assign adc02_cal_frozen = 1'b0;
  assign adc03_signal_lost_i = 1'b0;
  assign adc03_cal_frozen = 1'b0;
  assign adc10_signal_lost_i = adc10_cal_freeze_reg;
  assign adc10_cal_frozen = adc10_bg_cal_off_i;
  assign adc11_signal_lost_i = adc10_cal_freeze_reg;
  assign adc11_cal_frozen = adc10_bg_cal_off_i;
  assign adc12_signal_lost_i = 1'b0;
  assign adc12_cal_frozen = 1'b0;
  assign adc13_signal_lost_i = 1'b0;
  assign adc13_cal_frozen = 1'b0;
  assign adc20_signal_lost_i = 1'b0;
  assign adc20_cal_frozen = 1'b0;
  assign adc21_signal_lost_i = 1'b0;
  assign adc21_cal_frozen = 1'b0;
  assign adc22_signal_lost_i = 1'b0;
  assign adc22_cal_frozen = 1'b0;
  assign adc23_signal_lost_i = 1'b0;
  assign adc23_cal_frozen = 1'b0;
  assign adc30_signal_lost_i = 1'b0;
  assign adc30_cal_frozen = 1'b0;
  assign adc31_signal_lost_i = 1'b0;
  assign adc31_cal_frozen = 1'b0;
  assign adc32_signal_lost_i = 1'b0;
  assign adc32_cal_frozen = 1'b0;
  assign adc33_signal_lost_i = 1'b0;
  assign adc33_cal_frozen = 1'b0;
  // Assign DAC Debug Ports
  // DAC0
  assign dac0_pll_dmon       = dac0_pll_dmon;
  assign dac0_pll_lock       = dac0_pll_lock_i;
  assign dac0_status         = dac0_current_stage;
  assign dac0_done           = dac0_done_i;
  assign dac0_powerup_state  = dac0_common_stat[2] & dac0_done_i;

  // DAC1
  assign dac1_pll_dmon       = dac1_pll_dmon;
  assign dac1_pll_lock       = dac1_pll_lock_i;
  assign dac1_status         = dac1_current_stage;
  assign dac1_done           = dac1_done_i;
  assign dac1_powerup_state  = dac1_common_stat[2] & dac1_done_i;

  // Assign ADC Debug Ports
  // ADC0
  assign adc0_pll_dmon       = adc0_pll_dmon;
  assign adc0_pll_lock       = adc0_pll_lock_i;
  assign adc0_status         = adc0_current_stage;
  assign adc0_done           = adc0_done_i;
  assign adc0_powerup_state  = adc0_common_stat[2] & adc0_done_i;

  // ADC1
  assign adc1_pll_dmon       = adc1_pll_dmon;
  assign adc1_pll_lock       = adc1_pll_lock_i;
  assign adc1_status         = adc1_current_stage;
  assign adc1_done           = adc1_done_i;
  assign adc1_powerup_state  = adc1_common_stat[2] & adc1_done_i;

  // ADC2
  assign adc2_pll_dmon       = adc2_pll_dmon;
  assign adc2_pll_lock       = adc2_pll_lock_i;
  assign adc2_status         = adc2_current_stage;
  assign adc2_done           = adc2_done_i;
  assign adc2_powerup_state  = adc2_common_stat[2] & adc2_done_i;

  // ADC3
  assign adc3_pll_dmon       = adc3_pll_dmon;
  assign adc3_pll_lock       = adc3_pll_lock_i;
  assign adc3_status         = adc3_current_stage;
  assign adc3_done           = adc3_done_i;
  assign adc3_powerup_state  = adc3_common_stat[2] & adc3_done_i;

endmodule
