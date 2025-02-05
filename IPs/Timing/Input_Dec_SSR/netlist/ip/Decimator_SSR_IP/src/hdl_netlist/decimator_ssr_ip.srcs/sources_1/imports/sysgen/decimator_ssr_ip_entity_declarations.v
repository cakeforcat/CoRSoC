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


module decimator_ssr_ip_xlconvert (din, clk, ce, clr, en, dout);

//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
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

generate
if (latency > 0)
     begin:latency_test
	synth_reg # (dout_width, latency)
	  reg1 (
	       .i(result),
	       .ce(internal_ce),
	       .clr(clr),
	       .clk(clk),
	       .o(dout));
     end
else
     begin:latency0
	assign dout = result;
     end
endgenerate

endmodule

`timescale 1 ns / 10 ps
module decimator_ssr_ip_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
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
module  xlfir_compiler_696afa25b595ab5ad2ae900748a3bf4c (ce,clk,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_vect0,s_axis_data_tdata_vect1,s_axis_data_tdata_vect2,s_axis_data_tdata_vect3,s_axis_data_tdata_vect4,s_axis_data_tdata_vect5,s_axis_data_tdata_vect6,s_axis_data_tdata_vect7,s_axis_data_tready,s_axis_data_tvalid,src_ce,src_clk);

input ce;
input clk;
output[34:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[15:0] s_axis_data_tdata_vect0;
input[15:0] s_axis_data_tdata_vect1;
input[15:0] s_axis_data_tdata_vect2;
input[15:0] s_axis_data_tdata_vect3;
input[15:0] s_axis_data_tdata_vect4;
input[15:0] s_axis_data_tdata_vect5;
input[15:0] s_axis_data_tdata_vect6;
input[15:0] s_axis_data_tdata_vect7;
output s_axis_data_tready;
input s_axis_data_tvalid;
input src_ce;
input src_clk;
wire[39:0] m_axis_data_tdata_net;
wire[127:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real = m_axis_data_tdata_net[34 : 0];
  assign s_axis_data_tdata_net[127 : 112] = s_axis_data_tdata_vect7;
  assign s_axis_data_tdata_net[111 : 96] = s_axis_data_tdata_vect6;
  assign s_axis_data_tdata_net[95 : 80] = s_axis_data_tdata_vect5;
  assign s_axis_data_tdata_net[79 : 64] = s_axis_data_tdata_vect4;
  assign s_axis_data_tdata_net[63 : 48] = s_axis_data_tdata_vect3;
  assign s_axis_data_tdata_net[47 : 32] = s_axis_data_tdata_vect2;
  assign s_axis_data_tdata_net[31 : 16] = s_axis_data_tdata_vect1;
  assign s_axis_data_tdata_net[15 : 0] = s_axis_data_tdata_vect0;
  decimator_ssr_ip_fir_compiler_v7_2_i0 decimator_ssr_ip_fir_compiler_v7_2_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(s_axis_data_tvalid)
    );

 endmodule



