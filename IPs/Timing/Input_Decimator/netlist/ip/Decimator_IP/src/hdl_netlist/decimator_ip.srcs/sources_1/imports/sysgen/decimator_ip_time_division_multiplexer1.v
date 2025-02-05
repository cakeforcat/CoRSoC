//-----------------------------------------------------------------
// Vitis Model Composer version 2024.1 Verilog source file.
//
// Copyright(C) 1995-2022 by Xilinx, Inc. All rights reserved.
// Copyright(C) 2022-2024 by Advanced Micro Devices, Inc. All rights reserved.
//
// This text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
  module decimator_ip_time_division_multiplexer1_xlconvert  (
   din, clk, ce, clr, en, dout);
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter quantization= `xlRound;
   parameter overflow= `xlSaturate;
   //Port Declarations
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;
   //Wire Declarations
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];
  generate
    begin:std_conversion
        convert_type #(din_width,
            din_bin_pt,
            din_arith,
            dout_width,
            dout_bin_pt,
            dout_arith,
            quantization,
            overflow)
        conv_udp (.inp(din), .res(result));
    end
  endgenerate
   assign dout = result;
  endmodule

`timescale 1 ns / 10 ps
  module decimator_ip_time_division_multiplexer1_xlsplit_30_18  (
   input [(48 - 1):0] d,
   output [(30 - 1):0] a,
   output [(18 - 1):0] b,
   input clk,
   input ce,
   input clr);
   wire signed [(48 - 1):0] d_internal;
   wire [(30 - 1):0] slice_1;
   wire [(30 - 1):0] fulla_1;
   wire [(18 - 1):0] slice_2;
   wire [(18 - 1):0] fullb_2;
   wire signed [(30 - 1):0] a_force;
   wire signed [(18 - 1):0] b_force;
   assign d_internal = d;
   assign slice_1 = d_internal[47:18];
   assign fulla_1 = {slice_1};
   assign slice_2 = d_internal[17:0];
   assign fullb_2 = {slice_2};
   assign a_force = fulla_1;
   assign b_force = fullb_2;
   assign a = a_force;
   assign b = b_force;
  endmodule

`timescale 1 ns / 10 ps
  module decimator_ip_time_division_multiplexer1_xlcounter_limit  (
    ce, clr, clk, op, up, en, rst);
  parameter core_name0= "";
  parameter op_width= 5;
  parameter op_arith= `xlSigned;
  parameter cnt_63_48 = 0;
  parameter cnt_47_32 = 0;
  parameter cnt_31_16 = 0;
  parameter cnt_15_0  = 0;
  parameter count_limited= 0;
  input  ce, clr, clk;
  input rst, en;  
  input up;
  output [op_width-1:0] op;
  parameter [63:0] cnt_to = {cnt_63_48[15:0], cnt_47_32[15:0], cnt_31_16[15:0], cnt_15_0[15:0]};
  reg op_thresh0;
  wire core_sinit, core_ce;
  wire rst_overrides_en;
  wire [op_width-1:0] op_net;
  assign op = op_net;
  assign core_ce = ce & en;
  assign rst_overrides_en = rst | en;
  generate
  if (count_limited == 1)
    begin :limit
    always @(op_net)
    begin:eq_cnt_to
      op_thresh0 = (op_net == cnt_to[op_width-1:0])? 1'b1 : 1'b0;
    end
    assign core_sinit = (op_thresh0 | clr | rst) & ce & rst_overrides_en;
  end
  if (core_name0 == "decimator_ip_c_counter_binary_v12_0_i0") 
    begin:comp0
      decimator_ip_c_counter_binary_v12_0_i0  decimator_ip_c_counter_binary_v12_0_i0_addr_generator  (
       .CLK(clk),
       .CE(core_ce),
       .SCLR(core_sinit),
       .Q(op_net) 
    ); 
  end 
  endgenerate
endmodule

`timescale 1 ns / 10 ps
  module decimator_ip_time_division_multiplexer1_xlrom1  (
  addr, en, ce, clk, data);
  parameter core_name0= "";
  parameter addr_width= 2;
  parameter latency= 0;
  parameter c_width= 12;
  parameter c_address_width= 4;
  input [addr_width-1:0] addr;
  input en;
  input ce;
  input clk;
  output [c_width-1:0] data;
  wire [c_width-1:0] core_data_out;
  wire [c_address_width-1:0] core_addr;
  wire  core_ce;
  assign core_addr = { {(c_address_width - addr_width) {1'b0}}, addr};
  assign core_ce = ce & en;

  generate
  if (core_name0 == "decimator_ip_dist_mem_gen_v8_0_i0") 
     begin:comp0
      decimator_ip_dist_mem_gen_v8_0_i0  decimator_ip_dist_mem_gen_v8_0_i0_4  (
         .a(core_addr),
        .clk(clk),
        .qspo_ce(core_ce),
        .qspo(core_data_out) 
       ); 
  end 
  if (latency <= 1)
    begin:latency_0_or_1
      assign data = core_data_out;
  end
  endgenerate

endmodule


`timescale 1 ns / 10 ps
  module decimator_ip_time_division_multiplexer1_mem_addr_split_1  (
   input [(28 - 1):0] a,
   output [(7 - 1):0] lsb0,
   output [(7 - 1):0] lsb1,
   output [(7 - 1):0] lsb2,
   output [(7 - 1):0] lsb3,
   input clk,
   input ce,
   input clr);
   wire [(28 - 1):0] a_internal;
   wire [(7 - 1):0] slice_0;
   wire [(7 - 1):0] fullmsb_0;
   wire [(7 - 1):0] slice_1;
   wire [(7 - 1):0] fullmsb_1;
   wire [(7 - 1):0] slice_2;
   wire [(7 - 1):0] fullmsb_2;
   wire [(7 - 1):0] slice_3;
   wire [(7 - 1):0] fullmsb_3;
   assign a_internal = a;
   assign slice_0 = a_internal[6:0];
   assign fullmsb_0 = {slice_0};
   assign lsb0 = fullmsb_0;
   assign slice_1 = a_internal[13:7];
   assign fullmsb_1 = {slice_1};
   assign lsb1 = fullmsb_1;
   assign slice_2 = a_internal[20:14];
   assign fullmsb_2 = {slice_2};
   assign lsb2 = fullmsb_2;
   assign slice_3 = a_internal[27:21];
   assign fullmsb_3 = {slice_3};
   assign lsb3 = fullmsb_3;
  endmodule

`timescale 1 ns / 10 ps
module decimator_ip_time_division_multiplexer1_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);
 generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
     begin:srl_delay
     synth_reg # (width, latency)
     reg1 (
     .i(d),
     .ce(ce & en),
     .clr(1'b0),
     .clk(clk),
     .o(q));
  end
  if ((latency>=1) && ((reg_retiming) || (reset)))
     begin:reg_delay
     synth_reg_reg # (width, latency)
     reg2 (
     .i(d),
     .ce(ce & en),
     .clr(rst),
     .clk(clk),
     .o(q));
  end
 endgenerate
endmodule

`timescale 1 ns / 10 ps
  module  decimator_ip_time_division_multiplexer1_xldsp48e1 (acout, bcout, carrycascout, carryout, multsignout, overflow, underflow, patterndetect, patternbdetect, p, pcout, a, acin, alumode, b, bcin, c, carrycascin, carryin, carryinsel, cea1, cea2, cead, cealumode, ceb1, ceb2, cec, cecarryin, cectrl, ced, ceinmode, cem, cemultcarryin, cep, multsignin, op, opmode, pcin, rsta, rstcarryin, rstalumode, rstb, rstc, rstctrl, rstd, rstinmode, rstm, rstp, clk, d, inmode, en, rst, ce);
   //parameter Definitions
   parameter integer areg= 1;
   parameter a_input = "DIRECT";
   parameter legacy_mode = "NONE";
   parameter integer carryout_width = 4;
   parameter integer breg = 1;
   parameter integer acascreg = 1;
   parameter integer adreg = 1;
   parameter integer bcascreg = 1;
   parameter integer carryinreg = 1;
   parameter integer carryinselreg = 1;
   parameter integer creg = 1;
   parameter integer dreg = 1;
   parameter integer inmodereg = 1;
   parameter integer mreg = 1;
   parameter integer opmodereg= 1;
   parameter integer preg = 1;
   parameter use_op = 0;
   parameter use_c_port = 1;
   parameter c_use_cea1 = 0;
   parameter c_use_cea2 = 0;
   parameter c_use_cead = 0;
   parameter c_use_ced  = 0;
   parameter c_use_ceinmode = 0;
   parameter c_use_rstd = 0;
   parameter c_use_rstinmode = 0;
   parameter c_use_ceb1 = 0;
   parameter c_use_ceb2 = 0;
   parameter c_use_cemultcarryin = 0;
   parameter c_use_cem = 0;
   parameter c_use_cep = 0;
   parameter c_use_cec = 0;
   parameter c_use_cecarryin = 0;
   parameter c_use_cectrl = 0;
   parameter c_use_bcin = 0;
   parameter c_use_a = 1;
   parameter c_use_acin = 0;
   parameter c_use_en = 0;
   parameter c_use_rst = 0;
   parameter c_use_rsta = 0;
   parameter c_use_rstb = 0;
   parameter c_use_rstp = 0;
   parameter c_use_rstc = 0;
   parameter c_use_rstcarryin = 0;
   parameter c_use_rstalumode = 0;
   parameter c_use_rstctrl = 0;
   parameter c_use_rstm = 0;
   parameter c_use_pcin = 0;
   parameter c_use_b = 0;
   parameter c_use_c = 0;
   parameter c_use_cealumode = 0;
   parameter alumodereg = 1;
   parameter autoreset_pattern_detect = "NO_RESET";
   parameter b_input = "DIRECT";
   parameter mask = 48'h3FFFFFFFFFFF;
   parameter pattern = 48'h000000000000;
   parameter c_use_multsignin = 0;
   parameter sel_mask = "MASK";
   parameter sel_pattern = "PATTERN";
   parameter use_dport = "FALSE";
   parameter use_mult = "MULTIPLY";
   parameter use_pattern_detect = "NO_PATDET";
   parameter use_simd = "ONE48";
   output [29:0] acout;
   output [17:0] bcout;
   output carrycascout;
   output [3:0]carryout;
   output multsignout;
   output [47:0] p;
   output patternbdetect;
   output patterndetect;
   output [47:0] pcout;
   output underflow;
   output overflow;
   input [29:0] a;
   input [29:0] acin;
   input [3:0] alumode;
   input [17:0] b;
   input [17:0] bcin;
   input [47:0] c;
   input carrycascin;
   input carryin;
   input [2:0] carryinsel;
   input cea1;
   input cea2;
   input cead;
   input ceb1;
   input ceb2;
   input cealumode;
   input cec;
   input cecarryin;
   input cectrl;
   input ced;
   input ceinmode;
   input cem;
   input cemultcarryin;
   input cep;
   input multsignin;
   input [19:0] op;
   input [6:0] opmode;
   input [47:0] pcin;
   input rsta;
   input rstcarryin;
   input rstalumode;
   input rstb;
   input rstc;
   input rstctrl;
   input rstd;
   input rstinmode;
   input rstm;
   input rstp;
   input clk;
   input [24:0] d;
   input [4:0] inmode;
   input en;
   input rst;
   input ce;
   wire internal_cea1;
   wire internal_cea2;
   wire internal_cead;
   wire internal_ceb1;
   wire internal_ceb2;
   wire internal_cec;
   wire internal_cep;
   wire internal_cem;
   wire internal_cemultcarryin;
   wire internal_cecarryin;
   wire internal_cectrl;
   wire internal_ced;
   wire internal_ceinmode;
   wire internal_cealumode;
   wire internal_en;
   wire internal_rst;
   wire internal_rsta;
   wire internal_rstb;
   wire internal_rstc;
   wire internal_rstd;
   wire internal_rstinmode;
   wire internal_rstalumode;
   wire internal_rstcarryin;
   wire internal_rstctrl;
   wire internal_rstm;
   wire [47:0] internal_pcin;
   wire internal_rstp;
   wire [6:0] internal_opmode;
   wire internal_sub;
   wire internal_carryin;
   wire internal_multsignin;
   wire [2:0] internal_carryin_sel;
   wire [3:0] internal_alumode;
   wire [29:0] internal_a;
   wire [29:0] internal_acin;
   wire [17:0] internal_b;
   wire [17:0] internal_bcin;
   wire [47:0] internal_c;
   wire [3:0] internal_carryout;
   wire [24:0] internal_d;
   wire [4:0]  internal_inmode;
  assign internal_en = (c_use_en ? en : 1'b1);
  assign internal_cem = (ce & internal_en) & (c_use_cem ? cem : 1'b1);
  assign internal_cemultcarryin = (ce & internal_en) & (c_use_cemultcarryin ? cemultcarryin : 1'b1);
  assign internal_cep = (ce & internal_en) & (c_use_cep ? cep : 1'b1);
  assign internal_cecarryin = (ce & internal_en) & (c_use_cecarryin ? cecarryin : 1'b1);
  assign internal_cectrl = (ce & internal_en) & (c_use_cectrl ? cectrl : 1'b1);
  assign internal_ced = (ce & internal_en) & (c_use_ced ? ced : 1'b1);
  assign internal_ceinmode = (ce & internal_en) & (c_use_ceinmode ? ceinmode : 1'b1);
  assign internal_cealumode = (ce & internal_en) & (c_use_cealumode ? cealumode : 1'b1);
  assign internal_rst = (c_use_rst ? rst : 1'b0);
  assign internal_rsta = (c_use_rsta ? rsta : 1'b0) | internal_rst;
  assign internal_rstb = (c_use_rstb ? rstb : 1'b0) | internal_rst;
  assign internal_rstcarryin = (c_use_rstcarryin ? rstcarryin : 1'b0) | internal_rst;
  assign internal_rstctrl = (c_use_rstctrl ? rstctrl : 1'b0) | internal_rst;
  assign internal_rstd = (use_dport ? rstd : 1'b0) | internal_rst;
  assign internal_rstinmode = (use_dport ? rstinmode : 1'b0) | internal_rst;
  assign internal_rstm = (c_use_rstm ? rstm : 1'b0) | internal_rst;
  assign internal_rstp = (c_use_rstp ? rstp : 1'b0) | internal_rst;
  assign internal_rstalumode = (c_use_rstalumode ? rstalumode : 1'b0) | internal_rst;
  assign internal_acin = (c_use_acin ? acin : 30'b00000000000000000000000000000);
  assign internal_bcin = (c_use_bcin ? bcin : 18'b000000000000000000);
  assign internal_a = (c_use_a ? a : 30'd0);
  assign internal_b = (c_use_b ? b : 18'd0);
  assign internal_c = (c_use_c ? c : 48'd0);
  assign internal_pcin = (c_use_pcin ? pcin : 48'd0);
  assign internal_d = (use_dport ? d : 24'd0);
  assign internal_multsignin = (c_use_multsignin ? multsignin : 1'b0);
 generate
  if(areg == 1)
  begin: cea_1
        assign internal_cea1 = 1'b1;
        assign internal_cea2 = (ce & internal_en) & (c_use_cea1 ? cea1 : 1'b1);
  end
  if(adreg == 0)
  begin: cead_0
   assign internal_cead = 0;
  end
  if(breg == 1)
  begin: ceb_1
        assign internal_ceb1 = 1'b1;
        assign internal_ceb2 = (ce & internal_en) & (c_use_ceb1 ? ceb1 : 1'b1);
  end
  if (use_op == 0)
  begin:opmode_0
     assign internal_opmode = opmode;
     assign internal_alumode = alumode;
     assign internal_carryin = carryin;
     assign internal_carryin_sel = carryinsel;
     if(use_dport == "FALSE")
     begin:dport_0
       assign internal_inmode = 0;
     end
  end
  if (use_c_port == 1)
  begin:using_cport
    assign internal_cec = (ce & internal_en) & (c_use_cec ? cec : 1'b1);
    assign internal_rstc = (c_use_rstc ? rstc : 1'b0) | internal_rst;
  end
  if (carryout_width == 4)
  begin: carryoutwidth4
     assign carryout = internal_carryout;
  end
 endgenerate
   DSP48E1 dsp48_inst(.ACOUT(acout),
    .BCOUT(bcout),
    .CARRYCASCOUT(carrycascout),
    .CARRYOUT(internal_carryout),
    .MULTSIGNOUT(multsignout),
    .OVERFLOW(overflow),
    .P(p),
    .PATTERNBDETECT(patternbdetect),
    .PATTERNDETECT(patterndetect),
    .PCOUT(pcout),
    .UNDERFLOW(underflow),
    .A(internal_a),
    .ACIN(internal_acin),
    .ALUMODE(internal_alumode),
    .B(internal_b),
    .BCIN(internal_bcin),
    .C(internal_c),
    .CARRYCASCIN(carrycascin),
    .CARRYIN(internal_carryin),
    .CARRYINSEL(internal_carryin_sel),
    .CEA1(internal_cea1),
    .CEA2(internal_cea2),
    .CEAD(internal_cead),
    .CEALUMODE(internal_cealumode),
    .CEB1(internal_ceb1),
    .CEB2(internal_ceb2),
    .CEC(internal_cec),
    .CECARRYIN(internal_cecarryin),
    .CECTRL(internal_cectrl),
    .CED(internal_ced),
    .CEINMODE(internal_ceinmode),
    .CEM(internal_cem),
    .CEP(internal_cep),
    .CLK(clk),
    .D(internal_d),
    .INMODE(internal_inmode),
    .MULTSIGNIN(internal_multsignin),
    .OPMODE(internal_opmode),
    .PCIN(internal_pcin),
    .RSTA(internal_rsta),
    .RSTALLCARRYIN(internal_rstcarryin),
    .RSTALUMODE(internal_rstalumode),
    .RSTB(internal_rstb),
    .RSTC(internal_rstc),
    .RSTCTRL(internal_rstctrl),
    .RSTD(internal_rstd),
    .RSTINMODE(internal_rstinmode),
    .RSTM(internal_rstm),
    .RSTP(internal_rstp)
    );
   defparam
   dsp48_inst.ACASCREG = acascreg,
   dsp48_inst.ALUMODEREG = alumodereg,
   dsp48_inst.AREG = areg,
   dsp48_inst.ADREG = adreg,
   dsp48_inst.AUTORESET_PATDET = autoreset_pattern_detect,
   dsp48_inst.B_INPUT = b_input,
   dsp48_inst.BREG = breg,
   dsp48_inst.CARRYINREG = carryinreg,
   dsp48_inst.CARRYINSELREG = carryinselreg,
   dsp48_inst.CREG = creg,
   dsp48_inst.DREG = dreg,
   dsp48_inst.INMODEREG = inmodereg,
   dsp48_inst.MREG = mreg,
   dsp48_inst.OPMODEREG = opmodereg,
   dsp48_inst.PREG = preg,
   dsp48_inst.A_INPUT = a_input,
   dsp48_inst.BCASCREG = bcascreg,
   dsp48_inst.B_INPUT = b_input,
   dsp48_inst.MASK = mask,
   dsp48_inst.PATTERN = pattern,
   dsp48_inst.SEL_MASK = sel_mask,
   dsp48_inst.SEL_PATTERN = sel_pattern,
   dsp48_inst.USE_DPORT = use_dport,
   dsp48_inst.USE_MULT= use_mult,
   dsp48_inst.USE_PATTERN_DETECT = use_pattern_detect,
   dsp48_inst.USE_SIMD = use_simd;
 endmodule


`timescale 1 ns / 10 ps
  module decimator_ip_time_division_multiplexer1  (
    src_clk,
    src_ce,
    dest_clk,
    dest_ce,
    d0,
    d1,
    d2,
    d3,
    d4,
    d5,
    d6,
    d7,
    q
); 

  input src_clk, src_ce;
  input dest_clk, dest_ce;
  input [16-1:0] d0;
  input [16-1:0] d1;
  input [16-1:0] d2;
  input [16-1:0] d3;
  input [16-1:0] d4;
  input [16-1:0] d5;
  input [16-1:0] d6;
  input [16-1:0] d7;
  output [16-1:0] q;
  wire  src_clk_net;
  wire  src_ce_net;
  wire  dest_clk_net;
  wire  dest_ce_net;
  wire [16-1:0] d0_net;
  wire [48-1:0] dsp_0_c_net;
  wire [16-1:0] d1_net;
  wire [48-1:0] dsp_0_ab_net;
  wire [30-1:0] dsp_0_a_net;
  wire [18-1:0] dsp_0_b_net;
  wire [16-1:0] d2_net;
  wire [48-1:0] dsp_1_c_net;
  wire [16-1:0] d3_net;
  wire [48-1:0] dsp_1_ab_net;
  wire [30-1:0] dsp_1_a_net;
  wire [18-1:0] dsp_1_b_net;
  wire [16-1:0] d4_net;
  wire [48-1:0] dsp_2_c_net;
  wire [16-1:0] d5_net;
  wire [48-1:0] dsp_2_ab_net;
  wire [30-1:0] dsp_2_a_net;
  wire [18-1:0] dsp_2_b_net;
  wire [16-1:0] d6_net;
  wire [48-1:0] dsp_3_c_net;
  wire [16-1:0] d7_net;
  wire [48-1:0] dsp_3_ab_net;
  wire [30-1:0] dsp_3_a_net;
  wire [18-1:0] dsp_3_b_net;
  wire [3-1:0] counter_net;
  wire [28-1:0] memory_1_net;
  wire [7-1:0] dsp48_0_opmode_net;
  wire [7-1:0] dsp48_1_delay_net;
  wire [7-1:0] dsp48_2_delay_net;
  wire [7-1:0] dsp48_3_delay_net;
  wire [7-1:0] dsp48_1_opmode_net;
  wire [7-1:0] dsp48_2_opmode_net;
  wire [7-1:0] dsp48_3_opmode_net;
  wire [48-1:0] dsp48_0_p_net;
  wire [48-1:0] dsp48_0_pcout_net;
  wire [48-1:0] dsp48_1_p_net;
  wire [48-1:0] dsp48_1_pcout_net;
  wire [48-1:0] dsp48_2_p_net;
  wire [48-1:0] dsp48_2_pcout_net;
  wire [48-1:0] dsp48_3_p_net;
  wire [48-1:0] dsp48_3_pcout_net;
  wire [16-1:0] convert_out_net;
  wire [16-1:0] out_net;

  assign  src_clk_net = src_clk;
  assign  dest_clk_net = dest_clk;
  assign  src_ce_net  = src_ce;
  assign  dest_ce_net  = dest_ce;
  assign  d0_net = d0;
  assign  d1_net = d1;
  assign  d2_net = d2;
  assign  d3_net = d3;
  assign  d4_net = d4;
  assign  d5_net = d5;
  assign  d6_net = d6;
  assign  d7_net = d7;
  assign  q = out_net;
  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert1  (
    .clr(1'b0),
    .en(1'b1),
    .din(d0_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_0_c_net)
  );

  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert2  (
    .clr(1'b0),
    .en(1'b1),
    .din(d1_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_0_ab_net)
  );

  decimator_ip_time_division_multiplexer1_xlsplit_30_18  decimator_ip_time_division_multiplexer1_xltdm_dsp_xlsplit_30_180  (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(dsp_0_ab_net),
    .a(dsp_0_a_net),
    .b(dsp_0_b_net)
  );

  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert3  (
    .clr(1'b0),
    .en(1'b1),
    .din(d2_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_1_c_net)
  );

  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert4  (
    .clr(1'b0),
    .en(1'b1),
    .din(d3_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_1_ab_net)
  );

  decimator_ip_time_division_multiplexer1_xlsplit_30_18  decimator_ip_time_division_multiplexer1_xltdm_dsp_xlsplit_30_181  (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(dsp_1_ab_net),
    .a(dsp_1_a_net),
    .b(dsp_1_b_net)
  );

  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert5  (
    .clr(1'b0),
    .en(1'b1),
    .din(d4_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_2_c_net)
  );

  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert6  (
    .clr(1'b0),
    .en(1'b1),
    .din(d5_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_2_ab_net)
  );

  decimator_ip_time_division_multiplexer1_xlsplit_30_18  decimator_ip_time_division_multiplexer1_xltdm_dsp_xlsplit_30_182  (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(dsp_2_ab_net),
    .a(dsp_2_a_net),
    .b(dsp_2_b_net)
  );

  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert7  (
    .clr(1'b0),
    .en(1'b1),
    .din(d6_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_3_c_net)
  );

  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(48)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xconvert8  (
    .clr(1'b0),
    .en(1'b1),
    .din(d7_net),
    .clk(src_clk_net),
    .ce(src_ce_net),
    .dout(dsp_3_ab_net)
  );

  decimator_ip_time_division_multiplexer1_xlsplit_30_18  decimator_ip_time_division_multiplexer1_xltdm_dsp_xlsplit_30_183  (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d(dsp_3_ab_net),
    .a(dsp_3_a_net),
    .b(dsp_3_b_net)
  );

decimator_ip_time_division_multiplexer1_xlcounter_limit #(
    .cnt_15_0(7),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("decimator_ip_c_counter_binary_v12_0_i0"),
    .count_limited(1),
    .op_arith(`xlUnsigned),
    .op_width(3)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_address_generator (
    .en(1'b1),
    .rst(1'b0),
    .clr(1'b0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .op(counter_net)
  );
  decimator_ip_time_division_multiplexer1_xlrom1 #(
    .addr_width(3),
    .c_address_width(4),
    .c_width(28),
    .core_name0("decimator_ip_dist_mem_gen_v8_0_i0"),
    .latency(1)
  )

  decimator_ip_time_division_multiplexer1_xltdm_dsp_xlrom_14 (
    .en(1'b1),
    .addr(counter_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .data(memory_1_net)
  );


  decimator_ip_time_division_multiplexer1_mem_addr_split_1  decimator_ip_time_division_multiplexer1_xltdm_dsp_mem_addr_split_14  (
    .a(memory_1_net),
    .lsb0(dsp48_0_opmode_net),
    .lsb1(dsp48_1_delay_net),
    .lsb2(dsp48_2_delay_net),
    .lsb3(dsp48_3_delay_net),
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0)
  );    


  decimator_ip_time_division_multiplexer1_xldelay #(
     .latency(1),
     .reg_retiming(0),
     .reset(0),
     .width(7)
   )

   decimator_ip_time_division_multiplexer1_xltdm_dsp_xldelay_10 (
     .en(1'b1),
     .rst(1'b0),
     .d(dsp48_1_delay_net),
     .clk(dest_clk_net),
     .ce(dest_ce_net),
     .q(dsp48_1_opmode_net)
   );


  decimator_ip_time_division_multiplexer1_xldelay #(
     .latency(2),
     .reg_retiming(0),
     .reset(0),
     .width(7)
   )

   decimator_ip_time_division_multiplexer1_xltdm_dsp_xldelay_11 (
     .en(1'b1),
     .rst(1'b0),
     .d(dsp48_2_delay_net),
     .clk(dest_clk_net),
     .ce(dest_ce_net),
     .q(dsp48_2_opmode_net)
   );


  decimator_ip_time_division_multiplexer1_xldelay #(
     .latency(3),
     .reg_retiming(0),
     .reset(0),
     .width(7)
   )

   decimator_ip_time_division_multiplexer1_xltdm_dsp_xldelay_12 (
     .en(1'b1),
     .rst(1'b0),
     .d(dsp48_3_delay_net),
     .clk(dest_clk_net),
     .ce(dest_ce_net),
     .q(dsp48_3_opmode_net)
   );


  decimator_ip_time_division_multiplexer1_xldsp48e1 #(
    .a_input("DIRECT"),
    .acascreg(1),
    .adreg(0),
    .alumodereg(0),
    .areg(1),
    .autoreset_pattern_detect("NO_RESET"),
    .b_input("DIRECT"),
    .bcascreg(1),
    .breg(1),
    .c_use_a(1),
    .c_use_acin(0),
    .c_use_b(1),
    .c_use_bcin(0),
    .c_use_c(1),
    .c_use_cea1(0),
    .c_use_cea2(0),
    .c_use_cead(0),
    .c_use_cealumode(0),
    .c_use_ceb1(0),
    .c_use_ceb2(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_cectrl(0),
    .c_use_ced(0),
    .c_use_ceinmode(0),
    .c_use_cem(0),
    .c_use_cemultcarryin(0),
    .c_use_cep(0),
    .c_use_en(0),
    .c_use_multsignin(0),
    .c_use_pcin(0),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstalumode(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstctrl(0),
    .c_use_rstd(0),
    .c_use_rstinmode(0),
    .c_use_rstm(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinselreg(0),
    .carryout_width(4),
    .creg(1),
    .dreg(0),
    .inmodereg(0),
    .mreg(0),
    .opmodereg(1),
    .preg(1),
    .sel_mask("C"),
    .sel_pattern("C"),
    .use_c_port(1),
    .use_dport("FALSE"),
    .use_mult("NONE"),
    .use_op(0),
    .use_pattern_detect("NO_PATDET"),
    .use_simd("ONE48")
  )

  decimator_ip_time_division_multiplexer1_xltdm_dsp_xldsp48e1_0(
    .en(1'b1),
    .cea1(1'b1),
    .cea2(1'b1),
    .ceb1(1'b1),
    .ceb2(1'b1),
    .cec(1'b1),
    .cem(1'b1),
    .cealumode(1'b1),
    .cemultcarryin(1'b1),
    .cectrl(1'b1),
    .cecarryin(1'b1),
    .cep(1'b1),
    .ced(1'b1),
    .cead(1'b1),
    .ceinmode(1'b1),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstm(1'b0),
    .rstctrl(1'b0),
    .rstcarryin(1'b0),
    .rstalumode(1'b0),
    .rstp(1'b0),
    .rstd(1'b0),
    .rstinmode(1'b0),
    .a(dsp_0_a_net),
    .b(dsp_0_b_net),
    .c(dsp_0_c_net),
    .opmode(dsp48_0_opmode_net),
    .alumode(4'b0),
    .carryin(1'b0),
    .carryinsel(3'b0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .p(dsp48_0_p_net),
    .pcout(dsp48_0_pcout_net)
  );    

  decimator_ip_time_division_multiplexer1_xldsp48e1 #(
    .a_input("DIRECT"),
    .acascreg(1),
    .adreg(0),
    .alumodereg(0),
    .areg(1),
    .autoreset_pattern_detect("NO_RESET"),
    .b_input("DIRECT"),
    .bcascreg(1),
    .breg(1),
    .c_use_a(1),
    .c_use_acin(0),
    .c_use_b(1),
    .c_use_bcin(0),
    .c_use_c(1),
    .c_use_cea1(0),
    .c_use_cea2(0),
    .c_use_cead(0),
    .c_use_cealumode(0),
    .c_use_ceb1(0),
    .c_use_ceb2(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_cectrl(0),
    .c_use_ced(0),
    .c_use_ceinmode(0),
    .c_use_cem(0),
    .c_use_cemultcarryin(0),
    .c_use_cep(0),
    .c_use_en(0),
    .c_use_multsignin(0),
    .c_use_pcin(1),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstalumode(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstctrl(0),
    .c_use_rstd(0),
    .c_use_rstinmode(0),
    .c_use_rstm(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinselreg(0),
    .carryout_width(4),
    .creg(1),
    .dreg(0),
    .inmodereg(0),
    .mreg(0),
    .opmodereg(1),
    .preg(1),
    .sel_mask("C"),
    .sel_pattern("C"),
    .use_c_port(1),
    .use_dport("FALSE"),
    .use_mult("NONE"),
    .use_op(0),
    .use_pattern_detect("NO_PATDET"),
    .use_simd("ONE48")
  )

  decimator_ip_time_division_multiplexer1_xltdm_dsp_xldsp48e1_1(
    .en(1'b1),
    .cea1(1'b1),
    .cea2(1'b1),
    .ceb1(1'b1),
    .ceb2(1'b1),
    .cec(1'b1),
    .cem(1'b1),
    .cealumode(1'b1),
    .cemultcarryin(1'b1),
    .cectrl(1'b1),
    .cecarryin(1'b1),
    .cep(1'b1),
    .ced(1'b1),
    .cead(1'b1),
    .ceinmode(1'b1),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstm(1'b0),
    .rstctrl(1'b0),
    .rstcarryin(1'b0),
    .rstalumode(1'b0),
    .rstp(1'b0),
    .rstd(1'b0),
    .rstinmode(1'b0),
    .a(dsp_1_a_net),
    .b(dsp_1_b_net),
    .c(dsp_1_c_net),
    .pcin(dsp48_0_pcout_net),
    .opmode(dsp48_1_opmode_net),
    .alumode(4'b0),
    .carryin(1'b0),
    .carryinsel(3'b0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .p(dsp48_1_p_net),
    .pcout(dsp48_1_pcout_net)
  );    

  decimator_ip_time_division_multiplexer1_xldsp48e1 #(
    .a_input("DIRECT"),
    .acascreg(1),
    .adreg(0),
    .alumodereg(0),
    .areg(1),
    .autoreset_pattern_detect("NO_RESET"),
    .b_input("DIRECT"),
    .bcascreg(1),
    .breg(1),
    .c_use_a(1),
    .c_use_acin(0),
    .c_use_b(1),
    .c_use_bcin(0),
    .c_use_c(1),
    .c_use_cea1(0),
    .c_use_cea2(0),
    .c_use_cead(0),
    .c_use_cealumode(0),
    .c_use_ceb1(0),
    .c_use_ceb2(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_cectrl(0),
    .c_use_ced(0),
    .c_use_ceinmode(0),
    .c_use_cem(0),
    .c_use_cemultcarryin(0),
    .c_use_cep(0),
    .c_use_en(0),
    .c_use_multsignin(0),
    .c_use_pcin(1),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstalumode(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstctrl(0),
    .c_use_rstd(0),
    .c_use_rstinmode(0),
    .c_use_rstm(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinselreg(0),
    .carryout_width(4),
    .creg(1),
    .dreg(0),
    .inmodereg(0),
    .mreg(0),
    .opmodereg(1),
    .preg(1),
    .sel_mask("C"),
    .sel_pattern("C"),
    .use_c_port(1),
    .use_dport("FALSE"),
    .use_mult("NONE"),
    .use_op(0),
    .use_pattern_detect("NO_PATDET"),
    .use_simd("ONE48")
  )

  decimator_ip_time_division_multiplexer1_xltdm_dsp_xldsp48e1_2(
    .en(1'b1),
    .cea1(1'b1),
    .cea2(1'b1),
    .ceb1(1'b1),
    .ceb2(1'b1),
    .cec(1'b1),
    .cem(1'b1),
    .cealumode(1'b1),
    .cemultcarryin(1'b1),
    .cectrl(1'b1),
    .cecarryin(1'b1),
    .cep(1'b1),
    .ced(1'b1),
    .cead(1'b1),
    .ceinmode(1'b1),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstm(1'b0),
    .rstctrl(1'b0),
    .rstcarryin(1'b0),
    .rstalumode(1'b0),
    .rstp(1'b0),
    .rstd(1'b0),
    .rstinmode(1'b0),
    .a(dsp_2_a_net),
    .b(dsp_2_b_net),
    .c(dsp_2_c_net),
    .pcin(dsp48_1_pcout_net),
    .opmode(dsp48_2_opmode_net),
    .alumode(4'b0),
    .carryin(1'b0),
    .carryinsel(3'b0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .p(dsp48_2_p_net),
    .pcout(dsp48_2_pcout_net)
  );    

  decimator_ip_time_division_multiplexer1_xldsp48e1 #(
    .a_input("DIRECT"),
    .acascreg(1),
    .adreg(0),
    .alumodereg(0),
    .areg(1),
    .autoreset_pattern_detect("NO_RESET"),
    .b_input("DIRECT"),
    .bcascreg(1),
    .breg(1),
    .c_use_a(1),
    .c_use_acin(0),
    .c_use_b(1),
    .c_use_bcin(0),
    .c_use_c(1),
    .c_use_cea1(0),
    .c_use_cea2(0),
    .c_use_cead(0),
    .c_use_cealumode(0),
    .c_use_ceb1(0),
    .c_use_ceb2(0),
    .c_use_cec(0),
    .c_use_cecarryin(0),
    .c_use_cectrl(0),
    .c_use_ced(0),
    .c_use_ceinmode(0),
    .c_use_cem(0),
    .c_use_cemultcarryin(0),
    .c_use_cep(0),
    .c_use_en(0),
    .c_use_multsignin(0),
    .c_use_pcin(1),
    .c_use_rst(0),
    .c_use_rsta(0),
    .c_use_rstalumode(0),
    .c_use_rstb(0),
    .c_use_rstc(0),
    .c_use_rstcarryin(0),
    .c_use_rstctrl(0),
    .c_use_rstd(0),
    .c_use_rstinmode(0),
    .c_use_rstm(0),
    .c_use_rstp(0),
    .carryinreg(0),
    .carryinselreg(0),
    .carryout_width(4),
    .creg(1),
    .dreg(0),
    .inmodereg(0),
    .mreg(0),
    .opmodereg(1),
    .preg(1),
    .sel_mask("C"),
    .sel_pattern("C"),
    .use_c_port(1),
    .use_dport("FALSE"),
    .use_mult("NONE"),
    .use_op(0),
    .use_pattern_detect("NO_PATDET"),
    .use_simd("ONE48")
  )

  decimator_ip_time_division_multiplexer1_xltdm_dsp_xldsp48e1_3(
    .en(1'b1),
    .cea1(1'b1),
    .cea2(1'b1),
    .ceb1(1'b1),
    .ceb2(1'b1),
    .cec(1'b1),
    .cem(1'b1),
    .cealumode(1'b1),
    .cemultcarryin(1'b1),
    .cectrl(1'b1),
    .cecarryin(1'b1),
    .cep(1'b1),
    .ced(1'b1),
    .cead(1'b1),
    .ceinmode(1'b1),
    .rst(1'b0),
    .rsta(1'b0),
    .rstb(1'b0),
    .rstc(1'b0),
    .rstm(1'b0),
    .rstctrl(1'b0),
    .rstcarryin(1'b0),
    .rstalumode(1'b0),
    .rstp(1'b0),
    .rstd(1'b0),
    .rstinmode(1'b0),
    .a(dsp_3_a_net),
    .b(dsp_3_b_net),
    .c(dsp_3_c_net),
    .pcin(dsp48_2_pcout_net),
    .opmode(dsp48_3_opmode_net),
    .alumode(4'b0),
    .carryin(1'b0),
    .carryinsel(3'b0),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .p(dsp48_3_p_net),
    .pcout(dsp48_3_pcout_net)
  );    


  decimator_ip_time_division_multiplexer1_xlconvert #(
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(48),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16)
  )
  decimator_ip_time_division_multiplexer1_xltdm_dsp_xlconvert_out (
    .clr(1'b0),
    .en(1'b1),
    .din(dsp48_3_p_net),
    .clk(dest_clk_net),
    .ce(dest_ce_net),
    .dout(convert_out_net)
  );


  decimator_ip_time_division_multiplexer1_xldelay #(
     .latency(1),
     .reg_retiming(1),
     .reset(0),
     .width(16)
   )

   decimator_ip_time_division_multiplexer1_xltdm_dsp_xldelay_output (
     .en(1'b1),
     .rst(1'b0),
     .d(convert_out_net),
     .clk(dest_clk_net),
     .ce(dest_ce_net),
     .q(out_net)
   );



endmodule
