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
entity sysgen_constant_d952f5262c is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_d952f5262c;
architecture behavior of sysgen_constant_d952f5262c
is
begin
  op <= "1";
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_df9ee34cc3 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_df9ee34cc3;
architecture behavior of sysgen_constant_df9ee34cc3
is
begin
  op <= "0000000000000110";
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_6715929656 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_6715929656;
architecture behavior of sysgen_constant_6715929656
is
begin
  op <= "0100000000000000";
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


entity convert_func_call_matched_filter_xlconvert is
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
end convert_func_call_matched_filter_xlconvert ;

architecture behavior of convert_func_call_matched_filter_xlconvert is
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


entity matched_filter_xlconvert  is
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

end matched_filter_xlconvert ;

architecture behavior of matched_filter_xlconvert  is

    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;

    component convert_func_call_matched_filter_xlconvert 
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
      convert : convert_func_call_matched_filter_xlconvert 
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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_counter_db4e5110f7 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_counter_db4e5110f7;
architecture behavior of sysgen_counter_db4e5110f7
is
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal rel_34_8: boolean;
  signal rst_limit_join_34_5: boolean;
  signal bool_44_4: boolean;
  signal count_reg_join_44_1: unsigned((2 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
  signal rst_limit_join_44_1: boolean;
begin
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "0";
      elsif (ce = '1') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  rel_34_8 <= count_reg_20_23 = std_logic_vector_to_unsigned("1");
  proc_if_34_5: process (rel_34_8)
  is
  begin
    if rel_34_8 then
      rst_limit_join_34_5 <= true;
    else 
      rst_limit_join_34_5 <= false;
    end if;
  end process proc_if_34_5;
  bool_44_4 <= false or rst_limit_join_34_5;
  proc_if_44_1: process (bool_44_4, count_reg_20_23, rst_limit_join_34_5)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= rst_limit_join_34_5;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

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


entity matched_filter_xlslice is
    generic (
        new_msb      : integer := 9;           -- position of new msb
        new_lsb      : integer := 1;           -- position of new lsb
        x_width      : integer := 16;          -- Width of x input
        y_width      : integer := 8);          -- Width of y output
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end matched_filter_xlslice;

architecture behavior of matched_filter_xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity matched_filter_xldelay is
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

end matched_filter_xldelay;

architecture behavior of matched_filter_xldelay is
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
entity sysgen_reinterpret_ae710b4e09 is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_reinterpret_ae710b4e09;
architecture behavior of sysgen_reinterpret_ae710b4e09
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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_reinterpret_c8c4b295f6 is
  port (
    input_port : in std_logic_vector((15 - 1) downto 0);
    output_port : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_reinterpret_c8c4b295f6;
architecture behavior of sysgen_reinterpret_c8c4b295f6
is
  signal input_port_1_40: unsigned((15 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_5c7721a55e is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((15 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_5c7721a55e;
architecture behavior of sysgen_relational_5c7721a55e
is
  signal a_1_31: unsigned((25 - 1) downto 0);
  signal b_1_34: unsigned((15 - 1) downto 0);
  signal en_1_37: boolean;
  type array_type_op_mem_45_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_45_22: array_type_op_mem_45_22 := (
    0 => false);
  signal op_mem_45_22_front_din: boolean;
  signal op_mem_45_22_back: boolean;
  signal op_mem_45_22_push_front_pop_back_en: std_logic;
  signal a_join_13_3: unsigned((25 - 1) downto 0);
  signal b_join_16_3: unsigned((15 - 1) downto 0);
  signal cast_28_12: unsigned((31 - 1) downto 0);
  signal cast_28_16: unsigned((31 - 1) downto 0);
  signal result_28_3_rel: boolean;
  signal op_mem_shift_join_47_3: boolean;
  signal op_mem_shift_join_47_3_en: std_logic;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  en_1_37 <= ((en) = "1");
  op_mem_45_22_back <= op_mem_45_22(0);
  proc_op_mem_45_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_45_22_push_front_pop_back_en = '1')) then
        op_mem_45_22(0) <= op_mem_45_22_front_din;
      end if;
    end if;
  end process proc_op_mem_45_22;
  proc_if_13_3: process (a_1_31)
  is
  begin
    if false then
      a_join_13_3 <= std_logic_vector_to_unsigned("0000000000000000000000000");
    else 
      a_join_13_3 <= a_1_31;
    end if;
  end process proc_if_13_3;
  proc_if_16_3: process (b_1_34)
  is
  begin
    if false then
      b_join_16_3 <= std_logic_vector_to_unsigned("000000000000000");
    else 
      b_join_16_3 <= b_1_34;
    end if;
  end process proc_if_16_3;
  cast_28_12 <= u2u_cast(a_join_13_3, 0, 31, 6);
  cast_28_16 <= u2u_cast(b_join_16_3, 6, 31, 6);
  result_28_3_rel <= cast_28_12 > cast_28_16;
  proc_if_47_3: process (en_1_37, result_28_3_rel)
  is
  begin
    if en_1_37 then
      op_mem_shift_join_47_3_en <= '1';
    else 
      op_mem_shift_join_47_3_en <= '0';
    end if;
    op_mem_shift_join_47_3 <= result_28_3_rel;
  end process proc_if_47_3;
  op_mem_45_22_front_din <= op_mem_shift_join_47_3;
  op_mem_45_22_push_front_pop_back_en <= op_mem_shift_join_47_3_en;
  op <= boolean_to_vector(op_mem_45_22_back);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_46cef86050 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_46cef86050;
architecture behavior of sysgen_relational_46cef86050
is
  signal a_1_31: signed((16 - 1) downto 0);
  signal b_1_34: unsigned((1 - 1) downto 0);
  type array_type_op_mem_45_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_45_22: array_type_op_mem_45_22 := (
    0 => false);
  signal op_mem_45_22_front_din: boolean;
  signal op_mem_45_22_back: boolean;
  signal op_mem_45_22_push_front_pop_back_en: std_logic;
  signal a_join_13_3: signed((16 - 1) downto 0);
  signal b_join_16_3: unsigned((1 - 1) downto 0);
  signal cast_22_17: signed((16 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_45_22_back <= op_mem_45_22(0);
  proc_op_mem_45_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_45_22_push_front_pop_back_en = '1')) then
        op_mem_45_22(0) <= op_mem_45_22_front_din;
      end if;
    end if;
  end process proc_op_mem_45_22;
  proc_if_13_3: process (a_1_31)
  is
  begin
    if false then
      a_join_13_3 <= std_logic_vector_to_signed("0000000000000000");
    else 
      a_join_13_3 <= a_1_31;
    end if;
  end process proc_if_13_3;
  proc_if_16_3: process (b_1_34)
  is
  begin
    if false then
      b_join_16_3 <= std_logic_vector_to_unsigned("0");
    else 
      b_join_16_3 <= b_1_34;
    end if;
  end process proc_if_16_3;
  cast_22_17 <= u2s_cast(b_join_16_3, 0, 16, 14);
  result_22_3_rel <= a_join_13_3 = cast_22_17;
  op_mem_45_22_front_din <= result_22_3_rel;
  op_mem_45_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_45_22_back);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_relational_98666e431a is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_98666e431a;
architecture behavior of sysgen_relational_98666e431a
is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  type array_type_op_mem_45_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_45_22: array_type_op_mem_45_22 := (
    0 => false);
  signal op_mem_45_22_front_din: boolean;
  signal op_mem_45_22_back: boolean;
  signal op_mem_45_22_push_front_pop_back_en: std_logic;
  signal a_join_13_3: unsigned((16 - 1) downto 0);
  signal b_join_16_3: unsigned((16 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_45_22_back <= op_mem_45_22(0);
  proc_op_mem_45_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_45_22_push_front_pop_back_en = '1')) then
        op_mem_45_22(0) <= op_mem_45_22_front_din;
      end if;
    end if;
  end process proc_op_mem_45_22;
  proc_if_13_3: process (a_1_31)
  is
  begin
    if false then
      a_join_13_3 <= std_logic_vector_to_unsigned("0000000000000000");
    else 
      a_join_13_3 <= a_1_31;
    end if;
  end process proc_if_13_3;
  proc_if_16_3: process (b_1_34)
  is
  begin
    if false then
      b_join_16_3 <= std_logic_vector_to_unsigned("0000000000000000");
    else 
      b_join_16_3 <= b_1_34;
    end if;
  end process proc_if_16_3;
  result_22_3_rel <= a_join_13_3 = b_join_16_3;
  op_mem_45_22_front_din <= result_22_3_rel;
  op_mem_45_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_45_22_back);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xltdd.vhd
--
--  Date          : 2/26/04
--
--  Description   : VHDL description of a time division demultiplexer block
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

entity matched_filter_xltdd_multich is
    generic (
	frame_length  : integer := 4;
	data_width    : integer := 4);
    port (
        d : in std_logic_vector (data_width-1 downto 0);
	vin : in std_logic_vector (0 downto 0) := (others => '1');
	src_clk: in std_logic;
	src_ce: in std_logic;
	src_clr: in std_logic;
	dest_clk: in std_logic;
	dest_ce: in std_logic;
	dest_clr: in std_logic;
        q0 : out std_logic_vector (data_width-1 downto 0);
	q1 : out std_logic_vector (data_width-1 downto 0);
	q2 : out std_logic_vector (data_width-1 downto 0);
	q3 : out std_logic_vector (data_width-1 downto 0);
	q4 : out std_logic_vector (data_width-1 downto 0);
	q5 : out std_logic_vector (data_width-1 downto 0);
	q6 : out std_logic_vector (data_width-1 downto 0);
	q7 : out std_logic_vector (data_width-1 downto 0);
	q8 : out std_logic_vector (data_width-1 downto 0);
	q9 : out std_logic_vector (data_width-1 downto 0);
        q10 : out std_logic_vector (data_width-1 downto 0);
	q11 : out std_logic_vector (data_width-1 downto 0);
	q12 : out std_logic_vector (data_width-1 downto 0);
	q13 : out std_logic_vector (data_width-1 downto 0);
	q14 : out std_logic_vector (data_width-1 downto 0);
	q15 : out std_logic_vector (data_width-1 downto 0);
	q16 : out std_logic_vector (data_width-1 downto 0);
	q17 : out std_logic_vector (data_width-1 downto 0);
	q18 : out std_logic_vector (data_width-1 downto 0);
	q19 : out std_logic_vector (data_width-1 downto 0);
        q20 : out std_logic_vector (data_width-1 downto 0);
	q21 : out std_logic_vector (data_width-1 downto 0);
	q22 : out std_logic_vector (data_width-1 downto 0);
	q23 : out std_logic_vector (data_width-1 downto 0);
	q24 : out std_logic_vector (data_width-1 downto 0);
	q25 : out std_logic_vector (data_width-1 downto 0);
	q26 : out std_logic_vector (data_width-1 downto 0);
	q27 : out std_logic_vector (data_width-1 downto 0);
	q28 : out std_logic_vector (data_width-1 downto 0);
	q29 : out std_logic_vector (data_width-1 downto 0);
        q30 : out std_logic_vector (data_width-1 downto 0);
	q31 : out std_logic_vector (data_width-1 downto 0);
	vout : out std_logic_vector (0 downto 0));
end matched_filter_xltdd_multich;

architecture behavior of matched_filter_xltdd_multich is
    component SRL16E
	-- synthesis translate_off
	generic (INIT : bit_vector := X"0000");
	-- synthesis translate_on
	port (D   : in std_ulogic;
	      CE  : in std_ulogic;
	      CLK : in std_ulogic;
	      A0  : in std_ulogic;
	      A1  : in std_ulogic;
	      A2  : in std_ulogic;
	      A3  : in std_ulogic;
	      Q   : out std_ulogic);
    end component; -- end SRL16E
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";

    component synth_reg
        generic (width   : integer;
                 latency : integer);
        port (i   : in std_logic_vector(width-1 downto 0);
              ce  : in std_logic;
              clr : in std_logic;
              clk : in std_logic;
              o   : out std_logic_vector(width-1 downto 0));
    end component;

    type temp_array is array (0 to 31) of std_logic_vector(data_width-1 downto 0);
    signal i, o, dout_temp, capture_in : temp_array;          -- input to comp registers

    constant pg_addr : std_logic_vector(3 downto 0)
	:= integer_to_std_logic_vector(frame_length-1, 4, xlUnsigned);
    constant cnt_zero : std_logic_vector(3 downto 0) := (others => '0');
    signal smpl_dout: std_logic_vector(data_width-1 downto 0);
    signal fifo_addr: std_logic_vector(3 downto 0) := (others => '0');
    signal dly_fifo_en,fifo_en, pg_out, src_en : std_logic;
    signal tmp_vout : std_logic_vector(0 downto 0) := (others => '0');
    signal cnt_by_one : std_logic_vector(0 downto 0);

begin
    src_en <= src_ce and vin(0);
    fifo_en <= src_en and pg_out;
    dly_fifo_en <= fifo_en after 200 ps;
    cnt_by_one(0) <= '1';

       fd_array: for index in frame_length - 1 downto 0 generate

          comp : synth_reg
             generic map (width      => data_width,
                          latency    => 1)
             port map (i   => i(index),
                       ce  => src_en,
                       clr => src_clr,
                       clk => src_clk,
                       o   => o(index));

          capture : synth_reg
             generic map (width      => data_width,
                           latency    => 1)
             port map (i   => capture_in(index),
                       ce  => dest_ce,
                       clr => dest_clr,
                       clk => dest_clk,
                       o   => dout_temp(frame_length-1-index));

          -- generate the comp register and capture register inputs
          signal_0: if (index = 0) generate
                       i(index) <= d;
                       capture_in(index) <= d;
          end generate; -- end signal_0

          signal_gt_0: if (index > 0) generate
                        i(index) <= o(index - 1);
                        capture_in(index) <= o(index - 1);
          end generate; -- end signal_gt_0
       end generate; -- end fd_array

        q0 <= dout_temp(0);
	q1 <= dout_temp(1);
	q2 <= dout_temp(2);
	q3 <= dout_temp(3);
	q4 <= dout_temp(4);
	q5 <= dout_temp(5);
	q6 <= dout_temp(6);
	q7 <= dout_temp(7);
	q8 <= dout_temp(8);
	q9 <= dout_temp(9);
        q10 <= dout_temp(10);
	q11 <= dout_temp(11);
	q12 <= dout_temp(12);
	q13 <= dout_temp(13);
	q14 <= dout_temp(14);
	q15 <= dout_temp(15);
	q16 <= dout_temp(16);
	q17 <= dout_temp(17);
	q18 <= dout_temp(18);
	q19 <= dout_temp(19);
        q20 <= dout_temp(20);
	q21 <= dout_temp(21);
	q22 <= dout_temp(22);
	q23 <= dout_temp(23);
	q24 <= dout_temp(24);
	q25 <= dout_temp(25);
	q26 <= dout_temp(26);
	q27 <= dout_temp(27);
	q28 <= dout_temp(28);
	q29 <= dout_temp(29);
        q30 <= dout_temp(30);
	q31 <= dout_temp(31);


end  behavior;

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

entity matched_filter_xltdm is
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
end matched_filter_xltdm;

architecture behavior of matched_filter_xltdm is
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

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
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
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity matched_filter_xladdsub is 
   generic (
     core_name0: string := "";
     a_width: integer := 16;
     a_bin_pt: integer := 4;
     a_arith: integer := xlUnsigned;
     c_in_width: integer := 16;
     c_in_bin_pt: integer := 4;
     c_in_arith: integer := xlUnsigned;
     c_out_width: integer := 16;
     c_out_bin_pt: integer := 4;
     c_out_arith: integer := xlUnsigned;
     b_width: integer := 8;
     b_bin_pt: integer := 2;
     b_arith: integer := xlUnsigned;
     s_width: integer := 17;
     s_bin_pt: integer := 4;
     s_arith: integer := xlUnsigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     full_s_width: integer := 17;
     full_s_arith: integer := xlUnsigned;
     mode: integer := xlAddMode;
     extra_registers: integer := 0;
     latency: integer := 0;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     c_latency: integer := 0;
     c_output_width: integer := 17;
     c_has_c_in : integer := 0;
     c_has_c_out : integer := 0
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     b: in std_logic_vector(b_width - 1 downto 0);
     c_in : in std_logic_vector (0 downto 0) := "0";
     ce: in std_logic;
     clr: in std_logic := '0';
     clk: in std_logic;
     rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
     en: in std_logic_vector(en_width - 1 downto 0) := "1";
     c_out : out std_logic_vector (0 downto 0);
     s: out std_logic_vector(s_width - 1 downto 0)
   );
 end matched_filter_xladdsub;
 
 architecture behavior of matched_filter_xladdsub is 
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 
 function format_input(inp: std_logic_vector; old_width, delta, new_arith,
 new_width: integer)
 return std_logic_vector
 is
 variable vec: std_logic_vector(old_width-1 downto 0);
 variable padded_inp: std_logic_vector((old_width + delta)-1 downto 0);
 variable result: std_logic_vector(new_width-1 downto 0);
 begin
 vec := inp;
 if (delta > 0) then
 padded_inp := pad_LSB(vec, old_width+delta);
 result := extend_MSB(padded_inp, new_width, new_arith);
 else
 result := extend_MSB(vec, new_width, new_arith);
 end if;
 return result;
 end;
 
 constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
 constant full_a_width: integer := full_s_width;
 constant full_b_width: integer := full_s_width;
 
 signal full_a: std_logic_vector(full_a_width - 1 downto 0);
 signal full_b: std_logic_vector(full_b_width - 1 downto 0);
 signal core_s: std_logic_vector(full_s_width - 1 downto 0);
 signal conv_s: std_logic_vector(s_width - 1 downto 0);
 signal temp_cout : std_logic;
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal extra_reg_ce: std_logic;
 signal override: std_logic;
 signal logic1: std_logic_vector(0 downto 0);


 component matched_filter_c_addsub_v12_0_i0
    port ( 
    a: in std_logic_vector(37 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(37 - 1 downto 0) 
 		  ); 
 end component;

 component matched_filter_c_addsub_v12_0_i1
    port ( 
    a: in std_logic_vector(37 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(37 - 1 downto 0) 
 		  ); 
 end component;

begin
 internal_clr <= (clr or (rst(0))) and ce;
 internal_ce <= ce and en(0);
 logic1(0) <= '1';
 addsub_process: process (a, b, core_s)
 begin
 full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
 full_a_width);
 full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
 full_b_width);
 conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
 s_width, s_bin_pt, s_arith, quantization, overflow);
 end process addsub_process;


 comp0: if ((core_name0 = "matched_filter_c_addsub_v12_0_i0")) generate 
  core_instance0:matched_filter_c_addsub_v12_0_i0
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp1: if ((core_name0 = "matched_filter_c_addsub_v12_0_i1")) generate 
  core_instance1:matched_filter_c_addsub_v12_0_i1
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

latency_test: if (extra_registers > 0) generate
 override_test: if (c_latency > 1) generate
 override_pipe: synth_reg
 generic map (
 width => 1,
 latency => c_latency
 )
 port map (
 i => logic1,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o(0) => override);
 extra_reg_ce <= ce and en(0) and override;
 end generate override_test;
 no_override: if ((c_latency = 0) or (c_latency = 1)) generate
 extra_reg_ce <= ce and en(0);
 end generate no_override;
 extra_reg: synth_reg
 generic map (
 width => s_width,
 latency => extra_registers
 )
 port map (
 i => conv_s,
 ce => extra_reg_ce,
 clr => internal_clr,
 clk => clk,
 o => s
 );
 cout_test: if (c_has_c_out = 1) generate
 c_out_extra_reg: synth_reg
 generic map (
 width => 1,
 latency => extra_registers
 )
 port map (
 i(0) => temp_cout,
 ce => extra_reg_ce,
 clr => internal_clr,
 clk => clk,
 o => c_out
 );
 end generate cout_test;
 end generate;
 
 latency_s: if ((latency = 0) or (extra_registers = 0)) generate
 s <= conv_s;
 end generate latency_s;
 latency0: if (((latency = 0) or (extra_registers = 0)) and
 (c_has_c_out = 1)) generate
 c_out(0) <= temp_cout;
 end generate latency0;
 tie_dangling_cout: if (c_has_c_out = 0) generate
 c_out <= "0";
 end generate tie_dangling_cout;
 end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

---------------------------------------------------------------------
 --
 --  Filename      : xlcounter.vhd
 --
 --  Created       : 5/31/00
 --  Modified      : 6/7/00
 --
 --  Description   : VHDL wrapper for a counter. This wrapper
 --                  uses the Binary Counter CoreGenerator core.
 --
 ---------------------------------------------------------------------
 
 
 ---------------------------------------------------------------------
 --
 --  Entity        : xlcounter
 --
 --  Architecture  : behavior
 --
 --  Description   : Top level VHDL description of a counter.
 --
 ---------------------------------------------------------------------
 
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.numeric_std.all;

entity matched_filter_xlcounter_limit is 
   generic (
     core_name0: string := "";
     op_width: integer := 5;
     op_arith: integer := xlSigned;
     cnt_63_48: integer:= 0;
     cnt_47_32: integer:= 0;
     cnt_31_16: integer:= 0;
     cnt_15_0: integer:= 0;
     count_limited: integer := 0		-- 0 if cnt_to = (2^n)-1 else 1
   );
   port (
     ce: in std_logic;
     clr: in std_logic;
     clk: in std_logic;
     op: out std_logic_vector(op_width - 1 downto 0);
     up: in std_logic_vector(0 downto 0) := (others => '0');
     en: in std_logic_vector(0 downto 0);
     rst: in std_logic_vector(0 downto 0)
   );
 end matched_filter_xlcounter_limit;
 
 architecture behavior of matched_filter_xlcounter_limit is
 signal high_cnt_to: std_logic_vector(31 downto 0);
 signal low_cnt_to: std_logic_vector(31 downto 0);
 signal cnt_to: std_logic_vector(63 downto 0);
 signal core_sinit, op_thresh0, core_ce: std_logic;
 signal rst_overrides_en: std_logic;
 signal op_net: std_logic_vector(op_width - 1 downto 0);
 
 -- synthesis translate_off
 signal real_op : real; -- For debugging info ports
 -- synthesis translate_on
 
 function equals(op, cnt_to : std_logic_vector; width, arith : integer)
 return std_logic
 is
 variable signed_op, signed_cnt_to : signed (width - 1 downto 0);
 variable unsigned_op, unsigned_cnt_to : unsigned (width - 1 downto 0);
 variable result : std_logic;
 begin
 -- synthesis translate_off
 if ((is_XorU(op)) or (is_XorU(cnt_to)) ) then
 result := '0';
 return result;
 end if;
 -- synthesis translate_on
 
 if (op = cnt_to) then
 result := '1';
 else
 result := '0';
 end if;
 return result;
 end;


 component matched_filter_c_counter_binary_v12_0_i0
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0) 
 		  ); 
 end component;

