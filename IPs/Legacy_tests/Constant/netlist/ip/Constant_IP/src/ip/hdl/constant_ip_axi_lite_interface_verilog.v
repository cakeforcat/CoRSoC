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
module constant_ip_axi_lite_interface_verilog#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 1, C_S_NUM_OFFSETS = 1)(
  input wire[31:0] gateway_out,
  output wire clk,
  input wire constant_ip_aclk,
  input wire constant_ip_aresetn,
  input  wire constant_ip_s_axi_awaddr,
  input  wire constant_ip_s_axi_awvalid,
  output wire constant_ip_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] constant_ip_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] constant_ip_s_axi_wstrb,
  input  wire constant_ip_s_axi_wvalid,
  output wire constant_ip_s_axi_wready,
  output wire [1:0] constant_ip_s_axi_bresp,
  output wire constant_ip_s_axi_bvalid,
  input  wire constant_ip_s_axi_bready,
  input  wire constant_ip_s_axi_araddr,
  input  wire constant_ip_s_axi_arvalid,
  output wire constant_ip_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] constant_ip_s_axi_rdata,
  output wire [1:0] constant_ip_s_axi_rresp,
  output wire constant_ip_s_axi_rvalid,
  input  wire constant_ip_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign constant_ip_s_axi_awready = axi_awready;
assign constant_ip_s_axi_wready  = axi_wready;
assign constant_ip_s_axi_bresp  = axi_bresp;
assign constant_ip_s_axi_bvalid = axi_bvalid;
assign constant_ip_s_axi_arready = axi_arready;
assign constant_ip_s_axi_rdata  = axi_rdata;
assign constant_ip_s_axi_rvalid = axi_rvalid;
assign constant_ip_s_axi_rresp  = axi_rresp;
// map output 0
assign slv_wire_array[0] = gateway_out[31:0];
  initial
  begin
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      1'd0 : dec_w = 0;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      1'd0 : dec_r = 0;
      default : dec_r = 0;
    endcase
  end
  always @( posedge constant_ip_aclk )
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && constant_ip_s_axi_awvalid && constant_ip_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= constant_ip_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge constant_ip_aclk )
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && constant_ip_s_axi_wvalid && constant_ip_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && constant_ip_s_axi_wvalid && axi_awready && constant_ip_s_axi_awvalid;
  always @( posedge constant_ip_aclk )
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( constant_ip_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= constant_ip_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge constant_ip_aclk )
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && constant_ip_s_axi_awvalid && ~axi_bvalid && axi_wready && constant_ip_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (constant_ip_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge constant_ip_aclk )
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && constant_ip_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= constant_ip_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge constant_ip_aclk )
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && constant_ip_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & constant_ip_s_axi_arvalid & ~axi_rvalid;
  always @(constant_ip_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge constant_ip_aclk )
  begin
    if ( constant_ip_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  assign clk = constant_ip_aclk;

endmodule

