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

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 17

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_system_ila_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    SLOT_0_AXI_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXI_awaddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    SLOT_0_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_0_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_0_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXI_awuser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXI_awvalid : IN STD_LOGIC;
    SLOT_0_AXI_awready : IN STD_LOGIC;
    SLOT_0_AXI_wdata : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
    SLOT_0_AXI_wstrb : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    SLOT_0_AXI_wlast : IN STD_LOGIC;
    SLOT_0_AXI_wvalid : IN STD_LOGIC;
    SLOT_0_AXI_wready : IN STD_LOGIC;
    SLOT_0_AXI_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_bvalid : IN STD_LOGIC;
    SLOT_0_AXI_bready : IN STD_LOGIC;
    SLOT_0_AXI_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXI_araddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    SLOT_0_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_0_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_0_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_0_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXI_aruser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXI_arvalid : IN STD_LOGIC;
    SLOT_0_AXI_arready : IN STD_LOGIC;
    SLOT_0_AXI_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    SLOT_0_AXI_rdata : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
    SLOT_0_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_0_AXI_rlast : IN STD_LOGIC;
    SLOT_0_AXI_rvalid : IN STD_LOGIC;
    SLOT_0_AXI_rready : IN STD_LOGIC;
    SLOT_1_AXI_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    SLOT_1_AXI_awvalid : IN STD_LOGIC;
    SLOT_1_AXI_awready : IN STD_LOGIC;
    SLOT_1_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXI_wvalid : IN STD_LOGIC;
    SLOT_1_AXI_wready : IN STD_LOGIC;
    SLOT_1_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_1_AXI_bvalid : IN STD_LOGIC;
    SLOT_1_AXI_bready : IN STD_LOGIC;
    SLOT_1_AXI_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    SLOT_1_AXI_arvalid : IN STD_LOGIC;
    SLOT_1_AXI_arready : IN STD_LOGIC;
    SLOT_1_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_1_AXI_rvalid : IN STD_LOGIC;
    SLOT_1_AXI_rready : IN STD_LOGIC;
    SLOT_2_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_2_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_awvalid : IN STD_LOGIC;
    SLOT_2_AXI_awready : IN STD_LOGIC;
    SLOT_2_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_wlast : IN STD_LOGIC;
    SLOT_2_AXI_wvalid : IN STD_LOGIC;
    SLOT_2_AXI_wready : IN STD_LOGIC;
    SLOT_2_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_2_AXI_bvalid : IN STD_LOGIC;
    SLOT_2_AXI_bready : IN STD_LOGIC;
    SLOT_2_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_2_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_arvalid : IN STD_LOGIC;
    SLOT_2_AXI_arready : IN STD_LOGIC;
    SLOT_2_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_rlast : IN STD_LOGIC;
    SLOT_2_AXI_rvalid : IN STD_LOGIC;
    SLOT_2_AXI_rready : IN STD_LOGIC;
    SLOT_3_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_3_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_3_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_awvalid : IN STD_LOGIC;
    SLOT_3_AXI_awready : IN STD_LOGIC;
    SLOT_3_AXI_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    SLOT_3_AXI_wlast : IN STD_LOGIC;
    SLOT_3_AXI_wvalid : IN STD_LOGIC;
    SLOT_3_AXI_wready : IN STD_LOGIC;
    SLOT_3_AXI_bvalid : IN STD_LOGIC;
    SLOT_3_AXI_bready : IN STD_LOGIC;
    SLOT_3_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_3_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_3_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_arvalid : IN STD_LOGIC;
    SLOT_3_AXI_arready : IN STD_LOGIC;
    SLOT_3_AXI_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    SLOT_3_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_3_AXI_rlast : IN STD_LOGIC;
    SLOT_3_AXI_rvalid : IN STD_LOGIC;
    SLOT_3_AXI_rready : IN STD_LOGIC;
    resetn : IN STD_LOGIC
  );
END design_1_system_ila_0_0;

