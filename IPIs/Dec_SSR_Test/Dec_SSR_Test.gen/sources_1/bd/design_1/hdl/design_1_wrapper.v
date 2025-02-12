//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Feb  6 18:11:53 2025
//Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (adc0_clk_clk_n,
    adc0_clk_clk_p,
    adc1_clk_clk_n,
    adc1_clk_clk_p,
    dac0_clk_clk_n,
    dac0_clk_clk_p,
    sysref_in_diff_n,
    sysref_in_diff_p,
    vin0_01_v_n,
    vin0_01_v_p,
    vin1_01_v_n,
    vin1_01_v_p,
    vout00_v_n,
    vout00_v_p);
  input adc0_clk_clk_n;
  input adc0_clk_clk_p;
  input adc1_clk_clk_n;
  input adc1_clk_clk_p;
  input dac0_clk_clk_n;
  input dac0_clk_clk_p;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  input vin0_01_v_n;
  input vin0_01_v_p;
  input vin1_01_v_n;
  input vin1_01_v_p;
  output vout00_v_n;
  output vout00_v_p;

  wire adc0_clk_clk_n;
  wire adc0_clk_clk_p;
  wire adc1_clk_clk_n;
  wire adc1_clk_clk_p;
  wire dac0_clk_clk_n;
  wire dac0_clk_clk_p;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire vin0_01_v_n;
  wire vin0_01_v_p;
  wire vin1_01_v_n;
  wire vin1_01_v_p;
  wire vout00_v_n;
  wire vout00_v_p;

  design_1 design_1_i
       (.adc0_clk_clk_n(adc0_clk_clk_n),
        .adc0_clk_clk_p(adc0_clk_clk_p),
        .adc1_clk_clk_n(adc1_clk_clk_n),
        .adc1_clk_clk_p(adc1_clk_clk_p),
        .dac0_clk_clk_n(dac0_clk_clk_n),
        .dac0_clk_clk_p(dac0_clk_clk_p),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .vin0_01_v_n(vin0_01_v_n),
        .vin0_01_v_p(vin0_01_v_p),
        .vin1_01_v_n(vin1_01_v_n),
        .vin1_01_v_p(vin1_01_v_p),
        .vout00_v_n(vout00_v_n),
        .vout00_v_p(vout00_v_p));
endmodule