-- synthesis translate_off
   constant zeroVec : std_logic_vector(op_width - 1 downto 0) := (others => '0');
   constant oneVec : std_logic_vector(op_width - 1 downto 0) := (others => '1');
   constant zeroStr : string(1 to op_width) :=
     std_logic_vector_to_bin_string(zeroVec);
   constant oneStr : string(1 to op_width) :=
     std_logic_vector_to_bin_string(oneVec);
 -- synthesis translate_on
 
 begin
   -- Debugging info for internal full precision variables
   -- synthesis translate_off
 --     real_op <= to_real(op, op_bin_pt, op_arith);
   -- synthesis translate_on
 
   cnt_to(63 downto 48) <= integer_to_std_logic_vector(cnt_63_48, 16, op_arith);
   cnt_to(47 downto 32) <= integer_to_std_logic_vector(cnt_47_32, 16, op_arith);
   cnt_to(31 downto 16) <= integer_to_std_logic_vector(cnt_31_16, 16, op_arith);
   cnt_to(15 downto 0) <= integer_to_std_logic_vector(cnt_15_0, 16, op_arith);
 
   -- Output of counter always valid
   op <= op_net;
   core_ce <= ce and en(0);
   rst_overrides_en <= rst(0) or en(0);
 
   limit : if (count_limited = 1) generate
     eq_cnt_to : process (op_net, cnt_to)
     begin
       -- Had to pass cnt_to(op_width - 1 downto 0) instead of cnt_to so
       -- that XST would infer a macro
       op_thresh0 <= equals(op_net, cnt_to(op_width - 1 downto 0),
                      op_width, op_arith);
     end process;
 
     core_sinit <= (op_thresh0 or clr or rst(0)) and ce and rst_overrides_en;
   end generate;
 
   no_limit : if (count_limited = 0) generate
     core_sinit <= (clr or rst(0)) and ce and rst_overrides_en;
   end generate;


 comp0: if ((core_name0 = "matched_filter_c_counter_binary_v12_0_i0")) generate 
  core_instance0:matched_filter_c_counter_binary_v12_0_i0
   port map ( 
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
  ); 
   end generate;

