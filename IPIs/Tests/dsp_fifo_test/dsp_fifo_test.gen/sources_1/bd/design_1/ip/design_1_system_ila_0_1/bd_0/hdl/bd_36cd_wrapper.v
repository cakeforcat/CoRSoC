//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_36cd_wrapper.bd
//Design : bd_36cd_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_36cd_wrapper
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arburst,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arlock,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arqos,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arregion,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awburst,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awqos,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awregion,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wstrb,
    SLOT_1_AXI_wvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rresp,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
    SLOT_3_AXIS_tvalid,
    SLOT_4_AXIS_tdata,
    SLOT_4_AXIS_tlast,
    SLOT_4_AXIS_tvalid,
    clk,
    resetn);
  input [31:0]SLOT_0_AXI_araddr;
  input [1:0]SLOT_0_AXI_arburst;
  input [3:0]SLOT_0_AXI_arcache;
  input [7:0]SLOT_0_AXI_arlen;
  input [0:0]SLOT_0_AXI_arlock;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input SLOT_0_AXI_arready;
  input [3:0]SLOT_0_AXI_arregion;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input [31:0]SLOT_0_AXI_awaddr;
  input [1:0]SLOT_0_AXI_awburst;
  input [3:0]SLOT_0_AXI_awcache;
  input [7:0]SLOT_0_AXI_awlen;
  input [0:0]SLOT_0_AXI_awlock;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input SLOT_0_AXI_awready;
  input [3:0]SLOT_0_AXI_awregion;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [31:0]SLOT_0_AXI_rdata;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [31:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [3:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [0:0]SLOT_1_AXI_araddr;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arready;
  input SLOT_1_AXI_arvalid;
  input [0:0]SLOT_1_AXI_awaddr;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awready;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [31:0]SLOT_1_AXI_rdata;
  input SLOT_1_AXI_rready;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input [31:0]SLOT_1_AXI_wdata;
  input SLOT_1_AXI_wready;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input [9:0]SLOT_2_AXI_araddr;
  input [2:0]SLOT_2_AXI_arprot;
  input SLOT_2_AXI_arready;
  input SLOT_2_AXI_arvalid;
  input [9:0]SLOT_2_AXI_awaddr;
  input [2:0]SLOT_2_AXI_awprot;
  input SLOT_2_AXI_awready;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_bready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input [31:0]SLOT_2_AXI_rdata;
  input SLOT_2_AXI_rready;
  input [1:0]SLOT_2_AXI_rresp;
  input SLOT_2_AXI_rvalid;
  input [31:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wready;
  input [3:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wvalid;
  input [15:0]SLOT_3_AXIS_tdata;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input SLOT_3_AXIS_tvalid;
  input [15:0]SLOT_4_AXIS_tdata;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tvalid;
  input clk;
  input resetn;

  wire [31:0]SLOT_0_AXI_araddr;
  wire [1:0]SLOT_0_AXI_arburst;
  wire [3:0]SLOT_0_AXI_arcache;
  wire [7:0]SLOT_0_AXI_arlen;
  wire [0:0]SLOT_0_AXI_arlock;
  wire [2:0]SLOT_0_AXI_arprot;
  wire [3:0]SLOT_0_AXI_arqos;
  wire SLOT_0_AXI_arready;
  wire [3:0]SLOT_0_AXI_arregion;
  wire [2:0]SLOT_0_AXI_arsize;
  wire SLOT_0_AXI_arvalid;
  wire [31:0]SLOT_0_AXI_awaddr;
  wire [1:0]SLOT_0_AXI_awburst;
  wire [3:0]SLOT_0_AXI_awcache;
  wire [7:0]SLOT_0_AXI_awlen;
  wire [0:0]SLOT_0_AXI_awlock;
  wire [2:0]SLOT_0_AXI_awprot;
  wire [3:0]SLOT_0_AXI_awqos;
  wire SLOT_0_AXI_awready;
  wire [3:0]SLOT_0_AXI_awregion;
  wire [2:0]SLOT_0_AXI_awsize;
  wire SLOT_0_AXI_awvalid;
  wire SLOT_0_AXI_bready;
  wire [1:0]SLOT_0_AXI_bresp;
  wire SLOT_0_AXI_bvalid;
  wire [31:0]SLOT_0_AXI_rdata;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire [1:0]SLOT_0_AXI_rresp;
  wire SLOT_0_AXI_rvalid;
  wire [31:0]SLOT_0_AXI_wdata;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire [3:0]SLOT_0_AXI_wstrb;
  wire SLOT_0_AXI_wvalid;
  wire [0:0]SLOT_1_AXI_araddr;
  wire [2:0]SLOT_1_AXI_arprot;
  wire SLOT_1_AXI_arready;
  wire SLOT_1_AXI_arvalid;
  wire [0:0]SLOT_1_AXI_awaddr;
  wire [2:0]SLOT_1_AXI_awprot;
  wire SLOT_1_AXI_awready;
  wire SLOT_1_AXI_awvalid;
  wire SLOT_1_AXI_bready;
  wire [1:0]SLOT_1_AXI_bresp;
  wire SLOT_1_AXI_bvalid;
  wire [31:0]SLOT_1_AXI_rdata;
  wire SLOT_1_AXI_rready;
  wire [1:0]SLOT_1_AXI_rresp;
  wire SLOT_1_AXI_rvalid;
  wire [31:0]SLOT_1_AXI_wdata;
  wire SLOT_1_AXI_wready;
  wire [3:0]SLOT_1_AXI_wstrb;
  wire SLOT_1_AXI_wvalid;
  wire [9:0]SLOT_2_AXI_araddr;
  wire [2:0]SLOT_2_AXI_arprot;
  wire SLOT_2_AXI_arready;
  wire SLOT_2_AXI_arvalid;
  wire [9:0]SLOT_2_AXI_awaddr;
  wire [2:0]SLOT_2_AXI_awprot;
  wire SLOT_2_AXI_awready;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [31:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rready;
  wire [1:0]SLOT_2_AXI_rresp;
  wire SLOT_2_AXI_rvalid;
  wire [31:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wready;
  wire [3:0]SLOT_2_AXI_wstrb;
  wire SLOT_2_AXI_wvalid;
  wire [15:0]SLOT_3_AXIS_tdata;
  wire SLOT_3_AXIS_tlast;
  wire SLOT_3_AXIS_tready;
  wire SLOT_3_AXIS_tvalid;
  wire [15:0]SLOT_4_AXIS_tdata;
  wire SLOT_4_AXIS_tlast;
  wire SLOT_4_AXIS_tvalid;
  wire clk;
  wire resetn;

  bd_36cd bd_36cd_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arburst(SLOT_0_AXI_arburst),
        .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
        .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
        .SLOT_0_AXI_arlock(SLOT_0_AXI_arlock),
        .SLOT_0_AXI_arprot(SLOT_0_AXI_arprot),
        .SLOT_0_AXI_arqos(SLOT_0_AXI_arqos),
        .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
        .SLOT_0_AXI_arregion(SLOT_0_AXI_arregion),
        .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
        .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
        .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
        .SLOT_0_AXI_awburst(SLOT_0_AXI_awburst),
        .SLOT_0_AXI_awcache(SLOT_0_AXI_awcache),
        .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
        .SLOT_0_AXI_awlock(SLOT_0_AXI_awlock),
        .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
        .SLOT_0_AXI_awqos(SLOT_0_AXI_awqos),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awregion(SLOT_0_AXI_awregion),
        .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awprot(SLOT_1_AXI_awprot),
        .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
        .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
        .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
        .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
        .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
        .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
        .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
        .SLOT_1_AXI_rresp(SLOT_1_AXI_rresp),
        .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
        .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
        .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
        .SLOT_1_AXI_wstrb(SLOT_1_AXI_wstrb),
        .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
        .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
        .SLOT_2_AXI_arprot(SLOT_2_AXI_arprot),
        .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
        .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
        .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
        .SLOT_2_AXI_awprot(SLOT_2_AXI_awprot),
        .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
        .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
        .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
        .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
        .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
        .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
        .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
        .SLOT_2_AXI_rresp(SLOT_2_AXI_rresp),
        .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
        .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
        .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
        .SLOT_2_AXI_wstrb(SLOT_2_AXI_wstrb),
        .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .SLOT_4_AXIS_tdata(SLOT_4_AXIS_tdata),
        .SLOT_4_AXIS_tlast(SLOT_4_AXIS_tlast),
        .SLOT_4_AXIS_tvalid(SLOT_4_AXIS_tvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
