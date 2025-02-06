-------------------------------------------------------------------
-- Vitis Model Composer version 2024.1 VHDL source file.
--
-- Copyright(C) 1995-2022 by Xilinx, Inc. All rights reserved.
-- Copyright(C) 2022-2024 by Advanced Micro Devices, Inc. All rights reserved.
--
-- This text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.
-------------------------------------------------------------------

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_concat_159522082c is
  port (
    in0 : in std_logic_vector((16 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_concat_159522082c;
architecture behavior of sysgen_concat_159522082c
is
  signal in0_1_23: unsigned((16 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

--$Header: /devl/xcs/repo/env/Jobs/sysgen/src/xbs/blocks/xlconvert/hdl/xlconvert.vhd,v 1.1 2004/11/22 00:17:30 rosty Exp $
---------------------------------------------------------------------
--
--  Filename      : xlconvert.vhd
--
--  Description   : VHDL description of a fixed point converter block that
--                  converts the input to a new output type.

--
---------------------------------------------------------------------


---------------------------------------------------------------------
--
--  Entity        : xlconvert
--
--  Architecture  : behavior
--
--  Description   : Top level VHDL description of fixed point conver block.
--
---------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity convert_func_call_dut_ip_xlconvert is
    generic (
        din_width    : integer := 16;            -- Width of input
        din_bin_pt   : integer := 4;             -- Binary point of input
        din_arith    : integer := xlUnsigned;    -- Type of arith of input
        dout_width   : integer := 8;             -- Width of output
        dout_bin_pt  : integer := 2;             -- Binary point of output
        dout_arith   : integer := xlUnsigned;    -- Type of arith of output
        quantization : integer := xlTruncate;    -- xlRound or xlTruncate
        overflow     : integer := xlWrap);       -- xlSaturate or xlWrap
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call_dut_ip_xlconvert ;

architecture behavior of convert_func_call_dut_ip_xlconvert is
begin
    -- Convert to output type and do saturation arith.
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity dut_ip_xlconvert  is
    generic (
        din_width    : integer := 16;            -- Width of input
        din_bin_pt   : integer := 4;             -- Binary point of input
        din_arith    : integer := xlUnsigned;    -- Type of arith of input
        dout_width   : integer := 8;             -- Width of output
        dout_bin_pt  : integer := 2;             -- Binary point of output
        dout_arith   : integer := xlUnsigned;    -- Type of arith of output
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;           -- if one, convert ufix_1_0 to
                                                 -- bool
        latency      : integer := 0;             -- Ouput delay clk cycles
        quantization : integer := xlTruncate;    -- xlRound or xlTruncate
        overflow     : integer := xlWrap);       -- xlSaturate or xlWrap
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));

end dut_ip_xlconvert ;

architecture behavior of dut_ip_xlconvert  is

    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;

    component convert_func_call_dut_ip_xlconvert 
        generic (
            din_width    : integer := 16;            -- Width of input
            din_bin_pt   : integer := 4;             -- Binary point of input
            din_arith    : integer := xlUnsigned;    -- Type of arith of input
            dout_width   : integer := 8;             -- Width of output
            dout_bin_pt  : integer := 2;             -- Binary point of output
            dout_arith   : integer := xlUnsigned;    -- Type of arith of output
            quantization : integer := xlTruncate;    -- xlRound or xlTruncate
            overflow     : integer := xlWrap);       -- xlSaturate or xlWrap
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;


    -- synthesis translate_off
--    signal real_din, real_dout : real;    -- For debugging info ports
    -- synthesis translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;

begin

    -- Debugging info for internal full precision variables
    -- synthesis translate_off
--     real_din <= to_real(din, din_bin_pt, din_arith);
--     real_dout <= to_real(dout, dout_bin_pt, dout_arith);
    -- synthesis translate_on

    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate; --bool_conversion_generate

    std_conversion_generate : if (bool_conversion = 0)
    generate
      -- Workaround for XST bug
      convert : convert_func_call_dut_ip_xlconvert 
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate; --std_conversion_generate

    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;

    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;

end  behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xlslice.vhd
--
--  Description   : VHDL description of a block that sets the output to a
--                  specified range of the input bits. The output is always
--                  set to an unsigned type with it's binary point at zero.
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity dut_ip_xlslice is
    generic (
        new_msb      : integer := 9;           -- position of new msb
        new_lsb      : integer := 1;           -- position of new lsb
        x_width      : integer := 16;          -- Width of x input
        y_width      : integer := 8);          -- Width of y output
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end dut_ip_xlslice;

architecture behavior of dut_ip_xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity dut_ip_xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));

end dut_ip_xldelay;

architecture behavior of dut_ip_xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component; -- end component synth_reg

   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;

   signal internal_ce  : std_logic;

begin
   internal_ce  <= ce and en;

   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;

   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_reinterpret_a69cd80706 is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_reinterpret_a69cd80706;
architecture behavior of sysgen_reinterpret_a69cd80706
is
  signal input_port_1_40: signed((16 - 1) downto 0);
  signal output_port_5_5_force: unsigned((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_reinterpret_e6ebf6f0f3 is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_reinterpret_e6ebf6f0f3;
architecture behavior of sysgen_reinterpret_e6ebf6f0f3
is
  signal input_port_1_40: unsigned((16 - 1) downto 0);
  signal output_port_5_5_force: signed((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xltdm.vhd
--
--  Description   : VHDL description of a time division Multiplexer block
--                  that sets the output either in mono or muti-channel mode
--                  based on the generic specified.
--
---------------------------------------------------------------------


---------------------------------------------------------------------
--
--  Entity        : xltdd
--
--  Architecture  : behavior
--
--  Description   : Top level VHDL
--
---------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


-- synthesis translate_off
library unisim;
use unisim.vcomponents.all;
-- synthesis translate_on

entity dut_ip_xltdm is
    generic (
   num_inputs    : integer := 2;
   data_width    : integer := 4;
   hasValid      : integer := 0);
    port (
   src_clk: in std_logic;
   src_ce: in std_logic;

   dest_clk: in std_logic;
   dest_ce: in std_logic;
    d0 : in std_logic_vector (data_width-1 downto 0):= (others => '0');
   d1 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d2 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d3 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d4 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d5 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d6 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d7 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d8 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d9 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    d10 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d11 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d12 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d13 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d14 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d15 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d16 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d17 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d18 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d19 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    d20 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d21 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d22 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d23 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d24 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d25 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d26 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d27 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d28 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d29 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    d30 : in std_logic_vector (data_width-1 downto 0) := (others => '0');
   d31 : in std_logic_vector (data_width-1 downto 0) := (others => '0');

    vin : in std_logic_vector (0 downto 0) := (others => '1');
   q : out std_logic_vector (data_width-1 downto 0);
   vout : out std_logic_vector (0 downto 0));
end dut_ip_xltdm;

architecture behavior of dut_ip_xltdm is
    type temp_array is array (0 to 31) of std_logic_vector(data_width-1 downto 0);
    signal din_temp : temp_array;

    signal src_en, dest_en : std_logic;
    signal indx_cntr : integer := 0;

begin
    dest_en <= dest_ce and vin(0);
    src_en <= src_ce and vin(0);
    vout <= vin;

    q <= din_temp(indx_cntr);

   index_counter : process(src_clk)
    begin
        if rising_edge(src_clk) then
             if (src_en = '1') then
                indx_cntr <= 0;
            else
                if (dest_en = '1') then
                    indx_cntr <= indx_cntr + 1;
                end if;
           end if;
        end if;
    end process;


    din_temp(0) <= d0;
    din_temp(1) <= d1;
    din_temp(2) <= d2;
    din_temp(3) <= d3;
    din_temp(4) <= d4;
    din_temp(5) <= d5;
    din_temp(6) <= d6;
    din_temp(7) <= d7;
    din_temp(8) <= d8;
    din_temp(9) <= d9;
    din_temp(10) <= d10;
    din_temp(11) <= d11;
    din_temp(12) <= d12;
    din_temp(13) <= d13;
    din_temp(14) <= d14;
    din_temp(15) <= d15;
    din_temp(16) <= d16;
    din_temp(17) <= d17;
    din_temp(18) <= d18;
    din_temp(19) <= d19;
    din_temp(20) <= d20;
    din_temp(21) <= d21;
    din_temp(22) <= d22;
    din_temp(23) <= d23;
    din_temp(24) <= d24;
    din_temp(25) <= d25;
    din_temp(26) <= d26;
    din_temp(27) <= d27;
    din_temp(28) <= d28;
    din_temp(29) <= d29;
    din_temp(30) <= d30;
    din_temp(31) <= d31;

end  behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity xlfir_compiler_43ad13552cf71aa111aca21096c047b3 is 
  port(
    ce:in std_logic;
    ce_8:in std_logic;
    ce_logic_1:in std_logic;
    clk:in std_logic;
    clk_8:in std_logic;
    clk_logic_1:in std_logic;
    m_axis_data_tdata_path0:out std_logic_vector(31 downto 0);
    m_axis_data_tdata_path1:out std_logic_vector(31 downto 0);
    m_axis_data_tvalid:out std_logic;
    s_axis_data_tdata_path0:in std_logic_vector(15 downto 0);
    s_axis_data_tdata_path1:in std_logic_vector(15 downto 0);
    s_axis_data_tready:out std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_43ad13552cf71aa111aca21096c047b3; 

architecture behavior of xlfir_compiler_43ad13552cf71aa111aca21096c047b3  is
  component dut_ip_fir_compiler_v7_2_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_data_tdata:out std_logic_vector(63 downto 0);
      m_axis_data_tvalid:out std_logic;
      s_axis_data_tdata:in std_logic_vector(31 downto 0);
      s_axis_data_tready:out std_logic;
      s_axis_data_tvalid:in std_logic
    );
end component;
signal m_axis_data_tdata_net: std_logic_vector(63 downto 0) := (others=>'0');
signal m_axis_data_tdata_path1_ps_net: std_logic_vector(31 downto 0) := (others=>'0');
signal m_axis_data_tdata_path0_ps_net: std_logic_vector(31 downto 0) := (others=>'0');
signal m_axis_data_tvalid_ps_net: std_logic := '0';
signal m_axis_data_tvalid_ps_net_captured: std_logic := '0';
signal m_axis_data_tvalid_ps_net_or_captured_net: std_logic := '0';
signal s_axis_data_tdata_net: std_logic_vector(31 downto 0) := (others=>'0');
begin
  m_axis_data_tdata_path1_ps_net <= m_axis_data_tdata_net(63 downto 32);
  m_axis_data_tdata_path0_ps_net <= m_axis_data_tdata_net(31 downto 0);
  s_axis_data_tdata_net(31 downto 16) <= s_axis_data_tdata_path1;
  s_axis_data_tdata_net(15 downto 0) <= s_axis_data_tdata_path0;
  m_axis_data_tdata_path1_ps_net_synchronizer : entity work.synth_reg_w_init
    generic map(
        width => 32,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i => m_axis_data_tdata_path1_ps_net,
        ce => ce_8,
        clr => '0',
        clk => clk_8, 
        o => m_axis_data_tdata_path1
    );
  m_axis_data_tdata_path0_ps_net_synchronizer : entity work.synth_reg_w_init
    generic map(
        width => 32,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i => m_axis_data_tdata_path0_ps_net,
        ce => ce_8,
        clr => '0',
        clk => clk_8, 
        o => m_axis_data_tdata_path0
    );
  m_axis_data_tvalid_ps_net_or_captured_net <= m_axis_data_tvalid_ps_net or m_axis_data_tvalid_ps_net_captured;
m_axis_data_tvalid_ps_net_synchronizer_1 : entity work.synth_reg_w_init
    generic map(
        width => 1,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i(0) => m_axis_data_tvalid_ps_net_or_captured_net,
        ce => ce_8,
        clr => '0',
        clk => clk_8, 
        o(0) => m_axis_data_tvalid
    );
m_axis_data_tvalid_ps_net_synchronizer_2 : entity work.synth_reg_w_init
    generic map(
        width => 1,
        init_index => 0,
        init_value => "0",
        latency => 1
    )
    port map (
        i(0) => '1',
        ce => m_axis_data_tvalid_ps_net,
        clr => '0',
        clk => clk_8, 
        o(0) => m_axis_data_tvalid_ps_net_captured
    );
  dut_ip_fir_compiler_v7_2_i0_instance : dut_ip_fir_compiler_v7_2_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_data_tdata=>m_axis_data_tdata_net,
      m_axis_data_tvalid=>m_axis_data_tvalid_ps_net,
      s_axis_data_tdata=>s_axis_data_tdata_net,
      s_axis_data_tready=>s_axis_data_tready,
      s_axis_data_tvalid=>ce_logic_1
    );
end behavior;