end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity xlcordic_2eb7664e9b68ddd24ab54b78af8ed621 is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    m_axis_dout_tdata_real:out std_logic_vector(24 downto 0);
    m_axis_dout_tvalid:out std_logic;
    s_axis_cartesian_tdata_real:in std_logic_vector(47 downto 0);
    s_axis_cartesian_tvalid:in std_logic
  );
end xlcordic_2eb7664e9b68ddd24ab54b78af8ed621; 

architecture behavior of xlcordic_2eb7664e9b68ddd24ab54b78af8ed621  is
  component matched_filter_cordic_v6_0_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(31 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_cartesian_tdata:in std_logic_vector(47 downto 0);
      s_axis_cartesian_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(31 downto 0) := (others=>'0');
signal s_axis_cartesian_tdata_net: std_logic_vector(47 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_real <= m_axis_dout_tdata_net(24 downto 0);
  s_axis_cartesian_tdata_net(47 downto 0) <= s_axis_cartesian_tdata_real;
  matched_filter_cordic_v6_0_i0_instance : matched_filter_cordic_v6_0_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>m_axis_dout_tvalid,
      s_axis_cartesian_tdata=>s_axis_cartesian_tdata_net,
      s_axis_cartesian_tvalid=>s_axis_cartesian_tvalid
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity xlfir_compiler_2cf92fbe55f211e43895da4db39eb1b7 is 
  port(
    ce:in std_logic;
    ce_logic_1:in std_logic;
    clk:in std_logic;
    clk_logic_1:in std_logic;
    event_s_config_tlast_missing:out std_logic;
    event_s_config_tlast_unexpected:out std_logic;
    m_axis_data_tdata_real:out std_logic_vector(35 downto 0);
    m_axis_data_tvalid:out std_logic;
    s_axis_config_tdata_fsel:in std_logic_vector(0 downto 0);
    s_axis_config_tlast:in std_logic;
    s_axis_config_tready:out std_logic;
    s_axis_config_tvalid:in std_logic;
    s_axis_data_tdata_real:in std_logic_vector(15 downto 0);
    s_axis_data_tready:out std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_2cf92fbe55f211e43895da4db39eb1b7; 

architecture behavior of xlfir_compiler_2cf92fbe55f211e43895da4db39eb1b7  is
  component matched_filter_fir_compiler_v7_2_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      event_s_config_tlast_missing:out std_logic;
      event_s_config_tlast_unexpected:out std_logic;
      m_axis_data_tdata:out std_logic_vector(39 downto 0);
      m_axis_data_tvalid:out std_logic;
      s_axis_config_tdata:in std_logic_vector(7 downto 0);
      s_axis_config_tlast:in std_logic;
      s_axis_config_tready:out std_logic;
      s_axis_config_tvalid:in std_logic;
      s_axis_data_tdata:in std_logic_vector(15 downto 0);
      s_axis_data_tready:out std_logic;
      s_axis_data_tvalid:in std_logic
    );
end component;
signal m_axis_data_tdata_net: std_logic_vector(39 downto 0) := (others=>'0');
signal s_axis_config_tdata_net: std_logic_vector(7 downto 0) := (others=>'0');
signal s_axis_data_tdata_net: std_logic_vector(15 downto 0) := (others=>'0');
begin
  m_axis_data_tdata_real <= m_axis_data_tdata_net(35 downto 0);
  s_axis_config_tdata_net(0 downto 0) <= s_axis_config_tdata_fsel;
  s_axis_data_tdata_net(15 downto 0) <= s_axis_data_tdata_real;
  matched_filter_fir_compiler_v7_2_i0_instance : matched_filter_fir_compiler_v7_2_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      event_s_config_tlast_missing=>event_s_config_tlast_missing,
      event_s_config_tlast_unexpected=>event_s_config_tlast_unexpected,
      m_axis_data_tdata=>m_axis_data_tdata_net,
      m_axis_data_tvalid=>m_axis_data_tvalid,
      s_axis_config_tdata=>s_axis_config_tdata_net,
      s_axis_config_tlast=>s_axis_config_tlast,
      s_axis_config_tready=>s_axis_config_tready,
      s_axis_config_tvalid=>s_axis_config_tvalid,
      s_axis_data_tdata=>s_axis_data_tdata_net,
      s_axis_data_tready=>s_axis_data_tready,
      s_axis_data_tvalid=>ce_logic_1
    );
end behavior;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity xlfir_compiler_d69d791022900d418e6ebe3cea3d2601 is 
  port(
    ce:in std_logic;
    ce_logic_1:in std_logic;
    clk:in std_logic;
    clk_logic_1:in std_logic;
    event_s_config_tlast_missing:out std_logic;
    event_s_config_tlast_unexpected:out std_logic;
    m_axis_data_tdata_real:out std_logic_vector(35 downto 0);
    m_axis_data_tvalid:out std_logic;
    s_axis_config_tdata_fsel:in std_logic_vector(0 downto 0);
    s_axis_config_tlast:in std_logic;
    s_axis_config_tready:out std_logic;
    s_axis_config_tvalid:in std_logic;
    s_axis_data_tdata_real:in std_logic_vector(15 downto 0);
    s_axis_data_tready:out std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_d69d791022900d418e6ebe3cea3d2601; 

architecture behavior of xlfir_compiler_d69d791022900d418e6ebe3cea3d2601  is
  component matched_filter_fir_compiler_v7_2_i1
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      event_s_config_tlast_missing:out std_logic;
      event_s_config_tlast_unexpected:out std_logic;
      m_axis_data_tdata:out std_logic_vector(39 downto 0);
      m_axis_data_tvalid:out std_logic;
      s_axis_config_tdata:in std_logic_vector(7 downto 0);
      s_axis_config_tlast:in std_logic;
      s_axis_config_tready:out std_logic;
      s_axis_config_tvalid:in std_logic;
      s_axis_data_tdata:in std_logic_vector(15 downto 0);
      s_axis_data_tready:out std_logic;
      s_axis_data_tvalid:in std_logic
    );
end component;
signal m_axis_data_tdata_net: std_logic_vector(39 downto 0) := (others=>'0');
signal s_axis_config_tdata_net: std_logic_vector(7 downto 0) := (others=>'0');
signal s_axis_data_tdata_net: std_logic_vector(15 downto 0) := (others=>'0');
begin
  m_axis_data_tdata_real <= m_axis_data_tdata_net(35 downto 0);
  s_axis_config_tdata_net(0 downto 0) <= s_axis_config_tdata_fsel;
  s_axis_data_tdata_net(15 downto 0) <= s_axis_data_tdata_real;
  matched_filter_fir_compiler_v7_2_i1_instance : matched_filter_fir_compiler_v7_2_i1
    port map(
      aclk=>clk,
      aclken=>ce,
      event_s_config_tlast_missing=>event_s_config_tlast_missing,
      event_s_config_tlast_unexpected=>event_s_config_tlast_unexpected,
      m_axis_data_tdata=>m_axis_data_tdata_net,
      m_axis_data_tvalid=>m_axis_data_tvalid,
      s_axis_config_tdata=>s_axis_config_tdata_net,
      s_axis_config_tlast=>s_axis_config_tlast,
      s_axis_config_tready=>s_axis_config_tready,
      s_axis_config_tvalid=>s_axis_config_tvalid,
      s_axis_data_tdata=>s_axis_data_tdata_net,
      s_axis_data_tready=>s_axis_data_tready,
      s_axis_data_tvalid=>ce_logic_1
    );
end behavior;



library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
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
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity matched_filter_xlmult is 
   generic (
     core_name0: string := "";
     a_width: integer := 4;
     a_bin_pt: integer := 2;
     a_arith: integer := xlSigned;
     b_width: integer := 4;
     b_bin_pt: integer := 1;
     b_arith: integer := xlSigned;
     p_width: integer := 8;
     p_bin_pt: integer := 2;
     p_arith: integer := xlSigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     extra_registers: integer := 0;
     c_a_width: integer := 7;
     c_b_width: integer := 7;
     c_type: integer := 0;
     c_a_type: integer := 0;
     c_b_type: integer := 0;
     c_pipelined: integer := 1;
     c_baat: integer := 4;
     multsign: integer := xlSigned;
     c_output_width: integer := 16
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     b: in std_logic_vector(b_width - 1 downto 0);
     ce: in std_logic;
     clr: in std_logic;
     clk: in std_logic;
     core_ce: in std_logic := '0';
     core_clr: in std_logic := '0';
     core_clk: in std_logic := '0';
     rst: in std_logic_vector(rst_width - 1 downto 0);
     en: in std_logic_vector(en_width - 1 downto 0);
     p: out std_logic_vector(p_width - 1 downto 0)
   );
 end  matched_filter_xlmult;
 
 architecture behavior of matched_filter_xlmult is
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;


 component matched_filter_mult_gen_v12_0_i0
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
 signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
 signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
 signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
 signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
 signal conv_p: std_logic_vector(p_width - 1 downto 0);
 -- synthesis translate_off
 signal real_a, real_b, real_p: real;
 -- synthesis translate_on
 signal rfd: std_logic;
 signal rdy: std_logic;
 signal nd: std_logic;
 signal internal_ce: std_logic;
 signal internal_clr: std_logic;
 signal internal_core_ce: std_logic;
 begin
 -- synthesis translate_off
 -- synthesis translate_on
 internal_ce <= ce and en(0);
 internal_core_ce <= core_ce and en(0);
 internal_clr <= (clr or rst(0)) and ce;
 nd <= internal_ce;
 input_process: process (a,b)
 begin
 tmp_a <= zero_ext(a, c_a_width);
 tmp_b <= zero_ext(b, c_b_width);
 end process;
 output_process: process (tmp_p)
 begin
 conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
 p_width, p_bin_pt, p_arith, quantization, overflow);
 end process;


 comp0: if ((core_name0 = "matched_filter_mult_gen_v12_0_i0")) generate 
  core_instance0:matched_filter_mult_gen_v12_0_i0
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) generate
 reg: synth_reg
 generic map (
 width => p_width,
 latency => extra_registers
 )
 port map (
 i => conv_p,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => p
 );
 end generate;
 latency_eq_0: if (extra_registers = 0) generate
 p <= conv_p;
 end generate;
 end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
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
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;
 
