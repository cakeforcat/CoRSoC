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


// IP VLNV: CoRSoC:VMC:ram_re:1.0
// IP Revision: 372098306

(* X_CORE_INFO = "ram_re_ip,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "design_1_ram_re_0_2,ram_re_ip,{}" *)
(* IP_DEFINITION_SOURCE = "sysgen" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ram_re_0_2 (
  clk,
  ram_re_ip_aresetn,
  ram_re_ip_s_axi_awaddr,
  ram_re_ip_s_axi_awvalid,
  ram_re_ip_s_axi_wdata,
  ram_re_ip_s_axi_wstrb,
  ram_re_ip_s_axi_wvalid,
  ram_re_ip_s_axi_bready,
  ram_re_ip_s_axi_araddr,
  ram_re_ip_s_axi_arvalid,
  ram_re_ip_s_axi_rready,
  m_axis_tdata,
  m_axis_tlast,
  m_axis_tvalid,
  ram_re_ip_s_axi_awready,
  ram_re_ip_s_axi_wready,
  ram_re_ip_s_axi_bresp,
  ram_re_ip_s_axi_bvalid,
  ram_re_ip_s_axi_arready,
  ram_re_ip_s_axi_rdata,
  ram_re_ip_s_axi_rresp,
  ram_re_ip_s_axi_rvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF ram_re_ip_s_axi:m_axis, ASSOCIATED_RESET ram_re_ip_aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram_re_ip_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ram_re_ip_aresetn RST" *)
input wire ram_re_ip_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWADDR" *)
input wire ram_re_ip_s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWVALID" *)
input wire ram_re_ip_s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WDATA" *)
input wire [31 : 0] ram_re_ip_s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WSTRB" *)
input wire [3 : 0] ram_re_ip_s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WVALID" *)
input wire ram_re_ip_s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BREADY" *)
input wire ram_re_ip_s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARADDR" *)
input wire ram_re_ip_s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARVALID" *)
input wire ram_re_ip_s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RREADY" *)
input wire ram_re_ip_s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [15 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire [0 : 0] m_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire [0 : 0] m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWREADY" *)
output wire ram_re_ip_s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WREADY" *)
output wire ram_re_ip_s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BRESP" *)
output wire [1 : 0] ram_re_ip_s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BVALID" *)
output wire ram_re_ip_s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARREADY" *)
output wire ram_re_ip_s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RDATA" *)
output wire [31 : 0] ram_re_ip_s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RRESP" *)
output wire [1 : 0] ram_re_ip_s_axi_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram_re_ip_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREA\
DS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RVALID" *)
output wire ram_re_ip_s_axi_rvalid;

  ram_re_ip inst (
    .clk(clk),
    .ram_re_ip_aresetn(ram_re_ip_aresetn),
    .ram_re_ip_s_axi_awaddr(ram_re_ip_s_axi_awaddr),
    .ram_re_ip_s_axi_awvalid(ram_re_ip_s_axi_awvalid),
    .ram_re_ip_s_axi_wdata(ram_re_ip_s_axi_wdata),
    .ram_re_ip_s_axi_wstrb(ram_re_ip_s_axi_wstrb),
    .ram_re_ip_s_axi_wvalid(ram_re_ip_s_axi_wvalid),
    .ram_re_ip_s_axi_bready(ram_re_ip_s_axi_bready),
    .ram_re_ip_s_axi_araddr(ram_re_ip_s_axi_araddr),
    .ram_re_ip_s_axi_arvalid(ram_re_ip_s_axi_arvalid),
    .ram_re_ip_s_axi_rready(ram_re_ip_s_axi_rready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid),
    .ram_re_ip_s_axi_awready(ram_re_ip_s_axi_awready),
    .ram_re_ip_s_axi_wready(ram_re_ip_s_axi_wready),
    .ram_re_ip_s_axi_bresp(ram_re_ip_s_axi_bresp),
    .ram_re_ip_s_axi_bvalid(ram_re_ip_s_axi_bvalid),
    .ram_re_ip_s_axi_arready(ram_re_ip_s_axi_arready),
    .ram_re_ip_s_axi_rdata(ram_re_ip_s_axi_rdata),
    .ram_re_ip_s_axi_rresp(ram_re_ip_s_axi_rresp),
    .ram_re_ip_s_axi_rvalid(ram_re_ip_s_axi_rvalid)
  );
endmodule
