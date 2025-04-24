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
entity sysgen_accum_3d4d6a817c is
  port (
    b : in std_logic_vector((48 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_accum_3d4d6a817c;
architecture behavior of sysgen_accum_3d4d6a817c
is
  signal b_17_24: unsigned((48 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_39_23: unsigned((64 - 1) downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
  signal accum_reg_39_23_rst: std_logic;
  signal cast_49_42: unsigned((64 - 1) downto 0);
  signal accum_reg_join_45_1: unsigned((65 - 1) downto 0);
  signal accum_reg_join_45_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_unsigned(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_39_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_39_23_rst = '1')) then
        accum_reg_39_23 <= "0000000000000000000000000000000000000000000000000000000000000000";
      elsif (ce = '1') then 
        accum_reg_39_23 <= accum_reg_39_23 + cast_49_42;
      end if;
    end if;
  end process proc_accum_reg_39_23;
  cast_49_42 <= u2u_cast(b_17_24, 40, 64, 40);
  proc_if_45_1: process (accum_reg_39_23, cast_49_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_45_1_rst <= '1';
    else 
      accum_reg_join_45_1_rst <= '0';
    end if;
  end process proc_if_45_1;
  accum_reg_39_23_rst <= accum_reg_join_45_1_rst;
  q <= unsigned_to_std_logic_vector(accum_reg_39_23);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_concat_25e24de659 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_concat_25e24de659;
architecture behavior of sysgen_concat_25e24de659
is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal in2_1_31: boolean;
  signal in3_1_35: boolean;
  signal y_2_1_concat: unsigned((4 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= ((in2) = "1");
  in3_1_35 <= ((in3) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27) & boolean_to_vector(in2_1_31) & boolean_to_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_8b564fc4fc is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_8b564fc4fc;
architecture behavior of sysgen_constant_8b564fc4fc
is
begin
  op <= "0000001000000000";
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_614c824d98 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_614c824d98;
architecture behavior of sysgen_constant_614c824d98
is
begin
  op <= "1";
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


entity convert_func_call_energydetect_xlconvert is
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
end convert_func_call_energydetect_xlconvert ;

architecture behavior of convert_func_call_energydetect_xlconvert is
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


entity energydetect_xlconvert  is
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

end energydetect_xlconvert ;

architecture behavior of energydetect_xlconvert  is

    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;

    component convert_func_call_energydetect_xlconvert 
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
      convert : convert_func_call_energydetect_xlconvert 
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


entity energydetect_xlslice is
    generic (
        new_msb      : integer := 9;           -- position of new msb
        new_lsb      : integer := 1;           -- position of new lsb
        x_width      : integer := 16;          -- Width of x input
        y_width      : integer := 8);          -- Width of y output
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end energydetect_xlslice;

architecture behavior of energydetect_xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity energydetect_xldelay is
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

end energydetect_xldelay;

architecture behavior of energydetect_xldelay is
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
entity sysgen_reinterpret_1f42116449 is
  port (
    input_port : in std_logic_vector((15 - 1) downto 0);
    output_port : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_reinterpret_1f42116449;
architecture behavior of sysgen_reinterpret_1f42116449
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
entity sysgen_relational_29f3440658 is
  port (
    a : in std_logic_vector((80 - 1) downto 0);
    b : in std_logic_vector((15 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_29f3440658;
architecture behavior of sysgen_relational_29f3440658
is
  signal a_1_31: unsigned((80 - 1) downto 0);
  signal b_1_34: unsigned((15 - 1) downto 0);
  signal en_1_37: boolean;
  type array_type_op_mem_45_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_45_22: array_type_op_mem_45_22 := (
    0 => false);
  signal op_mem_45_22_front_din: boolean;
  signal op_mem_45_22_back: boolean;
  signal op_mem_45_22_push_front_pop_back_en: std_logic;
  signal a_join_13_3: unsigned((80 - 1) downto 0);
  signal b_join_16_3: unsigned((15 - 1) downto 0);
  signal cast_28_16: unsigned((80 - 1) downto 0);
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
      a_join_13_3 <= std_logic_vector_to_unsigned("00000000000000000000000000000000000000000000000000000000000000000000000000000000");
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
  cast_28_16 <= u2u_cast(b_join_16_3, 10, 80, 16);
  result_28_3_rel <= a_join_13_3 > cast_28_16;
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
entity sysgen_relational_04285b37eb is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_relational_04285b37eb;
architecture behavior of sysgen_relational_04285b37eb
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

entity energydetect_xlcounter_limit is 
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
 end energydetect_xlcounter_limit;
 
 architecture behavior of energydetect_xlcounter_limit is
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


 component energydetect_c_counter_binary_v12_0_i0
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


 comp0: if ((core_name0 = "energydetect_c_counter_binary_v12_0_i0")) generate 
  core_instance0:energydetect_c_counter_binary_v12_0_i0
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

entity xldivider_generator_154d5742fafd67cc248ce8446c0a55e8 is 
  port(
    a:in std_logic_vector(63 downto 0);
    a_tvalid:in std_logic;
    b:in std_logic_vector(15 downto 0);
    b_tvalid:in std_logic;
    ce:in std_logic;
    clk:in std_logic;
    op:out std_logic_vector(79 downto 0)
  );
end xldivider_generator_154d5742fafd67cc248ce8446c0a55e8; 

architecture behavior of xldivider_generator_154d5742fafd67cc248ce8446c0a55e8  is
  component energydetect_div_gen_v5_1_i0
    port(
      aclk:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(79 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_dividend_tdata:in std_logic_vector(63 downto 0);
      s_axis_dividend_tvalid:in std_logic;
      s_axis_divisor_tdata:in std_logic_vector(15 downto 0);
      s_axis_divisor_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(79 downto 0) := (others=>'0');
signal m_axis_dout_tdata_shift_in_net: std_logic_vector(79 downto 0) := (others=>'0');
signal m_axis_dout_tdata_shift_out_net: std_logic_vector(79 downto 0) := (others=>'0');
signal result_tvalid: std_logic := '0';
signal s_axis_dividend_tdata_net: std_logic_vector(63 downto 0) := (others=>'0');
signal s_axis_divisor_tdata_net: std_logic_vector(15 downto 0) := (others=>'0');
begin
  m_axis_dout_tdata_shift_in_net <= m_axis_dout_tdata_net(79 downto 0);
  op <= m_axis_dout_tdata_shift_out_net;
  s_axis_dividend_tdata_net(63 downto 0) <= a;
  s_axis_divisor_tdata_net(15 downto 0) <= b;
  m_axis_dout_tdata_shift_out_net <= shift_op(m_axis_dout_tdata_shift_in_net, 80, 40, 0);
  energydetect_div_gen_v5_1_i0_instance : energydetect_div_gen_v5_1_i0
    port map(
      aclk=>clk,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>result_tvalid,
      s_axis_dividend_tdata=>s_axis_dividend_tdata_net,
      s_axis_dividend_tvalid=>a_tvalid,
      s_axis_divisor_tdata=>s_axis_divisor_tdata_net,
      s_axis_divisor_tvalid=>b_tvalid
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

entity energydetect_xlmult is 
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
 end  energydetect_xlmult;
 
 architecture behavior of energydetect_xlmult is
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


 component energydetect_mult_gen_v12_0_i0
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


 comp0: if ((core_name0 = "energydetect_mult_gen_v12_0_i0")) generate 
  core_instance0:energydetect_mult_gen_v12_0_i0
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
 
entity energydetect_xlmultadd is 
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
 end energydetect_xlmultadd;
 architecture behavior of energydetect_xlmultadd is
 
 
 signal full_a: std_logic_vector(a_width - 1 downto 0);
 signal full_b: std_logic_vector(b_width - 1 downto 0);
 signal full_c: std_logic_vector(c_width - 1 downto 0);
 signal core_op: std_logic_vector(output_width - 1 downto 0);
 signal conv_op: std_logic_vector(p_width -1 downto 0);
 signal full_op: std_logic_vector(output_width -1 downto 0);
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal mode: std_logic; 


 component energydetect_xbip_multadd_v3_0_i0
    port ( 
    a: in std_logic_vector(16 - 1 downto 0);
    subtract: in std_logic;
    p: out std_logic_vector(33 - 1  downto 0);
    b: in std_logic_vector(16 - 1 downto 0);
    c: in std_logic_vector(32 - 1 downto 0) 
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


 comp0: if ((core_name0 = "energydetect_xbip_multadd_v3_0_i0")) generate 
  core_instance0:energydetect_xbip_multadd_v3_0_i0
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

entity energydetect_xlspram_dist is 
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
 end energydetect_xlspram_dist;
 
 architecture behavior of energydetect_xlspram_dist is
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


 component energydetect_dist_mem_gen_i0
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


 comp0: if ((core_name0 = "energydetect_dist_mem_gen_i0")) generate 
  core_instance0:energydetect_dist_mem_gen_i0
   port map ( 
a => core_addr,
 clk => clk,
 d => core_data_in,
 we => core_we(0),
 spo => core_data_out

  ); 
   end generate;

end behavior;

