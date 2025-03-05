// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Mar  5 17:02:29 2025
// Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/andre/CoRSoC/IPIs/Tests/dsp_test/dsp_test.gen/sources_1/bd/design_1/ip/design_1_ram_re_0_1/design_1_ram_re_0_1_sim_netlist.v
// Design      : design_1_ram_re_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ram_re_0_1,ram_re_ip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "sysgen" *) 
(* X_CORE_INFO = "ram_re_ip,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_ram_re_0_1
   (clk,
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
    ram_re_ip_s_axi_rvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF ram_re_ip_s_axi:m_axis, ASSOCIATED_RESET ram_re_ip_aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ram_re_ip_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram_re_ip_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ram_re_ip_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWADDR" *) input ram_re_ip_s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWVALID" *) input ram_re_ip_s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WDATA" *) input [31:0]ram_re_ip_s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WSTRB" *) input [3:0]ram_re_ip_s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WVALID" *) input ram_re_ip_s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BREADY" *) input ram_re_ip_s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARADDR" *) input ram_re_ip_s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARVALID" *) input ram_re_ip_s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RREADY" *) input ram_re_ip_s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output [0:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi AWREADY" *) output ram_re_ip_s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi WREADY" *) output ram_re_ip_s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BRESP" *) output [1:0]ram_re_ip_s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi BVALID" *) output ram_re_ip_s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi ARREADY" *) output ram_re_ip_s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RDATA" *) output [31:0]ram_re_ip_s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RRESP" *) output [1:0]ram_re_ip_s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_re_ip_s_axi RVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram_re_ip_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output ram_re_ip_s_axi_rvalid;

  wire \<const0> ;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tvalid;
  wire ram_re_ip_aresetn;
  wire ram_re_ip_s_axi_arready;
  wire ram_re_ip_s_axi_arvalid;
  wire ram_re_ip_s_axi_awready;
  wire ram_re_ip_s_axi_awvalid;
  wire ram_re_ip_s_axi_bready;
  wire ram_re_ip_s_axi_bvalid;
  wire [31:0]ram_re_ip_s_axi_rdata;
  wire ram_re_ip_s_axi_rready;
  wire ram_re_ip_s_axi_rvalid;
  wire [31:0]ram_re_ip_s_axi_wdata;
  wire ram_re_ip_s_axi_wready;
  wire [3:0]ram_re_ip_s_axi_wstrb;
  wire ram_re_ip_s_axi_wvalid;
  wire [1:0]NLW_inst_ram_re_ip_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_ram_re_ip_s_axi_rresp_UNCONNECTED;

  assign ram_re_ip_s_axi_bresp[1] = \<const0> ;
  assign ram_re_ip_s_axi_bresp[0] = \<const0> ;
  assign ram_re_ip_s_axi_rresp[1] = \<const0> ;
  assign ram_re_ip_s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_ram_re_0_1_ram_re_ip inst
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid),
        .ram_re_ip_aresetn(ram_re_ip_aresetn),
        .ram_re_ip_s_axi_araddr(1'b0),
        .ram_re_ip_s_axi_arready(ram_re_ip_s_axi_arready),
        .ram_re_ip_s_axi_arvalid(ram_re_ip_s_axi_arvalid),
        .ram_re_ip_s_axi_awaddr(1'b0),
        .ram_re_ip_s_axi_awready(ram_re_ip_s_axi_awready),
        .ram_re_ip_s_axi_awvalid(ram_re_ip_s_axi_awvalid),
        .ram_re_ip_s_axi_bready(ram_re_ip_s_axi_bready),
        .ram_re_ip_s_axi_bresp(NLW_inst_ram_re_ip_s_axi_bresp_UNCONNECTED[1:0]),
        .ram_re_ip_s_axi_bvalid(ram_re_ip_s_axi_bvalid),
        .ram_re_ip_s_axi_rdata(ram_re_ip_s_axi_rdata),
        .ram_re_ip_s_axi_rready(ram_re_ip_s_axi_rready),
        .ram_re_ip_s_axi_rresp(NLW_inst_ram_re_ip_s_axi_rresp_UNCONNECTED[1:0]),
        .ram_re_ip_s_axi_rvalid(ram_re_ip_s_axi_rvalid),
        .ram_re_ip_s_axi_wdata(ram_re_ip_s_axi_wdata),
        .ram_re_ip_s_axi_wready(ram_re_ip_s_axi_wready),
        .ram_re_ip_s_axi_wstrb(ram_re_ip_s_axi_wstrb),
        .ram_re_ip_s_axi_wvalid(ram_re_ip_s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "convert_func_call_ram_re_ip_xlconvert" *) 
module design_1_ram_re_0_1_convert_func_call_ram_re_ip_xlconvert
   (m_axis_tdata,
    douta);
  output [13:0]m_axis_tdata;
  input [15:0]douta;

  wire [15:0]douta;
  wire [13:0]m_axis_tdata;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[9]),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[10]),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[11]),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[12]),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[13]),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[0]),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[1]),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[2]),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[3]),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[4]),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[5]),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[6]),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[7]),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[8]),
        .O(m_axis_tdata[8]));
endmodule

