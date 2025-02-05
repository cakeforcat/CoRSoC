// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb  5 22:06:07 2025
// Host        : DESKTOP-M1FI91A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/andre/Year5/19520/IP/TiminP/Input_Decimator/netlist/ip/Decimator_IP/src/hdl_netlist/decimator_ip.gen/sources_1/ip/decimator_ip_c_counter_binary_v12_0_i0/decimator_ip_c_counter_binary_v12_0_i0_sim_netlist.v
// Design      : decimator_ip_c_counter_binary_v12_0_i0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "decimator_ip_c_counter_binary_v12_0_i0,c_counter_binary_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_19,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decimator_ip_c_counter_binary_v12_0_i0
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [2:0]Q;

  wire CE;
  wire CLK;
  wire [2:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decimator_ip_c_counter_binary_v12_0_i0_c_counter_binary_v12_0_19 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2384)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12528)
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
