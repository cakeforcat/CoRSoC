// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb  5 22:06:00 2025
// Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/andre/Year5/19520/IP/TiminP/Input_Decimator/netlist/ip/Decimator_IP/src/hdl_netlist/decimator_ip.gen/sources_1/ip/decimator_ip_dist_mem_gen_v8_0_i0/decimator_ip_dist_mem_gen_v8_0_i0_sim_netlist.v
// Design      : decimator_ip_dist_mem_gen_v8_0_i0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "decimator_ip_dist_mem_gen_v8_0_i0,dist_mem_gen_v8_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decimator_ip_dist_mem_gen_v8_0_i0
   (a,
    clk,
    qspo_ce,
    qspo);
  input [3:0]a;
  input clk;
  input qspo_ce;
  output [27:0]qspo;

  wire \<const0> ;
  wire [3:0]a;
  wire clk;
  wire [25:0]\^qspo ;
  wire qspo_ce;
  wire [27:0]NLW_U0_dpo_UNCONNECTED;
  wire [27:0]NLW_U0_qdpo_UNCONNECTED;
  wire [27:4]NLW_U0_qspo_UNCONNECTED;
  wire [27:0]NLW_U0_spo_UNCONNECTED;

  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25:21] = \^qspo [25:21];
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18:14] = \^qspo [18:14];
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11:7] = \^qspo [11:7];
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3:0] = \^qspo [3:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "1" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "decimator_ip_dist_mem_gen_v8_0_i0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "28" *) 
  (* is_du_within_envelope = "true" *) 
  decimator_ip_dist_mem_gen_v8_0_i0_dist_mem_gen_v8_0_15 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[27:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[27:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo({NLW_U0_qspo_UNCONNECTED[27:26],\^qspo }),
        .qspo_ce(qspo_ce),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[27:0]),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12416)
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
