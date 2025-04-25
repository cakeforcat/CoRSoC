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

-- IP VLNV: CoRSoC:VMC:ram_re:1.0
-- IP Revision: 374596383

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.ram_re;

ENTITY design_1_ram_re_0_0 IS
  PORT (
    ctrl_ip : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_1_ram_re_0_0;

ARCHITECTURE design_1_ram_re_0_0_arch OF design_1_ram_re_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_ram_re_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ram_re IS
    PORT (
      ctrl_ip : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      clk : IN STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_tvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT ram_re;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ctrl_ip: SIGNAL IS "XIL_INTERFACENAME ctrl_ip, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ctrl_ip: SIGNAL IS "xilinx.com:signal:data:1.0 ctrl_ip DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
BEGIN
  U0 : ram_re
    PORT MAP (
      ctrl_ip => ctrl_ip,
      clk => clk,
      m_axis_tdata => m_axis_tdata,
      m_axis_tlast => m_axis_tlast,
      m_axis_tvalid => m_axis_tvalid
    );
END design_1_ram_re_0_0_arch;