ARCHITECTURE design_1_system_ila_0_0_arch OF design_1_system_ila_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_system_ila_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_f60c IS
    PORT (
      clk : IN STD_LOGIC;
      SLOT_0_AXI_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXI_awaddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
      SLOT_0_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_0_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_0_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXI_awuser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXI_awvalid : IN STD_LOGIC;
      SLOT_0_AXI_awready : IN STD_LOGIC;
      SLOT_0_AXI_wdata : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
      SLOT_0_AXI_wstrb : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      SLOT_0_AXI_wlast : IN STD_LOGIC;
      SLOT_0_AXI_wvalid : IN STD_LOGIC;
      SLOT_0_AXI_wready : IN STD_LOGIC;
      SLOT_0_AXI_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_bvalid : IN STD_LOGIC;
      SLOT_0_AXI_bready : IN STD_LOGIC;
      SLOT_0_AXI_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXI_araddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
      SLOT_0_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_0_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_0_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_0_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXI_aruser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXI_arvalid : IN STD_LOGIC;
      SLOT_0_AXI_arready : IN STD_LOGIC;
      SLOT_0_AXI_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      SLOT_0_AXI_rdata : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
      SLOT_0_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_0_AXI_rlast : IN STD_LOGIC;
      SLOT_0_AXI_rvalid : IN STD_LOGIC;
      SLOT_0_AXI_rready : IN STD_LOGIC;
      SLOT_1_AXI_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      SLOT_1_AXI_awvalid : IN STD_LOGIC;
      SLOT_1_AXI_awready : IN STD_LOGIC;
      SLOT_1_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXI_wvalid : IN STD_LOGIC;
      SLOT_1_AXI_wready : IN STD_LOGIC;
      SLOT_1_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_1_AXI_bvalid : IN STD_LOGIC;
      SLOT_1_AXI_bready : IN STD_LOGIC;
      SLOT_1_AXI_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      SLOT_1_AXI_arvalid : IN STD_LOGIC;
      SLOT_1_AXI_arready : IN STD_LOGIC;
      SLOT_1_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_1_AXI_rvalid : IN STD_LOGIC;
      SLOT_1_AXI_rready : IN STD_LOGIC;
      SLOT_2_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_2_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_awvalid : IN STD_LOGIC;
      SLOT_2_AXI_awready : IN STD_LOGIC;
      SLOT_2_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_wlast : IN STD_LOGIC;
      SLOT_2_AXI_wvalid : IN STD_LOGIC;
      SLOT_2_AXI_wready : IN STD_LOGIC;
      SLOT_2_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_2_AXI_bvalid : IN STD_LOGIC;
      SLOT_2_AXI_bready : IN STD_LOGIC;
      SLOT_2_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_2_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_arvalid : IN STD_LOGIC;
      SLOT_2_AXI_arready : IN STD_LOGIC;
      SLOT_2_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_rlast : IN STD_LOGIC;
      SLOT_2_AXI_rvalid : IN STD_LOGIC;
      SLOT_2_AXI_rready : IN STD_LOGIC;
      SLOT_3_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_3_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_3_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_awvalid : IN STD_LOGIC;
      SLOT_3_AXI_awready : IN STD_LOGIC;
      SLOT_3_AXI_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      SLOT_3_AXI_wlast : IN STD_LOGIC;
      SLOT_3_AXI_wvalid : IN STD_LOGIC;
      SLOT_3_AXI_wready : IN STD_LOGIC;
      SLOT_3_AXI_bvalid : IN STD_LOGIC;
      SLOT_3_AXI_bready : IN STD_LOGIC;
      SLOT_3_AXI_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_3_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_3_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_arvalid : IN STD_LOGIC;
      SLOT_3_AXI_arready : IN STD_LOGIC;
      SLOT_3_AXI_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      SLOT_3_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_3_AXI_rlast : IN STD_LOGIC;
      SLOT_3_AXI_rvalid : IN STD_LOGIC;
      SLOT_3_AXI_rready : IN STD_LOGIC;
      resetn : IN STD_LOGIC
    );
  END COMPONENT bd_f60c;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_0_AXI_awid: SIGNAL IS "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS " & 
