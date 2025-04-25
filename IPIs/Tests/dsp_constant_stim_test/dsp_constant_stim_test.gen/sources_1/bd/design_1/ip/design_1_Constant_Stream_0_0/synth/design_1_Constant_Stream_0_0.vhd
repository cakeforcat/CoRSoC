-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: CoRSoC:VMC:Constant_Stream:1.0
-- IP Revision: 374596754

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.constant_x0;

ENTITY design_1_Constant_Stream_0_0 IS
  PORT (
    constant_in_nan : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clk : IN STD_LOGIC;
    constant_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_1_Constant_Stream_0_0;

ARCHITECTURE design_1_Constant_Stream_0_0_arch OF design_1_Constant_Stream_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_Constant_Stream_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT constant_x0 IS
    PORT (
      constant_in_nan : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      clk : IN STD_LOGIC;
      constant_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT constant_x0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_Constant_Stream_0_0_arch: ARCHITECTURE IS "constant_x0,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_Constant_Stream_0_0_arch : ARCHITECTURE IS "design_1_Constant_Stream_0_0,constant_x0,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_Constant_Stream_0_0_arch: ARCHITECTURE IS "sysgen";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF constant_in_nan: SIGNAL IS "XIL_INTERFACENAME constant_in_nan, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} ma" & 
"ximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF constant_in_nan: SIGNAL IS "xilinx.com:signal:data:1.0 constant_in_nan DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF constant_out: SIGNAL IS "XIL_INTERFACENAME constant_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF constant_out: SIGNAL IS "xilinx.com:signal:data:1.0 constant_out DATA";
BEGIN
  U0 : constant_x0
    PORT MAP (
      constant_in_nan => constant_in_nan,
      clk => clk,
      constant_out => constant_out
    );
END design_1_Constant_Stream_0_0_arch;
