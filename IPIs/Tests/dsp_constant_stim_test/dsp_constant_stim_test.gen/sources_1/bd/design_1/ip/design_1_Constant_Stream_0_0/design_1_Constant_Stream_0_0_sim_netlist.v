// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Apr  4 11:55:17 2025
// Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/andre/CoRSoC/IPIs/Tests/integration_test/integration_test.gen/sources_1/bd/design_1/ip/design_1_Constant_Stream_0_0/design_1_Constant_Stream_0_0_sim_netlist.v
// Design      : design_1_Constant_Stream_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Constant_Stream_0_0,constant_x0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "sysgen" *) 
(* x_core_info = "constant_x0,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_Constant_Stream_0_0
   (constant_in_nan,
    clk,
    constant_out);
  (* x_interface_info = "xilinx.com:signal:data:1.0 constant_in_nan DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME constant_in_nan, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) input [0:0]constant_in_nan;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:data:1.0 constant_out DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME constant_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [31:0]constant_out;

  wire \<const0> ;
  wire \<const1> ;

  assign constant_out[31] = \<const0> ;
  assign constant_out[30] = \<const0> ;
  assign constant_out[29] = \<const0> ;
  assign constant_out[28] = \<const0> ;
  assign constant_out[27] = \<const0> ;
  assign constant_out[26] = \<const0> ;
  assign constant_out[25] = \<const0> ;
  assign constant_out[24] = \<const0> ;
  assign constant_out[23] = \<const0> ;
  assign constant_out[22] = \<const0> ;
  assign constant_out[21] = \<const0> ;
  assign constant_out[20] = \<const0> ;
  assign constant_out[19] = \<const0> ;
  assign constant_out[18] = \<const0> ;
  assign constant_out[17] = \<const0> ;
  assign constant_out[16] = \<const0> ;
  assign constant_out[15] = \<const0> ;
  assign constant_out[14] = \<const1> ;
  assign constant_out[13] = \<const0> ;
  assign constant_out[12] = \<const0> ;
  assign constant_out[11] = \<const0> ;
  assign constant_out[10] = \<const0> ;
  assign constant_out[9] = \<const0> ;
  assign constant_out[8] = \<const0> ;
  assign constant_out[7] = \<const0> ;
  assign constant_out[6] = \<const0> ;
  assign constant_out[5] = \<const0> ;
  assign constant_out[4] = \<const0> ;
  assign constant_out[3] = \<const0> ;
  assign constant_out[2] = \<const0> ;
  assign constant_out[1] = \<const0> ;
  assign constant_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule
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
