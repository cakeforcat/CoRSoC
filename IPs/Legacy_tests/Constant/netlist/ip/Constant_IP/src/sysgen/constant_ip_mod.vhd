-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity constant_ip_stub is
  port (
    gateway_in : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    constant_ip_aresetn : in std_logic;
    constant_ip_s_axi_awaddr : in std_logic;
    constant_ip_s_axi_awvalid : in std_logic;
    constant_ip_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    constant_ip_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    constant_ip_s_axi_wvalid : in std_logic;
    constant_ip_s_axi_bready : in std_logic;
    constant_ip_s_axi_araddr : in std_logic;
    constant_ip_s_axi_arvalid : in std_logic;
    constant_ip_s_axi_rready : in std_logic;
    constant_ip_s_axi_awready : out std_logic;
    constant_ip_s_axi_wready : out std_logic;
    constant_ip_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    constant_ip_s_axi_bvalid : out std_logic;
    constant_ip_s_axi_arready : out std_logic;
    constant_ip_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    constant_ip_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    constant_ip_s_axi_rvalid : out std_logic
  );
end constant_ip_stub;
architecture structural of constant_ip_stub is 
begin
  sysgen_dut : entity xil_defaultlib.Consnant_IP_0 
  port map (
    gateway_in => gateway_in,
    clk => clk,
    constant_ip_aresetn => constant_ip_aresetn,
    constant_ip_s_axi_awaddr => constant_ip_s_axi_awaddr,
    constant_ip_s_axi_awvalid => constant_ip_s_axi_awvalid,
    constant_ip_s_axi_wdata => constant_ip_s_axi_wdata,
    constant_ip_s_axi_wstrb => constant_ip_s_axi_wstrb,
    constant_ip_s_axi_wvalid => constant_ip_s_axi_wvalid,
    constant_ip_s_axi_bready => constant_ip_s_axi_bready,
    constant_ip_s_axi_araddr => constant_ip_s_axi_araddr,
    constant_ip_s_axi_arvalid => constant_ip_s_axi_arvalid,
    constant_ip_s_axi_rready => constant_ip_s_axi_rready,
    constant_ip_s_axi_awready => constant_ip_s_axi_awready,
    constant_ip_s_axi_wready => constant_ip_s_axi_wready,
    constant_ip_s_axi_bresp => constant_ip_s_axi_bresp,
    constant_ip_s_axi_bvalid => constant_ip_s_axi_bvalid,
    constant_ip_s_axi_arready => constant_ip_s_axi_arready,
    constant_ip_s_axi_rdata => constant_ip_s_axi_rdata,
    constant_ip_s_axi_rresp => constant_ip_s_axi_rresp,
    constant_ip_s_axi_rvalid => constant_ip_s_axi_rvalid
  );
end structural;
