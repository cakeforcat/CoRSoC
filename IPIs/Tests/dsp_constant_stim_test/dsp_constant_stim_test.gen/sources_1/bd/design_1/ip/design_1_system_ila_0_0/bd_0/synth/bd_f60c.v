//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c.bd
//Design : bd_f60c
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_f60c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f60c,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "design_1_system_ila_0_0.hwdef" *) 
module bd_f60c
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tvalid,
    clk,
    probe0,
    resetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96968727, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_0_AXI_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]SLOT_0_AXI_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [7:0]SLOT_0_AXI_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]SLOT_0_AXI_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input SLOT_0_AXI_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]SLOT_0_AXI_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input SLOT_0_AXI_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [31:0]SLOT_0_AXI_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]SLOT_0_AXI_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [7:0]SLOT_0_AXI_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]SLOT_0_AXI_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input SLOT_0_AXI_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]SLOT_0_AXI_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input SLOT_0_AXI_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input SLOT_0_AXI_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *) input [1:0]SLOT_0_AXI_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input SLOT_0_AXI_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [31:0]SLOT_0_AXI_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input SLOT_0_AXI_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input SLOT_0_AXI_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input SLOT_0_AXI_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [31:0]SLOT_0_AXI_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input SLOT_0_AXI_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input SLOT_0_AXI_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *) input [3:0]SLOT_0_AXI_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input SLOT_0_AXI_wvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 96968727, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]SLOT_1_AXIS_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *) input SLOT_1_AXIS_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME SLOT_2_AXIS, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 96968727, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]SLOT_2_AXIS_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST" *) input SLOT_2_AXIS_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID" *) input SLOT_2_AXIS_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_1_AXIS:SLOT_2_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [31:0]probe0;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [15:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [15:0]Conn2_TDATA;
  wire Conn2_TLAST;
  wire Conn2_TVALID;
  wire [31:0]Conn_ARADDR;
  wire [3:0]Conn_ARCACHE;
  wire [7:0]Conn_ARLEN;
  wire [2:0]Conn_ARPROT;
  wire Conn_ARREADY;
  wire [2:0]Conn_ARSIZE;
  wire Conn_ARVALID;
  wire [31:0]Conn_AWADDR;
  wire [3:0]Conn_AWCACHE;
  wire [7:0]Conn_AWLEN;
  wire [2:0]Conn_AWPROT;
  wire Conn_AWREADY;
  wire [2:0]Conn_AWSIZE;
  wire Conn_AWVALID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [31:0]Conn_RDATA;
  wire Conn_RLAST;
  wire Conn_RREADY;
  wire Conn_RVALID;
  wire [31:0]Conn_WDATA;
  wire Conn_WLAST;
  wire Conn_WREADY;
  wire [3:0]Conn_WSTRB;
  wire Conn_WVALID;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire net_slot_0_axi_arready;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [31:0]net_slot_0_axi_awaddr;
  wire [3:0]net_slot_0_axi_awcache;
  wire [7:0]net_slot_0_axi_awlen;
  wire [2:0]net_slot_0_axi_awprot;
  wire net_slot_0_axi_awready;
  wire [2:0]net_slot_0_axi_awsize;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire net_slot_0_axi_bready;
  wire [1:0]net_slot_0_axi_bresp;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [2:0]net_slot_0_axi_r_ctrl;
  wire net_slot_0_axi_rlast;
  wire net_slot_0_axi_rready;
  wire net_slot_0_axi_rvalid;
  wire [2:0]net_slot_0_axi_w_ctrl;
  wire [31:0]net_slot_0_axi_wdata;
  wire net_slot_0_axi_wlast;
  wire net_slot_0_axi_wready;
  wire [3:0]net_slot_0_axi_wstrb;
  wire net_slot_0_axi_wvalid;
  wire [15:0]net_slot_1_axis_tdata;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tready;
  wire net_slot_1_axis_tvalid;
  wire [15:0]net_slot_2_axis_tdata;
  wire net_slot_2_axis_tlast;
  wire net_slot_2_axis_tvalid;
  wire [31:0]probe0_1;
  wire resetn_1;

  assign Conn1_TDATA = SLOT_1_AXIS_tdata[15:0];
  assign Conn1_TLAST = SLOT_1_AXIS_tlast;
  assign Conn1_TREADY = SLOT_1_AXIS_tready;
  assign Conn1_TVALID = SLOT_1_AXIS_tvalid;
  assign Conn2_TDATA = SLOT_2_AXIS_tdata[15:0];
  assign Conn2_TLAST = SLOT_2_AXIS_tlast;
  assign Conn2_TVALID = SLOT_2_AXIS_tvalid;
  assign Conn_ARADDR = SLOT_0_AXI_araddr[31:0];
  assign Conn_ARCACHE = SLOT_0_AXI_arcache[3:0];
  assign Conn_ARLEN = SLOT_0_AXI_arlen[7:0];
  assign Conn_ARPROT = SLOT_0_AXI_arprot[2:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARSIZE = SLOT_0_AXI_arsize[2:0];
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[31:0];
  assign Conn_AWCACHE = SLOT_0_AXI_awcache[3:0];
  assign Conn_AWLEN = SLOT_0_AXI_awlen[7:0];
  assign Conn_AWPROT = SLOT_0_AXI_awprot[2:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWSIZE = SLOT_0_AXI_awsize[2:0];
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[31:0];
  assign Conn_RLAST = SLOT_0_AXI_rlast;
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[31:0];
  assign Conn_WLAST = SLOT_0_AXI_wlast;
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WSTRB = SLOT_0_AXI_wstrb[3:0];
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign clk_1 = clk;
  assign probe0_1 = probe0[31:0];
  assign resetn_1 = resetn;
  bd_f60c_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awcache(net_slot_0_axi_awcache),
        .m_slot_0_axi_awlen(net_slot_0_axi_awlen),
        .m_slot_0_axi_awprot(net_slot_0_axi_awprot),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awsize(net_slot_0_axi_awsize),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bresp(net_slot_0_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rlast(net_slot_0_axi_rlast),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wlast(net_slot_0_axi_wlast),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_0_axi_wstrb),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tready(net_slot_1_axis_tready),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axis_tdata(net_slot_2_axis_tdata),
        .m_slot_2_axis_tlast(net_slot_2_axis_tlast),
        .m_slot_2_axis_tvalid(net_slot_2_axis_tvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arcache(Conn_ARCACHE),
        .slot_0_axi_arlen(Conn_ARLEN),
        .slot_0_axi_arprot(Conn_ARPROT),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arsize(Conn_ARSIZE),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awcache(Conn_AWCACHE),
        .slot_0_axi_awlen(Conn_AWLEN),
        .slot_0_axi_awprot(Conn_AWPROT),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awsize(Conn_AWSIZE),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rlast(Conn_RLAST),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wlast(Conn_WLAST),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wvalid(Conn_WVALID),
        .slot_1_axis_tdata(Conn1_TDATA),
        .slot_1_axis_tlast(Conn1_TLAST),
        .slot_1_axis_tready(Conn1_TREADY),
        .slot_1_axis_tvalid(Conn1_TVALID),
        .slot_2_axis_tdata(Conn2_TDATA),
        .slot_2_axis_tlast(Conn2_TLAST),
        .slot_2_axis_tvalid(Conn2_TVALID));
  bd_f60c_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(net_slot_0_axi_ar_cnt),
        .probe10(net_slot_0_axi_r_cnt),
        .probe11(net_slot_0_axi_wdata),
        .probe12(net_slot_0_axi_wstrb),
        .probe13(net_slot_0_axi_aw_ctrl),
        .probe14(net_slot_0_axi_w_ctrl),
        .probe15(net_slot_0_axi_b_ctrl),
        .probe16(net_slot_0_axi_ar_ctrl),
        .probe17(net_slot_0_axi_r_ctrl),
        .probe18(net_slot_1_axis_tdata),
        .probe19(net_slot_1_axis_tvalid),
        .probe2(net_slot_0_axi_aw_cnt),
        .probe20(net_slot_1_axis_tready),
        .probe21(net_slot_1_axis_tlast),
        .probe22(net_slot_2_axis_tdata),
        .probe23(net_slot_2_axis_tvalid),
        .probe24(net_slot_2_axis_tlast),
        .probe3(net_slot_0_axi_awaddr),
        .probe4(net_slot_0_axi_awcache),
        .probe5(net_slot_0_axi_awlen),
        .probe6(net_slot_0_axi_awprot),
        .probe7(net_slot_0_axi_awsize),
        .probe8(net_slot_0_axi_b_cnt),
        .probe9(net_slot_0_axi_bresp));
  bd_f60c_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_f60c_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_f60c_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_f60c_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .In2(net_slot_0_axi_rlast),
        .dout(net_slot_0_axi_r_ctrl));
  bd_f60c_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .In2(net_slot_0_axi_wlast),
        .dout(net_slot_0_axi_w_ctrl));
endmodule