"4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_1_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_1_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4" & 
", NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_2_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_2_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1," & 
" NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_3_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_3_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1," & 
" NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_1_AXI:SLOT_2_AXI:SLOT_3_AXI, ASSOCIATED_RESET resetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.resetn RST";
BEGIN
  U0 : bd_f60c
    PORT MAP (
      clk => clk,
      SLOT_0_AXI_awid => SLOT_0_AXI_awid,
      SLOT_0_AXI_awaddr => SLOT_0_AXI_awaddr,
      SLOT_0_AXI_awlen => SLOT_0_AXI_awlen,
      SLOT_0_AXI_awsize => SLOT_0_AXI_awsize,
      SLOT_0_AXI_awburst => SLOT_0_AXI_awburst,
      SLOT_0_AXI_awlock => SLOT_0_AXI_awlock,
      SLOT_0_AXI_awcache => SLOT_0_AXI_awcache,
      SLOT_0_AXI_awprot => SLOT_0_AXI_awprot,
      SLOT_0_AXI_awqos => SLOT_0_AXI_awqos,
      SLOT_0_AXI_awuser => SLOT_0_AXI_awuser,
      SLOT_0_AXI_awvalid => SLOT_0_AXI_awvalid,
      SLOT_0_AXI_awready => SLOT_0_AXI_awready,
      SLOT_0_AXI_wdata => SLOT_0_AXI_wdata,
      SLOT_0_AXI_wstrb => SLOT_0_AXI_wstrb,
      SLOT_0_AXI_wlast => SLOT_0_AXI_wlast,
      SLOT_0_AXI_wvalid => SLOT_0_AXI_wvalid,
      SLOT_0_AXI_wready => SLOT_0_AXI_wready,
      SLOT_0_AXI_bid => SLOT_0_AXI_bid,
      SLOT_0_AXI_bresp => SLOT_0_AXI_bresp,
      SLOT_0_AXI_bvalid => SLOT_0_AXI_bvalid,
      SLOT_0_AXI_bready => SLOT_0_AXI_bready,
      SLOT_0_AXI_arid => SLOT_0_AXI_arid,
      SLOT_0_AXI_araddr => SLOT_0_AXI_araddr,
      SLOT_0_AXI_arlen => SLOT_0_AXI_arlen,
      SLOT_0_AXI_arsize => SLOT_0_AXI_arsize,
      SLOT_0_AXI_arburst => SLOT_0_AXI_arburst,
      SLOT_0_AXI_arlock => SLOT_0_AXI_arlock,
      SLOT_0_AXI_arcache => SLOT_0_AXI_arcache,
      SLOT_0_AXI_arprot => SLOT_0_AXI_arprot,
      SLOT_0_AXI_arqos => SLOT_0_AXI_arqos,
      SLOT_0_AXI_aruser => SLOT_0_AXI_aruser,
      SLOT_0_AXI_arvalid => SLOT_0_AXI_arvalid,
      SLOT_0_AXI_arready => SLOT_0_AXI_arready,
      SLOT_0_AXI_rid => SLOT_0_AXI_rid,
      SLOT_0_AXI_rdata => SLOT_0_AXI_rdata,
      SLOT_0_AXI_rresp => SLOT_0_AXI_rresp,
      SLOT_0_AXI_rlast => SLOT_0_AXI_rlast,
      SLOT_0_AXI_rvalid => SLOT_0_AXI_rvalid,
      SLOT_0_AXI_rready => SLOT_0_AXI_rready,
      SLOT_1_AXI_awaddr => SLOT_1_AXI_awaddr,
      SLOT_1_AXI_awvalid => SLOT_1_AXI_awvalid,
      SLOT_1_AXI_awready => SLOT_1_AXI_awready,
      SLOT_1_AXI_wdata => SLOT_1_AXI_wdata,
      SLOT_1_AXI_wvalid => SLOT_1_AXI_wvalid,
      SLOT_1_AXI_wready => SLOT_1_AXI_wready,
      SLOT_1_AXI_bresp => SLOT_1_AXI_bresp,
      SLOT_1_AXI_bvalid => SLOT_1_AXI_bvalid,
      SLOT_1_AXI_bready => SLOT_1_AXI_bready,
      SLOT_1_AXI_araddr => SLOT_1_AXI_araddr,
      SLOT_1_AXI_arvalid => SLOT_1_AXI_arvalid,
      SLOT_1_AXI_arready => SLOT_1_AXI_arready,
      SLOT_1_AXI_rdata => SLOT_1_AXI_rdata,
      SLOT_1_AXI_rresp => SLOT_1_AXI_rresp,
      SLOT_1_AXI_rvalid => SLOT_1_AXI_rvalid,
      SLOT_1_AXI_rready => SLOT_1_AXI_rready,
      SLOT_2_AXI_awaddr => SLOT_2_AXI_awaddr,
      SLOT_2_AXI_awlen => SLOT_2_AXI_awlen,
      SLOT_2_AXI_awsize => SLOT_2_AXI_awsize,
      SLOT_2_AXI_awcache => SLOT_2_AXI_awcache,
      SLOT_2_AXI_awprot => SLOT_2_AXI_awprot,
      SLOT_2_AXI_awvalid => SLOT_2_AXI_awvalid,
      SLOT_2_AXI_awready => SLOT_2_AXI_awready,
      SLOT_2_AXI_wdata => SLOT_2_AXI_wdata,
      SLOT_2_AXI_wstrb => SLOT_2_AXI_wstrb,
      SLOT_2_AXI_wlast => SLOT_2_AXI_wlast,
      SLOT_2_AXI_wvalid => SLOT_2_AXI_wvalid,
      SLOT_2_AXI_wready => SLOT_2_AXI_wready,
      SLOT_2_AXI_bresp => SLOT_2_AXI_bresp,
      SLOT_2_AXI_bvalid => SLOT_2_AXI_bvalid,
      SLOT_2_AXI_bready => SLOT_2_AXI_bready,
      SLOT_2_AXI_araddr => SLOT_2_AXI_araddr,
      SLOT_2_AXI_arlen => SLOT_2_AXI_arlen,
      SLOT_2_AXI_arsize => SLOT_2_AXI_arsize,
      SLOT_2_AXI_arcache => SLOT_2_AXI_arcache,
      SLOT_2_AXI_arprot => SLOT_2_AXI_arprot,
      SLOT_2_AXI_arvalid => SLOT_2_AXI_arvalid,
      SLOT_2_AXI_arready => SLOT_2_AXI_arready,
      SLOT_2_AXI_rdata => SLOT_2_AXI_rdata,
      SLOT_2_AXI_rlast => SLOT_2_AXI_rlast,
      SLOT_2_AXI_rvalid => SLOT_2_AXI_rvalid,
      SLOT_2_AXI_rready => SLOT_2_AXI_rready,
      SLOT_3_AXI_awaddr => SLOT_3_AXI_awaddr,
      SLOT_3_AXI_awlen => SLOT_3_AXI_awlen,
      SLOT_3_AXI_awsize => SLOT_3_AXI_awsize,
      SLOT_3_AXI_awcache => SLOT_3_AXI_awcache,
      SLOT_3_AXI_awprot => SLOT_3_AXI_awprot,
      SLOT_3_AXI_awvalid => SLOT_3_AXI_awvalid,
      SLOT_3_AXI_awready => SLOT_3_AXI_awready,
      SLOT_3_AXI_wdata => SLOT_3_AXI_wdata,
      SLOT_3_AXI_wlast => SLOT_3_AXI_wlast,
      SLOT_3_AXI_wvalid => SLOT_3_AXI_wvalid,
      SLOT_3_AXI_wready => SLOT_3_AXI_wready,
      SLOT_3_AXI_bvalid => SLOT_3_AXI_bvalid,
      SLOT_3_AXI_bready => SLOT_3_AXI_bready,
      SLOT_3_AXI_araddr => SLOT_3_AXI_araddr,
      SLOT_3_AXI_arlen => SLOT_3_AXI_arlen,
      SLOT_3_AXI_arsize => SLOT_3_AXI_arsize,
      SLOT_3_AXI_arcache => SLOT_3_AXI_arcache,
      SLOT_3_AXI_arprot => SLOT_3_AXI_arprot,
      SLOT_3_AXI_arvalid => SLOT_3_AXI_arvalid,
      SLOT_3_AXI_arready => SLOT_3_AXI_arready,
      SLOT_3_AXI_rdata => SLOT_3_AXI_rdata,
      SLOT_3_AXI_rresp => SLOT_3_AXI_rresp,
      SLOT_3_AXI_rlast => SLOT_3_AXI_rlast,
      SLOT_3_AXI_rvalid => SLOT_3_AXI_rvalid,
      SLOT_3_AXI_rready => SLOT_3_AXI_rready,
      resetn => resetn
    );
END design_1_system_ila_0_0_arch;
