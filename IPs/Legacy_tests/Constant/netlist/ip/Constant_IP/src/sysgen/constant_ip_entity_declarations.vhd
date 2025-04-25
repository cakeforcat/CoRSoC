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
entity sysgen_constant_e5c195bd01 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_e5c195bd01;
architecture behavior of sysgen_constant_e5c195bd01
is
begin
  op <= "00000000000000000100000000000000";
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity constant_ip_axi_lite_interface is 
    port(
        gateway_out : in std_logic_vector(31 downto 0);
        clk : out std_logic;
        constant_ip_aclk : in std_logic;
        constant_ip_aresetn : in std_logic;
        constant_ip_s_axi_awaddr : in std_logic;
        constant_ip_s_axi_awvalid : in std_logic;
        constant_ip_s_axi_awready : out std_logic;
        constant_ip_s_axi_wdata : in std_logic_vector(32-1 downto 0);
        constant_ip_s_axi_wstrb : in std_logic_vector(32/8-1 downto 0);
        constant_ip_s_axi_wvalid : in std_logic;
        constant_ip_s_axi_wready : out std_logic;
        constant_ip_s_axi_bresp : out std_logic_vector(1 downto 0);
        constant_ip_s_axi_bvalid : out std_logic;
        constant_ip_s_axi_bready : in std_logic;
        constant_ip_s_axi_araddr : in std_logic;
        constant_ip_s_axi_arvalid : in std_logic;
        constant_ip_s_axi_arready : out std_logic;
        constant_ip_s_axi_rdata : out std_logic_vector(32-1 downto 0);
        constant_ip_s_axi_rresp : out std_logic_vector(1 downto 0);
        constant_ip_s_axi_rvalid : out std_logic;
        constant_ip_s_axi_rready : in std_logic
    );
end constant_ip_axi_lite_interface;
architecture structural of constant_ip_axi_lite_interface is 
component constant_ip_axi_lite_interface_verilog is
    port(
        gateway_out : in std_logic_vector(31 downto 0);
        clk : out std_logic;
        constant_ip_aclk : in std_logic;
        constant_ip_aresetn : in std_logic;
        constant_ip_s_axi_awaddr : in std_logic;
        constant_ip_s_axi_awvalid : in std_logic;
        constant_ip_s_axi_awready : out std_logic;
        constant_ip_s_axi_wdata : in std_logic_vector(32-1 downto 0);
        constant_ip_s_axi_wstrb : in std_logic_vector(32/8-1 downto 0);
        constant_ip_s_axi_wvalid : in std_logic;
        constant_ip_s_axi_wready : out std_logic;
        constant_ip_s_axi_bresp : out std_logic_vector(1 downto 0);
        constant_ip_s_axi_bvalid : out std_logic;
        constant_ip_s_axi_bready : in std_logic;
        constant_ip_s_axi_araddr : in std_logic;
        constant_ip_s_axi_arvalid : in std_logic;
        constant_ip_s_axi_arready : out std_logic;
        constant_ip_s_axi_rdata : out std_logic_vector(32-1 downto 0);
        constant_ip_s_axi_rresp : out std_logic_vector(1 downto 0);
        constant_ip_s_axi_rvalid : out std_logic;
        constant_ip_s_axi_rready : in std_logic
    );
end component;
begin
inst : constant_ip_axi_lite_interface_verilog
    port map(
    gateway_out => gateway_out,
    clk => clk,
    constant_ip_aclk => constant_ip_aclk,
    constant_ip_aresetn => constant_ip_aresetn,
    constant_ip_s_axi_awaddr => constant_ip_s_axi_awaddr,
    constant_ip_s_axi_awvalid => constant_ip_s_axi_awvalid,
    constant_ip_s_axi_awready => constant_ip_s_axi_awready,
    constant_ip_s_axi_wdata => constant_ip_s_axi_wdata,
    constant_ip_s_axi_wstrb => constant_ip_s_axi_wstrb,
    constant_ip_s_axi_wvalid => constant_ip_s_axi_wvalid,
    constant_ip_s_axi_wready => constant_ip_s_axi_wready,
    constant_ip_s_axi_bresp => constant_ip_s_axi_bresp,
    constant_ip_s_axi_bvalid => constant_ip_s_axi_bvalid,
    constant_ip_s_axi_bready => constant_ip_s_axi_bready,
    constant_ip_s_axi_araddr => constant_ip_s_axi_araddr,
    constant_ip_s_axi_arvalid => constant_ip_s_axi_arvalid,
    constant_ip_s_axi_arready => constant_ip_s_axi_arready,
    constant_ip_s_axi_rdata => constant_ip_s_axi_rdata,
    constant_ip_s_axi_rresp => constant_ip_s_axi_rresp,
    constant_ip_s_axi_rvalid => constant_ip_s_axi_rvalid,
    constant_ip_s_axi_rready => constant_ip_s_axi_rready
);
end structural;
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

entity constant_ip_xlcounter_limit is 
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
 end constant_ip_xlcounter_limit;
 
 architecture behavior of constant_ip_xlcounter_limit is
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


 component constant_ip_c_counter_binary_v12_0_i0
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


 comp0: if ((core_name0 = "constant_ip_c_counter_binary_v12_0_i0")) generate 
  core_instance0:constant_ip_c_counter_binary_v12_0_i0
   port map ( 
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
  ); 
   end generate;

end behavior;