entity matched_filter_xlmultadd is 
   generic (
     core_name0: string := "";
     a_width: integer := 16;
     a_bin_pt: integer := 4;
     a_arith: integer := xlUnsigned;
     b_width: integer := 8;
     b_bin_pt: integer := 2;
     b_arith: integer := xlUnsigned;
     c_width: integer := 8;
     c_bin_pt: integer := 2;
     c_arith: integer := xlUnsigned;
     p_width: integer := 17;
     p_bin_pt: integer := 4;
     p_arith: integer := xlUnsigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     subtract_width: integer := 1;
     subtract_bin_pt: integer :=0;
     subtract_arith: integer := xlUnsigned; 
     extra_registers: integer := 0;
     latency: integer := 0;
     c_latency: integer := 0;
     c_output_width: integer := 17;
     output_width: integer := 22;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     output_type: integer := 1;
     output_bin_pt: integer := 4
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     b: in std_logic_vector(b_width - 1 downto 0);
     c : in std_logic_vector (c_width - 1 downto 0);
     subtract : in std_logic_vector (subtract_width - 1 downto 0);
     ce: in std_logic;
     sclr: in std_logic := '0';
     clk: in std_logic;
     rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
     en: in std_logic_vector(en_width - 1 downto 0) := "1";
     p: out std_logic_vector(p_width - 1 downto 0)
   );
 end matched_filter_xlmultadd;
 architecture behavior of matched_filter_xlmultadd is
 
 
 signal full_a: std_logic_vector(a_width - 1 downto 0);
 signal full_b: std_logic_vector(b_width - 1 downto 0);
 signal full_c: std_logic_vector(c_width - 1 downto 0);
 signal core_op: std_logic_vector(output_width - 1 downto 0);
 signal conv_op: std_logic_vector(p_width -1 downto 0);
 signal full_op: std_logic_vector(output_width -1 downto 0);
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal mode: std_logic; 


 component matched_filter_xbip_multadd_v3_0_i0
    port ( 
    a: in std_logic_vector(37 - 1 downto 0);
    subtract: in std_logic;
    p: out std_logic_vector(75 - 1  downto 0);
    b: in std_logic_vector(37 - 1 downto 0);
    c: in std_logic_vector(74 - 1 downto 0) 
 		  ); 
 end component;

