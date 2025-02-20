-- (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_f60c_ila_lib_0 IS
PORT (
clk : IN STD_LOGIC;


probe0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe1 : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    probe2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe7 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe8 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe9 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe10 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe11 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe12 : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    probe13 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe14 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe15 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe16 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe18 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe19 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe20 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe21 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe22 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe23 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe24 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe25 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe26 : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
    probe27 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    probe28 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe29 : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
    probe30 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    probe31 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe32 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe33 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe34 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe35 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe36 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe37 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    probe38 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe39 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    probe40 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe41 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe42 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe43 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe44 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe45 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe46 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe47 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe48 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe49 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe50 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe51 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe52 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe53 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe54 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe55 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe56 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe57 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe58 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe59 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe60 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe61 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe62 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe63 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe64 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe65 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe66 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe67 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe68 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe69 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe70 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe71 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe72 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe73 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe74 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe75 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe76 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe77 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe78 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe79 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe80 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe81 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe82 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    probe83 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    probe84 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe85 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe86 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe87 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe88 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    probe89 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe90 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    probe91 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe92 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    probe93 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe94 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe95 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
);
END bd_f60c_ila_lib_0;

ARCHITECTURE bd_f60c_ila_lib_0_arch OF bd_f60c_ila_lib_0 IS
BEGIN
END bd_f60c_ila_lib_0_arch;