(* ORIG_REF_NAME = "ram_re_ip" *) 
module design_1_ram_re_0_1_ram_re_ip
   (clk,
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
    ram_re_ip_s_axi_rvalid);
  input clk;
  input ram_re_ip_aresetn;
  input ram_re_ip_s_axi_awaddr;
  input ram_re_ip_s_axi_awvalid;
  input [31:0]ram_re_ip_s_axi_wdata;
  input [3:0]ram_re_ip_s_axi_wstrb;
  input ram_re_ip_s_axi_wvalid;
  input ram_re_ip_s_axi_bready;
  input ram_re_ip_s_axi_araddr;
  input ram_re_ip_s_axi_arvalid;
  input ram_re_ip_s_axi_rready;
  output [15:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tvalid;
  output ram_re_ip_s_axi_awready;
  output ram_re_ip_s_axi_wready;
  output [1:0]ram_re_ip_s_axi_bresp;
  output ram_re_ip_s_axi_bvalid;
  output ram_re_ip_s_axi_arready;
  output [31:0]ram_re_ip_s_axi_rdata;
  output [1:0]ram_re_ip_s_axi_rresp;
  output ram_re_ip_s_axi_rvalid;

  wire \<const0> ;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tvalid;
  wire ram_re_ip_aresetn;
  wire ram_re_ip_s_axi_arready;
  wire ram_re_ip_s_axi_arvalid;
  wire ram_re_ip_s_axi_awready;
  wire ram_re_ip_s_axi_awvalid;
  wire ram_re_ip_s_axi_bready;
  wire ram_re_ip_s_axi_bvalid;
  wire [31:0]ram_re_ip_s_axi_rdata;
  wire ram_re_ip_s_axi_rready;
  wire ram_re_ip_s_axi_rvalid;
  wire [31:0]ram_re_ip_s_axi_wdata;
  wire ram_re_ip_s_axi_wready;
  wire [3:0]ram_re_ip_s_axi_wstrb;
  wire ram_re_ip_s_axi_wvalid;

  assign ram_re_ip_s_axi_bresp[1] = \<const0> ;
  assign ram_re_ip_s_axi_bresp[0] = \<const0> ;
  assign ram_re_ip_s_axi_rresp[1] = \<const0> ;
  assign ram_re_ip_s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_ram_re_0_1_ram_re_ip_axi_lite_interface ram_re_ip_axi_lite_interface
       (.D(m_axis_tvalid),
        .axi_arready_reg(ram_re_ip_s_axi_arready),
        .axi_awready_reg(ram_re_ip_s_axi_awready),
        .axi_wready_reg(ram_re_ip_s_axi_wready),
        .clk(clk),
        .ram_re_ip_aresetn(ram_re_ip_aresetn),
        .ram_re_ip_s_axi_arvalid(ram_re_ip_s_axi_arvalid),
        .ram_re_ip_s_axi_awvalid(ram_re_ip_s_axi_awvalid),
        .ram_re_ip_s_axi_bready(ram_re_ip_s_axi_bready),
        .ram_re_ip_s_axi_bvalid(ram_re_ip_s_axi_bvalid),
        .ram_re_ip_s_axi_rdata(ram_re_ip_s_axi_rdata),
        .ram_re_ip_s_axi_rready(ram_re_ip_s_axi_rready),
        .ram_re_ip_s_axi_rvalid(ram_re_ip_s_axi_rvalid),
        .ram_re_ip_s_axi_wdata(ram_re_ip_s_axi_wdata),
        .ram_re_ip_s_axi_wstrb(ram_re_ip_s_axi_wstrb),
        .ram_re_ip_s_axi_wvalid(ram_re_ip_s_axi_wvalid));
  design_1_ram_re_0_1_ram_re_ip_struct ram_re_ip_struct
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "ram_re_ip_axi_lite_interface" *) 
module design_1_ram_re_0_1_ram_re_ip_axi_lite_interface
   (axi_wready_reg,
    axi_awready_reg,
    axi_arready_reg,
    ram_re_ip_s_axi_bvalid,
    ram_re_ip_s_axi_rvalid,
    D,
    ram_re_ip_s_axi_rdata,
    clk,
    ram_re_ip_s_axi_awvalid,
    ram_re_ip_s_axi_wvalid,
    ram_re_ip_s_axi_bready,
    ram_re_ip_s_axi_arvalid,
    ram_re_ip_s_axi_rready,
    ram_re_ip_s_axi_wdata,
    ram_re_ip_s_axi_wstrb,
    ram_re_ip_aresetn);
  output axi_wready_reg;
  output axi_awready_reg;
  output axi_arready_reg;
  output ram_re_ip_s_axi_bvalid;
  output ram_re_ip_s_axi_rvalid;
  output [0:0]D;
  output [31:0]ram_re_ip_s_axi_rdata;
  input clk;
  input ram_re_ip_s_axi_awvalid;
  input ram_re_ip_s_axi_wvalid;
  input ram_re_ip_s_axi_bready;
  input ram_re_ip_s_axi_arvalid;
  input ram_re_ip_s_axi_rready;
  input [31:0]ram_re_ip_s_axi_wdata;
  input [3:0]ram_re_ip_s_axi_wstrb;
  input ram_re_ip_aresetn;

  wire [0:0]D;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire clk;
  wire ram_re_ip_aresetn;
  wire ram_re_ip_s_axi_arvalid;
  wire ram_re_ip_s_axi_awvalid;
  wire ram_re_ip_s_axi_bready;
  wire ram_re_ip_s_axi_bvalid;
  wire [31:0]ram_re_ip_s_axi_rdata;
  wire ram_re_ip_s_axi_rready;
  wire ram_re_ip_s_axi_rvalid;
  wire [31:0]ram_re_ip_s_axi_wdata;
  wire [3:0]ram_re_ip_s_axi_wstrb;
  wire ram_re_ip_s_axi_wvalid;

  design_1_ram_re_0_1_ram_re_ip_axi_lite_interface_verilog inst
       (.D(D),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .clk(clk),
        .ram_re_ip_aresetn(ram_re_ip_aresetn),
        .ram_re_ip_s_axi_arvalid(ram_re_ip_s_axi_arvalid),
        .ram_re_ip_s_axi_awvalid(ram_re_ip_s_axi_awvalid),
        .ram_re_ip_s_axi_bready(ram_re_ip_s_axi_bready),
        .ram_re_ip_s_axi_bvalid(ram_re_ip_s_axi_bvalid),
        .ram_re_ip_s_axi_rdata(ram_re_ip_s_axi_rdata),
        .ram_re_ip_s_axi_rready(ram_re_ip_s_axi_rready),
        .ram_re_ip_s_axi_rvalid(ram_re_ip_s_axi_rvalid),
        .ram_re_ip_s_axi_wdata(ram_re_ip_s_axi_wdata),
        .ram_re_ip_s_axi_wstrb(ram_re_ip_s_axi_wstrb),
        .ram_re_ip_s_axi_wvalid(ram_re_ip_s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "ram_re_ip_axi_lite_interface_verilog" *) 
module design_1_ram_re_0_1_ram_re_ip_axi_lite_interface_verilog
   (axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    ram_re_ip_s_axi_bvalid,
    ram_re_ip_s_axi_rvalid,
    D,
    ram_re_ip_s_axi_rdata,
    clk,
    ram_re_ip_s_axi_awvalid,
    ram_re_ip_s_axi_wvalid,
    ram_re_ip_s_axi_bready,
    ram_re_ip_s_axi_arvalid,
    ram_re_ip_s_axi_rready,
    ram_re_ip_s_axi_wdata,
    ram_re_ip_s_axi_wstrb,
    ram_re_ip_aresetn);
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output ram_re_ip_s_axi_bvalid;
  output ram_re_ip_s_axi_rvalid;
  output [0:0]D;
  output [31:0]ram_re_ip_s_axi_rdata;
  input clk;
  input ram_re_ip_s_axi_awvalid;
  input ram_re_ip_s_axi_wvalid;
  input ram_re_ip_s_axi_bready;
  input ram_re_ip_s_axi_arvalid;
  input ram_re_ip_s_axi_rready;
  input [31:0]ram_re_ip_s_axi_wdata;
  input [3:0]ram_re_ip_s_axi_wstrb;
  input ram_re_ip_aresetn;

  wire [0:0]D;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire clk;
  wire [31:7]p_0_in;
  wire ram_re_ip_aresetn;
  wire ram_re_ip_s_axi_arvalid;
  wire ram_re_ip_s_axi_awvalid;
  wire ram_re_ip_s_axi_bready;
  wire ram_re_ip_s_axi_bvalid;
  wire [31:0]ram_re_ip_s_axi_rdata;
  wire ram_re_ip_s_axi_rready;
  wire ram_re_ip_s_axi_rvalid;
  wire [31:0]ram_re_ip_s_axi_wdata;
  wire [3:0]ram_re_ip_s_axi_wstrb;
  wire ram_re_ip_s_axi_wvalid;
  wire slv_reg_array1;
  wire \slv_reg_array[0][0]_i_1_n_0 ;
  wire \slv_reg_array[0][10]_i_1_n_0 ;
  wire \slv_reg_array[0][11]_i_1_n_0 ;
  wire \slv_reg_array[0][12]_i_1_n_0 ;
  wire \slv_reg_array[0][13]_i_1_n_0 ;
  wire \slv_reg_array[0][14]_i_1_n_0 ;
  wire \slv_reg_array[0][15]_i_2_n_0 ;
  wire \slv_reg_array[0][16]_i_1_n_0 ;
  wire \slv_reg_array[0][17]_i_1_n_0 ;
  wire \slv_reg_array[0][18]_i_1_n_0 ;
  wire \slv_reg_array[0][19]_i_1_n_0 ;
  wire \slv_reg_array[0][1]_i_1_n_0 ;
  wire \slv_reg_array[0][20]_i_1_n_0 ;
  wire \slv_reg_array[0][21]_i_1_n_0 ;
  wire \slv_reg_array[0][22]_i_1_n_0 ;
  wire \slv_reg_array[0][23]_i_2_n_0 ;
  wire \slv_reg_array[0][24]_i_1_n_0 ;
  wire \slv_reg_array[0][25]_i_1_n_0 ;
  wire \slv_reg_array[0][26]_i_1_n_0 ;
  wire \slv_reg_array[0][27]_i_1_n_0 ;
  wire \slv_reg_array[0][28]_i_1_n_0 ;
  wire \slv_reg_array[0][29]_i_1_n_0 ;
  wire \slv_reg_array[0][2]_i_1_n_0 ;
  wire \slv_reg_array[0][30]_i_1_n_0 ;
  wire \slv_reg_array[0][31]_i_2_n_0 ;
  wire \slv_reg_array[0][3]_i_1_n_0 ;
  wire \slv_reg_array[0][4]_i_1_n_0 ;
  wire \slv_reg_array[0][5]_i_1_n_0 ;
  wire \slv_reg_array[0][6]_i_1_n_0 ;
  wire \slv_reg_array[0][7]_i_2_n_0 ;
  wire \slv_reg_array[0][8]_i_1_n_0 ;
  wire \slv_reg_array[0][9]_i_1_n_0 ;
  wire [31:1]\slv_reg_array_reg[0] ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(ram_re_ip_s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(slv_reg_array1));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(ram_re_ip_aresetn),
        .O(slv_reg_array1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(ram_re_ip_s_axi_awvalid),
        .I1(ram_re_ip_s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(slv_reg_array1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(ram_re_ip_s_axi_awvalid),
        .I1(ram_re_ip_s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(ram_re_ip_s_axi_bready),
        .I5(ram_re_ip_s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(ram_re_ip_s_axi_bvalid),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[0] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(D),
        .Q(ram_re_ip_s_axi_rdata[0]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[10] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [10]),
        .Q(ram_re_ip_s_axi_rdata[10]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[11] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [11]),
        .Q(ram_re_ip_s_axi_rdata[11]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[12] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [12]),
        .Q(ram_re_ip_s_axi_rdata[12]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[13] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [13]),
        .Q(ram_re_ip_s_axi_rdata[13]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[14] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [14]),
        .Q(ram_re_ip_s_axi_rdata[14]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[15] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [15]),
        .Q(ram_re_ip_s_axi_rdata[15]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[16] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [16]),
        .Q(ram_re_ip_s_axi_rdata[16]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[17] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [17]),
        .Q(ram_re_ip_s_axi_rdata[17]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[18] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [18]),
        .Q(ram_re_ip_s_axi_rdata[18]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[19] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [19]),
        .Q(ram_re_ip_s_axi_rdata[19]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[1] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [1]),
        .Q(ram_re_ip_s_axi_rdata[1]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[20] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [20]),
        .Q(ram_re_ip_s_axi_rdata[20]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[21] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [21]),
        .Q(ram_re_ip_s_axi_rdata[21]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[22] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [22]),
        .Q(ram_re_ip_s_axi_rdata[22]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[23] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [23]),
        .Q(ram_re_ip_s_axi_rdata[23]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[24] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [24]),
        .Q(ram_re_ip_s_axi_rdata[24]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[25] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [25]),
        .Q(ram_re_ip_s_axi_rdata[25]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[26] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [26]),
        .Q(ram_re_ip_s_axi_rdata[26]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[27] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [27]),
        .Q(ram_re_ip_s_axi_rdata[27]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[28] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [28]),
        .Q(ram_re_ip_s_axi_rdata[28]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[29] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [29]),
        .Q(ram_re_ip_s_axi_rdata[29]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[2] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [2]),
        .Q(ram_re_ip_s_axi_rdata[2]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[30] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [30]),
        .Q(ram_re_ip_s_axi_rdata[30]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[31] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [31]),
        .Q(ram_re_ip_s_axi_rdata[31]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[3] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [3]),
        .Q(ram_re_ip_s_axi_rdata[3]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[4] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [4]),
        .Q(ram_re_ip_s_axi_rdata[4]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[5] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [5]),
        .Q(ram_re_ip_s_axi_rdata[5]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[6] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [6]),
        .Q(ram_re_ip_s_axi_rdata[6]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[7] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [7]),
        .Q(ram_re_ip_s_axi_rdata[7]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[8] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [8]),
        .Q(ram_re_ip_s_axi_rdata[8]),
        .R(slv_reg_array1));
  FDRE \axi_rdata_reg[9] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(\slv_reg_array_reg[0] [9]),
        .Q(ram_re_ip_s_axi_rdata[9]),
        .R(slv_reg_array1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(ram_re_ip_s_axi_arvalid),
        .I2(ram_re_ip_s_axi_rready),
        .I3(ram_re_ip_s_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(ram_re_ip_s_axi_rvalid),
        .R(slv_reg_array1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(ram_re_ip_s_axi_awvalid),
        .I1(ram_re_ip_s_axi_wvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(slv_reg_array1));
  LUT5 #(
    .INIT(32'hBF008000)) 
    \slv_reg_array[0][0]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[0]),
        .I1(ram_re_ip_s_axi_wstrb[0]),
        .I2(slv_reg_wren__0),
        .I3(ram_re_ip_aresetn),
        .I4(D),
        .O(\slv_reg_array[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg_array[0][0]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(ram_re_ip_s_axi_awvalid),
        .I3(ram_re_ip_s_axi_wvalid),
        .O(slv_reg_wren__0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][10]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[10]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][11]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[11]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][12]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[12]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][13]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[13]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][14]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[14]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg_array[0][15]_i_1 
       (.I0(ram_re_ip_s_axi_wstrb[1]),
        .I1(ram_re_ip_aresetn),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(ram_re_ip_s_axi_awvalid),
        .I5(ram_re_ip_s_axi_wvalid),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][15]_i_2 
       (.I0(ram_re_ip_s_axi_wdata[15]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][16]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[16]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][17]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[17]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][18]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[18]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][19]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[19]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][1]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[1]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][20]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[20]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][21]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[21]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][22]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[22]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg_array[0][23]_i_1 
       (.I0(ram_re_ip_s_axi_wstrb[2]),
        .I1(ram_re_ip_aresetn),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(ram_re_ip_s_axi_awvalid),
        .I5(ram_re_ip_s_axi_wvalid),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][23]_i_2 
       (.I0(ram_re_ip_s_axi_wdata[23]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][24]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[24]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][25]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[25]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][26]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[26]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][27]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[27]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][28]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[28]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][29]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[29]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][2]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[2]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][30]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[30]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg_array[0][31]_i_1 
       (.I0(ram_re_ip_s_axi_wstrb[3]),
        .I1(ram_re_ip_aresetn),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(ram_re_ip_s_axi_awvalid),
        .I5(ram_re_ip_s_axi_wvalid),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][31]_i_2 
       (.I0(ram_re_ip_s_axi_wdata[31]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][3]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[3]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][4]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[4]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][5]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[5]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][6]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[6]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg_array[0][7]_i_1 
       (.I0(ram_re_ip_s_axi_wstrb[0]),
        .I1(ram_re_ip_aresetn),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(ram_re_ip_s_axi_awvalid),
        .I5(ram_re_ip_s_axi_wvalid),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][7]_i_2 
       (.I0(ram_re_ip_s_axi_wdata[7]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][8]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[8]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg_array[0][9]_i_1 
       (.I0(ram_re_ip_s_axi_wdata[9]),
        .I1(slv_reg_wren__0),
        .O(\slv_reg_array[0][9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\slv_reg_array[0][0]_i_1_n_0 ),
        .Q(D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][10] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][10]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][11] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][11]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][12] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][12]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][13] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][13]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][14] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][14]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][15] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][15]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][16] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][16]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][17] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][17]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][18] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][18]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][19] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][19]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][1] 
       (.C(clk),
        .CE(p_0_in[7]),
        .D(\slv_reg_array[0][1]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][20] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][20]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][21] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][21]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][22] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][22]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][23] 
       (.C(clk),
        .CE(p_0_in[23]),
        .D(\slv_reg_array[0][23]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][24] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][24]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][25] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][25]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][26] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][26]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][27] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][27]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][28] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][28]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][29] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][29]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][2] 
       (.C(clk),
        .CE(p_0_in[7]),
        .D(\slv_reg_array[0][2]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][30] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][30]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][31] 
       (.C(clk),
        .CE(p_0_in[31]),
        .D(\slv_reg_array[0][31]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][3] 
       (.C(clk),
        .CE(p_0_in[7]),
        .D(\slv_reg_array[0][3]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][4] 
       (.C(clk),
        .CE(p_0_in[7]),
        .D(\slv_reg_array[0][4]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][5] 
       (.C(clk),
        .CE(p_0_in[7]),
        .D(\slv_reg_array[0][5]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][6] 
       (.C(clk),
        .CE(p_0_in[7]),
        .D(\slv_reg_array[0][6]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][7] 
       (.C(clk),
        .CE(p_0_in[7]),
        .D(\slv_reg_array[0][7]_i_2_n_0 ),
        .Q(\slv_reg_array_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][8] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][8]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg_array_reg[0][9] 
       (.C(clk),
        .CE(p_0_in[15]),
        .D(\slv_reg_array[0][9]_i_1_n_0 ),
        .Q(\slv_reg_array_reg[0] [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(ram_re_ip_s_axi_arvalid),
        .I1(ram_re_ip_s_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "ram_re_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ram_re_ip_c_counter_binary_v12_0_i0" *) 
(* X_CORE_INFO = "c_counter_binary_v12_0_19,Vivado 2024.1" *) 
module design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0
   (CLK,
    CE,
    SINIT,
    Q);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sinit_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef" *) input SINIT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [4:0]Q;

  wire CE;
  wire CLK;
  wire [4:0]Q;
  wire SINIT;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "5" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_ram_re_0_1_c_counter_binary_v12_0_19 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* ORIG_REF_NAME = "ram_re_ip_struct" *) 
module design_1_ram_re_0_1_ram_re_ip_struct
   (m_axis_tdata,
    m_axis_tlast,
    clk,
    m_axis_tvalid);
  output [15:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  input clk;
  input [0:0]m_axis_tvalid;

  wire clk;
  wire [4:0]counter_op_net;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tvalid;
  wire [14:0]rom_data_net;

  design_1_ram_re_0_1_ram_re_ip_xlconvert convert
       (.douta({m_axis_tdata[15],rom_data_net}),
        .m_axis_tdata(m_axis_tdata[14:1]));
  design_1_ram_re_0_1_ram_re_ip_xlcounter_limit counter
       (.Q(counter_op_net),
        .clk(clk),
        .m_axis_tvalid(m_axis_tvalid));
  design_1_ram_re_0_1_sysgen_relational_7b581d1b32 relational
       (.Q(counter_op_net),
        .clk(clk),
        .m_axis_tlast(m_axis_tlast));
  design_1_ram_re_0_1_ram_re_ip_xlsprom rom
       (.Q(counter_op_net),
        .clk(clk),
        .douta({m_axis_tdata[15],rom_data_net}),
        .m_axis_tdata(m_axis_tdata[0]));
endmodule

(* ORIG_REF_NAME = "ram_re_ip_xlconvert" *) 
module design_1_ram_re_0_1_ram_re_ip_xlconvert
   (m_axis_tdata,
    douta);
  output [13:0]m_axis_tdata;
  input [15:0]douta;

  wire [15:0]douta;
  wire [13:0]m_axis_tdata;

  design_1_ram_re_0_1_convert_func_call_ram_re_ip_xlconvert \std_conversion_generate.convert 
       (.douta(douta),
        .m_axis_tdata(m_axis_tdata));
endmodule

(* ORIG_REF_NAME = "ram_re_ip_xlcounter_limit" *) 
module design_1_ram_re_0_1_ram_re_ip_xlcounter_limit
   (Q,
    clk,
    m_axis_tvalid);
  output [4:0]Q;
  input clk;
  input [0:0]m_axis_tvalid;

  wire [4:0]Q;
  wire SINIT;
  wire clk;
  wire [0:0]m_axis_tvalid;

  (* CHECK_LICENSE_TYPE = "ram_re_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "c_counter_binary_v12_0_19,Vivado 2024.1" *) 
  design_1_ram_re_0_1_ram_re_ip_c_counter_binary_v12_0_i0 \comp0.core_instance0 
       (.CE(m_axis_tvalid),
        .CLK(clk),
        .Q(Q),
        .SINIT(SINIT));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    core_sinit
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(m_axis_tvalid),
        .O(SINIT));
endmodule

(* ORIG_REF_NAME = "ram_re_ip_xlsprom" *) 
module design_1_ram_re_0_1_ram_re_ip_xlsprom
   (douta,
    m_axis_tdata,
    clk,
    Q);
  output [15:0]douta;
  output [0:0]m_axis_tdata;
  input clk;
  input [4:0]Q;

  wire [4:0]Q;
  wire clk;
  wire [15:0]douta;
  wire [0:0]m_axis_tdata;

  design_1_ram_re_0_1_xpm_memory_sprom xpm_memory_sprom_inst
       (.Q(Q),
        .clk(clk),
        .douta(douta),
        .m_axis_tdata(m_axis_tdata));
endmodule

(* ORIG_REF_NAME = "sysgen_relational_7b581d1b32" *) 
module design_1_ram_re_0_1_sysgen_relational_7b581d1b32
   (m_axis_tlast,
    clk,
    Q);
  output [0:0]m_axis_tlast;
  input clk;
  input [4:0]Q;

  wire [4:0]Q;
  wire cast;
  wire clk;
  wire [0:0]m_axis_tlast;

  FDRE #(
    .INIT(1'b0)) 
    \op_mem_45_22_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(cast),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01000000)) 
    result_22_3_rel
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(cast));
endmodule

(* ADDR_WIDTH_A = "5" *) (* ADDR_WIDTH_B = "5" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "16" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "xpm_50d221_vivado.mem" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "512" *) (* MEMORY_TYPE = "3" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "32" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "0" *) 
(* P_MIN_WIDTH_DATA = "16" *) (* P_MIN_WIDTH_DATA_A = "16" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "16" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "16" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "5" *) 
(* P_WIDTH_ADDR_READ_B = "5" *) (* P_WIDTH_ADDR_WRITE_A = "5" *) (* P_WIDTH_ADDR_WRITE_B = "5" *) 
(* P_WIDTH_COL_WRITE_A = "16" *) (* P_WIDTH_COL_WRITE_B = "16" *) (* RAM_DECOMP = "auto" *) 
(* READ_DATA_WIDTH_A = "16" *) (* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "16" *) 
(* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) (* WRITE_MODE_B = "1" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "16" *) (* rstb_loop_iter = "16" *) 
module design_1_ram_re_0_1_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [4:0]addra;
  input [15:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [15:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [4:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [4:0]addra;
  wire clka;
  wire [15:0]douta;
  wire sleep;
  wire [15:0]\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPB_UNCONNECTED ;
  wire [15:0]\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPBDOUTP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/ram_re_ip_struct/rom/xpm_memory_sprom_inst/xpm_memory_base_inst/gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hCC39C47FC081C081C47FCC39D734E4C0F402040513C7224B2EA738153DFD4000),
    .INIT_01(256'h00000000000000000000000000003DFD38152EA7224B13C70405F402E4C0D734),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clka),
        .CLKBWRCLK(1'b0),
        .DINADIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT(douta),
        .DOUTBDOUT(\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTBDOUT_UNCONNECTED [15:0]),
        .DOUTPADOUTP(\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "xpm_memory_sprom" *) 
module design_1_ram_re_0_1_xpm_memory_sprom
   (douta,
    m_axis_tdata,
    clk,
    Q);
  output [15:0]douta;
  output [0:0]m_axis_tdata;
  input clk;
  input [4:0]Q;

  wire [4:0]Q;
  wire clk;
  wire [15:0]douta;
  wire [0:0]m_axis_tdata;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;
  wire [15:0]NLW_xpm_memory_base_inst_doutb_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .O(m_axis_tdata));
  (* ADDR_WIDTH_A = "5" *) 
  (* ADDR_WIDTH_B = "5" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "16" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "15" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "16" *) 
  (* MEMORY_INIT_FILE = "xpm_50d221_vivado.mem" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "512" *) 
  (* MEMORY_TYPE = "3" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "32" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "16" *) 
  (* P_MIN_WIDTH_DATA_A = "16" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "16" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "16" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "5" *) 
  (* P_WIDTH_ADDR_READ_B = "5" *) 
  (* P_WIDTH_ADDR_WRITE_A = "5" *) 
  (* P_WIDTH_ADDR_WRITE_B = "5" *) 
  (* P_WIDTH_COL_WRITE_A = "16" *) 
  (* P_WIDTH_COL_WRITE_B = "16" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "16" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "16" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "16" *) 
  (* rstb_loop_iter = "16" *) 
  design_1_ram_re_0_1_xpm_memory_base xpm_memory_base_inst
       (.addra(Q),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clk),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_xpm_memory_base_inst_doutb_UNCONNECTED[15:0]),
        .ena(1'b1),
        .enb(1'b0),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
P2zhX82uyBEVdF5BF2rjoPUFIfjipNZhYEpATLKcgiS9EGXt6qBbOMX2jVOCy0XDwb5TVkE1nG7X
XhCGxKErRU9jPoY7WV0pdI1wIayHDc8Rs74bj3N0mzWMplnVCaSPbBpIC4LYfqpVTVio67s5iy3E
w6sva82hbE3cZ5p/rRc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ATCqDjeJlE3rd1lUTRMTvM13wZLySdeY6qhbV5igkPcemUzykIjBbnJsu6APb1ENNlZoK/EbAyI9
qN25AMJVtn283z16KSVpxvftA/Tl0lUlk9wO55eVk5wKgvB1cSVywiEOogV7vDrt3hiX35a7Svds
AV9xqvsQsA2wV5gXrBdHbfVk5TrReH9zaojTNW8dt8mGUB8+yv1X/gfGVT6v6NabkmJviHj8hTNq
FZ4N5hZKo50t+Imqbe2o6y27+dlrdck69OyARANqpqF01fu72w0QZAXYJ90ATJRH7ABM8M/5UFse
AEFeVYp2M818KdaSVTFsSByUaYJXCdkuxJUM9g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bRU/WKwbjvfClA011r3CVZ1YUizTPsik1AOc+TikBCWuqg1UqofZgbFuqULMNnL7MXEAzuP+FXgr
VqVrQpu/CGGtKAfHwc3t//w4acyK5GTpXOAI1wgkigzOEm4yg4vKgPNXC610E4aKK/j4dyuUaDR1
zB3hAaf2q33Sz5IQmPU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UgFJO2X6yZZkXNbvv3vUKymwKnlqFgpA384zFnWoT6HXDt6Iq088pkqIqpin5DhL9xB5RsuqnKGH
1cx2mxvmAsdXtgJcifR+VLXpF/l1p5GswXHVa4EQ6SpNznBhHxXh/Z9Ppb8M8EQqocBwed2dOc74
dmBWx9KElaVqaqF+H801o3N9wlIvJOZpHMW5CxuAyPwCfPAbDwyafCK4aBeFM+ZP8YarLD35U5vZ
yL6YRHcKJPlLPF3red34Gw4W7ZstV3K2TPyMWkr2qc9QYj2Nf5ftVZYbLPxBYVTro7Nl4lCUIPES
ONu8dF9MdgfLI7lT8lq/l1iUAez7879SWhtp9Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OoYBKlg7sap/0EsIV1swjKUenTJcWreOpMa9MzKYwYAEYCCz7DjDVq3RT5kxtS2wTNfmLZaVB7+V
uu2GdOTjOmSwdY+FFt1h2XrOK1cMm13IZY5/pVznUrUKKHHf2GDT40ita0dwLiINXv4HdgC5bVhM
hiksIRqpsQ0LG7i/2cWLxEgYFJA859AGtE1Upcm+6jxP2EenOxQZu0UcDGCOlP6CXggaDD2i7Yw/
0RihXovM0AoqZA/zgFW+PCpMoOAAj62HZgpnF2hDwVgnLZ3WbYh345T8hrtoAqb3t4WxmEjDCp2R
KPYZYBvaMaBaiHE5iBvQjrpmfI8dJWe4J40jYw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Gx4eTayjueg5J6NG9oGeMhEPuV5NeFJH2DVuyrKF9JKQx8buMiHh8wVPYUoOwMilvyPOIXUcaBQ9
FpU4pPlYa1vZpL5ngIpVugCvQfAtzCuNESRWvRmPubvd01w8PHV+Q2LaWQeFcoLTzFMTFN03aPM7
5TZfp+L/ooPM84memH86HsypSrgkza6VSz0/Z5Ns5oJ8nV3MLuoNQOLd8IMxuOqKGSLzb1ZQdrLu
iFCyMbQwcldt68vGW2EkN98CUyQK8qXwgMJVMuCaP9/oILpn1rBbN2eEh/tmpgtPeoSvA0cUldNF
IcGb+KNtMVKLWHv0efcrV5ldY6MEfo4g4qBbIA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VFXYmS0ReAB+6/UTbJULVtr1PCaPeCYPVAdUlGeIdUeW9/+rumdhhwgNy2VoKVQC2S8vLxoX2B9l
jgRTQcufyHScGKTHNl3RWvyypLEIoJcoasZWqHzS0ydGSUwa5HoDqsm+gTKcN8Lea4jRdUehj9eR
l7Gx/X2DwwAiIlLjg+4EMv7Irp43V7CNXGFNAfsC1np22kZo7+UqOLYq9zlFKzLw0a6zw4zKDPJi
44kLvxg5Z74zzhtrEENnmXju1z+tlpjS+Qm5AM3C5o3FPYq+hsvO4JH7uDBYjZxw++NDivipcqj2
R7zMiRKY45jyIxh8orFhpXM8HHcVfl7ZnzIXEQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
dOa3TgVfay2fU+u/a/KY/hvZhMg1HC8R8B0CPA+YkM9Sh4VIBOmEl0slV3txZIIjIVmwQqUyQFPR
c9L3JWfFo5uo7SHI/NYzEw5kVOhP9C64NJfcAWneItu6ZpFBpsCQoOA13wA9LRKxOl6QXt4qhQeJ
btAg9fTKOapaMMuzEfTwJY9of0XC5QiXH0vtBSIsNkgldU/qdMeCckChCdbv0YDeJ96FpJEeEo2A
Z0Tjo7OVc0akihtesCKsdWotZLDWBCy/WC3/0jVxCfLD8WPFJZch41aZ382qdLlx/+be6K9JCpBQ
Zcrz/qJep1crHZewcLRZubaOPXx3IVElwjS4xkQbMPjoU2iSo9sCLGK+tj7D0rKUcjijLHHZ7LyM
ZaqVzGGBFYaPkwOWkJneOrMGDhv6ToIuNZvp9CR7oTPOOujHtoM+WzKK0KYToAdZuC3wMbxHQpM+
FAOSJ85yT4fOkvO051b247di0eZ2+bcVc4x1/G5rY7mjl5T4uoWiRK8f

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZckpUFeVVx9iLDnjGxdD/gZkKrAvyHBZklEmeoQIleh9f6KZXrh23OJR3urQB0LqWf7FGxDR05oT
nGlPYV0u9NJ/f8Iw5mJlq9ll0GmDLqJKUrv73p286GQmWMf5vnV/NejEqQtGxgTqjGjePbhx/a7W
p0JDEhrOFhBR3oaSLrGIFV4TJNWcy9+KwpNXpqudxr/77gX0WTvdox9kM8x9lUMVpSxtaQTyLJxy
v+mraCjTm92jcPvWO1wG3miaHlrg4ZVsvfSkHMz3c6ZgQMHm/vmrRILcxDEjG8XF7Q8PqIFXxBP8
iVQaTS4/i5ThaA3fitsBdX9SBjhH3/j9vb+qAQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sMq7mC29pD/8oTEvyIFQnG4QbCbHnJa0f/5p35ZaRrQlBXntpBsE2KeOjpPSle/BxexnCoyRhE5z
R8eqlJqd0mdDRLFPcafFa4Yogwl5gpS7tNTA1L2oQU7VTd8hTFm1JcFYOc5WCWaaGH6zCBtODfbZ
MRz4C3OpfQO06AaMhw2kLwwb6BLavcxqXUPk7eHPpZzx9t7TiiCVp/anVnXXee9RTqXEjNNnTMJg
H9bUbdN2of38ywrNWhixjSD1fcoSxTN3MI1jc0e8azTDkk58AFOQjkw6g5twk6WXHJw5N4n/3n9n
+19olFZFgOpFry/mkncJUL7rLTclI7ksIId1iQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YcaJzOMzgMwFRwFA53PoKcbgXwEj3na64lw8rbkPIEr1iki1eHcr/DTK8IzFAhMgViOyQ1laYJS3
7Jg7Ot7tTfaQXJBT1yEhRofeI2udj29HEVHyYvhLPIjmNhLRbxls35EmRG6NAWYm+7IoPIri0ymQ
g/83PIyew58zRsKE2yP84d8u5LaiFmjGN97a5/wHwkpuIoHueT/ZCBRT/6BeV9pIb4vN8hM261mU
eOVSjWajLoCUbVcmKnhc2UV684b9ifyKGrXJQ7htRlnkjG1JRuLUr2RNOlTqgp0nEbAsmtUrbbcs
wJQSVrUy/jCYbQn9YY9MNDE/b8U/DNhtoPWVCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2368)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
j+cisgNr51kboBzSEDMqVtItc+GjGUiMNF0E04YxNeYXTtpqczXoHl7p3pBX3lPxGHPUBdZ6oYbA
uFzQSoAOvv3ANxN24NJ35g39Gushnh3bAhkIaggJwqirNk8uvbFei0Q37GZcy7DTONZHx9iSsnwg
43qcv84+v1Oqg1QlkK0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LvmfIuwVQiUSvu/SWE90Ii3gBrSlLLUK62Pe9Uo5lexkMeDgQfulU0pV4/6bexfxf29XSUIZb3c9
av2fcRcp1ZeyqEnW0ei/HP4UoYfgCSzAUmuehTopxqUP3M4kX2/ETc0gdNuIi6qDHquW7YY9QQGa
g5MTm81zI19+yvQdowrY7g+W1mLrHRcb8Ho+qe0uZMYO9K9DLpwNlhtSf0qufVmJGM+5COEyqb1U
lL+nfwveqOc0IWRRpPS42kC7OR6BTARi5c6dKCQl/a9fojTU0hW9itdcCGK5DL1CuzhnLB3Cw1Lc
UIHvmiN+LslcbwXadjp0wvd8yuh6HziY0Vfxsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sxpYAYC9AO3d/Qq5Dz0dcOejYw99+MiH0W395D6tyIroWG9T14T6E7ryw+s/by4tx97NytW6qUN3
NXZVsmgnxSKTeXfcn+ZXRsWNPcQGtCaIdh8TbBiHtUeZecWXJ0/iGORapfLQxNbHmGtiSkN1eYCn
C7QZMw6qZPNfuNyivRg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/GNyTiOpevKZa3+bbpJb0kDvoBk/eMnN/JT+ul7JFDogMwn8CpOobzq4ORZE40PqtaeX8shZ2Io
cJi8jjFyYeWd2nZtLZo0heKqX3v/pdf8QoQbxat3X7qE+EWjBbCn/ZFGg9zTrFFxwaHk42COVzlL
0j+PRabCWynZ5ILjyTP47frcmCN/iRKt0d+pvi/GA4UjFDtb6+9p1niifgkhCn1MkMBg8U/Y5knN
CVQ7z+g5SrUo/3bEiUXLkpBhMSliuE96gVp/dhIEh9H7jm8yTGyk0JzdtVTLaZLa+Lip0djJZLpb
UppZLdmVomSIk5FAqXrXZx6cyoWBJHtDlyJZkA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hg0hZUmrq09eMOjEntvd+gf7Zd2U4BwDY1Jz7gQri0LZtchGB8Z8SRY7YjUyWlUFux+gzbhxtgxE
uXob+ZiD1GlC8r4A2zRmOzuSIMz5UnEhy5TMjR+8A23FUgB5H14Nk+8/ui0Zs/CqU3Odf3BBWOAg
zxnOh70mcUhtPTAIZ+EcN+1Ujtdp78bNTd2IQJcFIhDRt35kHTIgOpo8oDPU8cUgKH6HYVq0sF+B
1yu+k9PCMZikA3k51SJhEW/Qc39FpYPT9CKN0WwelzSM6CD2GrcLMAt1oh2PsLi9Pfz1zzfj+mED
XS3V2CvLYBAA5I2Zn5G1DKrCLW1s3QCGdjLFcQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZihOD8xT0OXV+vYQgVKC2OgNYw1KaLnWHAc+JKheEAvf+yg1M7C7urUi93p572HyJs7Y4xmmO7jH
ND7Tv3yag5/ovBwWsoZpyr5RiGqozyxd59WCmh1IY/4VIOP7O8XrKDP4OGGR4Yrc69eGX7icFD/q
q1Yri9lFsLwghmgnG5/5LI0ZMQuooogdTmG+J2E0ZDBWfT/UmG0W92Ul8I3gfcKlKOiouwG5y4Jp
nBDOfD0ITqlCH9MMIsDa+elFeLXvv2KVvemlQ6QmFkF7trsIsF7QEhsAEKVsCYQTNVAGTL0GQsfh
sg3wRbAMH9DIJaQxk+17Z2Yacz0Veyzzwk9ehw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HY3h60x+HFg/eOgHTI4UVm9DtPW6wqUKca7u8NGVkEwgcMgpHEWwLglcdrxdQNjcwm8OHot4ETKF
WKbgVoX+iDWvtyepO4qxoxeWXH2F1fmkO5TcCS5lfsbj510UC680iv6lj8Cyu8iiRTaXR/o4FoM0
fC0fK1I3vPhOTQ5CR3OgRKAFDdX+d/qZ444LSpBM+tvjaaKR1BRRMkaGxO58SlkZRhBySU0nhAQy
dLhrkimMDrmmj/sej98ps6eMFspr8+5pUYJg+vWp++Sm0zHT5N6L1+n+oCGTjgEAgNvxvIgPv6O6
O614qs4bb0unrlrWFTLtb8eoiQe9RHpwGopwlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UwlS0UvncccxxkW4NnEPYSb0LG5K+diX5o0hrXyga8q/gD9ab0W8hccMe2HgIOrJ0coq4cXubRll
ZpfwAORkvZtLjLAkjJkvmwum68290Kk65/t/Zns9LY543if5KVhDzDg632T/2/g+S4iACupycWXY
cZ6s39/F2p//kX1YHKh6qPf3qkoP25aHoXQhlWkBAIGe3uIyPYPXstbeMaMeWMmKTh0rnBbtpr8y
0Qg1S5j9DIzW9sNl57338zbHnQbUbJzw5eAHPIYReJLbGLoFizMzbCeVUf9qQcME/zhozlHMqIYN
Mafo4cDvvsMIs8ppl+EWkfmPwMyBiDor8XdnJwhL6PXvmC52OK25D9SarDCqe+sqUKRPLYOzZm9s
mRp4pTSLWqKlA4Kmt9Om1GAjesqP6fBmfP1NGnjIrnslWz4gi45DlpUHMRKmIlfMjMLoDcxkJyie
bdt0EiJv3tUHW+hzM1osET2y5r7UP2tXX1I0KcbPrsM8mAjAbCi8yC8b

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X0dvE3L7dLQCMLonwloQgw5itpWmwVthmLjXvNCwkkUnrWRnIFGWcVV+7J059QS+MH4TlngLY35K
jozGLlOeR74+bBTejoxLYWg2EOfziRkOnWV2uSeOTEyEL+LD9sSATD6G+de3w3tolkltsugp6Asm
4+ouB1syLSHEJDe3i6xdrhgn2gjStQgaIBrGx67K6P9M/ZpIE3tJpGwQpXAQW6mcrqXnyP8s9OOR
lKGNPgaQFWDxxHZY806A4MaHpWk9o7ni2o+CNUO1IEpPDpNcX5kMGjPY2d5U2F21JssOrE9gdyeA
WYmROE1TZ0h61Y5QNSuC42zh2bxl5RnU9Yw9kA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oIVzpSluI7daBxkOk2gHCozBGlbxG53WoEhOzUaurQiUeJP9/arWOJWk+fvz3PNZhGKqhMT34Elf
4CE16vrKhBto+aiBjmbTGqgpcZuAov0ThKrdb5D2RErj9L03MzOMQdBEb2OGyWHIaVcOR12TL/Pc
ppZorRLXpXsMO6OiQvQgS6gBpPLmoJ/4mFQU2y7Gq4fQ1w0mBb5WD4aOFS27kco9sWZg134eJyHh
g3WophY4AK3S6VNrjwfZ8V2EHcWlysmTyQhS/i6nISRdlQIyBBenPXI1qC3X2elRwJJ1rDBw4tSk
FPpZVv+Pg6wD1lxgePFMJlGymPGte/sHafK1og==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
flfR64NYycLIyauxCLn1wC38i1K4/yOEiIIS/pzPw5b4T8AQasCEhfXccXWd7XYD8tVTgjkiZlil
BY/FskgSGdAPW60ru4A65EEa7ULY+aPS1CSMAW6nANPgjVXgGu5AsFKiDjSfY+ibvvFHUmJ8Zmez
wEdjdaf1uPn8gwW70f2+rXV6O5zQnCdBG+tQ5cUZMYqSxcdKZEcd7uFDN1+GqykP0vqNVRZMAmZE
umrRSJg1a1YyLdwwKiD+UbAJWJ0KQNS+4RQTCOHtz8/EK1t1YnoCf5KBTTe57whtj0S+rfOK5HaB
upEqngWyR+h+SKSvfYHRQkIHJPKSCB9buGG6MQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6032)
`pragma protect data_block
V9EcPXolRtqO1tPcLryoP6P2D27lgPYJFo3u9xs5yo+wahPxtWk2ZdYKp9IniOR6yPVX7JFsgV15
eO9jbmev5i6r98+JiFQkeQyz+vxM2OtiNTJDD5qprWzv11ncSKHnyJlW8wIJs60MBeRP40WbuHvK
votOkPvlVoWoDZ4Nc0rKNpwqPCMw/QUa/c5Btdy+gcWntk46SH8HMgYDZguDfm0RHcoRGeCJddwV
plbVeQ/j3qQGWuG+VVrlUF0HE6VIWfaap0ArnR++jkYkAUDPBwnk/feKRQrw4erOzEnB2j9Ni1pb
BPiwFwEkcnVzomlnEW6HgKifjt1736wjSRkUH6Monerp204odoLlc/ggW7STgnlxbAGeO8TzqLtu
7E3Z3N1se9SjLn5etsxFMstf1URvWeX6k60LbSQ5YECcdWhqh3oPf6GGG3liDDDhYVe3Zf1XiBBT
rQ+1eRAE4pZQiNvI0ElVlQNfCzzH/j8OJ5o3U/Bf1AdFSI6YRXf2mGjHrpDubKYLsjaz8mAAYHdG
7ZSGNhDCt7rUH3vgd2H3H3C8YlxK6xp0Yy2iMFSvnkCeHJoKGhg1gGe6nm4eRD3T8KGvq8YqKu0O
dzoq3h3+9AYCw3ejr0X3c/2JPakqqNS1Me8zdnjdiBvmHS+XosOYbyC6uLMhI1uzooYn5Zn8zXRa
Y4lw/N4EZR4n5Z4BAaDumxAGQ4qWpjllNnJ6+Sdwe5ReVaUIK0PCBQHQxVHXmVi6rnRyPdOJ+et3
fP1jkUNAsA+sWj3oKlED3wjbuZ5cVicz5QQZqVn83mgwNl9nFFgXbhepTOIKXkG+dbiu5hFNFKMc
EPwNGD6WoV8zWzDpuuWb257QaDe2Y/5YRTrlBBVgRb9l+fENeNeEj2Z0X9Q76GmNDWqnWZQ5eUNe
5r5SKo+hyyhyWvxziPoxYwkcIVukVldHdwAWq/2eZyBu6AVviPV7iJCeAB87E+Wp/M1iw/3Gei89
JHfv+qKZVCw1O5gt8VMDTePPj4GSfZC01/XEBqdI0jWa3cmIOppr//6Zpjc0DW+PHToZjDJ46/Fj
qxBBuwtivNB22uFLSUksgj1W51QbZzFsqpkWrKPS8zzDdo7HjSZwqgpQJk9VT9F58MteqtowDB6Q
5mV0qfxb7cb8Sd0iZ5WS2dw9IGIkJG8rVov+buYZ3yIqMK+1Lslyaq/7yoSYH+2J6i7oZUC67xxv
NYTnoO27DEHptiUxytv8STaJ8VTUqXI6gnwlaREZclo+L+KC+pkXvNyzNAyyL8N7X7mcfs7mf5LE
pWPBpEEck9xnp77NHSxSb7mByYjwLZeo1saPStGi1i4tw0FZp0FoAOac2TBAog7jit/rzEIx9AGb
7mX+GiuDvgOry0iuxYA2QOYS3KOtabEakrdCE0Ytab6H+p+iDEuNu7dXXd236pW5zjkY1VnsMM4X
tIUj8HhW/72+u8/XM/qYdoqmqNh9D/fJkTAgTrL5KH1sJOwYsGtRXtCzLvtZb5yMFOwmo0ozyBUs
ujrPL9ZWaIT1aeiAafqkTvFccyqdZWOqkPzDHcjF01YkY+D+QM78t7JUFTn7tHlMy10WGdvn9EcT
47TU1m9RqOK63yLpMrwTmqB8+V16AU23BoAkBhjggBRvTBH/ZVcfVTmAUg3KJRqXvBdGbzfNX+Gi
s7TpU/OnsSg2IIw0fbTFz+upmW/nOt3fyXtbKhiCeS/0EYlK9XsEnr56+UEaQJixTDLTRUZWXPaX
gbUG23e37Wnjqo23GAILL0mGOqna9LLGCi1PBJpFtdnDBCmdHrMOaK5aVIW4fMSIWIR7kf/vVqLX
DDBW39B5WhaKMVS+Qhrf7EMJWw/S6sC8ULOqqgiD/nBZUlnqfO9UlHaiKmCB5GzXsjqwcpAHytZY
AY1jVFA6/cZe7Npk1rhW8tpHJWx007VTi5dSFRVflrE/VV9G/uhENG54GWjM7qHgUSgTH8KF+wcs
4TeEHUkSxmnw42ufIlR1T5yK+4vs7OUZbXK/2oP5RRnuYPbw8V35XvBJ2i4PNCO9/Cr8dQIVbxvR
uTNnu6CRQKzj0ma9d76ML+drCCLRU2+gjlvie86csAFANfxdDvhRaiD+dmXdRpa40VbWJ1WYaajA
evpDNfgMhn3cnkopt9ZeN9tJYgXT1BSYo4zU162QYegnfcTrtUaSxLorfhhiYwf6Yyof6P+HRFr/
sOb+MR15G5Zg5bna5wAhrEX1jbjeNfpHaWMFwnccjtXnNGAJjCGINZ47UoZCV9QszPtRxA+Q5EnC
iXbTwAULTQl7lCNL7wWMb/61jU96GdAAqFwL9yWD56bmWosrTjFYhKVLIlhUtJpiohUb1x3Xv+ez
5z5gDJyV1dBxRVN4lqYnL6rEIgDz7kOO56/UCHWH0TxgEU5WvzyV/VI8FsbK/IKHxbWWLzPeOr+B
LW7pYMdllVDAvdg+M5Cb+fmAQ/ae1/Jpus4QQuuYtYzDPKMcDVc+j/rHnTjWUYtXi3wQj6EsHhDg
J9lgeW7xhXataCCjQ0MA0IguAISi8feKKqmGoCrUz7paWtNIkbt+mqEZ1YeC9hLDFPAFod/j7S56
7/THpLDRKDacLiXbEQjEmwFpi1OODVhClTZc2C8rBaEgzN5xPcAmr0mog5EChKdMapCNyNuB86pX
6t/lw/M4oQ5eCeFncfkpytusLXQsP0g8lfg6yYwp+qa5uKY7lwtw7GQydbv0Zs9cdYyB5vJLkqP0
nZVk7NM4Z+9S5Q6rNJ4cR+mN67QQns6swO63TJytlWqsSCNuzHy8qpSY9EIgCF3+FtXPN16Gb5+t
MPj5QEfo1louten6HxuqXSl723qO2A3u7gDKPGGbend4flrZYnGNxMFWU26uEyimRMZSfaic/0QF
vzO2TJPZZAWyc2Ql37A2YEh4rBlLjJ7KD0ti9pKYSOveme/c5wrO53pCpLR/9Cqe3UDNDr9UcuEh
1SvA5oW8tmP0Xjni6ZcRuIWRsT+KbLTlSE5i/B6Stsb/tAwqq4M60HqNli5ovqljQkX8D+Jf+FFE
/tlqV1GyxDKESa2eL1zcc4l9BDccslsLL5MqidGJ7I3IkgUbaT9t3P7qpGrXEAWXIjtNGiJMpvoq
xWuwdGFrLCuvR6e0IDeCZW25vyAw3fW3ZGZzA0ajHnozGTFro8v6xlEhpiPdqMR4z8Q2SKCHGdo5
hedLv+SNKL2UmH0Mru08xcKL4GHFUe1rmENLmJ/NED737zAdoHVEMANjKbDVLAps/exVaKrdYAqy
dWc6XuqVb+uGNcyEPFGfPyp8p5TREGhRIgScvkapfqyS/u5D7IoeS/C48QDFmlcfw4ZXiwmkp2iH
azFTHBcF0sCqvWK1FZ0gBQb85Za51ObhWMluvjQKQwIRRkhARNZJv9F9OYDlWASO+Uz1tRrRYCoN
KJA1J/iMeKrz9gbSdo+RJKIrqiMpXhtH7T4VevyrarKVLTzG7NiaxKMiwx0l/TqHqDSCh2EyPwIC
nb0BRRPVYbfYze4VcPhPFCYwyTrwgQJSV0SccEDG/N9ITfTELMLbMTgwpRVpnIBi9X+GasuLgIWg
0nHf++UHl4eEPk5T3enltwCNLAW+/l8GcGZpi+ABskYgUd2zlRlTmBXEmJewoWF/+rQkPnKwqA1B
WV9eBinZJytC/b3UxPv8y0DaxYifwApdkzc7wLSaLnFxIYcHctvpUxTGE8mLdkF2ekWWOIV8qBU6
3UuWSHHXEVWz2nen3F6EWtXjSdMoxAJwaqFtieZw48W0ARwcJORyWC1rg8qUyomzdQEl6lBdPRJW
S6WbsAWwgYjZiD0JnaEg4/hGoDPn+W2m/npBQC8dCooHNukIn6XqgFtTEpv57UmWDHxXP63DVZZA
Z8JWdxguHjvDywUdRk3K5YC8Z/E9Ch5iXk22H+waQevRiKjZXx159zA+zklpJfHMAdYwBJ35WAMf
nTfDkWwKg7m9MV04F8Lt2zQAVOgmONaxPvTbq2dJBaeI8TT3cSirLt52foElJWLxfbcOUGlyHfFa
W+PbVCKM8wXN3FIr6G0HeZg/Fb68l8SteLyk8Wx02n0cy8S0SwFLj/tfGznuQ9jEd63eIsvlRGMK
tz6yssCB3QCslHykP57ujvLY201kORJTMlX8mLoZlaKjyxWbSee0wDfaW5CZ12LfVSIm5/4LSwyj
AKs97uI3iCboaNzsMQtx25K1XXo9O4c8/Bgq6NNp6wPj484wb4BKGCnX19X1bXEQv5sbXm1/hQ9m
t/DMPFngFhMEXOPssOaMfiXNByllb9zJ2TJlbehtchAwNOJvCGg45q/J6cYxIYPAz2AAh2FypI+c
6sIWBfjCQshMgy62CSqtBqQrDPcmhKZbnjjbWF+hGojtSu3boK2HuKcE/MxCKX+y/JM5aYE3JyXG
dBB66WrzRojtEQa85jKJVZwNDPBSwJ/ToZMG5w9pluiQw9vx8JYSPYaKGhJHzutSIjlmJUUlae0Q
kl9QmItBeDYDhm4jD8OVuOHCNfB5RWeRGSRQ+PUJ+Znqnq8Chfrk1GWgi5jp8w4ahpjmaLYFw+rM
HD3Wn+mBUYxowRK9N/eW5lo1QDRGpSGDuMoM6A6CL6ddvUB61JYGfUuyzahlv0x/K3SPtBP+WIuN
sHbWpdUnn1AVYGKc87vl2ENU1pa7bqohdLVtZHyBfNLbx4MVHgke+lDrJ3ahTeG/yHRh8h6nhQRE
Sl4U0LzHO0B7CS6Q9jm+n5dpStuScVpUqs+77C2ErS6LJUF27NHWf13jZGDMM6upRDk5JO7kK3Kt
uBHvqVihH+ow9yIMgQAQF19sJKOkz7vsRKBLsVOpHJIcqMC99Apx5heD2708NP5nGQuZaCQ0S1Qs
V9XIHtT+44P2l68TYEU36xhYL0kj6Y8jvzF0HQWo1QJiWLDfl5Ok/mmOAbnveQLa1fV9R2FACbg2
q5Xi6QSMcYzmvSa0jnC2qJm7oRXfsEKhXq0c41dmUW9XW2Lm/yJxl/05OdTmX3NfqKKzLk89JviR
Jq41K0pB12ZlV51RsiL1y/zTTdWpmfqBb8XCBLHqSOceCTJlneOVMg9UiAsfJi0Hvpg63rx9tIbk
IUcS96h//C/q7uAf381uhFjc5KOzvjMsr4lMMslYMjvIiIBAMtevwUGGyqNFI3dCeW2Udji18ZOp
mHMCkVLmUguNK8I4wZL+5FHQgJIiI8N/iKCCjC+tGeoMBzLAHRg1VtTXnTtN0Co8PVLZVoSCrSEo
nSSLOIlfMS3T4fE4gwjASMuPGSMpZoUaLMQMvNVkse4kn9p1pGR0WF54zSZbikTpVd7SVowVSWkQ
WOzf3iGcHL5s8e50+pkBmd7OuJa7yoynyANjh/9uMlyDtS6tZrpYpZ3rfYi+y9PFPClnOPmqp+bP
HLtcZDmbdT8/S2GKGLfeoqezyZ7u5KaX2hXa2VPpp4IDrMsaok4B32VSY7JV8GY9ZjvjfLrBhTvv
g4lPhqmPn6/iEBwZl7jWTxFhxKjHClsFngOLRXLKy5O1Z8obSUhdLgJTk72wWsJTbNko5h+1ufsK
4RkThaesApK8PjPxluC4+eGhE610hl7QFRBL5ECkERHQGE7+HJwN+CQGNM2rvvuQHCKzoFJZfTXM
Qre4z/TEAf1FDc4xJ4Ifny8YIVxId4sewXitTTCDlwQOC4//zSVcyI6QcQwR+HijT0Xp/yzj4h2g
b/oERZLe7U3ROa/sSwEb/iEgu+PGiGwDMtOfr6UPnY6pBoRKHQ8T5K3q7WSZAwJ9aGe2jZ5lJKO9
RQv0VcoPAOSRvBNcdjq7tzaTmyZlpSySTgprBez8e+6mulFW5TqnYi632mhL/4Ev7CVXA2QU2AZk
6zFWn4ZPFqwTmYbazOoNZWGFEwfEk5Eh8S8XfCQTWiE2mOXkfja0I4vno7RowFpb1jUoCNvoJDjU
0f6NfZVO/NcXa36jTPwcUvU2MwFexhwt4/gPrdxyPw34B6dWVwe5Ddg5cRVoXi2xceZbms1Axbp8
+zq7KBukfTh+jh15jP4CcZNjAt04nplSfqheMaNA5AkcPc6pkmr4u+9OlPeZOLmvqKKITf7KzbgA
zWHhRZQTC0TMjZSLoUBtZJwnDYyfrOrCcqMIl9ZsPdu9+gDfdPYfkW0QZ8ph+h5vm/1iNd7SfzQ0
OcBK8EdqkzLqcYNCsI6+fPDL+ZqMV6Kax3VGdURWm1N2hTgJhyh1B8M0PG+BBrR4TMamVbhmZAuz
2YToCjJMzDwr+JpabyfzfwpOLzwMQ2wbkYNVadYhlHV1aMxHGTfx0VsWPY4byV3olk/qKHf7cO+E
yBWzfIh8lPkIrCyROKu9Wr/Ngn/rSW6a6GaxDP05m+NmbJxb/h5Tc0GHv6rOB/wpeC++JsZpiNPx
EqqVNGT/q6SHc4BufcRRc/rblw93McjPHF/I2yY9Yo14OewcojGGLKE5yHKBu++1oiZgCD9SOmfG
sXWtZrhxjjFpxmzQhce9VkXOCggF122Bw1i+kgb/B87EsJ71YryPeVJ22codNI6FysALjCUz/0r8
KJk61qOjTcSwFUZydINoYKxvyTvqVDSpcrgmt30rsfeymeyFI2JDw5E49v1cn4nXZ0dhNGgiNwF9
8FU27sGBKf9ady47tkKSYgyuTn8DTzChJgdcuhe5J54JKnIsuu1kBjkPcB0ygmax0EkHbAQ0IMWO
J0vmpxu6JKnlSjPH99pOs0BILtXLPrSRUPk8sn3jLkRk9rBX5iePqaZQ7HcK3iSZCOefvL6ydkgY
bSa8PKy/sFh+0OkwK8NIXDmliasWGGJtbNK/8CQqeCGSTEwziFmRmEcp+/L8yLxlAeMTBuCwI1fM
SpVMQt1f+T6kl8Bd7vm5W+hgrkvYdaM+Con6G4SZ0p/qkawJ1g2PN6n8h3oslwofO+rD/eSbR426
s3k7MoX70Tu17K7A6uhqmUK4yLuG4mj4AFndfHNH73DaqEeu1qjPjVh3KW2obUUC88Qhxl/g4w9L
DTgYLZxBrC8NV3WgSZVAW0GM0my3lhgElmJ2rXqpNIA6V/xjqI4djC6fWGA7IzTCSJBfTlFWtkDN
eU9hi1+Pyzm0B0Eief50bmTBXX5gyn0L3AG5ytxfjCalSO4djnMTsCpc9Eqd+gdFpz+bGmVWj0Fk
17vHMFsrjmzQi7QMUdxV52iYq2M5x4QOWQ4QwkGwBRkaED3YoEmruOQEHFDryYFuomyJ8OstdXdU
480p7DDswHNBKwkZiKmPPMa7ZaXizNnhNvjgiIZO1dUJ94VBFTAt0Z0Wsy+1XDPLe+EAznAIbCc8
V7DopcAs5D/1S9EYCXhTYT6YU19vK6xYTirv7eFTL8TO4NVVuOTxtSgEs9vz+oJNDCiE07SBYhc/
mRG67EXKKD5uMecp6J8j+P3/TIQoltzxc40lEiuGLDeUNXzM3BZZ3ij10ItWHE8ca43zUDElC2yv
P2w88T9QJ5nu4z9w+7n7fGQh49/Fva5rCYGzk/Rw5q6uuIshlnGjJdzOT6/FNXV7pFdElSHWrWrO
eV3pnKye+ZuCFW93GYck28oGvwK8QvC4FCsesOKXeGvp2+oTBfH0++kSNiQGSUsrPk3VG1VJyExl
zHCJfvR7UVz/cyr/iIX+AtOFodlAUKvKCPCdtjI9BXwGlrPSOk7T+aQ9FL5iV70qZH3NGhMT+Nqa
OgZ9dt3oGeLTGblHn0H/AcQIXt8kFFvh8ot2yvvPmd4owofujEWYlOFttwDiR4MvXYnM+TkLnkru
Qa/hxCeVhyvfHc0Xdfu73iTfkpfGhSyqAq/hc7mAt3LHvv2AXLBW7IFE2EXLcpDXngKUipn5S6RM
Smwa8k2FCAhf81mVHsqF47TksRncYbxJ+rxNoJt7L3hhMRAGzbLghNW2KFXi4e690rTyuIKaIdNP
oF8evWiDmueo5Pt0kCbgAYiuYfcPBl6aWgvM/B8Pqe0x4vC0bd6buiDm6WCyengxdbW5BIyZlFti
T9raRpGIFNeB7O/j6RzsFQQbbrsPFBIW6LCDuQKRo1nJmrm2wt5BoMFbwZV93Kk=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