function two_comp(inp: std_logic_vector;
 p_width: integer)
 return std_logic_vector
 is
 constant result_MSB : integer := p_width-1;
 variable vec : std_logic_vector(result_MSB downto 0);
 variable result : std_logic_vector(result_MSB downto 0);
 variable count:INTEGER:=0;
 begin
 vec := inp;
 for i in 0 to result_MSB loop
 if (vec(i) = '0') then
 count:= count + 1;
 else
 EXIT;
 end if;
 end loop;
 
 if(count < result_MSB) then 
 
 result(result_MSB downto count + 1) := vec(result_MSB downto count + 1);
 result := not(result); 
 result(result_MSB downto count + 1) := result(result_MSB downto count + 1);
 
 result(count downto 0) := vec(count downto 0); 
 
 else 
 result(result_MSB downto 0) := vec(result_MSB downto 0); 
 end if; 
 
 
 return result;
 end;
 
 
 begin
 internal_clr <= (sclr or (rst(0))) and ce;
 internal_ce <= ce and en(0);
 mode <= subtract(0);
 full_a <= a(a_width -1 downto 0);
 full_b <= b(b_width - 1 downto 0);
 full_c <= c(c_width - 1 downto 0);
 
 output_c: process (mode,core_op)
 begin
 if (mode = '1') then
 full_op <= two_comp(core_op,output_width);
 elsif (mode = '0') then
 full_op <= core_op;
 end if;
 end process; 
 
 output_process: process (full_op)
 begin
 conv_op <= convert_type(full_op, output_width, output_bin_pt, output_type, p_width , p_bin_pt, p_arith, quantization, overflow);
 end process;


 comp0: if ((core_name0 = "matched_filter_xbip_multadd_v3_0_i0")) generate 
  core_instance0:matched_filter_xbip_multadd_v3_0_i0
   port map ( 
         a => full_a,
         subtract => mode,
         p => core_op,
         b => full_b,
         c => full_c
  ); 
   end generate;

