//----------------------------------------------------------------------------
// Title : ROM for tile configuration
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


`timescale 1ps/1ps

module design_1_usp_rf_data_converter_0_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:238] = '{
       30'h07230000,  // Clock Network Control 0 (ADC0)
       30'h07240001,  // Clock Network Control 1 (ADC0)
       30'h0717001c,  // PLL FB Div (ADC0)
       30'h070c0081,  // PLL Output Divide (ADC0)
       30'h07100010,  // PLL Ref clock divide (ADC0)
       30'h07000080,  // PLL SDM CONFIG0 (ADC0)
       30'h07060111,  // PLL SDM seed (ADC0)
       30'h07070011,  // PLL SDM seed setup (ADC0)
       30'h070e0507,  // PLL ChargePump setup (ADC0)
       30'h0712ffff,  // PLL ChargePump setup (ADC0)
       30'h07137f9a,  // PLL loop filter setup (ADC0)
       30'h07140006,  // PLL loop filter setup (ADC0)
       30'h07155800,  // PLL VCO setup (ADC0)
       30'h07160008,  // PLL VCO setup (ADC0)
       30'h070a7a3e,  // PLL Coarse Frequency setup (ADC0)
       30'h070b7008,  // PLL Coarse Frequency setup (ADC0)
       30'h0711003d,  // PLL Voltage Regulator setup (ADC0)
       30'h072c0024,  // CLK_DIV (ADC0)
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h072dffc0,  // HSCOM_PWR_MASK (ADC0)
       30'h00020801,  // ADC00 Data Width
       30'h00100003,  // ADC00 Decimation Config
       30'h00110004,  // ADC00 Decimation Mode
       30'h00221015,  // ADC00 Mixer Mode
       30'h002a0001,  // ADC00 NCO Phase Mode
       30'h00270000,  // ADC00 NCO Frequency Word 0
       30'h00260000,  // ADC00 NCO Frequency Word 1
       30'h00250000,  // ADC00 NCO Frequency Word 2
       30'h00290000,  // ADC00 NCO Phase Offset Word 0
       30'h00280000,  // ADC00 NCO Phase Offset Word 1
       30'h003a0020,  // ADC00 Switch Matrix Config
       30'h007101f1,  // ADC00 RX MC Config 0
       30'h00518243,  // ADC00 TI_DCB_CTRL0
       30'h0055904e,  // ADC00 TI_TIME_SKEW_CTRL0
       30'h00060008,  // ADC00 FABRIC_DEBUG
       30'h01020801,  // ADC01 Data Width
       30'h01100003,  // ADC01 Decimation Config
       30'h01110004,  // ADC01 Decimation Mode
       30'h01221015,  // ADC01 Mixer Mode
       30'h012a0002,  // ADC01 NCO Phase Mode
       30'h01270000,  // ADC01 NCO Frequency Word 0
       30'h01260000,  // ADC01 NCO Frequency Word 1
       30'h01250000,  // ADC01 NCO Frequency Word 2
       30'h01290000,  // ADC01 NCO Phase Offset Word 0
       30'h01280000,  // ADC01 NCO Phase Offset Word 1
       30'h013a0024,  // ADC01 Switch Matrix Config
       30'h017101f9,  // ADC01 RX MC Config 0
       30'h01518247,  // ADC01 TI_DCB_CTRL0
       30'h0155904e,  // ADC01 TI_TIME_SKEW_CTRL0
       30'h01060008,  // ADC01 FABRIC_DEBUG
       30'h02020801,  // ADC02 Data Width
       30'h02100003,  // ADC02 Decimation Config
       30'h02110004,  // ADC02 Decimation Mode
       30'h02221015,  // ADC02 Mixer Mode
       30'h022a0001,  // ADC02 NCO Phase Mode
       30'h02270000,  // ADC02 NCO Frequency Word 0
       30'h02260000,  // ADC02 NCO Frequency Word 1
       30'h02250000,  // ADC02 NCO Frequency Word 2
       30'h02290000,  // ADC02 NCO Phase Offset Word 0
       30'h02280000,  // ADC02 NCO Phase Offset Word 1
       30'h023a0020,  // ADC02 Switch Matrix Config
       30'h02518243,  // ADC02 TI_DCB_CTRL0
       30'h0255904a,  // ADC02 TI_TIME_SKEW_CTRL0
       30'h02060008,  // ADC02 FABRIC_DEBUG
       30'h03020801,  // ADC03 Data Width
       30'h03100003,  // ADC03 Decimation Config
       30'h03110004,  // ADC03 Decimation Mode
       30'h03221015,  // ADC03 Mixer Mode
       30'h032a0002,  // ADC03 NCO Phase Mode
       30'h03270000,  // ADC03 NCO Frequency Word 0
       30'h03260000,  // ADC03 NCO Frequency Word 1
       30'h03250000,  // ADC03 NCO Frequency Word 2
       30'h03290000,  // ADC03 NCO Phase Offset Word 0
       30'h03280000,  // ADC03 NCO Phase Offset Word 1
       30'h033a0024,  // ADC03 Switch Matrix Config
       30'h03518247,  // ADC03 TI_DCB_CTRL0
       30'h0355904a,  // ADC03 TI_TIME_SKEW_CTRL0
       30'h03060008,  // ADC03 FABRIC_DEBUG
       30'h0f230000,  // Clock Network Control 0 (ADC1)
       30'h0f240001,  // Clock Network Control 1 (ADC1)
       30'h0f17001c,  // PLL FB Div (ADC1)
       30'h0f0c0081,  // PLL Output Divide (ADC1)
       30'h0f100010,  // PLL Ref clock divide (ADC1)
       30'h0f000080,  // PLL SDM CONFIG0 (ADC1)
       30'h0f060111,  // PLL SDM seed (ADC1)
       30'h0f070011,  // PLL SDM seed setup (ADC1)
       30'h0f0e0507,  // PLL ChargePump setup (ADC1)
       30'h0f12ffff,  // PLL ChargePump setup (ADC1)
       30'h0f137f9a,  // PLL loop filter setup (ADC1)
       30'h0f140006,  // PLL loop filter setup (ADC1)
       30'h0f155800,  // PLL VCO setup (ADC1)
       30'h0f160008,  // PLL VCO setup (ADC1)
       30'h0f0a7a3e,  // PLL Coarse Frequency setup (ADC1)
       30'h0f0b7008,  // PLL Coarse Frequency setup (ADC1)
       30'h0f11003d,  // PLL Voltage Regulator setup (ADC1)
       30'h0f2c0024,  // CLK_DIV (ADC1)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h0f2dffc0,  // HSCOM_PWR_MASK (ADC1)
       30'h08020801,  // ADC10 Data Width
       30'h08100003,  // ADC10 Decimation Config
       30'h08110004,  // ADC10 Decimation Mode
       30'h08221015,  // ADC10 Mixer Mode
       30'h082a0001,  // ADC10 NCO Phase Mode
       30'h08270000,  // ADC10 NCO Frequency Word 0
       30'h08260000,  // ADC10 NCO Frequency Word 1
       30'h08250000,  // ADC10 NCO Frequency Word 2
       30'h08290000,  // ADC10 NCO Phase Offset Word 0
       30'h08280000,  // ADC10 NCO Phase Offset Word 1
       30'h083a0020,  // ADC10 Switch Matrix Config
       30'h087101f1,  // ADC10 RX MC Config 0
       30'h08518243,  // ADC10 TI_DCB_CTRL0
       30'h0855904e,  // ADC10 TI_TIME_SKEW_CTRL0
       30'h08060008,  // ADC10 FABRIC_DEBUG
       30'h09020801,  // ADC11 Data Width
       30'h09100003,  // ADC11 Decimation Config
       30'h09110004,  // ADC11 Decimation Mode
       30'h09221015,  // ADC11 Mixer Mode
       30'h092a0002,  // ADC11 NCO Phase Mode
       30'h09270000,  // ADC11 NCO Frequency Word 0
       30'h09260000,  // ADC11 NCO Frequency Word 1
       30'h09250000,  // ADC11 NCO Frequency Word 2
       30'h09290000,  // ADC11 NCO Phase Offset Word 0
       30'h09280000,  // ADC11 NCO Phase Offset Word 1
       30'h093a0024,  // ADC11 Switch Matrix Config
       30'h097101f9,  // ADC11 RX MC Config 0
       30'h09518247,  // ADC11 TI_DCB_CTRL0
       30'h0955904e,  // ADC11 TI_TIME_SKEW_CTRL0
       30'h09060008,  // ADC11 FABRIC_DEBUG
       30'h0a020801,  // ADC12 Data Width
       30'h0a100003,  // ADC12 Decimation Config
       30'h0a110004,  // ADC12 Decimation Mode
       30'h0a221015,  // ADC12 Mixer Mode
       30'h0a2a0001,  // ADC12 NCO Phase Mode
       30'h0a270000,  // ADC12 NCO Frequency Word 0
       30'h0a260000,  // ADC12 NCO Frequency Word 1
       30'h0a250000,  // ADC12 NCO Frequency Word 2
       30'h0a290000,  // ADC12 NCO Phase Offset Word 0
       30'h0a280000,  // ADC12 NCO Phase Offset Word 1
       30'h0a3a0020,  // ADC12 Switch Matrix Config
       30'h0a518243,  // ADC12 TI_DCB_CTRL0
       30'h0a55904a,  // ADC12 TI_TIME_SKEW_CTRL0
       30'h0a060008,  // ADC12 FABRIC_DEBUG
       30'h0b020801,  // ADC13 Data Width
       30'h0b100003,  // ADC13 Decimation Config
       30'h0b110004,  // ADC13 Decimation Mode
       30'h0b221015,  // ADC13 Mixer Mode
       30'h0b2a0002,  // ADC13 NCO Phase Mode
       30'h0b270000,  // ADC13 NCO Frequency Word 0
       30'h0b260000,  // ADC13 NCO Frequency Word 1
       30'h0b250000,  // ADC13 NCO Frequency Word 2
       30'h0b290000,  // ADC13 NCO Phase Offset Word 0
       30'h0b280000,  // ADC13 NCO Phase Offset Word 1
       30'h0b3a0024,  // ADC13 Switch Matrix Config
       30'h0b518247,  // ADC13 TI_DCB_CTRL0
       30'h0b55904a,  // ADC13 TI_TIME_SKEW_CTRL0
       30'h0b060008,  // ADC13 FABRIC_DEBUG
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h1f281700,  // SYSREF Distribution (ADC3)
       30'h27230000,  // Clock Network Control 0 (DAC0)
       30'h27240001,  // Clock Network Control 1 (DAC0)
       30'h2717001c,  // PLL FB Div (DAC0)
       30'h270c0081,  // PLL Output Divide (DAC0)
       30'h27100010,  // PLL Ref clock divide (DAC0)
       30'h27000080,  // PLL SDM CONFIG0 (DAC0)
       30'h27060111,  // PLL SDM seed (DAC0)
       30'h27070011,  // PLL SDM seed setup (DAC0)
       30'h270e0507,  // PLL ChargePump setup (DAC0)
       30'h2712ffff,  // PLL ChargePump setup (DAC0)
       30'h27137f9a,  // PLL loop filter setup (DAC0)
       30'h27140006,  // PLL loop filter setup (DAC0)
       30'h27155800,  // PLL VCO setup (DAC0)
       30'h27160008,  // PLL VCO setup (DAC0)
       30'h270a7a3e,  // PLL Coarse Frequency setup (DAC0)
       30'h270b7008,  // PLL Coarse Frequency setup (DAC0)
       30'h2711003d,  // PLL Voltage Regulator setup (DAC0)
       30'h272c0014,  // CLK_DIV (DAC0)
       30'h2728c980,  // SYSREF Distribution (DAC0)
       30'h272dffc0,  // HSCOM_PWR_MASK (DAC0)
       30'h20020210,  // DAC00 Data Width
       30'h20100044,  // DAC00 Interpolation Control
       30'h20110001,  // DAC00 Interpolation Data
       30'h20220c03,  // DAC00 Mixer Mode
       30'h20270000,  // DAC00 NCO Frequency Word 0
       30'h20260000,  // DAC00 NCO Frequency Word 1
       30'h20251280,  // DAC00 NCO Frequency Word 2
       30'h20290000,  // DAC00 NCO Phase Offest Word 0
       30'h20280000,  // DAC00 NCO Phase Offest Word 1
       30'h20300000,  // DAC00 Inv Sinc Filter
       30'h2031015c,  // DAC00 Multiband Config
       30'h20600001,  // DAC00 Decoder Control
       30'h20610001,  // DAC00 Decoder Clock Enable
       30'h20710002,  // DAC00 MC_CONFIG0
       30'h20734858,  // DAC00 MC_CONFIG2
       30'h207487c0,  // DAC00 MC_CONFIG3
       30'h20070002,  // DAC00 FABRIC_DEBUG
       30'h21020210,  // DAC01 Data Width
       30'h21100044,  // DAC01 Interpolation Control
       30'h21110001,  // DAC01 Interpolation Data
       30'h21220c03,  // DAC01 Mixer Mode
       30'h21270000,  // DAC01 NCO Frequency Word 0
       30'h21260000,  // DAC01 NCO Frequency Word 1
       30'h21251230,  // DAC01 NCO Frequency Word 2
       30'h21290000,  // DAC01 NCO Phase Offest Word 0
       30'h21280000,  // DAC01 NCO Phase Offest Word 1
       30'h21300000,  // DAC01 Inv Sinc Filter
       30'h21310100,  // DAC01 Multiband Config
       30'h21600001,  // DAC01 Decoder Control
       30'h21610001,  // DAC01 Decoder Clock Enable
       30'h21070002,  // DAC01 FABRIC_DEBUG
       30'h22020210,  // DAC02 Data Width
       30'h22100044,  // DAC02 Interpolation Control
       30'h22110001,  // DAC02 Interpolation Data
       30'h22220c03,  // DAC02 Mixer Mode
       30'h22270000,  // DAC02 NCO Frequency Word 0
       30'h22260000,  // DAC02 NCO Frequency Word 1
       30'h222511e0,  // DAC02 NCO Frequency Word 2
       30'h22290000,  // DAC02 NCO Phase Offest Word 0
       30'h22280000,  // DAC02 NCO Phase Offest Word 1
       30'h22300000,  // DAC02 Inv Sinc Filter
       30'h2231015c,  // DAC02 Multiband Config
       30'h22600001,  // DAC02 Decoder Control
       30'h22610001,  // DAC02 Decoder Clock Enable
       30'h22070002,  // DAC02 FABRIC_DEBUG
       30'h23020210,  // DAC03 Data Width
       30'h23100044,  // DAC03 Interpolation Control
       30'h23110001,  // DAC03 Interpolation Data
       30'h23220c03,  // DAC03 Mixer Mode
       30'h23270000,  // DAC03 NCO Frequency Word 0
       30'h23260000,  // DAC03 NCO Frequency Word 1
       30'h23251190,  // DAC03 NCO Frequency Word 2
       30'h23290000,  // DAC03 NCO Phase Offest Word 0
       30'h23280000,  // DAC03 NCO Phase Offest Word 1
       30'h23300000,  // DAC03 Inv Sinc Filter
       30'h23310100,  // DAC03 Multiband Config
       30'h23600001,  // DAC03 Decoder Control
       30'h23610001,  // DAC03 Decoder Clock Enable
       30'h23070002,  // DAC03 FABRIC_DEBUG
       30'h2f280100,  // SYSREF Distribution (DAC1)
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule
