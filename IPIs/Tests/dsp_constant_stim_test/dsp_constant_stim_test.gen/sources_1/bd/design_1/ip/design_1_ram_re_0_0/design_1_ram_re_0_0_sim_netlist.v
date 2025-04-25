// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Apr  4 11:56:14 2025
// Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/andre/CoRSoC/IPIs/Tests/integration_test/integration_test.gen/sources_1/bd/design_1/ip/design_1_ram_re_0_0/design_1_ram_re_0_0_sim_netlist.v
// Design      : design_1_ram_re_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ram_re_0_0,ram_re,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "sysgen" *) 
(* x_core_info = "ram_re,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_ram_re_0_0
   (ctrl_ip,
    clk,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid);
  (* x_interface_info = "xilinx.com:signal:data:1.0 ctrl_ip DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME ctrl_ip, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) input [31:0]ctrl_ip;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output [0:0]m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output [0:0]m_axis_tvalid;

  wire clk;
  wire [31:0]ctrl_ip;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tvalid;

  design_1_ram_re_0_0_ram_re U0
       (.clk(clk),
        .ctrl_ip({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ctrl_ip[0]}),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "convert_func_call_ram_re_xlconvert" *) 
module design_1_ram_re_0_0_convert_func_call_ram_re_xlconvert
   (m_axis_tdata,
    douta);
  output [13:0]m_axis_tdata;
  input [15:0]douta;

  wire [15:0]douta;
  wire [13:0]m_axis_tdata;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[9]),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[10]),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[11]),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[12]),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[13]),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[0]),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[1]),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[2]),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[3]),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[4]),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[5]),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[6]),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[7]),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(douta[14]),
        .I1(douta[15]),
        .I2(douta[8]),
        .O(m_axis_tdata[8]));
endmodule

(* ORIG_REF_NAME = "ram_re" *) 
module design_1_ram_re_0_0_ram_re
   (ctrl_ip,
    clk,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid);
  input [31:0]ctrl_ip;
  input clk;
  output [15:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tvalid;

  wire clk;
  wire [31:0]ctrl_ip;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;

  assign m_axis_tvalid[0] = ctrl_ip[0];
  design_1_ram_re_0_0_ram_re_struct ram_re_struct
       (.clk(clk),
        .ctrl_ip(ctrl_ip[0]),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast));
endmodule

(* CHECK_LICENSE_TYPE = "ram_re_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}" *) (* ORIG_REF_NAME = "ram_re_c_counter_binary_v12_0_i0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "c_counter_binary_v12_0_19,Vivado 2024.1" *) 
module design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0
   (CLK,
    CE,
    SINIT,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sinit_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef" *) input SINIT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [4:0]Q;

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
  design_1_ram_re_0_0_c_counter_binary_v12_0_19 U0
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

(* ORIG_REF_NAME = "ram_re_struct" *) 
module design_1_ram_re_0_0_ram_re_struct
   (m_axis_tdata,
    m_axis_tlast,
    clk,
    ctrl_ip);
  output [15:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  input clk;
  input [0:0]ctrl_ip;

  wire clk;
  wire [4:0]counter_op_net;
  wire [0:0]ctrl_ip;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [14:0]rom_data_net;

  design_1_ram_re_0_0_ram_re_xlconvert convert
       (.douta({m_axis_tdata[15],rom_data_net}),
        .m_axis_tdata(m_axis_tdata[14:1]));
  design_1_ram_re_0_0_ram_re_xlcounter_limit counter
       (.Q(counter_op_net),
        .clk(clk),
        .ctrl_ip(ctrl_ip));
  design_1_ram_re_0_0_sysgen_relational_a5722cb7a4 relational
       (.Q(counter_op_net),
        .clk(clk),
        .m_axis_tlast(m_axis_tlast));
  design_1_ram_re_0_0_ram_re_xlsprom rom
       (.Q(counter_op_net),
        .clk(clk),
        .douta({m_axis_tdata[15],rom_data_net}),
        .m_axis_tdata(m_axis_tdata[0]));
endmodule

(* ORIG_REF_NAME = "ram_re_xlconvert" *) 
module design_1_ram_re_0_0_ram_re_xlconvert
   (m_axis_tdata,
    douta);
  output [13:0]m_axis_tdata;
  input [15:0]douta;

  wire [15:0]douta;
  wire [13:0]m_axis_tdata;

  design_1_ram_re_0_0_convert_func_call_ram_re_xlconvert \std_conversion_generate.convert 
       (.douta(douta),
        .m_axis_tdata(m_axis_tdata));
endmodule

(* ORIG_REF_NAME = "ram_re_xlcounter_limit" *) 
module design_1_ram_re_0_0_ram_re_xlcounter_limit
   (Q,
    clk,
    ctrl_ip);
  output [4:0]Q;
  input clk;
  input [0:0]ctrl_ip;

  wire [4:0]Q;
  wire SINIT;
  wire clk;
  wire [0:0]ctrl_ip;

  (* CHECK_LICENSE_TYPE = "ram_re_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "c_counter_binary_v12_0_19,Vivado 2024.1" *) 
  design_1_ram_re_0_0_ram_re_c_counter_binary_v12_0_i0 \comp0.core_instance0 
       (.CE(ctrl_ip),
        .CLK(clk),
        .Q(Q),
        .SINIT(SINIT));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \comp0.core_instance0_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(ctrl_ip),
        .O(SINIT));
endmodule

(* ORIG_REF_NAME = "ram_re_xlsprom" *) 
module design_1_ram_re_0_0_ram_re_xlsprom
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

  design_1_ram_re_0_0_xpm_memory_sprom xpm_memory_sprom_inst
       (.Q(Q),
        .clk(clk),
        .douta(douta),
        .m_axis_tdata(m_axis_tdata));
endmodule

(* ORIG_REF_NAME = "sysgen_relational_a5722cb7a4" *) 
module design_1_ram_re_0_0_sysgen_relational_a5722cb7a4
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

  LUT5 #(
    .INIT(32'h01000000)) 
    \op_mem_45_22[0][0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(cast));
  FDRE #(
    .INIT(1'b0)) 
    \op_mem_45_22_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(cast),
        .Q(m_axis_tlast),
        .R(1'b0));
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
module design_1_ram_re_0_0_xpm_memory_base
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
  (* RTL_RAM_NAME = "U0/ram_re_struct/rom/xpm_memory_sprom_inst/xpm_memory_base_inst/gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg" *) 
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
module design_1_ram_re_0_0_xpm_memory_sprom
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
  design_1_ram_re_0_0_xpm_memory_base xpm_memory_base_inst
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
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
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