p <= conv_op;
 end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
 use IEEE.std_logic_1164.all;

entity matched_filter_xlspram_dist is 
   generic (
     core_name0: string := "";
     c_width: integer := 12;
     c_address_width: integer := 4;
     addr_width: integer := 4;
     write_mode: integer := 1;           -- 1 : Read After Write
                                         -- 2 : Read Before Write
                                         -- 3 : No Read on Write (not supported)
     latency: integer := 1
   );
   port (
     data_in: in std_logic_vector(c_width - 1 downto 0);
     addr: in std_logic_vector(addr_width - 1 downto 0);
     we: in std_logic_vector(0 downto 0);
     en: in std_logic_vector(0 downto 0);
     ce: in std_logic;
     clk: in std_logic;
     data_out: out std_logic_vector(c_width - 1 downto 0)
   );
 end matched_filter_xlspram_dist;
 
 architecture behavior of matched_filter_xlspram_dist is
 component synth_reg is
 generic (
 width: integer := 8;
 latency: integer := 1
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 constant num_extra_addr_bits: integer := (c_address_width - addr_width);
 signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
 signal core_data_in, core_data_out: std_logic_vector(c_width - 1 downto 0);
 signal reg_data_in, reg_data_out: std_logic_vector(c_width - 1 downto 0);
 signal core_ce: std_logic;
 signal core_we: std_logic_vector(0 downto 0);


 component matched_filter_dist_mem_gen_i0
    port ( 
a: in std_logic_vector(c_address_width - 1 downto 0);
 clk: in std_logic;
 d: in std_logic_vector(c_width - 1 downto 0);
 we: in std_logic;
 spo: out std_logic_vector(c_width - 1 downto 0)
 
 		  ); 
 end component;

begin
 need_to_pad_addr : if num_extra_addr_bits > 0 generate
 core_addr(c_address_width - 1 downto addr_width) <= (others => '0');
 core_addr(addr_width - 1 downto 0) <= addr;
 end generate;
 no_need_to_pad_addr: if num_extra_addr_bits = 0 generate
 core_addr <= addr;
 end generate;
 core_ce <= ce and en(0);
 core_data_in <= data_in;
 data_out <= reg_data_out;
 core_we(0) <= we(0) and core_ce;
 
 muxed_out : if write_mode = 1 generate
 choose_output: process(core_we(0), core_data_in, core_data_out)
 begin
 case core_we(0) is
 when '1' => reg_data_in <= core_data_in;
 when '0' => reg_data_in <= core_data_out;
 when others => reg_data_in <= core_data_in;
 end case;
 end process;
 end generate;
 
 nonmuxed_out : if write_mode = 2 generate
 reg_data_in <= core_data_out;
 end generate;
 
 registered_ram : if latency > 0 generate
 output_reg: synth_reg
 generic map (
 width => c_width,
 latency => latency
 )
 port map (
 i => reg_data_in,
 ce => core_ce,
 clr => '0',
 clk => clk,
 o => reg_data_out
 );
 end generate;
 
 nonregistered_ram : if latency = 0 generate
 reg_data_out <= core_data_out;
 end generate;


 comp0: if ((core_name0 = "matched_filter_dist_mem_gen_i0")) generate 
  core_instance0:matched_filter_dist_mem_gen_i0
   port map ( 
a => core_addr,
 clk => clk,
 d => core_data_in,
 we => core_we(0),
 spo => core_data_out

  ); 
   end generate;

end behavior;

